import { Routes } from '@angular/router';
import {TallGrassComponent} from "./tall-grass/tall-grass.component";
import {PokedexComponent} from "./pokedex/pokedex.component";
import {CaughtPokemonComponent} from "./caught-pokemon/caught-pokemon.component";

export const routes: Routes = [
  {
    path: '',
    component: TallGrassComponent,
    title: 'Tall Grass'
  },
  {
    path: 'tall-grass',
    redirectTo: '',
  },
  {
    path: 'caught',
    component: CaughtPokemonComponent,
    title: 'Caught Pokemon'
  },
  {
    path: 'pokedex',
    component: PokedexComponent,
    title: 'Pokedex'
  }
];
