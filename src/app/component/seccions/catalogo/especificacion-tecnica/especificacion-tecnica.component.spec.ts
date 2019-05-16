import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { EspecificacionTecnicaComponent } from './especificacion-tecnica.component';

describe('EspecificacionTecnicaComponent', () => {
  let component: EspecificacionTecnicaComponent;
  let fixture: ComponentFixture<EspecificacionTecnicaComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ EspecificacionTecnicaComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(EspecificacionTecnicaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
