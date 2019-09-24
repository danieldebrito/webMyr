import { Injectable } from '@angular/core';
import { BaseService } from '../base.service';
import { PedidoDetalle } from 'src/app/clases/pedido_detalle';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class PedidoDetalleService {

  constructor(public miHttp: BaseService) { }

  public Listar(): Observable<PedidoDetalle[]> {
    return this.miHttp.httpGetO<PedidoDetalle[]>('/pedidos_detalle/');
  }

  public Baja(id: string): Promise<object> {
    return this.miHttp.httpDeleteP('/pedidos_detalle/' + id );
  }

  public TraerUno(id: string): Observable<PedidoDetalle> {
    return this.miHttp.httpGetO<PedidoDetalle>('/pedidos_detalle/' +  id );
  }

  public altaPedidoDetalle(
  id_pedido: number,
  id_articulo: string,
  cantidad: number
  ): Promise<Object> {
      const request: Object = {
        id_pedido: id_pedido,
        id_articulo: id_articulo,
        cantidad: cantidad
    };
    return this.miHttp.httpPostP('/pedidos_detalle/', request);
  }  // alta

  public Update(
    id_pedido_detalle: number,
    id_pedido: number,
    id_articulo: string,
    cantidad: number
  ): Promise<object> {
    const request: object = {
      id_pedido_detalle: id_pedido_detalle,
      id_pedido: id_pedido,
      id_articulo: id_articulo,
      cantidad: cantidad
    };
    return this.miHttp.httpPostP('/productos/update', request);
  }
}
