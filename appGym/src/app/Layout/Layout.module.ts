import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { LayoutComponent } from './Layout.component';
import { MenuNavComponent } from '../Layout/menu-nav/menu-nav.component';


@NgModule({
  imports: [
    CommonModule,
 
  ],
  declarations: [LayoutComponent]
})
export class LayoutModule { }
