import { Component, OnInit, DoCheck } from '@angular/core';

// class
import { PedidoItem } from 'src/app/clases/pedidoItem';
import { Pedido } from 'src/app/clases/pedido';
import { Articulo } from 'src/app/clases/articulo';
import { Cliente } from 'src/app/clases/cliente';

// services
import { AuthService } from 'src/app/services/cliente/auth.service';
import { PedidoItemService } from 'src/app/services/pedidos/pedido_item.service';
import { PedidosService } from 'src/app/services/pedidos/pedidos.service';
import { ArticulosService } from 'src/app/services/articulo/articulos.service';

@Component({
  selector: 'app-carrito',
  templateUrl: './carrito.component.html',
  styleUrls: ['./carrito.component.css']
})

export class CarritoComponent implements OnInit, DoCheck {

  public mensaje: any;
  public identity: Cliente;
  public pedidoAbierto: Pedido;
  public articulo: Articulo;
  public pedidoItems: PedidoItem[] = [];

  constructor(
    private pedidoItemServ: PedidoItemService,
    public artService: ArticulosService,
    public pedidosService: PedidosService,
    private authService: AuthService
  ) { }

  public nuevoPedido() { }

  public listarPedidoAbierto() {
    this.pedidoItemServ.traerItemsClienteAbierto(this.identity.id).subscribe(response => {
      alert(response);
      this.pedidoItems = response;
    },
      error => {
        console.error(error);
      });
  }

  public traerArticuloDescripcion(id: string) {
    this.artService.TraerUno(id).subscribe(response => {
      this.articulo = response;
      return response.descripcion_corta;
    },
      error => {
        console.error(error);
      });
  }

  public traerDescripArtLS (id: string) {
    return this.artService.traerArtLocalStorage(id).descripcion_corta;
  }

  ngOnInit() {
    this.identity = this.authService.getIdentityLocalStorage();
    this.listarPedidoAbierto();
  }

  ngDoCheck() {
    this.identity = this.authService.getIdentityLocalStorage();
  }
}
