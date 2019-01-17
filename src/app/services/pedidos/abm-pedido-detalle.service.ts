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
  id_pedido: void,  // pongo void, que devuelve el obserbable, ya que number rompia
  id_articulo: string,
  cantidad: number
  ): Promise<Object> {
      const request: Object = {
        id_pedido: id_pedido,
        id_articulo: id_articulo,
        cantidad: cantidad
    };
    return this.miHttp.httpPostP('/pedido_detalle/', request);
  }

  public traerUno(id: string): Observable<PedidoDetalle> {
    return this.miHttp.httpGetO<PedidoDetalle>('/pedido_detalle/' + '"' + id + '"');
  }
}
