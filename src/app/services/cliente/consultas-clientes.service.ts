import { Injectable } from '@angular/core';
import { ClienteService } from '../cliente/cliente.service';
import { Cliente } from 'src/app/clases/cliente';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ConsultasClientesService {

  constructor(public miHttp: ClienteService) { }

  public altaCliente(
    id: string,
    cuit: string,
    razonSocial: string,
    comprador: string,
    email: string,
    clave: string
  ): Promise<Object> {

      const request: Object = {
        id: id,
        cuit: cuit,
        razonSocial: razonSocial,
        comprador: comprador,
        email: email,
        clave: clave
    };
    return this.miHttp.httpPostP('/', request);
  }

  public traerUno(id: string): Observable<Cliente> {
    return this.miHttp.httpGetO<Cliente>('/' + '"' + id + '"');
  }
}

