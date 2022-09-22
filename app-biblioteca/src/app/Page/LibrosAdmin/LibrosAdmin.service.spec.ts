/* tslint:disable:no-unused-variable */

import { TestBed, async, inject } from '@angular/core/testing';
import { LibrosAdminService } from './LibrosAdmin.service';

describe('Service: LibrosAdmin', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [LibrosAdminService]
    });
  });

  it('should ...', inject([LibrosAdminService], (service: LibrosAdminService) => {
    expect(service).toBeTruthy();
  }));
});
