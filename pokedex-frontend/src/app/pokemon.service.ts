import {Injectable} from '@angular/core';
import {Pokemon} from "./types";
import {Observable, tap} from "rxjs";
import {HttpClient} from "@angular/common/http";

@Injectable({
  providedIn: 'root'
})
export class PokemonService {
  private static readonly RANDOM_URL = "/api/pokemon/random";
  private static readonly ALL_URL = "/api/pokemon/list";
  private static readonly CATCH_URL = (id: number) => {
    return `http://localhost:8080/api/pokemon/${id}/catch`;
  }

  constructor(private httpClient: HttpClient) { }

  get allPokemon() {
    return this.httpClient.get<Pokemon[]>(PokemonService.ALL_URL)
      .pipe(tap(r => {
        console.log(r)
      }));
  }

  get randomPokemon(): Observable<Pokemon> {
    return this.httpClient.get<Pokemon>(PokemonService.RANDOM_URL)
      .pipe(tap(r => {
        console.log(r)
      }));
  }

  catchPokemon(id: number): Observable<number> { // returns lvl
    return this.httpClient.post<number>(PokemonService.CATCH_URL(id), null)
      .pipe(tap(r => {
        console.log(r)
      }));
  }
}
