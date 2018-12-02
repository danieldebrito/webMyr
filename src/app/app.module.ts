import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { AppComponent } from './app.component';
import { FormsModule } from '@angular/forms';

// services
import { HttpModule } from '@angular/http';

// rutas
import { AppRoutingModule } from './routes/app-routing.module';

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
import { CatalogoComponent } from './component/seccions/catalogo/catalogo.component';
import { FiltroComponent } from './component/seccions/catalogo/filtro/filtro.component';
import { PreNavComponent } from './component/layout/navbar/pre-nav/pre-nav.component';
import { ContactComponent } from './component/seccions/contact/contact.component';
import { DtoTecnicoComponent } from './component/seccions/dto-tecnico/dto-tecnico.component';
import { LoginComponent } from './component/seccions/users/login/login.component';
import { RegistroComponent } from './component/seccions/users/registro/registro.component';
import { RecupPasswordComponent } from './component/seccions/users/recup-password/recup-password.component';


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
    RecupPasswordComponent
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
    HttpModule,
    AngularFontAwesomeModule
  ],
providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
