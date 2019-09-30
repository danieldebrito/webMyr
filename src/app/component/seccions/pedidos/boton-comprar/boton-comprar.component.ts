import { Component, OnInit, DoCheck } from '@angular/core';
// class
import { Cliente } from 'src/app/clases/cliente';
import { Pedido } from 'src/app/clases/pedido';
import { Articulo } from 'src/app/clases/articulo';

// servicios
import { PedidosService } from 'src/app/services/pedidos/pedidos.service';
import { PedidoItemService } from 'src/app/services/pedidos/pedido_item.service';
import { AuthService } from 'src/app/services/cliente/auth.service';

@Component({
  selector: 'app-boton-comprar',
  templateUrl: './boton-comprar.component.html',
  styleUrls: ['./boton-comprar.component.css']
})

export class BotonComprarComponent implements OnInit, DoCheck {

  public identity: Cliente;
  public id_pedido;
  public articulo: Articulo;
  public cantidad: number;

  constructor(
    private pedidosService: PedidosService,
    private pedidoItemServ: PedidoItemService,
    private authService: AuthService) {
    this.cantidad = 1;
  }

  ngOnInit() {
    this.identity = this.authService.getIdentityLocalStorage();
  }

  ngDoCheck() {
    this.identity = this.authService.getIdentityLocalStorage();
  }
}
