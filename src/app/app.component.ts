import { Component, OnInit, DoCheck } from '@angular/core';
// class
import { Cliente } from 'src/app/clases/cliente';
// services
import { ArticulosService } from 'src/app/services/articulo/articulos.service';
import { AplicacionesService } from 'src/app/services/articulo/aplicaciones.service';
import { ProductosService } from 'src/app/services/articulo/productos.service';
import { AuthService } from 'src/app/services/cliente/auth.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit, DoCheck {
  title = 'JUNTAS MEYRO';
  public identity: Cliente;

  constructor(
    private artService: ArticulosService,
    private appService: AplicacionesService,
    private prodService: ProductosService,
    private authService: AuthService ) { }

  ngOnInit() {
    this.identity = this.authService.getIdentityLocalStorage();

    // localStorage.clear();
    this.artService.GuardarArtLocalStorage();
    this.appService.GuardarArtLocalStorage();
    this.prodService.GuardarArtLocalStorage();
  }

  ngDoCheck() {
    this.identity = this.authService.getIdentityLocalStorage();
  }
}
