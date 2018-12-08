import { Component, OnInit, Input } from '@angular/core';
import { AllArticulosService } from '../../../../services/articulo/consultas-articulos.service';

import { Articulo } from '../../../../clases/articulo';

@Component({
  selector: 'app-catalogo',
  templateUrl: './catalogo.component.html',
  styleUrls: ['./catalogo.component.css']
})
export class CatalogoComponent implements OnInit {

  @Input() allItems: Articulo[];

  artService: AllArticulosService;

  constructor(servicioArt: AllArticulosService) {
    this.artService = servicioArt;
  }

  ngOnInit() {

  }
}
