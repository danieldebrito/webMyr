import { Component, OnInit } from '@angular/core';
// class
import { Cliente } from 'src/app/clases/cliente';
import { Sucursal } from 'src/app/clases/sucursal';


@Component({
  selector: 'app-abm-sucursales',
  templateUrl: './abm-sucursales.component.html',
  styleUrls: ['./abm-sucursales.component.css']
})
export class AbmSucursalesComponent implements OnInit {

  public sucursal: Sucursal;
  public cliente: Cliente;

  constructor() {
    this.sucursal = new Sucursal(0, '', '', '', 0, '', '', '');
   }




  onSubmit() {}

  ngOnInit() {
  }

}
