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
  public pedido: Pedido;

  constructor(public miHttp: BaseService, private authService: AuthService) { }

  public Listar(): Observable<Pedido[]> {
    return this.miHttp.httpGetO<Pedido[]>('/pedidos/');
  }

  public Baja(id: string): Promise<object> {
    return this.miHttp.httpDeleteP('/pedidos/' + '"' + id + '"');
  }

  public TraerUno(id: string): Observable<Pedido> {
    return this.miHttp.httpGetO<Pedido>('/pedidos/' + '"' + id + '"');
  }

  public Alta(
    id_cliente: string,
    id_sucursal: string,
    id_expreso: string,
    estado: string,
    envio: string,
    fecha: string,
    observaciones: string
  ): Promise<object> {
    const request: object = {
      id_cliente,
      id_sucursal,
      id_expreso,
      estado,
      envio,
      fecha,
      observaciones
    };
    return this.miHttp.httpPostP('/pedidos/', request);
  }

  public Update(
    id_pedido: string,
    id_cliente: string,
    id_sucursal: string,
    id_expreso: string,
    estado: string,
    envio: string,
    fecha: string,
    observaciones: string
    ): Promise<object> {
    const request: object = {
      id_pedido,
      id_cliente,
      id_sucursal,
      id_expreso,
      estado,
      envio,
      fecha,
      observaciones
    };
    return this.miHttp.httpPostP('/pedidos/update', request);
  }

  public traerpedidoAbierto(id_cliente: string): Observable<Pedido> {
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
}


/*

  public Listar(): Observable<MaquinaRepuesto[]> {
    return this.miHttp.httpGetO<MaquinaRepuesto[]>('/maquinaRepuestos/');
  }
  public Baja(id: string): Promise<object> {
    return this.miHttp.httpDeleteP('/maquinaRepuestos/' + '"' + id + '"');
  }
  public TraerUno(id: string): Observable<MaquinaRepuesto> {
    return this.miHttp.httpGetO<MaquinaRepuesto>('/maquinaRepuestos/' + '"' + id + '"');
  }
  public Alta( detalle: string, marca: string, codigo: string ): Promise<object> {
      const request: object = {
        detalle,
        marca,
        codigo
    };
      return this.miHttp.httpPostP('/maquinaRepuestos/', request);
  }
  public Update( idRepuesto: string, detalle: string, marca: string, codigo: string ): Promise<object> {
      const request: object = {
        idRepuesto,
        detalle,
        marca,
        codigo
    };
      return this.miHttp.httpPostP('/maquinaRepuestos/update', request);
  }



*/
