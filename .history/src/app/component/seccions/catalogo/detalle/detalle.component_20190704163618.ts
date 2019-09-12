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

  public showDetail: boolean;
  public art: Articulo;

  // img carousel

  images = ['../../../../../assets/images/juntas/tc-01.jpg',
    '../../../../../assets/images/juntas/tc-02.jpg',
    '../../../../../assets/images/juntas/tc-03.jpg'];

  constructor(private artService: AllArticulosService) {
    this.showDetail = false;
    this.art = new Articulo('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
  }

  cambiaVista() {
    this.showDetail = !this.showDetail;
  }

  /* public traerUno() {
     this.artService.traerUno().subscribe(response => {
         this.art = response;
     },
         error => {
             console.error(error);
         });
 }*/



  ngOnInit() {
    //  this.traerUno();
  }
}
