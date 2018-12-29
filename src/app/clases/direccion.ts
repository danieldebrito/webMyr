export class Direccion {
    constructor(
        public id_sucursal,
        public id_cliente: string,
        public nombre_sucursal,
        public calle: string,
        public numero: number,
        public cp: string,
        public localidad: string,
        public provincia: string
    ) { }
}
