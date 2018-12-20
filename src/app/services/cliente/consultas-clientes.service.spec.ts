import { TestBed } from '@angular/core/testing';

import { ConsultasClientesService } from './consultas-clientes.service';

describe('ConsultasClientesService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: ConsultasClientesService = TestBed.get(ConsultasClientesService);
    expect(service).toBeTruthy();
  });
});
