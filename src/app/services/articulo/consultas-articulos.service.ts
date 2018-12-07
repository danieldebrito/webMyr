import { Injectable } from '@angular/core';
import { ArticuloService } from './articulo.service';
import { Articulo } from '../../clases/articulo';
import { Observable } from 'rxjs';


@Injectable({
  providedIn: 'root'
})
export class AllArticulosService {

  constructor(public miHttp: ArticuloService) { }

  public ListarP(): Promise<Array<any>> {
    return this.miHttp.httpGetP('/all')
      .then(data => {
        return data;
      })
      .catch(err => {
        console.log(err);
        return null;
      });
  }

  public ListarO(): Observable<Articulo[]> {
    return this.miHttp.httpGetO<Articulo[]>('/all');
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

      console.log('request desde el servicio: ' +  request);

      return this.miHttp.httpPostP('/filtrar', request);
    }

  }

