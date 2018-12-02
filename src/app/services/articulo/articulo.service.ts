import { Injectable } from '@angular/core';
import { Http, Response } from '@angular/http';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { catchError } from 'rxjs/operators';
import { Articulo } from 'src/app/clases/articulo';

@Injectable({
  providedIn: 'root'
})

export class ArticuloService {

  public ruta: string;

  constructor(public http: Http) {
    this.ruta = 'http://localhost/api_meyro/index.php/art';
  }

  public httpGetP(url: string) {
    return this.http
      .get(this.ruta + url)
      .toPromise()
      .then(this.extractData)
      .catch(this.handleError);
  }

  /*public httpPostP(url: string, objeto: any) {
    return this.http
      .get(url)
      .subscribe(data => {
        return data;
      });
  }*/

  public httpPostP( url: string, request: object) {
    return this.http.post( this.ruta + url, request).toPromise();
  }

  public httpPostO( url: string, request: object): Observable<Articulo[]> {
    return this.http.post(this.ruta + url, request)
      .pipe(map((res: Response) => res.json()))
      .pipe(catchError((err: any) => Observable.throw(err.json().error || 'Server error')));
  }

  public httpGetO(url: string): Observable<Articulo[]> {
    return this.http.get(this.ruta + url)
      .pipe(map((res: Response) => res.json()))
      .pipe(catchError((err: any) => Observable.throw(err.json().error || 'Server error')));
  }

  private extractData(res: Response) {
    return res.json() || {};
  }

  private handleError(error: Response | any) {
    return error;
  }
}
