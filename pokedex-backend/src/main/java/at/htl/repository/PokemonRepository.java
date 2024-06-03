 package at.htl.repository;

import at.htl.model.Pokemon;
import at.htl.model.PokemonType;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.persistence.EntityManager;
import jakarta.transaction.Transactional;
import jakarta.ws.rs.NotFoundException;

import java.util.List;
import java.util.Random;

@ApplicationScoped
public class PokemonRepository {
    @Inject
    EntityManager em;

    public Pokemon getPokemon(int id) {
        Pokemon pokemon = em.find(Pokemon.class, id);

        if (pokemon == null) {
            throw new NotFoundException();
        }

        return pokemon;
    }

    @Transactional
    public int catchPokemon(int id) {
        int result = -1;

        Random randomNumberGenerator = new Random();
        boolean isCatched = randomNumberGenerator.nextBoolean();
        if(isCatched) {
            Pokemon pokemon = this.getPokemon(id);
            pokemon.setCatchCount(pokemon.getCatchCount() + 1);
            this.em.persist(pokemon);

            result = randomNumberGenerator.nextInt(pokemon.getLevelMin(), pokemon.getLevelMax()+1);
        }

        return result;
    }

    public int getRandomPokemonId() {
        int min = 1;
        int max = 151;

        Random rand = new Random();
        return rand.nextInt(max - min + 1) + min;
    }

    public Pokemon getRandomPokemon() {
        Pokemon pokemon = em.find(Pokemon.class, getRandomPokemonId());

        if (pokemon == null) {
            throw new NotFoundException();
        }

        return pokemon;
    }

    public List<Pokemon> getAllPokemon() {
        return this.em.createNamedQuery(Pokemon.QUERY_GET_ALL, Pokemon.class).getResultList();
    }

    public List<Pokemon> getAllPokemonWithType(PokemonType type) {
        List<Pokemon> pokemonList =
                this.em.createNamedQuery(Pokemon.QUERY_GET_ALL_HAVING_TYPE, Pokemon.class)
                .setParameter("type", type)
                .getResultList();

        if (pokemonList.isEmpty()) {
            throw new NotFoundException();
        }

        return pokemonList;
    }
}