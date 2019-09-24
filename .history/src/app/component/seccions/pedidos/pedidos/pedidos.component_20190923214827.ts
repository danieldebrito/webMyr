import { Component, OnInit } from '@angular/core';
import { PedidosService } from 'src/app/services/pedidos/pedidos.service';
import { Cliente } from 'src/app/clases/cliente';
import { AuthService } from 'src/app/services/cliente/auth.service';
import { Pedido } from 'src/app/clases/pedido';
import { Router } from '@angular/router';

@Component({
  selector: 'app-pedidos',
  templateUrl: './pedidos.component.html',
  styleUrls: ['./pedidos.component.css']
})
export class PedidosComponent implements OnInit {

  // public pedidosService: AbmPedidosService;
  public identity: Cliente;
  public id_cliente: string;
  public id_sucursal: string;
  public id_expreso: string;
  public fecha: string;
  public observ: string;

  public mensaje: string;
  public allPedidos: Pedido[];

  constructor(
    public pedidosService: PedidosService,
    private authService: AuthService,
    private router: Router) { }

   /* public altaPedido() {
    if (this.identity) {
      this.pedidosService.alta(
        this.identity.id,
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
    } else {
      this.authService.redirectUrl = '/loginUsr';
      this.router.navigate([this.authService.redirectUrl]);  // redirige a login si no esta logueado
    }
  }

  */

  public Listar() {
    this.pedidosService.ListarPedidosCliente(this.identity.id).subscribe(response => {
      this.allPedidos = response;
    },
      error => {
        console.error(error);
      });
  }

  ngOnInit() {
    this.Listar();
    this.identity = this.authService.getIdentityLocalStorage();
  }
}
