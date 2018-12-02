import { Component, OnInit } from '@angular/core';
import { AllArticulosService } from '../../../../services/articulo/consultas-articulos.service';
import { Articulo } from '../../../../clases/articulo';

// rxjs
import { Observable } from 'rxjs';
import { filter, map } from 'rxjs/operators';

@Component({
    selector: 'app-filtro',
    templateUrl: './filtro.component.html',
    styleUrls: ['./filtro.component.css']
})
export class FiltroComponent implements OnInit {

    // valores de los selects
    public linea: string;
    public marca: string;
    public combustible: string;
    public motor: string;
    public modelo: string;
    public cilindrada: string;
    public competicion: string;
    public producto: string;
    public aplicacion: string;

    public allItems: Articulo[];  // todos
    public filtroItems;

    // columnas sin repeticion
    public lineatems: Articulo[];
    public marcaItems: Articulo[];
    public combustibleItems: Articulo[];
    public motorItems: Articulo[];
    public modeloItems: Articulo[];
    public cilindradaItems: Articulo[];
    public competicionItems: Articulo[];
    public productoItems: Articulo[];
    public aplicacionItems: Articulo[];

    // servicio
    artService: AllArticulosService;

    // para colapsar menues de filtros
    public isCollapsed = false;
    public isCollapsed2 = true;
    public isCollapsed3 = true;

    constructor(servicio: AllArticulosService) {
        this.artService = servicio;

    } // end constructor.

    colapsar1() {
        this.isCollapsed = false;
        this.isCollapsed2 = true;
        this.isCollapsed3 = true;
    }

    colapsar2() {
        this.isCollapsed = true;
        this.isCollapsed2 = false;
        this.isCollapsed3 = true;
    }

    colapsar3() {
        this.isCollapsed = true;
        this.isCollapsed2 = true;
        this.isCollapsed3 = false;
    }

    public todos () {
        this.artService.listarObserv().subscribe(
            result => {
                this.allItems = result;
            },
            error => {
                console.log(<any>error);
            }
        );
    }

    filtroP () {
    this.artService.filtrar(this.marca, this.modelo)
        .then(datos => {
            this.filtroItems = datos;
        });
    }

    public filtro () {
        this.artService.filtrarO(
            this.linea,
            this.marca,
            this.combustible,
            this.motor,
            this.modelo,
            this.cilindrada,
            this.competicion,
            this.producto,
            this.aplicacion
            ).subscribe(
            result => {
                console.log('ohaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa' + this.allItems);
                 this.allItems = result;
                 console.log(this.allItems);
            },
            error => {
                 console.log(error + 'error respuesta del servidor');
            }
        );
    }

    public colunmas () {
    }

    ngOnInit() {
        this.todos();

        this.filtroP();
    }
}  ////////////////////////////////////////// end //////////////////////////////////////////



    /*public cargarMarcaObserv(value: string) {

        const arr: Articulo[] = [];

        this.artService.listarObserv().subscribe(
            result => {

                for (let i = 0 ; i < result.length; i++) {

                    if (this.allItems[i].marca === value) {
                        console.log(this.allItems[i].marca);
                        arr.push(this.allItems[i]);
                    }
                }
                // console.log(arr);
                this.marcaItems = arr;

               // console.log(this.allItems);
            },
            error => {
                console.log(<any>error);
            }
        );
    }

    cargarBaseCompleta() {
        this.artService.listar()
            .then(datos => {
                // console.log(datos);
                this.allItems = datos;
            });
    }

    filtrarColumna (nombreColumna: string) {
        this.artService.listarPorColumna(nombreColumna)
        .then(datos => {
            // console.log(datos);
            this.marcaItems = datos;
        });

    }


    cargarListaObserv() {
        this.artService.listarObserv().subscribe(
            result => {
                this.allItems = result;
               // console.log(this.allItems);
            },
            error => {
                console.log(<any>error);
            }
        );
    }

    cargarSelects () {
    }

        filtro (linea: string, marca: string ) {
        this.artService.filtrar(linea, marca)
        .then(datos => {
            // console.log(datos);
            this.allItems = datos;
            console.log('filtro all items' + this.allItems);
        });
    }

*/

