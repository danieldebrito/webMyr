export class PedidoDetalle {
    constructor(
        public id_pedido_detalle: number,
        public id_pedido: number,
        public id_articulo: string,
        public cantidad: number
    ) { }
}
