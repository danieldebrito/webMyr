import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DtoTecnicoComponent } from './dto-tecnico.component';

describe('DtoTecnicoComponent', () => {
  let component: DtoTecnicoComponent;
  let fixture: ComponentFixture<DtoTecnicoComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DtoTecnicoComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DtoTecnicoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
