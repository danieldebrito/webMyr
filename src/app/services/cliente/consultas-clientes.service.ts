import { Injectable } from '@angular/core';
import { ClienteService } from '../cliente/cliente.service';


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

    console.log('SERVICIO CLIENTES REQUEST =>', request);

    return this.miHttp.httpPostP('/', request);
  }
}
