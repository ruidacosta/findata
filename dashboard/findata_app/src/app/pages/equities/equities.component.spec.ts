import { ComponentFixture, TestBed } from '@angular/core/testing';

import { EquitiesComponent } from './equities.component';

describe('EquitiesComponent', () => {
  let component: EquitiesComponent;
  let fixture: ComponentFixture<EquitiesComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [EquitiesComponent]
    });
    fixture = TestBed.createComponent(EquitiesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
