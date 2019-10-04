import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { AppComponent } from './app.component';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
// rutas
import { AppRoutingModule } from './routes/app-routing.module';
// services //
import { AuthService } from './services/cliente/auth.service';
import { PedidosService } from './services/pedidos/pedidos.service';
import { PedidoItemService } from './services/pedidos/pedido_item.service';
import { ConsultasClientesService } from './services/cliente/consultas-clientes.service';
import { ArtMarModMotService } from './services/articulo/art-mar-mod-mot.service';
import { ArticulosService } from './services/articulo/articulos.service';
import { AplicacionesService } from './services/articulo/aplicaciones.service';
// styles
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { BootstrapModule } from './styles/ngBootstrap';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MaterialModule } from './styles/material';
import { PrimeNGModule } from './styles/primeNG';
import { AngularFontAwesomeModule } from 'angular-font-awesome';
// layout
import { NavbarComponent } from './component/layout/navbar/navbar.component';
import { BodyComponent } from './component/layout/body/body.component';
import { FooterComponent } from './component/layout/footer/footer.component';
// seccions
import { NgbCarouselComponent } from './component/seccions/home/ngb-carousel/ngb-carousel.component';
import { HomeComponent } from './component/seccions/home/home/home.component';
import { PageNotFoundComponent } from './component/seccions/page-not-found/page-not-found.component';
import { QuienSoyComponent } from './component/seccions/quien-soy/quien-soy.component';
import { PreFooterComponent } from './component/layout/footer/pre-footer/pre-footer.component';
import { CatalogoComponent } from './component/seccions/catalogo/card/catalogo.component';
import { FiltroComponent } from './component/seccions/catalogo/filtro/filtro.component';
import { PreNavComponent } from './component/layout/navbar/pre-nav/pre-nav.component';
import { ContactComponent } from './component/seccions/contact/contact.component';
import { DtoTecnicoComponent } from './component/seccions/dto-tecnico/dto-tecnico.component';
import { LoginComponent } from './component/seccions/clientes/login/login.component';
import { RegistroComponent } from './component/seccions/clientes/registro/registro.component';
import { RecupPasswordComponent } from './component/seccions/clientes/recup-password/recup-password.component';
import { DetalleComponent } from './component/seccions/catalogo/detalle/detalle.component';
import { CarritoComponent } from './component/seccions/pedidos/carrito/carrito.component';
import { PedidosComponent } from './component/seccions/pedidos/pedidos/pedidos.component';
import { MisDatosComponent } from './component/seccions/clientes/mis-datos/mis-datos.component';
import { RegistroUsersComponent } from './component/seccions/users/registro-users/registro-users.component';
import { PanelControlComponent } from './component/seccions/users/panel-control/panel-control.component';
import { AbmExpresosComponent } from './component/seccions/users/abm-expresos/abm-expresos.component';
import { LoginUsuarioComponent } from './component/seccions/users/login-usuario/login-usuario.component';
import { AbmSucursalesComponent } from './component/seccions/clientes/abm-sucursales/abm-sucursales.component';
import { CarouselDetailComponent } from './component/seccions/catalogo/carousel-detail/carousel-detail.component';
import { TablaProdVersionComponent } from './component/seccions/catalogo/tabla-prod-version/tabla-prod-version.component';
import { TablaCompJgosComponent } from './component/seccions/catalogo/tabla-comp-jgos/tabla-comp-jgos.component';
import { BotonComprarComponent } from './component/seccions/pedidos/boton-comprar/boton-comprar.component';
// pipes
import { TraeAppPipe } from './pipes/trae-app.pipe';
import { TraeProdPipe } from './pipes/trae-prod.pipe';
import { TraeMarcaPipe } from './pipes/trae-marca.pipe';
import { TraeLineaPipe } from './pipes/trae-linea.pipe';
import { TraeCombPipe } from './pipes/trae-comb.pipe';
import { TraeImgArtPipe } from './pipes/trae-ImgArt.pipe';
import { TraeDescripCortaPipe } from './pipes/trae-descrip-corta.pipe';

@NgModule({
  declarations: [
    NavbarComponent,
    BodyComponent,
    FooterComponent,
    AppComponent,
    NgbCarouselComponent,
    HomeComponent,
    PageNotFoundComponent,
    QuienSoyComponent,
    PreFooterComponent,
    CatalogoComponent,
    FiltroComponent,
    PreNavComponent,
    ContactComponent,
    DtoTecnicoComponent,
    LoginComponent,
    RegistroComponent,
    RecupPasswordComponent,
    DetalleComponent,
    CarritoComponent,
    PedidosComponent,
    MisDatosComponent,
    RegistroUsersComponent,
    PanelControlComponent,
    AbmExpresosComponent,
    LoginUsuarioComponent,
    AbmSucursalesComponent,
    CarouselDetailComponent,
    TablaProdVersionComponent,
    TablaCompJgosComponent,
    BotonComprarComponent,
    TraeAppPipe,
    TraeProdPipe,
    TraeMarcaPipe,
    TraeLineaPipe,
    TraeCombPipe,
    TraeImgArtPipe,
    TraeDescripCortaPipe
    ],
  imports: [
    BrowserModule,
    NgbModule,
    BrowserAnimationsModule,
    MaterialModule,
    BootstrapModule,
    PrimeNGModule,
    FormsModule,
    AppRoutingModule,
    HttpClientModule,
    AngularFontAwesomeModule
  ],
providers: [
  PedidoItemService,
  PedidosService,
  AuthService,
  ConsultasClientesService,
  ArtMarModMotService,
  ArticulosService,
  AplicacionesService
],
  bootstrap: [AppComponent],
})
export class AppModule { }
