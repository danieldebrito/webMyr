import { Component, OnInit } from '@angular/core';
import { Cliente } from '../../../../clases/cliente';
import { ConsultasClientesService } from '../../../../services/cliente/consultas-clientes.service';
import { routerNgProbeToken } from '@angular/router/src/router_module';
import { Router } from '@angular/router';

@Component({
  selector: 'app-registro',
  templateUrl: './registro.component.html',
  styleUrls: ['./registro.component.css']
})
export class RegistroComponent implements OnInit {

  public cliente: Cliente;
  public mensaje;

  public clienteService: ConsultasClientesService;

  public id: string;
  public cuit: string;
  public razonSocial: string;
  public comprador: string;
  public email: string;
  public clave: string;
  public estado: string;

  constructor(servicio: ConsultasClientesService, private router: Router) {
    this.clienteService = servicio;
    this.cliente = new Cliente ('', '', '', '', '', '', '');
  }

  public altaCliente() {
    this.clienteService.altaCliente(
      this.cliente.id,
      this.cliente.cuit,
      this.cliente.razonSocial,
      this.cliente.comprador,
      this.cliente.email,
      this.cliente.clave
        ).then(
            response => {
                this.mensaje = response;  //  agregar, no hay nada en el response
                this.router.navigate(['home']);
            }
        )
        .catch(
            error => {
                console.error('ERROR DEL SERVIDOR', error);
            }
        );
}


   onSubmit() {
    this.altaCliente();
}


  ngOnInit() {
  }

}
