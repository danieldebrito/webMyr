import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';
import { AllArticulosService } from '../../../../services/articulo/consultas-articulos.service';
import { Articulo } from '../../../../clases/articulo';
import { PedidosComponent } from '../../pedidos_/pedidos/pedidos.component';

@Component({
  selector: 'app-catalogo',
  templateUrl: './catalogo.component.html',
  styleUrls: ['./catalogo.component.css']
})

export class CatalogoComponent implements OnInit {

  @Input() allItems: Articulo[];
  @Output() showValue = new EventEmitter();
  @Output() sendArtPedido = new EventEmitter();


  artService: AllArticulosService;

  pedidos = PedidosComponent;

  constructor(servicioArt: AllArticulosService) {
    this.artService = servicioArt;
  }

  public cambiarVista(art: Articulo) {
    this.artService.artDetalle = art;
    this.artService.show = false;
    this.showValue.emit({show: this.artService.show});
  }

  public nuevoPedido () {

  }

  ngOnInit() { }
}
