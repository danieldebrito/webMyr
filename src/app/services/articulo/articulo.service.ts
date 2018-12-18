import { Injectable } from '@angular/core';
import { HttpClient} from '@angular/common/http';
import { Observable } from 'rxjs';
import { map, tap, catchError, delay } from 'rxjs/operators';


@Injectable({
  providedIn: 'root'
})

export class ArticuloService {

  public urlBase: string;

  constructor(public http: HttpClient) {
    this.urlBase = 'http://localhost/api_meyro/index.php/art';
  }


  public httpGetP ( url: string) {
    return this.http
    .get( this.urlBase + url )
    .toPromise()
    .then( this.extractData )
    .catch( this.handleError );
  }

  public httpDeleteP ( url: string) {
    return this.http
    .delete( this.urlBase + url )
    .toPromise()
    .then( this.extractData )
    .catch( this.handleError );
  }

  public httpPostP( url: string, request: Object) {
    return this.http.post( this.urlBase + url, request).toPromise();
  }

  public httpGetO<T>( url: string) {
    return this.http.get<T>( this.urlBase + url );
  }

  private extractData ( res: Response ) {
    return res.json() || {};
  }

  private handleError ( error: Response | any ) {
    return error;
  }
}
