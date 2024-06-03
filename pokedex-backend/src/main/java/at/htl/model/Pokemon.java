package at.htl.model;

import jakarta.persistence.*;
import org.eclipse.microprofile.config.ConfigProvider;

@Entity
@Table(name = "POKEMON")
@NamedQueries({
        @NamedQuery(name = Pokemon.QUERY_GET_ALL, query = "SELECT s FROM Pokemon s ORDER BY s.name"),
        @NamedQuery(
                name = Pokemon.QUERY_GET_ALL_HAVING_TYPE,
                query = "SELECT s FROM Pokemon s " +
                        "WHERE s.typePrimary IS NOT NULL " +
                        "AND (s.typePrimary = :type " +
                        "OR (s.typeSecondary IS NOT NULL AND s.typeSecondary = :type)) " +
                        "ORDER BY s.name")
})

public class Pokemon {
    public static final String QUERY_GET_ALL_HAVING_TYPE = "Pokemon.GET.all.having.type";
    public static final String QUERY_GET_ALL = "Pokemon.GET.all";

    @Id
    private Long id;
    private String name;
    @Enumerated(EnumType.STRING)
    @Column(name = "type_primary")
    private PokemonType typePrimary;
    @Enumerated(EnumType.STRING)
    @Column(name = "type_secondary")
    private PokemonType typeSecondary;
    @Column(name = "catch_count")
    private int catchCount;
    @Column(name="level_min")
    private int levelMin;
    @Column(name="level_max")
    private int levelMax;

    public Pokemon() {}

    public Pokemon(String name, PokemonType typePrimary, PokemonType typeSecondary) {
        this.name = name;
        this.typePrimary = typePrimary;
        this.typeSecondary = typeSecondary;
    }

    public int getCatchCount() {
        return this.catchCount;
    }

    public long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public PokemonType getTypePrimary() {
        return typePrimary;
    }

    public PokemonType getTypeSecondary() {
        return typeSecondary;
    }

    public void setCatchCount(int catchCount) {
        this.catchCount = catchCount;
    }

    public void updateCatchCount(int amount) {
        if (amount <= 0) {
            throw new IllegalArgumentException("Catch-count can not be negative!");
        }

        this.setCatchCount(amount);
    }

    public int getLevelMin() {
        return levelMin;
    }

    public int getLevelMax() {
        return levelMax;
    }

    public String getPictureUrl() {
        String pictureUrlTemplate = ConfigProvider.getConfig().getValue("pokemon.icon", String.class);
        return String.format(pictureUrlTemplate, this.name.toLowerCase());
    }
}