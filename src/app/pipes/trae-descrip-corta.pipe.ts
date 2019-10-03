import { Pipe, PipeTransform } from '@angular/core';
import { ArticulosService } from 'src/app/services/articulo/articulos.service';

@Pipe({
  name: 'traeDescripCorta'
})
export class TraeDescripCortaPipe implements PipeTransform {

  constructor( private artService: ArticulosService ) {}

  transform(value: any, args?: any): any {
    return this.artService.traeDescripCorta(value);
  }

}
