import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
// class
import { Cliente } from 'src/app/clases/cliente';
import { Pedido } from 'src/app/clases/pedido';
// services
import { AuthService } from 'src/app/services/cliente/auth.service';
import { BaseService } from 'src/app/services/base.service';

@Injectable({
  providedIn: 'root'
})
export class AbmPedidosService {

  public fecha: string;
  public hora: string;
  public identity: Cliente;
  public mensaje: any;
  public pedidoAbierto: Pedido;

  constructor(public miHttp: BaseService, private authService: AuthService) {
    this.pedidoAbierto = new Pedido(-1, '', '', '', '', '', '');
   }

  public altaPedido(
    // id_pedido: number,  // AI
    id_cliente: string,
    id_sucursal: string,
    id_expreso: string,
    // estado: string, // DEFAULT => 'abierto'
    fecha: string,
    observaciones: string
  ): Promise<Object> {

    const request: Object = {
      id_cliente: id_cliente,
      id_sucursal: id_sucursal,
      id_expreso: id_expreso,
      fecha: fecha,
      observaciones: observaciones
    };
    return this.miHttp.httpPostP('/pedido/', request);
  } // alta pedido

  public traerUno(id: string): Observable<Pedido> {
    return this.miHttp.httpGetO<Pedido>('/pedido/' + '"' + id + '"');
  } // trae un pedido por id

  public traerIDpedidoAbierto(id_cliente: string): Observable<Pedido> {
    return this.miHttp.httpGetO<Pedido>('/pedido/abierto/' + id_cliente);
  } // pedido de un mismo cliente abierto

  public ListarO(id_cliente): Observable<Pedido[]> {
    return this.miHttp.httpGetO<Pedido[]>('/pedido/cliente/' + id_cliente);
  } // lista todos los pedidos de un cliente

  getfecha() {
    const fechaActual = new Date();
    const dia = fechaActual.getDate().toString();
    const mes = (fechaActual.getMonth() + 1).toString();
    const anio = fechaActual.getFullYear().toString();
    const hora = fechaActual.getHours().toString();
    const minutos = fechaActual.getMinutes().toString();
    const segundos = fechaActual.getSeconds().toString();
    this.fecha = anio + '/' + mes + '/' + dia;
    this.hora = hora + ':' + minutos + ':' + segundos;

    const ret = this.fecha;

    return ret;
  }

  public altaPedidoP() {
    this.altaPedido(
      this.identity.id,
      '',
      '',
      this.getfecha(),
      ''
    ).then(
      response => {
        this.mensaje = response;  //  agregar, no hay nada en el response
        // this.router.navigate(['home']);  //  redirecciona a HOME
      }
    ).catch(
      error => {
        console.error('ERROR DEL SERVIDOR', error);
      }
    );
    this.traeAbierto();
  }

  public traeAbierto() {
    this.traerIDpedidoAbierto(this.identity.id).subscribe(response => {
      this.pedidoAbierto = response;
      console.log(this.pedidoAbierto);
    },
      error => {
        console.error(error);
      });
  }

  public traeCreaAbierto () {
    this.traeAbierto();
    if (this.pedidoAbierto.id_pedido === -1 || this.pedidoAbierto[0] === undefined ) {
      this.altaPedidoP();
      this.traeAbierto();
    }
  }
}
