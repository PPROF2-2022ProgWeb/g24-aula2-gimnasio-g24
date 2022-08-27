import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { PageComponent } from './Page.component';
import { ReactiveFormsModule } from '@angular/forms';


@NgModule({
  imports: [
    CommonModule,
    ReactiveFormsModule
  ],
  declarations: [PageComponent]
})
export class PageModule { }

