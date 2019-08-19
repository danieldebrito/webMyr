import { Pipe, PipeTransform } from '@angular/core';
import { AplicacionesService } from 'src/app/services/aplicaciones/aplicaciones.service';


@Pipe({
  name: 'app'
})
export class AppPipe implements PipeTransform {

    constructor( private appService: AplicacionesService){ }

  transform(value: any): any {
    return this.appService.readOneApp(value).subscribe( response => {
        return response.aplicacion;
      },
        error => {
            console.error(error);
        });
  }

}
