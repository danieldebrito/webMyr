import { Pipe, PipeTransform } from '@angular/core';
import { CombustiblesService } from 'src/app/services/articulo/combustibles.service';

@Pipe({
  name: 'traeComb'
})
export class TraeCombPipe implements PipeTransform {

  constructor( private combService: CombustiblesService ) {}

  transform(value: any, args?: any): any {
    return this.combService.traerComb(value);
  }

}
