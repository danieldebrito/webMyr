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

  public ListarP(): Promise<Array<any>> {
    return this.miHttp.httpGetP('/art_mar_mod_mot/')
      .then(data => {
        return data;
      })
      .catch(err => {
        console.log(err);
        return null;
      });
  }

  public ListarO(): Observable<Articulo[]> {
    return this.miHttp.httpGetO<Articulo[]>('/art_mar_mod_mot/');
  }

  public traerUno(): Observable<Articulo> {
    return this.miHttp.httpGetO<Articulo>('/art/' + '"' + this.artDetalle.id_articulo + '"');
  }

}

