import { TestBed } from '@angular/core/testing';

import { AbmPedidoDetalleService } from './abm-pedido-detalle.service';

describe('AbmPedidoDetalleService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: AbmPedidoDetalleService = TestBed.get(AbmPedidoDetalleService);
    expect(service).toBeTruthy();
  });
});
