import { Injectable } from '@angular/core';
import { BaseService } from '../../services/base.service';
import { Pedido } from 'src/app/clases/pedido';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class AbmPedidosService {

  constructor(public miHttp: BaseService) { }

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
    return this.miHttp.httpGetO<Pedido>('/pedido/abierto/' + id_cliente );
  } // pedido de un mismo cliente abierto

  public ListarO(id_cliente): Observable<Pedido[]> {
    return this.miHttp.httpGetO<Pedido[]>('/pedido/cliente/' + id_cliente);
  } // lista todos los pedidos de un cliente
}
