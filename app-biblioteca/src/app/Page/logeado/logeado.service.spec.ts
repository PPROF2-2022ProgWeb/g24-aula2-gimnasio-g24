/* tslint:disable:no-unused-variable */

import { TestBed, async, inject } from '@angular/core/testing';
import { LogeadoService } from './logeado.service';

describe('Service: Logeado', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [LogeadoService]
    });
  });

  it('should ...', inject([LogeadoService], (service: LogeadoService) => {
    expect(service).toBeTruthy();
  }));
});
