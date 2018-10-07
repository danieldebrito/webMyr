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

// layout
import { NavbarComponent } from './component/layout/navbar/navbar.component';
import { BodyComponent } from './component/layout/body/body.component';
import { AsideComponent } from './component/layout/aside/aside.component';
import { FooterComponent } from './component/layout/footer/footer.component';

// seccions
import { NgbCarouselComponent } from './component/seccions/home/ngb-carousel/ngb-carousel.component';
import { HomeComponent } from './component/seccions/home/home/home.component';
import { PageNotFoundComponent } from './component/seccions/page-not-found/page-not-found.component';
import { AdivinaElNumeroComponent } from './component/games/adivina-el-numero/adivina-el-numero.component';
import { MostrarPaisesComponent } from './component/games/mostrar-paises/mostrar-paises.component';
import { QuienSoyComponent } from './component/seccions/quien-soy/quien-soy.component';
import { AdivinaLaCapitalComponent } from './component/games/adivina-la-capital/adivina-la-capital.component';
import { PreFooterComponent } from './component/layout/pre-footer/pre-footer.component';
import { CatalogoComponent } from './component/seccions/catalogo/catalogo.component';
import { CardComponent } from './component/seccions/catalogo/card/card.component';
import { FiltroComponent } from './component/seccions/catalogo/filtro/filtro.component';

@NgModule({
  declarations: [
    NavbarComponent,
    BodyComponent,
    AsideComponent,
    FooterComponent,
    AppComponent,
    NgbCarouselComponent,
    HomeComponent,
    PageNotFoundComponent,
    AdivinaElNumeroComponent,
    MostrarPaisesComponent,
    QuienSoyComponent,
    AdivinaLaCapitalComponent,
    PreFooterComponent,
    CatalogoComponent,
    CardComponent,
    FiltroComponent
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
    HttpModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
