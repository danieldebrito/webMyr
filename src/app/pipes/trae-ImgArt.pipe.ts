import { Pipe, PipeTransform } from '@angular/core';
import { ArticulosService } from 'src/app/services/articulo/articulos.service';

@Pipe({
  name: 'traeImgArt'
})
export class TraeImgArtPipe implements PipeTransform {

  constructor( private artService: ArticulosService ) {}

  transform(value: any, args?: any): any {
    return this.artService.traerImgArt(value);
  }

}
