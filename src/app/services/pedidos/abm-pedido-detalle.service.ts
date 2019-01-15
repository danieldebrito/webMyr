import { Injectable } from '@angular/core';
import { BaseService } from '../../services/base.service';
import { PedidoDetalle } from 'src/app/clases/pedido_detalle';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class AbmPedidoDetalleService {

  constructor(public miHttp: BaseService) { }

  public altaPedidoDetalle(
  // public id_pedido: number, // AI
  id_articulo: string,
  cantidad: number
  ): Promise<Object> {
      const request: Object = {
        // public id_pedido: number, // AI
        id_articulo: id_articulo,
        cantidad: cantidad
    };
    return this.miHttp.httpPostP('/pedido/', request);
  }

  public traerUno(id: string): Observable<PedidoDetalle> {
    return this.miHttp.httpGetO<PedidoDetalle>('/pedido_detalle/' + '"' + id + '"');
  }
}
