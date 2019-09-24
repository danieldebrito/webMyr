import { Component, OnInit, DoCheck } from '@angular/core';
// class
import { Cliente } from 'src/app/clases/cliente';
import { Pedido } from 'src/app/clases/pedido';

// servicios
import { PedidosService } from 'src/app/services/pedidos/pedidos.service';
import { AuthService } from 'src/app/services/cliente/auth.service';

@Component({
  selector: 'app-boton-comprar',
  templateUrl: './boton-comprar.component.html',
  styleUrls: ['./boton-comprar.component.css']
})
export class BotonComprarComponent implements OnInit, DoCheck {

  public identity: Cliente;
  public pedido: Pedido;


  constructor(
    private pedidosService: PedidosService,
    private authService: AuthService) { }

  public traePedidoAbierto() {
    if (this.identity.id === null) {
      alert('debe estar registrado');
    } else {
      this.pedidosService.traerpedidoAbierto(this.identity.id).subscribe(response => {
        this.pedido = response;

        if (this.pedido) {
          alert(this.pedido.id_pedido);
        } else {
          alert('no hay pedido abierto');
        }
      },
        error => {
          console.error(error);
        });
    }
  }



  ngOnInit() {
    this.identity = this.authService.getIdentityLocalStorage();
  }


  ngDoCheck() {
    this.identity = this.authService.getIdentityLocalStorage();
  }


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
  }

  public traeAbierto() {
    this.pedidosService.traerIDpedidoAbierto(this.identity.id).subscribe(response => {
      this.pedidoAbierto = response;
      console.log(this.pedidoAbierto);
    },
      error => {
        console.error(error);
      });
  }

  public traeCreaAbierto() {
    this.traeAbierto();
    if (this.pedidoAbierto.id_pedido === -1 || this.pedidoAbierto[0] === undefined) {
      // this.altaPedido();
      this.traeAbierto();
    } else {
      // this.traeAbierto();
    }
  }


*/
