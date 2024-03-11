package at.htl.boundary;

import at.htl.model.Pokemon;
import at.htl.model.PokemonType;
import at.htl.repository.PokemonRepository;
import jakarta.inject.Inject;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.*;
import org.eclipse.microprofile.config.ConfigProvider;

import java.util.List;

@Path("/api/pokemon")
public class PokemonResource {

    @Context
    UriInfo uriInfo;

    @Inject
    PokemonRepository repository;

    @POST
    @Produces(MediaType.TEXT_PLAIN)
    @Path("/{id}/catch")
    public Response catchPokemon(@PathParam("id") int id) {
        boolean result = repository.catchPokemon(id);

        if (result) {
            return Response.ok().build();
        } else {
            return Response.status(Response.Status.NOT_MODIFIED).build();
        }
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/random")
    public Pokemon getRandomPokemon() {
        return repository.getRandomPokemon();
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/{id}")
    public Pokemon getPokemonById(@PathParam("id") int id) {
        return repository.getPokemon(id);
    }

    @GET
    @Produces(MediaType.TEXT_PLAIN)
    @Path("/{name}/icon")
    public String getPokemonIconById(@PathParam("name") String name) {
        String iconUrl = ConfigProvider.getConfig().getValue("pokemon.icon", String.class);
        return String.format(iconUrl, name);
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/list")
    public List<Pokemon> getAllPokemon() {
        return repository.getAllPokemon();
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/list/{type}")
    public List<Pokemon> getAllPokemonHavingType(@PathParam("type") PokemonType type) {
        return repository.getAllPokemonWithType(type);
    }
}