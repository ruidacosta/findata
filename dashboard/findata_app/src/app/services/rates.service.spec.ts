import { TestBed } from '@angular/core/testing';

import { RateService } from './rates.service';

describe('RateService', () => {
  let service: RateService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(RateService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
