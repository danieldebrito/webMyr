import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CarouselDetailComponent } from './carousel-detail.component';

describe('CarouselDetailComponent', () => {
  let component: CarouselDetailComponent;
  let fixture: ComponentFixture<CarouselDetailComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CarouselDetailComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CarouselDetailComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
