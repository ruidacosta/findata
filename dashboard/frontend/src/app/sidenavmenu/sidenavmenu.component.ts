import { Component } from '@angular/core';
import { MatIconRegistry } from '@angular/material/icon';
import { DomSanitizer } from '@angular/platform-browser';

@Component({
  selector: 'app-sidenavmenu',
  templateUrl: './sidenavmenu.component.html',
  styleUrls: ['./sidenavmenu.component.scss']
})
export class SidenavmenuComponent {
  constructor(private matIconRegistry: MatIconRegistry, private domSanitizer: DomSanitizer) {
    this.matIconRegistry.addSvgIcon(
      'equities',
      this.domSanitizer.bypassSecurityTrustResourceUrl('../assets/icons/stock-market.svg')
    );
    this.matIconRegistry.addSvgIcon(
      'commodities',
      this.domSanitizer.bypassSecurityTrustResourceUrl('../assets/icons/commodity.svg')
    );
    this.matIconRegistry.addSvgIcon(
      'index',
      this.domSanitizer.bypassSecurityTrustResourceUrl('../assets/icons/index.svg')
    );
  }
}
