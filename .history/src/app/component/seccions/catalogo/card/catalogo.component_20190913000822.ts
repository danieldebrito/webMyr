import { Component, OnInit, DoCheck, Input, Output, EventEmitter } from '@angular/core';
import { AuthService } from 'src/app/services/cliente/auth.service';
import { Router } from '@angular/router';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { CarouselDetailComponent } from 'src/app/component/seccions/catalogo/carousel-detail/carousel-detail.component';

// class
import { Articulo } from 'src/app/clases/articulo';
import { Cliente } from 'src/app/clases/cliente';
import { Pedido } from 'src/app/clases/pedido';
import { Aplicacion } from 'src/app/clases/aplicacion';
import { ArtMarModMot } from 'src/app/clases/ArtMarModMot';

// services
import { AplicacionesService } from 'src/app/services/aplicaciones/aplicaciones.service';
import { AllArticulosService } from 'src/app/services/articulo/articulos.service';
import { AbmPedidosService } from 'src/app/services/pedidos/abm-pedidos.service';

@Component({
  selector: 'app-catalogo',
  templateUrl: './catalogo.component.html',
  styleUrls: ['./catalogo.component.css']
})

export class CatalogoComponent implements OnInit, DoCheck {

  @Input() allItems: ArtMarModMot[];
  @Output() showValue = new EventEmitter();

  public mensaje: any;
  public identity: Cliente;
  public pedidoAbierto: Pedido;
  public articulo: Articulo;
  public app: string;

  constructor(
    public modalService: NgbModal,
    public artService: AllArticulosService,
    public pedidosService: AbmPedidosService,
    private authService: AuthService,
    private appService: AplicacionesService,
    private router: Router
  ) {
    this.pedidoAbierto = new Pedido(-1, '', '', '', '', '', '');
  }

  public readAppID(id: string) {
    this.appService.readOneApp(id).subscribe(response => {
      return response.aplicacion;
    },
      error => {
        console.error(error);
      });
  }

  public cambiarVista(art: Articulo) {
    this.artService.artDetalle = art;
    this.artService.show = false;
    this.showValue.emit({ show: this.artService.show });  // true, muestra grilla, false, muestra detalle de art
    this.router.navigate(['especificacion']);
  }

  public traerArt(item: ArtMarModMot) {
    this.artService.TraerUno(item.id_articulo).subscribe(response => {
      this.articulo = response;
      //  this.app = this.articulo.id_aplicacion;
      // return this.app;
      alert(item.id_articulo);
      return item.id_articulo;
    },
      error => {
        console.error(error);
      });
  }

  public traeArt() {
    this.artService.TraerUno('01-2610 S').subscribe(response => {
      alert(response.id_articulo);
    }, error => {
      console.error(error);
    });
  }

  /*
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
  }*/

  public traeAbierto() {/*
    this.pedidosService.traerIDpedidoAbierto(this.identity.id).subscribe(response => {
      this.pedidoAbierto = response;
      console.log(this.pedidoAbierto);
    },
      error => {
        console.error(error);
      });*/
  }

  public traeCreaAbierto() {
    this.traeAbierto();
    if (this.pedidoAbierto.id_pedido === -1 || this.pedidoAbierto[0] === undefined) {
      // this.altaPedido();
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

    this.traeArt();
  }

  ngDoCheck() {
    this.identity = this.authService.getIdentityLocalStorage();
  }
}
