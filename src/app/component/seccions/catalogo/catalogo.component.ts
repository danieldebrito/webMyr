import { Component, OnInit } from '@angular/core';
import { AllArticulosService } from '../../../services/articulo/consultas-articulos.service';

import { Articulo } from '../../../clases/articulo';

@Component({
  selector: 'app-catalogo',
  templateUrl: './catalogo.component.html',
  styleUrls: ['./catalogo.component.css']
})
export class CatalogoComponent implements OnInit {  // PADRE   ///////////////////////////////////////

  public allItems: Articulo[];

  artService: AllArticulosService;

  constructor(servicioArt: AllArticulosService) {
    this.artService = servicioArt;
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

  ngOnInit() {
    this.Listar();
  }
}
