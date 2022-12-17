import { Component, OnInit,ElementRef, VERSION, ViewChild } from '@angular/core';
import { Router } from '@angular/router';
import { FormControl, ReactiveFormsModule } from '@angular/forms';
import { from } from 'rxjs';
import { LoginservService } from 'src/app/Service/loginserv/loginserv.service';
import { MenuservService } from './Layout/menu/menuserv.service';
import { IPayPalConfig, ICreateOrderRequest } from 'ngx-paypal';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {


  usuario: "gustavog";
  id: any;
  userListado: any;

  title = 'app-Ecommerce';

  //inicio pago google
paymentRequest: google.payments.api.PaymentDataRequest = {
  apiVersion: 2,
  apiVersionMinor: 0,
  allowedPaymentMethods: [
    {
      type: 'CARD',
      parameters: {
        allowedAuthMethods: ['PAN_ONLY', 'CRYPTOGRAM_3DS'],
        allowedCardNetworks: ['AMEX', 'VISA', 'MASTERCARD']
      },
      tokenizationSpecification: {
        type: 'PAYMENT_GATEWAY',
        parameters: {
          gateway: 'example',
          gatewayMerchantId: 'exampleGatewayMerchantId'
        }
      }
    }
  ],
  merchantInfo: {
    merchantId: '12345678901234567890',
    merchantName: 'Demo Merchant'
  },
  transactionInfo: {
    totalPriceStatus: 'FINAL',
    totalPriceLabel: 'Total',
    totalPrice: '50',
    currencyCode: 'USD',
    countryCode: 'AR'
  },
  callbackIntents: ['PAYMENT_AUTHORIZATION']
};

onLoadPaymentData = (
  event: Event
): void => {
  const eventDetail = event as CustomEvent<google.payments.api.PaymentData>;
  console.log('load payment data', eventDetail.detail);
}

onPaymentDataAuthorized: google.payments.api.PaymentAuthorizedHandler = (
  paymentData
  ) => {
    console.log('payment authorized', paymentData);
    return {
      transactionState: 'SUCCESS'
    };
  }

onError = (event: ErrorEvent): void => {
  console.error('error', event.error);
}

//final pago google

constructor(private loginservice: MenuservService) {

}
ngOnInit() {
  this.loginservice.consultaMenu.subscribe((data: any) => {
    this.usuario = data;


  });

  this.MostrarTodos();
}
MostrarTodos() {
  this.loginservice.mostrarTodos().subscribe((result:any) => this.userListado = result);
}
}
