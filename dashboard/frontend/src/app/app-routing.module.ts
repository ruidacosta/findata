import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { DashboardComponent } from './components/dashboard/dashboard.component';
import { EuriborComponent } from './components/euribor/euribor.component';
import { LiborComponent } from './components/libor/libor.component';
import { EquitiesComponent } from './components/equities/equities.component';
import { CommoditiesComponent } from './components/commodities/commodities.component';
import { IndexComponent } from './components/index/index.component';
import { InflationComponent } from './components/inflation/inflation.component';

const routes: Routes = [
  {
    path: '', 
    component: DashboardComponent
  },
  {
    path: 'euribor',
    component: EuriborComponent
  },
  {
    path: 'libor',
    component: LiborComponent
  },
  {
    path: 'inflation',
    component: InflationComponent
  },
  {
    path: 'equities',
    component: EquitiesComponent
  },
  {
    path: 'commodities',
    component: CommoditiesComponent
  },
  {
    path: 'index',
    component: IndexComponent
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
