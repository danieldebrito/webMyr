import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AbmExpresosComponent } from './abm-expresos.component';

describe('AbmExpresosComponent', () => {
  let component: AbmExpresosComponent;
  let fixture: ComponentFixture<AbmExpresosComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AbmExpresosComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AbmExpresosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
