import { TestBed } from '@angular/core/testing';

import { AbmPedidosService } from './abm-pedidos.service';

describe('AbmPedidosService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: AbmPedidosService = TestBed.get(AbmPedidosService);
    expect(service).toBeTruthy();
  });
});
