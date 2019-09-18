import { Pipe, PipeTransform } from '@angular/core';
import { LineasService } from 'src/app/services/articulo/lineas.service';

@Pipe({
  name: 'traeLinea'
})
export class TraeLineaPipe implements PipeTransform {

  constructor( private lineasService: LineasService ) {}

  transform(value: any, args?: any): any {
    return this.lineasService.traerLinea(value);
  }

}
