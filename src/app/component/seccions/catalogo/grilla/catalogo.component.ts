import { Component, OnInit, DoCheck, Input, Output, EventEmitter } from '@angular/core';
import { Articulo } from '../../../../clases/articulo';
import { Cliente } from 'src/app/clases/cliente';

import { AllArticulosService } from '../../../../services/articulo/consultas-articulos.service';
import { AbmPedidosService } from '../../../../services/pedidos/abm-pedidos.service';
import { AuthService } from '../../../../services/cliente/auth.service';
import { Pedido } from 'src/app/clases/pedido';


@Component({
  selector: 'app-catalogo',
  templateUrl: './catalogo.component.html',
  styleUrls: ['./catalogo.component.css']
})

export class CatalogoComponent implements OnInit, DoCheck {

  @Input() allItems: Articulo[];
  @Output() showValue = new EventEmitter();

  artService: AllArticulosService;
  public mensaje: any;
  public identity: Cliente;
  public fecha: string;
  public hora: string;
  public pedidoAbierto: Pedido;

  constructor(
    servicioArt: AllArticulosService,
    public pedidosService: AbmPedidosService,
    private authService: AuthService
  ) {
    this.artService = servicioArt;
  }

  public cambiarVista(art: Articulo) {
    this.artService.artDetalle = art;
    this.artService.show = false;
    this.showValue.emit({ show: this.artService.show });  // true, muestra grilla, false, muestra detalle de art
  }

  getfecha() {
    const fechaActual = new Date();
    const dia = fechaActual.getDate().toString();
    const mes = (fechaActual.getMonth() + 1).toString();
    const anio = fechaActual.getFullYear().toString();
    const hora = fechaActual.getHours().toString();
    const minutos = fechaActual.getMinutes().toString();
    const segundos = fechaActual.getSeconds().toString();
    this.fecha = anio + '/' + mes + '/' + dia;
    this.hora = hora + ':' + minutos + ':' + segundos;

    const ret = this.fecha;

    return ret;
  }

  public altaPedido() {

    this.traeAbierto();

    this.pedidosService.altaPedido(
      this.identity.id,
      '',
      '',
      this.getfecha(),
      ''
    ).then(
      response => {
        this.mensaje = response;  //  agregar, no hay nada en el response
        // this.router.navigate(['home']);  //  redirecciona a HOME
      }
    )
      .catch(
        error => {
          console.error('ERROR DEL SERVIDOR', error);
        }
      );
  }

  public traeAbierto() {
    this.pedidosService.traerIDpedidoAbierto(this.identity.id).subscribe(response => {
      this.pedidoAbierto = response;
      console.log('abierto ::::::::::::::::::::::' + this.pedidoAbierto[0].id_pedido );
    },
      error => {
        console.error(error);
      });
  }

  ngOnInit() {
    this.identity = this.authService.getIdentityLocalStorage();
  }

  ngDoCheck() {
    this.identity = this.authService.getIdentityLocalStorage();
  }
}
