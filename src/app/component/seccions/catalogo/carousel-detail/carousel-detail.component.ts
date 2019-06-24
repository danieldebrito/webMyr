import { Component, OnInit, Input  } from '@angular/core';
import { NgbActiveModal, NgbModal } from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'app-carousel-detail',
  templateUrl: './carousel-detail.component.html',
  styleUrls: ['./carousel-detail.component.css']
})
export class CarouselDetailComponent implements OnInit {

  @Input() name;

  constructor(public activeModal: NgbActiveModal) { }

  ngOnInit() {
  }

}
