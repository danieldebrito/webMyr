export class Pedido {
    constructor(
        public id_pedido: number,  // AI
        public id_cliente: string,
        public id_sucursal: string,
        public id_expreso: string,
        public estado: string, // DEFAULT => 'inhabilitado'
        public envio: string,
        public fecha: string,
        public observaciones: string
    ) { }
}
