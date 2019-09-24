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
  public pedido;
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
          alert('HAY PEDIDO ABIERTO =>' + this.pedido);
          this.pedido = response.id_pedido;
          return this.pedido;
        } else {
          alert('NO HAY PEDIDO ABIERTO');

          this.pedido = this.nuevoPedido();

          alert('NUEVO PEDIDO =>' +  this.pedido );

          return this.pedido;
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
    this.traePedidoAbierto();

    alert('carga item' + this.pedido);

    this.pedidoDetalleServ.Alta(
      this.pedido,
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
  //  this.traePedidoAbierto();
  this.traePedidoAbierto();
  }

  ngDoCheck() {
    this.identity = this.authService.getIdentityLocalStorage();
  }
}
