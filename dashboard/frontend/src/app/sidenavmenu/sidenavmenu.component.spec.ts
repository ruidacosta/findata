import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SidenavmenuComponent } from './sidenavmenu.component';
import { MatListModule } from '@angular/material/list';
import { MatIconModule } from '@angular/material/icon';
import { MatExpansionModule } from '@angular/material/expansion';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

describe('SidenavmenuComponent', () => {
  let component: SidenavmenuComponent;
  let fixture: ComponentFixture<SidenavmenuComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [
        BrowserAnimationsModule,
        MatListModule,
        MatIconModule,
        MatExpansionModule,
      ],
      declarations: [ SidenavmenuComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(SidenavmenuComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
