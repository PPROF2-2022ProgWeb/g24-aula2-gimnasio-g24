/* tslint:disable:no-unused-variable */

import { TestBed, async, inject } from '@angular/core/testing';
import { UsuarioDevolucionService } from './usuarioDevolucion.service';

describe('Service: UsuarioDevolucion', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [UsuarioDevolucionService]
    });
  });

  it('should ...', inject([UsuarioDevolucionService], (service: UsuarioDevolucionService) => {
    expect(service).toBeTruthy();
  }));
});
