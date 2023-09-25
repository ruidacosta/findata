import { ComponentFixture, TestBed } from '@angular/core/testing';

import { IndexesComponent } from './indexes.component';

describe('IndexesComponent', () => {
  let component: IndexesComponent;
  let fixture: ComponentFixture<IndexesComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [IndexesComponent]
    });
    fixture = TestBed.createComponent(IndexesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
