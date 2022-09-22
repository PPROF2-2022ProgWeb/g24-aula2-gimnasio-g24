/* tslint:disable:no-unused-variable */
import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { By } from '@angular/platform-browser';
import { DebugElement } from '@angular/core';

import { LogeadoComponent } from './logeado.component';

describe('LogeadoComponent', () => {
  let component: LogeadoComponent;
  let fixture: ComponentFixture<LogeadoComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ LogeadoComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(LogeadoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
