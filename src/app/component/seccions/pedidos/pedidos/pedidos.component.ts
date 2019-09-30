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


  ngOnInit() {
    this.identity = this.authService.getIdentityLocalStorage();
  }
}
