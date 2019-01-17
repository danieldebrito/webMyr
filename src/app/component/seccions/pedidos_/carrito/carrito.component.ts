import { Component, OnInit } from '@angular/core';

// entidades
import { Pedido } from 'src/app/clases/pedido';
import { Articulo } from 'src/app/clases/articulo';
import { Cliente } from 'src/app/clases/cliente';

import { PedidosComponent } from '../pedidos/pedidos.component';

// services
import { AuthService } from '../../../../services/cliente/auth.service';
import { AbmPedidoDetalleService } from '../../../../services/pedidos/abm-pedido-detalle.service';
import { AbmPedidosService } from '../../../../services/pedidos/abm-pedidos.service';

@Component({
  selector: 'app-carrito',
  templateUrl: './carrito.component.html',
  styleUrls: ['./carrito.component.css']
})

export class CarritoComponent implements OnInit {

  constructor(public pedidosService: AbmPedidosService, private authService: AuthService, public carritoServ: AbmPedidoDetalleService ) { }

    public mensaje: string;
    public clienteLogueado;

    public cargaCarrito(id_articulo: string, cantidad: number ) {

        // trae id de pedido abierto, si no hay genera uno nuevo
        const id_pedido = this.getIdPedido();

        if (cantidad) {
            this.carritoServ.altaPedidoDetalle(id_pedido, id_articulo, cantidad).then(
                response => {
                    //  agregar, no hay nada en el response
                    // this.router.navigate(['home']);
                    return response;
                }
            )
            .catch(
                error => {
                    console.error('ERROR DEL SERVIDOR', error);
                }
            );
        } else {
            this.mensaje = 'Debe especificar la cantidad';
        }
    }

    // trae id de pedido abierto, si no hay genera uno nuevo
    public getIdPedido() {

        this.pedidosService.traerIDpedido(this.clienteLogueado.id).subscribe(response => {
            console.log(response.id_pedido);
            return response.id_pedido;
        },
            error => {
                console.error(error);
            });
    }


    /*
    public Listar() {
    this.pedidosService.ListarO(this.cliente.id).subscribe(response => {
        // console.log(response);
        this.allPedidos = response;
    },
        error => {
            console.error(error);
        });
    }
*/

  ngOnInit() {}
}
