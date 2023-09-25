import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { RouterModule, Routes } from '@angular/router';

import { MatButtonModule } from '@angular/material/button';
import { MatSidenavModule } from '@angular/material/sidenav';
import { MatMenuModule } from '@angular/material/menu';
import { MatToolbarModule } from '@angular/material/toolbar';
import { MatIconModule } from '@angular/material/icon';
import { MatListModule } from '@angular/material/list';
import { MatExpansionModule } from '@angular/material/expansion';
import { MatTooltipModule } from '@angular/material/tooltip';
import { MatGridListModule } from '@angular/material/grid-list';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { FormsModule } from '@angular/forms';
import { SidenavmenuComponent } from './sidenavmenu/sidenavmenu.component';
import { DashboardComponent } from './components/dashboard/dashboard.component';
import { HttpClientModule } from '@angular/common/http';
import { EuriborComponent } from './components/euribor/euribor.component';
import { LiborComponent } from './components/libor/libor.component';
import { EquitiesComponent } from './components/equities/equities.component';
import { CommoditiesComponent } from './components/commodities/commodities.component';
import { IndexComponent } from './components/index/index.component';
import { InflationComponent } from './components/inflation/inflation.component';

@NgModule({
  declarations: [
    AppComponent,
    SidenavmenuComponent,
    DashboardComponent,
    EuriborComponent,
    LiborComponent,
    EquitiesComponent,
    CommoditiesComponent,
    IndexComponent,
    InflationComponent
  ],
  imports: [
    AppRoutingModule,
    BrowserModule,
    BrowserAnimationsModule,
    FormsModule,
    MatButtonModule,
    MatSidenavModule,
    MatMenuModule,
    MatToolbarModule,
    MatIconModule,
    MatListModule,
    MatExpansionModule,
    MatTooltipModule,
    MatGridListModule,
    HttpClientModule,
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
