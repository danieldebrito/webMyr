import { Component, OnInit } from '@angular/core';
import { ClienteSucursal } from '../../../../clases/clienteSucursal';
import { Cliente } from '../../../../clases/cliente';
import { AuthService } from '../../../../services/cliente/auth.service';



@Component({
  selector: 'app-mis-datos',
  templateUrl: './mis-datos.component.html',
  styleUrls: ['./mis-datos.component.css']
})
export class MisDatosComponent implements OnInit {

  public direccion: ClienteSucursal;
  public cliente: Cliente;

  constructor(private authService: AuthService) {
  }

  onSubmit () {}

  ngOnInit() {
    this.cliente = this.authService.getIdentityLocalStorage();
  }

}
