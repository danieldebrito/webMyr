import { Component, OnInit } from '@angular/core';
// class
import { Sucursal } from 'src/app/clases/sucursal';

@Component({
  selector: 'app-abm-sucursales',
  templateUrl: './abm-sucursales.component.html',
  styleUrls: ['./abm-sucursales.component.css']
})
export class AbmSucursalesComponent implements OnInit {

  public sucursal: Sucursal;

  constructor() {
    this.sucursal = JSON.parse(localStorage.getItem('sucursalDetalle'));
   }

  onSubmit() {}

  ngOnInit() { this.sucursal = JSON.parse(localStorage.getItem('sucursalDetalle')); }
}
