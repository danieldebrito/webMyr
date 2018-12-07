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

    public Listar() {
        this.artService.ListarO().subscribe( response => {
            // console.log(response);
            this.allItems = response;
            },
            error => {
            console.error(error);
            });
    }

    public Limpiar() {
        this.artService.ListarO().subscribe( response => {
            this.filtroItems = response;

            this.linea = '';
            this.marca = '';
            this.combustible = '';
            this.motor = '';
            this.modelo = '';
            this.cilindrada = '';
            this.competicion = '';
            this.producto = '';
            this.aplicacion = '';

            },
            error => {
            console.error(error);
            });
    }

    public Filtrar () {
        this.artService.FiltrarP(
            this.linea,
            this.marca,
            this.combustible,
            this.motor,
            this.modelo,
            this.cilindrada,
            this.competicion,
            this.producto,
            this.aplicacion).then(
                response => {
                // console.log('RESPONSE DESDE COMPONENTE: ', response);
                 this.filtroItems = response;
                }
              )
              .catch(
                error => {
                  console.error('ERROR DEL SERVIDOR', error);
                }
              );
    }

    public Colunmas () { }

    public Enviar() { }

    ngOnInit() {
      //  this.Listar();
        this.Limpiar();

        this.Colunmas();

    }
}

