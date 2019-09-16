import { Injectable } from '@angular/core';
import { BaseService } from 'src/app/services/base.service';
import { Producto } from 'src/app/clases/producto';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ProductosService {

  public allProductos: Producto[] = [];


  constructor(public miHttp: BaseService) { }

  public Listar(): Observable<Producto[]> {
    return this.miHttp.httpGetO<Producto[]>('/productos/');
  }

  public Baja(id: string): Promise<object> {
    return this.miHttp.httpDeleteP('/productos/' + id );
  }

  public TraerUno(id: string): Observable<Producto> {
    return this.miHttp.httpGetO<Producto>('/productos/' +  id );
  }

  public Alta(
    id_producto: string,
    producto: string
  ): Promise<object> {
    const request: object = {
      id_producto,
      producto
    };
    return this.miHttp.httpPostP('/productos/', request);
  }

  public Update(
    id_producto: string,
    producto: string
  ): Promise<object> {
    const request: object = {
      id_producto,
      producto
    };
    return this.miHttp.httpPostP('/productos/update', request);
  }

  public GuardarArtLocalStorage() {
    this.Listar().subscribe(response => {
      this.allProductos = response;
      localStorage.setItem('allProductos', JSON.stringify(this.allProductos));

      return this.allProductos;
    },
      error => {
        console.error(error);
      });
  }

  public LeerArtLocalStorage() {
    this.allProductos = JSON.parse(localStorage.getItem('allProductos'));
  }
}
