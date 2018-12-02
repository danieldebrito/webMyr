import { TestBed } from '@angular/core/testing';

import { AllArticulosService } from './consultas-articulos.service';

describe('AllArticulosService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: AllArticulosService = TestBed.get(AllArticulosService);
    expect(service).toBeTruthy();
  });
});
