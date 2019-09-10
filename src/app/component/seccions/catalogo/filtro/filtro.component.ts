import { Component, OnInit } from '@angular/core';
// services
import { AllArticulosService } from 'src/app/services/articulo/consultas-articulos.service';
import { ArtMarModMotService } from 'src/app/services/articulo/art-mar-mod-mot.service';
// classes
import { Articulo } from 'src/app/clases/articulo';
import { ArtMarModMot } from 'src/app/clases/ArtMarModMot';

@Component({
    selector: 'app-filtro',
    templateUrl: './filtro.component.html',
    styleUrls: ['./filtro.component.css']
})
export class FiltroComponent implements OnInit {

    // anternar entre grilla y detalle, true muestra grilla.
    public show: boolean;
    public showValue: boolean;

    // valores de los selects.
    public id_linea: string;
    public id_marca: string;
    public id_combustible: string;
    public id_motor: string;
    public modelo: string;
    public cilindrada: string;
    public competicion: string;
    public id_producto: string;
    public id_aplicacion: string;

    // public allItems: Articulo[];  // todos.
    public allItems: ArtMarModMot[];
    public filtroItems;

    // columnas sin repeticion.
    public columnaLinea: string[];
    public columnaMarca: string[];
    public columnaComb: string[];
    public columnaMotor: string[];
    public columnaModelo: string[];
    public columnaCilind: string[];
    public columnaStd: string[];
    public columnaProd: string[];
    public columnaApp: string[];

    // para colapsar menues de filtros.
    public isCollapsed = false;
    public isCollapsed2 = true;
    public isCollapsed3 = true;

    constructor(
        private artService: AllArticulosService,
        private ammmService: ArtMarModMotService
        ) {
        this.show = true;
    }

    public cambiaVista () {
        this.show = this.artService.show;
    }

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
        this.ammmService.ListarO().subscribe(response => {
            this.allItems = response;
        },
            error => {
                console.error(error);
            });
    }

    public Limpiar() {
        this.ammmService.ListarO().subscribe(response => {
            this.filtroItems = response;

            this.id_linea = '';
            this.id_marca = '';
            this.id_combustible = '';
            this.id_motor = '';
            this.modelo = '';
            this.cilindrada = '';
            this.competicion = '';
            this.id_producto = '';
            this.id_aplicacion = '';

            this.LimpiaColumnas();
        },
            error => {
                console.error(error);
            });
    }

    public LimpiaColumnas () {
        this.columnaLinea = [];
        this.columnaMarca = [];
        this.columnaComb = [];
        this.columnaMotor = [];
        this.columnaModelo = [];
        this.columnaCilind = [];
        this.columnaStd = [];
        this.columnaProd = [];
        this.columnaApp = [];

        this.Colunmas(this.filtroItems);
    }

    public Filtrar() {
        this.ammmService.FiltrarP(
            this.id_linea,
            this.id_marca,
            this.id_combustible,
            this.id_motor,
            this.modelo,
            this.cilindrada,
            this.competicion,
            this.id_producto,
            this.id_aplicacion).then(
                response => {
                    this.filtroItems = response;
                    this.allItems = this.filtroItems;
                    this.Colunmas(this.allItems);
                }
            )
            .catch(
                error => {
                    console.error('ERROR DEL SERVIDOR, FILTRO COMPONENT.TS => ', error);
                }
            );
    }

    public Colunmas(items: ArtMarModMot[]) {
        let arrayAuxLinea: string[] = [];
        let arrayAuxMarca: string[] = [];
        let arrayAuxComb: string[] = [];
        let arrayAuxMotor: string[] = [];
        let arrayAuxModelo: string[] = [];
        let arrayAuxCilind: string[] = [];
        let arrayAuxStd: string[] = [];
        let arrayAuxProd: string[] = [];
        let arrayAuxApp: string[] = [];

        const arrayRetLinea: string[] = [];
        const arrayRetMarca: string[] = [];
        const arrayRetComb: string[] = [];
        const arrayRetMotor: string[] = [];
        const arrayRetModelo: string[] = [];
        const arrayRetCilind: string[] = [];
        const arrayRetStd: string[] = [];
        const arrayRetProd: string[] = [];
        const arrayRetApp: string[] = [];

        if (items) {
            const tam = items.length;

            for (let i = 0; i < tam; i++) {
                arrayAuxLinea.push(items[i].id_linea);
                arrayAuxMarca.push(items[i].id_marca);
                arrayAuxComb.push(items[i].id_combustible);
                arrayAuxMotor.push(items[i].id_motor);
                arrayAuxModelo.push(items[i].modelo);
                arrayAuxCilind.push(items[i].cilindrada);
                arrayAuxStd.push(items[i].id_combustible);
                arrayAuxProd.push(items[i].id_producto);
                arrayAuxApp.push(items[i].id_aplicacion);
            }

            arrayAuxLinea = arrayAuxLinea.sort();
            arrayAuxMarca = arrayAuxMarca.sort();
            arrayAuxComb = arrayAuxComb.sort();
            arrayAuxMotor = arrayAuxMotor.sort();
            arrayAuxModelo = arrayAuxModelo.sort();
            arrayAuxCilind = arrayAuxCilind.sort();
            arrayAuxStd = arrayAuxStd.sort();
            arrayAuxProd = arrayAuxProd.sort();
            arrayAuxApp = arrayAuxApp.sort();

            for (let i = 0; i < tam; i++) {

                if (arrayAuxLinea[i] === arrayAuxLinea[i] && arrayAuxLinea[i] !== arrayAuxLinea[i - 1]) {
                   arrayRetLinea.push(arrayAuxLinea[i]);
                }

                if (arrayAuxMarca[i] === arrayAuxMarca[i] && arrayAuxMarca[i] !== arrayAuxMarca[i - 1]) {
                    arrayRetMarca.push(arrayAuxMarca[i]);
                }

                if (arrayAuxComb[i] === arrayAuxComb[i] && arrayAuxComb[i] !== arrayAuxComb[i - 1]) {
                    arrayRetComb.push(arrayAuxComb[i]);
                }

                if (arrayAuxMotor[i] === arrayAuxMotor[i] && arrayAuxMotor[i] !== arrayAuxMotor[i - 1]) {
                    arrayRetMotor.push(arrayAuxMotor[i]);
                }

                if (arrayAuxModelo[i] === arrayAuxModelo[i] && arrayAuxModelo[i] !== arrayAuxModelo[i - 1]) {
                    arrayRetModelo.push(arrayAuxModelo[i]);
                }

                if (arrayAuxCilind[i] === arrayAuxCilind[i] && arrayAuxCilind[i] !== arrayAuxCilind[i - 1]) {
                    arrayRetCilind.push(arrayAuxCilind[i]);
                }

                if (arrayAuxStd[i] === arrayAuxStd[i] && arrayAuxStd[i] !== arrayAuxStd[i - 1]) {
                    arrayRetStd.push(arrayAuxStd[i]);
                }

                if (arrayAuxProd[i] === arrayAuxProd[i] && arrayAuxProd[i] !== arrayAuxProd[i - 1]) {
                    arrayRetProd.push(arrayAuxProd[i]);
                }

                if (arrayAuxApp[i] === arrayAuxApp[i] && arrayAuxApp[i] !== arrayAuxApp[i - 1]) {
                    arrayRetApp.push(arrayAuxApp[i]);
                }
            }

            this.columnaLinea = arrayRetLinea;
            this.columnaMarca = arrayRetMarca;
            this.columnaComb = arrayRetComb;
            this.columnaMotor = arrayRetMotor;
            this.columnaModelo = arrayRetModelo;
            this.columnaCilind = arrayRetCilind;
            this.columnaStd = arrayRetStd;
            this.columnaProd = arrayRetProd;
            this.columnaApp = arrayRetApp;
        }
    }

    ngOnInit() {
        this.Limpiar();
        this.Filtrar();
    }
}


