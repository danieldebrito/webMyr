import { Pipe, PipeTransform } from '@angular/core';
import { AplicacionesService } from 'src/app/services/articulo/aplicaciones.service';

@Pipe({
  name: 'traeApp'
})

export class TraeAppPipe implements PipeTransform {

  constructor( private appService: AplicacionesService ) {}

  transform(value: any, args?: any): any {
    return this.appService.traerApp(value);
  }
}
