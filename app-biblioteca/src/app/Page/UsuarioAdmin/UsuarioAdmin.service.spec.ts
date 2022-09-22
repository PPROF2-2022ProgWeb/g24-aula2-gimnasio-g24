/* tslint:disable:no-unused-variable */

import { TestBed, async, inject } from '@angular/core/testing';
import { UsuarioAdminService } from './UsuarioAdmin.service';

describe('Service: UsuarioAdmin', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [UsuarioAdminService]
    });
  });

  it('should ...', inject([UsuarioAdminService], (service: UsuarioAdminService) => {
    expect(service).toBeTruthy();
  }));
});
