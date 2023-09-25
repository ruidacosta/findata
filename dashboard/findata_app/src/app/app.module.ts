import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { MatToolbarModule } from '@angular/material/toolbar';
import { MatSidenavModule } from '@angular/material/sidenav';
import { MatButtonModule } from '@angular/material/button';
import { MatIconModule } from '@angular/material/icon';
import { MatDividerModule } from '@angular/material/divider';
import { MatTableModule } from '@angular/material/table';
import { MatPaginatorModule } from '@angular/material/paginator';
import { MatSortModule } from '@angular/material/sort';
import { MatGridListModule } from '@angular/material/grid-list';
import { MatCardModule } from '@angular/material/card';
import { MatMenuModule } from '@angular/material/menu';


import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { HelpComponent } from './pages/help/help.component';
import { NotFoundComponent } from './pages/not-found/not-found.component';
import { SidenavmenuComponent } from './sidenavmenu/sidenavmenu.component';
import { HttpClientModule } from '@angular/common/http';
import { DashboardComponent } from './pages/dashboard/dashboard.component';
import { RatesComponent } from './pages/rates/rates.component';
import { EuriborComponent } from './pages/euribor/euribor.component';
import { LiborComponent } from './pages/libor/libor.component';
import { InflationComponent } from './pages/inflation/inflation.component';
import { EquitiesComponent } from './pages/equities/equities.component';
import { CommoditiesComponent } from './pages/commodities/commodities.component';
import { IndexesComponent } from './pages/indexes/indexes.component';
import { RateService } from './services/rates.service';

@NgModule({
  declarations: [
    AppComponent,
    HelpComponent,
    NotFoundComponent,
    SidenavmenuComponent,
    DashboardComponent,
    RatesComponent,
    EuriborComponent,
    LiborComponent,
    InflationComponent,
    EquitiesComponent,
    CommoditiesComponent,
    IndexesComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    MatToolbarModule,
    MatSidenavModule,
    MatButtonModule,
    MatIconModule,
    MatDividerModule,
    HttpClientModule,
    MatTableModule,
    MatPaginatorModule,
    MatSortModule,
    MatGridListModule,
    MatCardModule,
    MatMenuModule,
  ],
  providers: [RateService],
  bootstrap: [AppComponent]
})
export class AppModule { }
