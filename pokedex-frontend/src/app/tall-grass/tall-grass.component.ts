 import {AfterContentInit, Component} from '@angular/core';
import {PokemonService} from "../pokemon.service";
import {Pokemon} from "../types";
import {NgOptimizedImage} from "@angular/common";

@Component({
  selector: 'app-tall-grass',
  standalone: true,
  imports: [
    NgOptimizedImage
  ],
  templateUrl: './tall-grass.component.html',
  styleUrl: './tall-grass.component.scss'
})
export class TallGrassComponent implements AfterContentInit {
  displayedPokemon: Pokemon | null = null;
  lastCaughtPokemonId: number = -1;

  constructor(private pokemonService: PokemonService) {
  }

  ngAfterContentInit(): void {
    console.log('TallGrassComponent | ngAfterViewInit()');

    this.setNewPokemon();
  }

  setNewPokemon(): void {
    this.pokemonService.randomPokemon.subscribe(pokemon => {
      this.displayedPokemon = pokemon;
    });
  }

  onRunAway() {
    console.log("pussy move executed");

    this.setNewPokemon();
  }

  onCatch() {
    console.log("manly move executed");

    if (this.displayedPokemon) {
      this.pokemonService.catchPokemon(this.displayedPokemon.id).subscribe(pokemonId => {
        if (pokemonId) {
          this.lastCaughtPokemonId = pokemonId;
          alert("pokemon caught!!! lvl: " + this.lastCaughtPokemonId);
        }
      });

      this.setNewPokemon();
    }
  }
}
