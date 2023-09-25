import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, catchError, retry, throwError } from 'rxjs';
import { Rate } from '../shared/rate';

@Injectable({
  providedIn: 'root'
})
export class RateService {

  constructor(private http: HttpClient) { }

  GetRates(): Observable<Rate> {
    return this.http.get<Rate>("")
    .pipe(retry(1), catchError(this.HandleError));
  }

  HandleError(error: any) {
    let errorMessage = "";
    return throwError(() => {
      return errorMessage;
    })
  }
}
