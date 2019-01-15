import { Component, OnInit, DoCheck } from '@angular/core';
import { Cliente } from 'src/app/clases/cliente';
import { AuthService } from '../../../services/cliente/auth.service';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent implements OnInit, DoCheck {

  public identity: Cliente;

  isNavbarCollapsed = true;

  constructor(private authService: AuthService) { }

  logout() {
    this.authService.logout();
  }

  ngOnInit() {
    this.identity = this.authService.getIdentityLocalStorage();
  }


  ngDoCheck() {
    this.identity = this.authService.getIdentityLocalStorage();
  }

}
