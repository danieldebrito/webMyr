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

  constructor(public miHttp: BaseService) { }

  public ListarP(): Promise<Array<any>> {
    return this.miHttp.httpGetP('/art/all')
      .then(data => {
        return data;
      })
      .catch(err => {
        console.log(err);
        return null;
      });
  }

  public ListarO(): Observable<Articulo[]> {
    return this.miHttp.httpGetO<Articulo[]>('/art/all');
  }

  public traerUno(): Observable<Articulo> {
    return this.miHttp.httpGetO<Articulo>('/art/' + '"' + this.artDetalle.id + '"');
  }

  public FiltrarP(
    linea: string,
    marca: string,
    combustible: string,
    motor: string,
    modelo: string,
    cilindrada: string,
    competicion: string,
    producto: string,
    aplicacion: string
    ): Promise<Object> {

      const request: Object = {

        linea: linea == null ? '' : linea,
        marca: marca == null ? '' : marca,
        combustible: combustible == null ? '' : combustible,
        motor: motor == null ? '' : motor,
        modelo: modelo == null ? '' : modelo,
        cilindrada: cilindrada == null ? '' : cilindrada,
        competicion: competicion == null ? '' : competicion,
        producto: producto == null ? '' : producto,
        aplicacion: aplicacion == null ? '' : aplicacion
      };

      return this.miHttp.httpPostP('/art/filtrar', request);
  }
}

