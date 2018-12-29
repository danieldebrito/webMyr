import { Injectable } from '@angular/core';
import { Login } from '../../clases/login';
import { ClienteService } from '../cliente/cliente.service';
import { Cliente } from 'src/app/clases/cliente';

@Injectable({
  providedIn: 'root'
})

export class AuthService {
    // para redireccionar de acuerdo al resultado del login
    redirectUrl: string;

    public identity: Cliente;

  constructor(public miHttp: ClienteService) { }

  Loguear(dataLogin: Login) {
    const request: JSON = JSON.parse(JSON.stringify(dataLogin));

    return this.miHttp.httpPostP('/login', request);
  }

  public getIdentityLocalStorage () {
    const identityLS = JSON.parse(localStorage.getItem('identity'));
    if ( identityLS !== 'undefined' ) {
      this.identity = identityLS;
    } else {
      this.identity = null;
    }
    return this.identity;
  }

  public logout() {
    localStorage.clear();
  }



}
