import { Component, OnInit } from '@angular/core';

// class
import { Sucursal } from 'src/app/clases/sucursal';
import { Cliente } from 'src/app/clases/cliente';

// servicios
import { SucursalesService } from 'src/app/services/cliente/sucursales.service';
import { AuthService } from 'src/app/services/cliente/auth.service';


@Component({
  selector: 'app-sucursales-nueva',
  templateUrl: './sucursales-nueva.component.html',
  styleUrls: ['./sucursales-nueva.component.css']
})
export class SucursalesNuevaComponent implements OnInit {

  public identity: Cliente;
  public sucursal: Sucursal;
  public id_sucursal_alta;

  constructor(
    private sucursalesService: SucursalesService,
    private authService: AuthService
  ) {
    this.identity = this.authService.getIdentityLocalStorage();
    this.sucursal = new Sucursal(0, '', '', '', 0, '', '', '');
  }

  public alta() {
    this.sucursalesService.Alta(
      this.identity.id,
      this.sucursal.nombre_sucursal,
      this.sucursal.calle,
      this.sucursal.numero,
      this.sucursal.cp,
      this.sucursal.localidad,
      this.sucursal.provincia
    ).then(
        response => {
          this.id_sucursal_alta = response;
        }
      )
      .catch(
        error => {
          console.error('ERROR DEL SERVIDOR', error);
        }
      );
      this.limpiarForm ();
  }

  public limpiarForm () {
    this.sucursal = new Sucursal(0, '', '', '', 0, '', '', '');
  }

  ngOnInit() { this.identity = this.authService.getIdentityLocalStorage(); }

}
