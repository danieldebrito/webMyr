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


}

