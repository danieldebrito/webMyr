import { Component, OnInit, Input  } from '@angular/core';
import {NgbModal, ModalDismissReasons} from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'app-carousel-detail',
  templateUrl: './carousel-detail.component.html',
  styleUrls: ['./carousel-detail.component.css']
})
export class CarouselDetailComponent implements OnInit{

  constructor(private modalService: NgbModal) {}

  open(content) {
    this.modalService.open(content, { size: 'lg' });
  }

  private getDismissReason(reason: any): string {
    if (reason === ModalDismissReasons.ESC) {
      return 'by pressing ESC';
    } else if (reason === ModalDismissReasons.BACKDROP_CLICK) {
      return 'by clicking on a backdrop';
    } else {
      return  `with: ${reason}`;
    }
  }

  ngOnInit() { }
}

