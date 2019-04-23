import { Component, OnInit } from '@angular/core';
import { Cliente } from 'src/app/clases/cliente';


@Component({
  selector: 'app-abm-sucursales',
  templateUrl: './abm-sucursales.component.html',
  styleUrls: ['./abm-sucursales.component.css']
})
export class AbmSucursalesComponent implements OnInit {

  public cliente: Cliente;


  constructor() { }


  onSubmit() {}

  ngOnInit() {
  }

}
