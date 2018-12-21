import { Component, OnInit } from '@angular/core';
import { Login } from '../../../../clases/login';
import { AuthService } from '../../../../services/cliente/auth.service';
import { ConsultasClientesService } from '../../../../services/cliente/consultas-clientes.service';
import { Router } from '@angular/router';
import { Cliente } from 'src/app/clases/cliente';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  public login: Login;
  public id: string;
  public clave: string;
  public message: string;   // para mostrar en consola
  public error: boolean;    // para alternar vista en caso de error
  public identity: Cliente; // cliente logueado

  constructor(
    private authService: AuthService,
    private consultaClientesService: ConsultasClientesService,
    private router: Router
  ) {
    this.login = new Login('', '');
  }

  public traerUno(id: string) {
    this.consultaClientesService.traerUno(id).subscribe(response => {

      this.identity = response;
      console.log(response);
    },
      error => {
        console.error(error);
      });
  }

  public onSubmit(): void {
    this.message = '';
    this.error = false;

    this.authService.Loguear(this.login)
      .then(
        response => {

          // console.log('response => ', response);
          if (response['Estado'] === 'OK') {
            if (!this.authService.redirectUrl) {
              this.authService.redirectUrl = '/catalogo';
              this.message = response['Mensaje'];
            }

            this.traerUno(this.login.id);  // carga el usuario logueado
            this.cargarLocalStorage();     // carga el localStorage

            this.router.navigate([this.authService.redirectUrl]);

          } else {
            this.error = true;
            this.message = response['Mensaje'];
          }
        }
      )
      .catch(
        response => {
          console.log('response error => ', response);
          this.error = true;
          this.message = response['Mensaje'];
        }
      );

    console.log(this.message);
  }

  cambiaVista() {
    this.error = !this.error;
  }

  cargarLocalStorage() {
    this.identity.clave = '';
    localStorage.setItem('identity', JSON.stringify(this.identity));
  }

  ngOnInit() {
  }
}
