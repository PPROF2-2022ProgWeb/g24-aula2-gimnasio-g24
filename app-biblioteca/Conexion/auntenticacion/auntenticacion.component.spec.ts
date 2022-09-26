/* tslint:disable:no-unused-variable */
import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { By } from '@angular/platform-browser';
import { DebugElement } from '@angular/core';

import { AuntenticacionComponent } from './auntenticacion.component';

describe('AuntenticacionComponent', () => {
  let component: AuntenticacionComponent;
  let fixture: ComponentFixture<AuntenticacionComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AuntenticacionComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AuntenticacionComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
