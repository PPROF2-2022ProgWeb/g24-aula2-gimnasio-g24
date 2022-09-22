import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { PageComponent } from './Page.component';
import {NgForm} from '@angular/forms';
import {HttpClient} from '@angular/common/http';

import { state } from '@angular/animations';
import { concat } from 'rxjs';
import { AdminComponent } from './admin/admin.component';


@NgModule({
  imports: [
    CommonModule,

  ],
  declarations: [PageComponent]
})
export class PageModule {



}
