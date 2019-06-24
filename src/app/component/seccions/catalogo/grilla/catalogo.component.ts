import { Component, OnInit, DoCheck, Input, Output, EventEmitter } from '@angular/core';
import { Articulo } from '../../../../clases/articulo';
import { Cliente } from 'src/app/clases/cliente';

import { AllArticulosService } from '../../../../services/articulo/consultas-articulos.service';
import { AbmPedidosService } from '../../../../services/pedidos/abm-pedidos.service';
import { AuthService } from '../../../../services/cliente/auth.service';
import { Pedido } from 'src/app/clases/pedido';
import { isUndefined } from 'util';
import { Router } from '@angular/router';

import { NgbActiveModal, NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { CarouselDetailComponent } from 'src/app/component/seccions/catalogo/carousel-detail/carousel-detail.component';



@Component({
  selector: 'app-catalogo',
  templateUrl: './catalogo.component.html',
  styleUrls: ['./catalogo.component.css']
})

export class CatalogoComponent implements OnInit, DoCheck {

  @Input() allItems: Articulo[];
  @Output() showValue = new EventEmitter();

  // artService: AllArticulosService;
  public mensaje: any;
  public identity: Cliente;
  public pedidoAbierto: Pedido;

  constructor(
    public modalService: NgbModal,
    public artService: AllArticulosService,
    public pedidosService: AbmPedidosService,
    private authService: AuthService,
    private router: Router
  ) {
    // this.artService = servicioArt;
    this.pedidoAbierto = new Pedido(-1, '', '', '', '', '', '');
  }

  public cambiarVista(art: Articulo) {
    this.artService.artDetalle = art;
    this.artService.show = false;
    this.showValue.emit({ show: this.artService.show });  // true, muestra grilla, false, muestra detalle de art
    this.router.navigate(['especificacion']);
  }

  public altaPedido() {
    this.pedidosService.altaPedido(
      this.identity.id,
      '',
      '',
      this.pedidosService.getfecha(),
      ''
    ).then(
      response => {
        this.mensaje = response;  //  agregar, no hay nada en el response
        // this.router.navigate(['home']);  //  redirecciona a HOME
      }
    ).catch(
      error => {
        console.error('ERROR DEL SERVIDOR', error);
      }
    );
    this.traeAbierto();
  }

  public traeAbierto() {
    this.pedidosService.traerIDpedidoAbierto(this.identity.id).subscribe(response => {
      this.pedidoAbierto = response;
      console.log(this.pedidoAbierto);
    },
      error => {
        console.error(error);
      });
  }

  public traeCreaAbierto () {
    this.traeAbierto();
    if (this.pedidoAbierto.id_pedido === -1 || isUndefined(this.pedidoAbierto[0]) ) {
      this.altaPedido();
      this.traeAbierto();
    } else {
      // this.traeAbierto();
    }
  }

  open() {
    const modalRef = this.modalService.open(CarouselDetailComponent);
    modalRef.componentInstance.name = 'World';
  }

  ngOnInit() {
    this.identity = this.authService.getIdentityLocalStorage();
    this.traeAbierto();
  }

  ngDoCheck() {
    this.identity = this.authService.getIdentityLocalStorage();
  }
}
