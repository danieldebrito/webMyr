import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-login-usuario',
  templateUrl: './login-usuario.component.html',
  styleUrls: ['./login-usuario.component.css']
})
export class LoginUsuarioComponent implements OnInit {

  public error: boolean;    // para alternar vista en caso de error


  constructor() { }

  ngOnInit() {
  }

}
