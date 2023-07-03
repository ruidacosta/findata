import { ComponentFixture, TestBed } from '@angular/core/testing';

import { EuriborComponent } from './euribor.component';

describe('EuriborComponent', () => {
  let component: EuriborComponent;
  let fixture: ComponentFixture<EuriborComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ EuriborComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(EuriborComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
