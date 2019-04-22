import { Component, OnInit, Output, EventEmitter } from '@angular/core';
import { AllArticulosService } from '../../../../services/articulo/consultas-articulos.service';
import { Articulo } from '../../../../clases/articulo';

@Component({
  selector: 'app-detalle',
  templateUrl: './detalle.component.html',
  styleUrls: ['./detalle.component.css']
})
export class DetalleComponent implements OnInit {

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
    this.artService.traerUno().subscribe(response => {

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
