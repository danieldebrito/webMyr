import { Injectable } from '@angular/core';
import { ArticuloService } from './articulo.service';

@Injectable({
  providedIn: 'root'
})
export class AllArticulosService {

  constructor(public miHttp: ArticuloService) { }

  public listar(): Promise<Array<any>> {
    return this.miHttp.httpGetP('/all')
      .then(data => {
        // console.log(data);
        return data;
      })
      .catch(err => {
        console.log(err);
        return null;
      });
  }

  public listarPorColumna(columna: string): Promise<Array<any>> {
    return this.miHttp.httpGetP('/all/' + columna)
      .then(data => {
        return data;
      })
      .catch(err => {
        console.log(err);
        return null;
      });
  }

  public listarObserv() {
    return this.miHttp.httpGetO('/all');
  }

  // filtrar promise
  public filtrar(linea: string, marca: string): Promise<Object> {
    const request: Object = {
      linea: linea,
      marca: marca
    };
    return this.miHttp.httpPostP('/filtro', request);
  }

  // filtrar observable
  public filtrarO(
    linea: string,
    marca: string,
    combustible: string,
    motor: string,
    modelo: string,
    cilindrada: string,
    competicion: string,
    producto: string,
    aplicacion: string
    ) {
    const Request: Object = {
      linea: linea,
      marca: marca,
      combustible: combustible,
      motor: motor,
      modelo: modelo,
      cilindrada: cilindrada,
      competicion: competicion,
      producto: producto,
      aplicacion: aplicacion
    };

    return this.miHttp.httpPostO('/filtro', Request);
  }


    // filtrar observable
    public f(
      linea: string,
      marca: string,
      ) {
      const Request: Object = {
        linea: linea,
        marca: marca
      };

      return this.miHttp.httpPostO('/filtro', Request);
    }


}
