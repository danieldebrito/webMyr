import { Injectable } from '@angular/core';
import { Articulo } from '../../clases/articulo';
import { BaseService } from '../base.service';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})

export class AllArticulosService {

  public artDetalle: Articulo;
  public show: boolean; // true, muestra grilla, false, muestra detalle de art
  public showDetail: boolean; // true, muestra varciones, false, muestra detalle de juego, en detalle de producto


  constructor(public miHttp: BaseService) { }
  public Listar(): Observable<Articulo[]> {
    return this.miHttp.httpGetO<Articulo[]>('/articulos/');
  }
  public Baja(id: string): Promise<object> {
    return this.miHttp.httpDeleteP('/articulos/' + '"' + id + '"');
  }
  public TraerUno(id: string): Observable<Articulo> {
    return this.miHttp.httpGetO<Articulo>('/articulos/' + '"' + id + '"');
  }
  public Alta( detalle: string, marca: string, codigo: string ): Promise<object> {
      const request: object = {
        detalle,
        marca,
        codigo
    };
      return this.miHttp.httpPostP('/articulos/', request);
  }
  public Update( idRepuesto: string, detalle: string, marca: string, codigo: string ): Promise<object> {
      const request: object = {
        idRepuesto,
        detalle,
        marca,
        codigo
    };
      return this.miHttp.httpPostP('/articulos/update', request);
  }

}

