import { ComponentFixture, TestBed } from '@angular/core/testing';

import { InflationComponent } from './inflation.component';

describe('InflationComponent', () => {
  let component: InflationComponent;
  let fixture: ComponentFixture<InflationComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [InflationComponent]
    });
    fixture = TestBed.createComponent(InflationComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
