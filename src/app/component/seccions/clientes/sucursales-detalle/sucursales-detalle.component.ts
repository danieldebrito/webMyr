import { Component, OnInit } from '@angular/core';
// class
import { Sucursal } from 'src/app/clases/sucursal';

@Component({
  selector: 'app-abm-sucursales',
  templateUrl: './sucursales-detalle.component.html',
  styleUrls: ['./sucursales-detalle.component.css']
})
export class SucursalesDetalleComponent implements OnInit {

  public sucursal: Sucursal;

  constructor() {
    this.sucursal = JSON.parse(localStorage.getItem('sucursalDetalle'));
   }

  onSubmit() {}

  ngOnInit() { this.sucursal = JSON.parse(localStorage.getItem('sucursalDetalle')); }
}
