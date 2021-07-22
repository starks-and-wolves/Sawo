import { Component, OnInit } from '@angular/core';
import Sawo from "sawo"

@Component({
  selector: 'app-sawo',
  templateUrl: './sawo.component.html',
  styleUrls: ['./sawo.component.css']
})
export class SawoComponent implements OnInit {

  title = 'angular-sawo-chander';
  Sawo: any;
  isLoggedIn:any= false;
  userPayload:any = {};

  constructor() {}

  ngOnInit(){
    const sawoConfig = {
      // should be same as the id of the container
      containerID: "sawo-container",
      // can be one of 'email' or 'phone_number_sms'
      identifierType: "phone_number_sms",
      // Add the API key
      apiKey: "79e47afd-d630-47fd-8cfc-0bfc7b707dea",
      // Add a callback here to handle the payload sent by sdk
      onSuccess: (payload: any) => {
        this.userPayload = payload;
        this.isLoggedIn = true;
      }
    };
    // creating instance
    this.Sawo = new Sawo(sawoConfig)
  }

  ngAfterViewInit() {
    this.Sawo.showForm()
  }

}
