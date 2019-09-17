import { Pipe, PipeTransform } from '@angular/core';
import { ProductosService } from 'src/app/services/articulo/productos.service';

@Pipe({
  name: 'traeProd'
})
export class TraeProdPipe implements PipeTransform {

  constructor( private prodService: ProductosService ) {}

  transform(value: any, args?: any): any {
    return this.prodService. traerProd(value);
  }

}
