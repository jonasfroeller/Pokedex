import {AfterContentInit, Component} from '@angular/core';
import {PokemonService} from "../pokemon.service";
import {Pokemon} from "../types";
import {PokemonComponent} from "../pokemon/pokemon.component";
import {NgClass} from "@angular/common";

@Component({
  selector: 'app-pokedex',
  standalone: true,
  imports: [
    PokemonComponent,
    NgClass
  ],
  templateUrl: './pokedex.component.html',
  styleUrl: './pokedex.component.scss'
})
export class PokedexComponent implements AfterContentInit {
  displayedPokemon: Pokemon[] = [];

  constructor(private pokemonService: PokemonService) {
  }

  setNewPokemon(): void {
    this.pokemonService.allPokemon.subscribe(pokemon => {
      this.displayedPokemon = pokemon;
    });
  }

  ngAfterContentInit(): void {
    console.log('PokedexComponent | ngAfterViewInit()');

    this.setNewPokemon();
  }
}
