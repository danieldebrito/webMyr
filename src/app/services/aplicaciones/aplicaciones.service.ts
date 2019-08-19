import { Injectable } from '@angular/core';
import { BaseService } from 'src/app/services/base.service';
import { Observable } from 'rxjs';
import { Aplicacion } from 'src/app/clases/aplicacion';


@Injectable({
  providedIn: 'root'
})
export class AplicacionesService {

  public app: Aplicacion;

  constructor(public miHttp: BaseService) { }

  public readApp(): Observable<Aplicacion> {
    return this.miHttp.httpGetO<Aplicacion>('/aplicaciones/' + '"' + this.app.id_aplicacion + '"');
  }

  public readOneApp(id: string): Observable<Aplicacion> {
    return this.miHttp.httpGetO<Aplicacion>('/aplicaciones/' + '"' + id + '"');
  }
}
