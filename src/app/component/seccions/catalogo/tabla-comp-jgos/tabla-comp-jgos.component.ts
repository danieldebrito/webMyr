import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';
import { AllArticulosService } from '../../../../services/articulo/consultas-articulos.service';
import { Articulo } from 'src/app/clases/articulo';

@Component({
  selector: 'app-tabla-comp-jgos',
  templateUrl: './tabla-comp-jgos.component.html',
  styleUrls: ['./tabla-comp-jgos.component.css']
})
export class TablaCompJgosComponent implements OnInit {

  @Input() allItems: Articulo[];
  @Output() showValue = new EventEmitter();

  show = true;

  constructor( private articulosService: AllArticulosService ) {

  }

  cambia() {
    this.showValue.emit();
  }


  ngOnInit() {
  }

}
