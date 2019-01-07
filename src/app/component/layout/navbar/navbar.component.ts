import { Component, OnInit, DoCheck } from '@angular/core';
import { Cliente } from 'src/app/clases/cliente';
import { AuthService } from '../../../services/cliente/auth.service';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent implements OnInit {

  public identity: Cliente;

  isNavbarCollapsed = true;

  constructor(private authService: AuthService) { }

  logout() {
    this.authService.logout();
  }

  ngOnInit() {
    this.identity = this.authService.getIdentityLocalStorage();
  }


  DoCheck() {
    this.identity = this.authService.getIdentityLocalStorage();
  }

}
