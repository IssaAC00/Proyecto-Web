import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { catchError, map, Observable, of } from 'rxjs';
import {Address} from '../models/address.model';
import { environment } from '../../environments/environment';

@Injectable({
  providedIn: 'root'
})

export class AddressesService {

    private baseUrl = `${environment.baseUrl}addresses`;
    constructor(private http: HttpClient) { }

    getAddresses(): Observable<Address[]> {
        return this.http.get<Address[]>(this.baseUrl);
      }

    getAddress(id: string): Observable<Address> {
        return this.http.get<Address>(`${this.baseUrl}/id/${id}`);
      }

    createAddress(data: any): Observable<any> {
        /*
        data ={
            id_district,
            postal_code,
            specific_address
        }
        */
        
        return this.http.post(`${this.baseUrl}/create`, data);
    }

    updateAddress(id: string, data: Address): Observable<Address> {
        /*
        data = {
            id,
            id_district,
            postal_code,
            specific_address
        }
        */
        return this.http.put<Address>(`${this.baseUrl}/update/${id}`, data);
    }

    deleteAddress(id: string): Observable<any> {
        return this.http.delete(`${this.baseUrl}/delete/${id}`);
    }

    getDistricts(): Observable<any> {
        return this.http.get(`${environment.baseUrl}addresses/districts`);
    }

    getDistrict(id: string): Observable<any> {
        return this.http.get(`${environment.baseUrl}addresses/district/${id}`);
    }

    getCantons(): Observable<any> {
        return this.http.get(`${environment.baseUrl}addresses/cantons`);
    }

    getCanton(id: string): Observable<any> {
        return this.http.get(`${environment.baseUrl}addresses/canton/${id}`);
    }

    getProvinces(): Observable<any> {
        return this.http.get(`${environment.baseUrl}addresses/provinces`);
    }

    getProvince(id: string): Observable<any> {
        return this.http.get(`${environment.baseUrl}addresses/province/${id}`);
    }

    getDistrictsByCanton(id: string): Observable<any> {
        return this.http.get(`${environment.baseUrl}addresses/districts-by-canton/${id}`);
    }

    getCantonsByProvince(id: string): Observable<any> {
        return this.http.get(`${environment.baseUrl}addresses/cantons-by-province/${id}`);
    }
}
