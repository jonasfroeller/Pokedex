-- Create Pokemon table
CREATE TABLE Pokemon
(
    id             INT PRIMARY KEY,
    name           VARCHAR(50),
    type_primary   VARCHAR(20),
    type_secondary VARCHAR(20),
    level_min      INT,
    level_max      INT,
    catch_count    INT DEFAULT 0
);

-- Populate Pokemon table
INSERT INTO Pokemon (id, name, type_primary, type_secondary, level_min, level_max)
VALUES (1, 'Bulbasaur', 'GRASS', 'POISON', 1, 16),
       (2, 'Ivysaur', 'GRASS', 'POISON', 16, 32),
       (3, 'Venusaur', 'GRASS', 'POISON', 32, 100),
       (4, 'Charmander', 'FIRE', NULL, 1, 16),
       (5, 'Charmeleon', 'FIRE', NULL, 16, 36),
       (6, 'Charizard', 'FIRE', 'FLYING', 36, 100),
       (7, 'Squirtle', 'WATER', NULL, 1, 16),
       (8, 'Wartortle', 'WATER', NULL, 16, 36),
       (9, 'Blastoise', 'WATER', NULL, 36, 100),
       (10, 'Caterpie', 'BUG', NULL, 1, 7),
       (11, 'Metapod', 'BUG', NULL, 7, 10),
       (12, 'Butterfree', 'BUG', 'FLYING', 10, 100),
       (13, 'Weedle', 'BUG', 'POISON', 1, 7),
       (14, 'Kakuna', 'BUG', 'POISON', 7, 10),
       (15, 'Beedrill', 'BUG', 'POISON', 10, 100),
       (16, 'Pidgey', 'NORMAL', 'FLYING', 1, 18),
       (17, 'Pidgeotto', 'NORMAL', 'FLYING', 18, 36),
       (18, 'Pidgeot', 'NORMAL', 'FLYING', 36, 100),
       (19, 'Rattata', 'NORMAL', NULL, 1, 20),
       (20, 'Raticate', 'NORMAL', NULL, 20, 100),
       (21, 'Spearow', 'NORMAL', 'FLYING', 1, 20),
       (22, 'Fearow', 'NORMAL', 'FLYING', 20, 100),
       (23, 'Ekans', 'POISON', NULL, 1, 22),
       (24, 'Arbok', 'POISON', NULL, 22, 100),
       (25, 'Pikachu', 'ELECTRIC', NULL, 1, 100),
       (26, 'Raichu', 'ELECTRIC', NULL, 1, 100),
       (27, 'Sandshrew', 'GROUND', NULL, 1, 22),
       (28, 'Sandslash', 'GROUND', NULL, 22, 100),
       (29, 'Nidoran-F', 'POISON', NULL, 1, 16),
       (30, 'Nidorina', 'POISON', NULL, 16, 100),
       (31, 'Nidoqueen', 'POISON', 'GROUND', 16, 100),
       (32, 'Nidoran-M', 'POISON', NULL, 1, 16),
       (33, 'Nidorino', 'POISON', NULL, 16, 100),
       (34, 'Nidoking', 'POISON', 'GROUND', 16, 100),
       (35, 'Clefairy', 'FAIRY', NULL, 1, 100),
       (36, 'Clefable', 'FAIRY', NULL, 1, 100),
       (37, 'Vulpix', 'FIRE', NULL, 1, 100),
       (38, 'Ninetales', 'FIRE', NULL, 1, 100),
       (39, 'Jigglypuff', 'NORMAL', 'FAIRY', 1, 100),
       (40, 'Wigglytuff', 'NORMAL', 'FAIRY', 1, 100),
       (41, 'Zubat', 'POISON', 'FLYING', 1, 22),
       (42, 'Golbat', 'POISON', 'FLYING', 22, 100),
       (43, 'Oddish', 'GRASS', 'POISON', 1, 21),
       (44, 'Gloom', 'GRASS', 'POISON', 21, 100),
       (45, 'Vileplume', 'GRASS', 'POISON', 21, 100),
       (46, 'Paras', 'BUG', 'GRASS', 1, 24),
       (47, 'Parasect', 'BUG', 'GRASS', 24, 100),
       (48, 'Venonat', 'BUG', 'POISON', 1, 31),
       (49, 'Venomoth', 'BUG', 'POISON', 31, 100),
       (50, 'Diglett', 'GROUND', NULL, 1, 25),
       (51, 'Dugtrio', 'GROUND', NULL, 25, 100),
       (52, 'Meowth', 'NORMAL', NULL, 1, 100),
       (53, 'Persian', 'NORMAL', NULL, 1, 100),
       (54, 'Psyduck', 'WATER', NULL, 1, 33),
       (55, 'Golduck', 'WATER', NULL, 33, 100),
       (56, 'Mankey', 'FIGHTING', NULL, 1, 28),
       (57, 'Primeape', 'FIGHTING', NULL, 28, 100),
       (58, 'Growlithe', 'FIRE', NULL, 1, 45),
       (59, 'Arcanine', 'FIRE', NULL, 45, 100),
       (60, 'Poliwag', 'WATER', NULL, 1, 25),
       (61, 'Poliwhirl', 'WATER', NULL, 25, 100),
       (62, 'Poliwrath', 'WATER', 'FIGHTING', 25, 100),
       (63, 'Abra', 'PSYCHIC', NULL, 1, 100),
       (64, 'Kadabra', 'PSYCHIC', NULL, 16, 100),
       (65, 'Alakazam', 'PSYCHIC', NULL, 36, 100),
       (66, 'Machop', 'FIGHTING', NULL, 1, 28),
       (67, 'Machoke', 'FIGHTING', NULL, 28, 100),
       (68, 'Machamp', 'FIGHTING', NULL, 28, 100),
       (69, 'Bellsprout', 'GRASS', 'POISON', 1, 21),
       (70, 'Weepinbell', 'GRASS', 'POISON', 21, 100),
       (71, 'Victreebel', 'GRASS', 'POISON', 21, 100),
       (72, 'Tentacool', 'WATER', 'POISON', 1, 30),
       (73, 'Tentacruel', 'WATER', 'POISON', 30, 100),
       (74, 'Geodude', 'ROCK', 'GROUND', 1, 25),
       (75, 'Graveler', 'ROCK', 'GROUND', 25, 100),
       (76, 'Golem', 'ROCK', 'GROUND', 25, 100),
       (77, 'Ponyta', 'FIRE', NULL, 1, 40),
       (78, 'Rapidash', 'FIRE', NULL, 40, 100),
       (79, 'Slowpoke', 'WATER', 'PSYCHIC', 1, 37),
       (80, 'Slowbro', 'WATER', 'PSYCHIC', 37, 100),
       (81, 'Magnemite', 'ELECTRIC', 'STEEL', 1, 30),
       (82, 'Magneton', 'ELECTRIC', 'STEEL', 30, 100),
       (83, 'Farfetchd', 'NORMAL', 'FLYING', 1, 100),
       (84, 'Doduo', 'NORMAL', 'FLYING', 1, 31),
       (85, 'Dodrio', 'NORMAL', 'FLYING', 31, 100),
       (86, 'Seel', 'WATER', NULL, 1, 34),
       (87, 'Dewgong', 'WATER', 'ICE', 34, 100),
       (88, 'Grimer', 'POISON', NULL, 1, 38),
       (89, 'Muk', 'POISON', NULL, 38, 100),
       (90, 'Shellder', 'WATER', NULL, 1, 33),
       (91, 'Cloyster', 'WATER', 'ICE', 33, 100),
       (92, 'Gastly', 'GHOST', 'POISON', 1, 25),
       (93, 'Haunter', 'GHOST', 'POISON', 25, 100),
       (94, 'Gengar', 'GHOST', 'POISON', 25, 100),
       (95, 'Onix', 'ROCK', 'GROUND', 1, 100),
       (96, 'Drowzee', 'PSYCHIC', NULL, 1, 26),
       (97, 'Hypno', 'PSYCHIC', NULL, 26, 100),
       (98, 'Krabby', 'WATER', NULL, 1, 28),
       (99, 'Kingler', 'WATER', NULL, 28, 100),
       (100, 'Voltorb', 'ELECTRIC', NULL, 1, 30),
       (101, 'Electrode', 'ELECTRIC', NULL, 30, 100),
       (102, 'Exeggcute', 'GRASS', 'PSYCHIC', 1, 30),
       (103, 'Exeggutor', 'GRASS', 'PSYCHIC', 30, 100),
       (104, 'Cubone', 'GROUND', NULL, 1, 28),
       (105, 'Marowak', 'GROUND', NULL, 28, 100),
       (106, 'Hitmonlee', 'FIGHTING', NULL, 28, 100),
       (107, 'Hitmonchan', 'FIGHTING', NULL, 28, 100),
       (108, 'Lickitung', 'NORMAL', NULL, 1, 100),
       (109, 'Koffing', 'POISON', NULL, 1, 35),
       (110, 'Weezing', 'POISON', NULL, 35, 100),
       (111, 'Rhyhorn', 'GROUND', 'ROCK', 1, 42),
       (112, 'Rhydon', 'GROUND', 'ROCK', 42, 100),
       (113, 'Chansey', 'NORMAL', NULL, 1, 100),
       (114, 'Tangela', 'GRASS', NULL, 1, 100),
       (115, 'Kangaskhan', 'NORMAL', NULL, 1, 100),
       (116, 'Horsea', 'WATER', NULL, 1, 32),
       (117, 'Seadra', 'WATER', NULL, 32, 100),
       (118, 'Goldeen', 'WATER', NULL, 1, 33),
       (119, 'Seaking', 'WATER', NULL, 33, 100),
       (120, 'Staryu', 'WATER', NULL, 1, 45),
       (121, 'Starmie', 'WATER', 'PSYCHIC', 45, 100),
       (122, 'Mr-Mime', 'PSYCHIC', 'FAIRY', 1, 100),
       (123, 'Scyther', 'BUG', 'FLYING', 1, 100),
       (124, 'Jynx', 'ICE', 'PSYCHIC', 1, 100),
       (125, 'Electabuzz', 'ELECTRIC', NULL, 1, 100),
       (126, 'Magmar', 'FIRE', NULL, 1, 100),
       (127, 'Pinsir', 'BUG', NULL, 1, 100),
       (128, 'Tauros', 'NORMAL', NULL, 1, 100),
       (129, 'Magikarp', 'WATER', NULL, 1, 15),
       (130, 'Gyarados', 'WATER', 'FLYING', 20, 100),
       (131, 'Lapras', 'WATER', 'ICE', 1, 100),
       (132, 'Ditto', 'NORMAL', NULL, 1, 100),
       (133, 'Eevee', 'NORMAL', NULL, 1, 100),
       (134, 'Vaporeon', 'WATER', NULL, 1, 100),
       (135, 'Jolteon', 'ELECTRIC', NULL, 1, 100),
       (136, 'Flareon', 'FIRE', NULL, 1, 100),
       (137, 'Porygon', 'NORMAL', NULL, 1, 100),
       (138, 'Omanyte', 'ROCK', 'WATER', 1, 40),
       (139, 'Omastar', 'ROCK', 'WATER', 40, 100),
       (140, 'Kabuto', 'ROCK', 'WATER', 1, 40),
       (141, 'Kabutops', 'ROCK', 'WATER', 40, 100),
       (142, 'Aerodactyl', 'ROCK', 'FLYING', 1, 100),
       (143, 'Snorlax', 'NORMAL', NULL, 30, 100),
       (144, 'Articuno', 'ICE', 'FLYING', 50, 100),
       (145, 'Zapdos', 'ELECTRIC', 'FLYING', 50, 100),
       (146, 'Moltres', 'FIRE', 'FLYING', 50, 100),
       (147, 'Dratini', 'DRAGON', NULL, 1, 55),
       (148, 'Dragonair', 'DRAGON', NULL, 30, 100),
       (149, 'Dragonite', 'DRAGON', 'FLYING', 55, 100),
       (150, 'Mewtwo', 'PSYCHIC', NULL, 70, 100),
       (151, 'Mew', 'PSYCHIC', NULL, 1, 100);