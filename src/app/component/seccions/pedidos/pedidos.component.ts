import { Component, OnInit } from '@angular/core';
import { AbmPedidosService } from '../../../services/pedidos/abm-pedidos.service';
import { Cliente } from 'src/app/clases/cliente';
import { AuthService } from '../../../services/cliente/auth.service';
import { Pedido } from 'src/app/clases/pedido';

@Component({
  selector: 'app-pedidos',
  templateUrl: './pedidos.component.html',
  styleUrls: ['./pedidos.component.css']
})
export class PedidosComponent implements OnInit {

  public pedidosService: AbmPedidosService;

  // public id_cliente: string;
  public cliente: Cliente;
  public id_sucursal: string;
  public id_expreso: string;
  public fecha: string;
  public observ: string;

  public mensaje: string;

  public allPedidos: Pedido[];

  constructor(servicio: AbmPedidosService, private authService: AuthService) {
    this.pedidosService = servicio;
  }

  public altaPedido() {
    this.pedidosService.altaPedido(
      this.cliente.id,
      this.id_sucursal,
      this.id_expreso,
      this.fecha,
      this.observ
        ).then(
            response => {
                this.mensaje = 'se creo el pedido';  //  agregar, no hay nada en el response
                // this.router.navigate(['home']);
                return response;
            }
        )
        .catch(
            error => {
                console.error('ERROR DEL SERVIDOR', error);
            }
        );
  }

  public Listar() {
    this.pedidosService.ListarO(this.cliente.id).subscribe(response => {
        // console.log(response);
        this.allPedidos = response;
    },
        error => {
            console.error(error);
        });
}

  ngOnInit() {
    this.cliente = this.authService.getIdentityLocalStorage();
    this.Listar();
  }
}
