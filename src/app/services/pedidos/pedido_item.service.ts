import { Injectable } from '@angular/core';
import { BaseService } from '../base.service';
import { PedidoItem } from 'src/app/clases/pedidoItem';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class PedidoItemService {

  constructor(public miHttp: BaseService) { }

  public Listar(): Observable<PedidoItem[]> {
    return this.miHttp.httpGetO<PedidoItem[]>('/pedidos_item/');
  }

  public Baja(id: string): Promise<object> {
    return this.miHttp.httpDeleteP('/pedidos_item/' + id );
  }

  public TraerUno(id: string): Observable<PedidoItem> {
    return this.miHttp.httpGetO<PedidoItem>('/pedidos_item/' +  id );
  }

  public Alta(
  id_pedido: number,
  id_articulo: string,
  cantidad: number
  ): Promise<Object> {
      const request: Object = {
        id_pedido: id_pedido,
        id_articulo: id_articulo,
        cantidad: cantidad
    };
    return this.miHttp.httpPostP('/pedidos_item/', request);
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
    return this.miHttp.httpPostP('/pedidos_item/update', request);
  }
}
