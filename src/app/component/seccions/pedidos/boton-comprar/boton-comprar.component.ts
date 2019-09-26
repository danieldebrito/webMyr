import { Component, OnInit, DoCheck } from '@angular/core';
// class
import { Cliente } from 'src/app/clases/cliente';
import { Pedido } from 'src/app/clases/pedido';
import { Articulo } from 'src/app/clases/articulo';

// servicios
import { PedidosService } from 'src/app/services/pedidos/pedidos.service';
import { PedidoDetalleService } from 'src/app/services/pedidos/pedido_detalle.service';
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
    private pedidoDetalleServ: PedidoDetalleService,
    private authService: AuthService) {
    this.cantidad = 1;
  }

  public traePedidoAbierto() {
    if (this.identity.id === null) {
      alert('debe estar registrado');
      return -1;
    } else {
      this.pedidosService.traerpedidoAbierto(this.identity.id).subscribe(response => {

        if (response.id_pedido) {

          // alert('HAY PEDIDO ABIERTO =>' + response.id_pedido);
          this.id_pedido = response.id_pedido;
          return response.id_pedido;

        } else {
          // alert('NO HAY PEDIDO ABIERTO');

          this.id_pedido = this.nuevoPedido();
          // alert('NUEVO PEDIDO =>' +  response.id_pedido );
          return response.id_pedido;

        }
      },
        error => {
          console.error(error);
        });
    }
  }

  public nuevoPedido() {
    this.pedidosService.Alta(
      this.identity.id,
      '',
      '',
      'abierto',
      'pendiente',
      this.pedidosService.getfecha(),
      ''
    ).then(
      response => {
        return response;
      }
    ).catch(
        error => {
          console.error('ERROR DEL SERVIDOR', error, );
        }
      );
  }

  public cargaItem() {

    alert(this.id_pedido);

    this.traePedidoAbierto();

    alert(this.id_pedido);

    this.pedidoDetalleServ.Alta(
      /*this.id_pedido*/30,
      /*this.articulo.id_articulo*/'01-2000 S',
      this.cantidad
    ).then(
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

    // this.traePedidoAbierto();
  }

  ngDoCheck() {
    this.identity = this.authService.getIdentityLocalStorage();
  }
}
