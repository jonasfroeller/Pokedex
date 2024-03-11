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

    public boolean caughtPokemon(int id) {
        if (id == 69) {
            return true;
        }

        return getRandomPokemonId() == id;
    }

    @Transactional
    public boolean catchPokemon(int id) {
        boolean caughtPokemon = caughtPokemon(id);

        if (caughtPokemon) {
            Pokemon pokemon = getPokemon(id);
            Pokemon p = this.em.merge(pokemon);
            p.updateCatchCount(p.getCatchCount()+1);
        }

        return caughtPokemon;
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