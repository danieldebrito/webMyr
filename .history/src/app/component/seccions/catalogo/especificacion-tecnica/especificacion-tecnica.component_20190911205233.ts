import { Component, OnInit, Output, EventEmitter } from '@angular/core';
import { AllArticulosService } from '../../../../services/articulo/articulos.service';
import { Articulo } from '../../../../clases/articulo';

@Component({
  selector: 'app-especificacion-tecnica',
  templateUrl: './especificacion-tecnica.component.html',
  styleUrls: ['./especificacion-tecnica.component.css']
})
export class EspecificacionTecnicaComponent implements OnInit {


  @Output() showValue = new EventEmitter();

  public show: boolean;

  // servicio
  artService: AllArticulosService;

  public art: Articulo;

  // img carousel

  images = ['../../../../../assets/images/juntas/tc-01.jpg',
    '../../../../../assets/images/juntas/tc-02.jpg',
    '../../../../../assets/images/juntas/tc-03.jpg'];

  constructor(servicio: AllArticulosService) {
    this.artService = servicio;
    this.art = new Articulo('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

  }

  public traerUno() {
    this.artService.TraerUno(this.art.id_articulo).subscribe(response => {

        this.art = response;
    },
        error => {
            console.error(error);
        });
}

public cambiarVista() {
  this.artService.show = true;
  this.showValue.emit({show: this.artService.show});
}

  ngOnInit() {
    this.traerUno();

    console.log('art => ',  this.art);
  }

}
