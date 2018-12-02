import { Component, OnInit } from '@angular/core';
import { AllArticulosService } from '../../../services/articulo/consultas-articulos.service';
import { Articulo } from '../../../clases/articulo';

@Component({
  selector: 'app-catalogo',
  templateUrl: './catalogo.component.html',
  styleUrls: ['./catalogo.component.css']
})
export class CatalogoComponent implements OnInit {

  public items: Articulo[];
  artService: AllArticulosService;

  constructor(servicioArt: AllArticulosService) {
    this.artService = servicioArt;
  }

  ngOnInit() {
    this.artService.listar()
      .then(datos => {
        this.items = datos;
      });
  }
}
