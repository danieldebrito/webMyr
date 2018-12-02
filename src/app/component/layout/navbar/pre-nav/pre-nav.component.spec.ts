import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PreNavComponent } from './pre-nav.component';

describe('PreNavComponent', () => {
  let component: PreNavComponent;
  let fixture: ComponentFixture<PreNavComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PreNavComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PreNavComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
