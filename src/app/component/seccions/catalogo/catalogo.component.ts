import { Component, OnInit, Output, EventEmitter } from '@angular/core';
import { AllArticulosService } from '../../../services/articulo/consultas-articulos.service';

import { Articulo } from '../../../clases/articulo';

@Component({
  selector: 'app-catalogo',
  templateUrl: './catalogo.component.html',
  styleUrls: ['./catalogo.component.css']
})
export class CatalogoComponent implements OnInit {

  @Output() cambiaShowValue = new EventEmitter();

  public showValue: boolean;

  public allItems: Articulo[];

  artService: AllArticulosService;

  constructor(servicioArt: AllArticulosService) {
    this.artService = servicioArt;
    this.showValue =  false;
  }

  public Listar() {
    this.artService.ListarO().subscribe( response => {
       // console.log(response);
        this.allItems = response;
      },
      error => {
        console.error(error);
      });
    }

    public RecibeData(e) {
      this.allItems = e;
    }

    public cambiaGrillaPorDetalle (event) {
      this.cambiaShowValue.emit({ showValue: this.showValue});
    }

  ngOnInit() {
    this.Listar();
  }
}
