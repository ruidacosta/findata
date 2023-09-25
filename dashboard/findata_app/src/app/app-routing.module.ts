import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HelpComponent } from './pages/help/help.component';
import { NotFoundComponent } from './pages/not-found/not-found.component';
import { DashboardComponent } from './pages/dashboard/dashboard.component';
import { RatesComponent } from './pages/rates/rates.component';
import { EuriborComponent } from './pages/euribor/euribor.component';
import { LiborComponent } from './pages/libor/libor.component';
import { InflationComponent } from './pages/inflation/inflation.component';
import { EquitiesComponent } from './pages/equities/equities.component';
import { CommoditiesComponent } from './pages/commodities/commodities.component';
import { IndexesComponent } from './pages/indexes/indexes.component';

const routes: Routes = [
  {
    path: '',
    pathMatch: 'full',
    redirectTo: 'dashboard',
  },
  {
    path: 'dashboard',
    component: DashboardComponent,
  },
  {
    path: 'rates',
    component: RatesComponent,
  },
  {
    path: 'euribor',
    component: EuriborComponent,
  },
  {
    path: 'libor',
    component: LiborComponent,
  },
  {
    path: 'inflation',
    component: InflationComponent,
  },
  {
    path: 'equities',
    component: EquitiesComponent,
  },
  {
    path: 'commodities',
    component: CommoditiesComponent,
  },
  {
    path: 'indexes',
    component: IndexesComponent,
  },
  {
    path: 'help',
    component: HelpComponent,
  },
  {
    path: '**',
    component: NotFoundComponent,
  },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
