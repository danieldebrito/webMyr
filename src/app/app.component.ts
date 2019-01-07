import { Component, OnInit, DoCheck } from '@angular/core';
import { AuthService } from '../app/services/cliente/auth.service';
import { Cliente } from '../app/clases/cliente';


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit, DoCheck {
  title = 'JUNTAS MEYRO';
  public identity: Cliente;

  constructor( private authService: AuthService ) { }

  ngOnInit() {
    this.identity = this.authService.getIdentityLocalStorage();
  }

  ngDoCheck() {
    this.identity = this.authService.getIdentityLocalStorage();
  }
}
