import { Component, OnInit } from '@angular/core';
import { ClienteSucursal } from '../../../../clases/clienteSucursal';
import { Cliente } from '../../../../clases/cliente';


@Component({
  selector: 'app-mis-datos',
  templateUrl: './mis-datos.component.html',
  styleUrls: ['./mis-datos.component.css']
})
export class MisDatosComponent implements OnInit {

  public direccion: ClienteSucursal;
  public cliente: Cliente;

  constructor() { }

  onSubmit () {}

  ngOnInit() {
  }

}
