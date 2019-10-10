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

  public identity: Cliente;
  public articulo: Articulo;
  public pedidoItems: PedidoItem[] = [];

  public id_sucursal: number;
  public id_expreso: number;
  public envio: string;
  public fecha: string;
  public observaciones: string;

  constructor(
    private pedidoItemServ: PedidoItemService,
    public artService: ArticulosService,
    public pedidosService: PedidosService,
    private authService: AuthService
  ) { }

  public nuevoPedido() { }

  public listarPedidoAbierto() {
    this.pedidoItemServ.traerItemsClienteAbierto(this.identity.id).subscribe(response => {
      this.pedidoItems = response;
    },
      error => {
        console.error(error);
      });
  }

  public borrarItem (id: string) {
    this.pedidoItemServ.Baja(id).then(
      response => {
        this.listarPedidoAbierto();
        alert(response
          );
        return response;
      }
    ).catch(
      error => {
        console.error('ERROR DEL SERVIDOR', error);
      }
    );
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

  public crearPedido () {
    this.pedidosService.Alta(
      this.id_sucursal,
      this.id_expreso,
      this.envio,
      this.fecha,
      this.observaciones).then(
      response => {
        return response;
      }
    ).catch(
      error => {
        console.error('ERROR DEL SERVIDOR', error);
      }
    );
  }

  public cerrarPedido (id_pedido, id_cliente) {
    this.pedidoItemServ.CerrarPedido(id_pedido, id_cliente).then(
      response => {
        return response;
      }
    ).catch(
      error => {
        console.error('ERROR DEL SERVIDOR', error);
      }
    );
  }

  ngOnInit() {
    this.identity = this.authService.getIdentityLocalStorage();
    this.listarPedidoAbierto();
  }

  ngDoCheck() {
    this.identity = this.authService.getIdentityLocalStorage();
  }
}
