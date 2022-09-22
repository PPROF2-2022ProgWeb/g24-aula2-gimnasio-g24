/* tslint:disable:no-unused-variable */

import { TestBed, async, inject } from '@angular/core/testing';
import { MenuNavService } from './menu-nav.service';

describe('Service: MenuNav', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [MenuNavService]
    });
  });

  it('should ...', inject([MenuNavService], (service: MenuNavService) => {
    expect(service).toBeTruthy();
  }));
});
