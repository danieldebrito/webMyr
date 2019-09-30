import { Component, OnInit, DoCheck } from '@angular/core';
import { isUndefined } from 'util';

// entidades
import { Pedido } from 'src/app/clases/pedido';
import { Articulo } from 'src/app/clases/articulo';
import { Cliente } from 'src/app/clases/cliente';

// services
import { AuthService } from '../../../../services/cliente/auth.service';
import { PedidoItemService } from '../../../../services/pedidos/pedido_item.service';
import { PedidosService } from '../../../../services/pedidos/pedidos.service';
import { ArticulosService } from '../../../../services/articulo/articulos.service';

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
  public artService: ArticulosService,
  public pedidosService: PedidosService,
  private authService: AuthService
) {}




public nuevoPedido () {}

ngOnInit() {
  this.identity = this.authService.getIdentityLocalStorage();
}

ngDoCheck() {
  this.identity = this.authService.getIdentityLocalStorage();
}
}
