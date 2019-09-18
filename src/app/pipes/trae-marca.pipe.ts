import { Pipe, PipeTransform } from '@angular/core';
import { MarcasService } from 'src/app/services/articulo/marcas.service';


@Pipe({
  name: 'traeMarca'
})
export class TraeMarcaPipe implements PipeTransform {

  constructor( private marcasService: MarcasService ) {}


  transform(value: any, args?: any): any {
    return this.marcasService.traerMarca(value);
  }

}
