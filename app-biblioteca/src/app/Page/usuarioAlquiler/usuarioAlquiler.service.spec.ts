/* tslint:disable:no-unused-variable */

import { TestBed, async, inject } from '@angular/core/testing';
import { UsuarioAlquilerService } from './usuarioAlquiler.service';

describe('Service: UsuarioAlquiler', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [UsuarioAlquilerService]
    });
  });

  it('should ...', inject([UsuarioAlquilerService], (service: UsuarioAlquilerService) => {
    expect(service).toBeTruthy();
  }));
});
