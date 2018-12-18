import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { CommonModule } from '@angular/common';

// secciones
import { PageNotFoundComponent } from '../component/seccions/page-not-found/page-not-found.component';
import { HomeComponent } from '../component/seccions/home/home/home.component';
import { FiltroComponent } from '../component/seccions/catalogo/filtro/filtro.component';
import { DetalleComponent } from '../component/seccions/catalogo/detalle/detalle.component';
import { QuienSoyComponent } from '../component/seccions/quien-soy/quien-soy.component';
import { ContactComponent } from '../component/seccions/contact/contact.component';
import { DtoTecnicoComponent } from '../component/seccions/dto-tecnico/dto-tecnico.component';
import { LoginComponent } from '../component/seccions/users/login/login.component';
import { RegistroComponent } from '../component/seccions/users/registro/registro.component';
import { RecupPasswordComponent } from '../component/seccions/users/recup-password/recup-password.component';
import { CarritoComponent } from '../component/seccions/carrito/carrito.component';


const appRoutes: Routes = [
  { path: 'home', component: HomeComponent },
  { path: 'catalogo', component: FiltroComponent },
  { path: 'detalle', component: DetalleComponent },
  { path: 'carrito', component: CarritoComponent },
  { path: 'about', component: QuienSoyComponent },
  { path: 'contact', component: ContactComponent },
  { path: 'blog', component: DtoTecnicoComponent },
  { path: 'login', component: LoginComponent },
  { path: 'registro', component: RegistroComponent },
  { path: 'recupPass', component: RecupPasswordComponent },
  {
    path: '',
    redirectTo: '/home',
    pathMatch: 'full'
  },
  { path: '**', component: PageNotFoundComponent },
];

@NgModule({
  imports: [
    CommonModule,
    RouterModule.forRoot(
      appRoutes,
      { enableTracing: true } // <-- debugging purposes only
    )
    // other imports here
  ],
  exports: [
    RouterModule
  ],
  declarations: []
})
export class AppRoutingModule { }
