import { Component, OnInit, DoCheck } from '@angular/core';
import { isUndefined } from 'util';

// entidades
import { Pedido } from 'src/app/clases/pedido';
import { Articulo } from 'src/app/clases/articulo';
import { Cliente } from 'src/app/clases/cliente';

// services
import { AuthService } from '../../../../services/cliente/auth.service';
import { AbmPedidoDetalleService } from '../../../../services/pedidos/abm-pedido-detalle.service';
import { AbmPedidosService } from '../../../../services/pedidos/abm-pedidos.service';
import { AllArticulosService } from '../../../../services/articulo/articulos.service';

@Component({
  selector: 'app-carrito',
  templateUrl: './carrito.component.html',
  styleUrls: ['./carrito.component.css']
})

export class CarritoComponent implements OnInit, DoCheck {

// artService: AllArticulosService;
public mensaje: any;
public identity: Cliente;
public pedidoAbierto: Pedido;

constructor(
  public artService: AllArticulosService,
  public pedidosService: AbmPedidosService,
  private authService: AuthService
) {
  // this.artService = servicioArt;
  this.pedidoAbierto = new Pedido(-1, '', '', '', '', '', '');
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
    // this.altaPedido();
    this.traeAbierto();
  } else {
    // this.traeAbierto();
  }
}

public nuevoPedido () {}

ngOnInit() {
  this.identity = this.authService.getIdentityLocalStorage();
  this.traeAbierto();
}

ngDoCheck() {
  this.identity = this.authService.getIdentityLocalStorage();
}
}
