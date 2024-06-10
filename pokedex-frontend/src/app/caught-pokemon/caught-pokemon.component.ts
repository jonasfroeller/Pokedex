import {AfterContentInit, Component} from '@angular/core';
import {PokemonComponent} from "../pokemon/pokemon.component";
import {Pokemon} from "../types";
import {PokemonService} from "../pokemon.service";

@Component({
  selector: 'app-caught-pokemon',
  standalone: true,
  imports: [
    PokemonComponent
  ],
  templateUrl: './caught-pokemon.component.html',
  styleUrl: './caught-pokemon.component.scss'
})
export class CaughtPokemonComponent implements AfterContentInit {
  displayedPokemon: Pokemon[] = [];

  constructor(private pokemonService: PokemonService) {
  }

  setNewPokemon(): void {
    this.pokemonService.allPokemon.subscribe(pokemon => {
      this.displayedPokemon = pokemon.filter(pokemon => pokemon.catchCount >= 1);
    });
  }

  ngAfterContentInit(): void {
    console.log('CaughtPokemonComponent | ngAfterViewInit()');

    this.setNewPokemon();
  }
}
