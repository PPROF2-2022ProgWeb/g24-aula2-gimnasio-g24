/* tslint:disable:no-unused-variable */

import { TestBed, async, inject } from '@angular/core/testing';
import { AuntenticacionService } from './auntenticacion.service';

describe('Service: Auntenticacion', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [AuntenticacionService]
    });
  });

  it('should ...', inject([AuntenticacionService], (service: AuntenticacionService) => {
    expect(service).toBeTruthy();
  }));
});
