--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(200),
    description character varying(200),
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    galaxy_types text,
    distance_from_earth integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(200),
    description character varying(200),
    is_ringed boolean NOT NULL,
    is_visible boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    planet_name text,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(200),
    description character varying(200),
    has_life boolean NOT NULL,
    is_visible boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    visible_constellation text,
    constellations text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
    solar_system_id integer NOT NULL,
    name character varying(30),
    has_life boolean NOT NULL,
    galaxy_name text,
    description character varying(200),
    age_in_million_years integer
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: solar_system_solar_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_system_solar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_system_solar_id_seq OWNER TO freecodecamp;

--
-- Name: solar_system_solar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_system_solar_id_seq OWNED BY public.solar_system.solar_system_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(200),
    description character varying(200),
    is_active boolean,
    is_visible boolean NOT NULL,
    age_in_millions_of_years integer,
    galaxy_name text,
    distance_from_earth integer,
    constellations character varying(200),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: solar_system solar_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system ALTER COLUMN solar_system_id SET DEFAULT nextval('public.solar_system_solar_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy, spiral in shape with a central bulge and a rotating disk.', true, false, 13000, 'Spiral', 0);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The nearest spiral galaxy to the Milky Way and the largest galaxy in the Local Group.', true, false, 10000, 'Spiral', 3);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'A smaller spiral galaxy in the Local Group, known for its low luminosity.', true, false, 3000, 'Spiral', 3);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'A massive elliptical galaxy, home to a supermassive black hole at its center.', false, true, 13000, 'Elliptical', 54);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy', 'A grand-design spiral galaxy with well-defined arms.', true, false, 11000, 'Spiral', 23);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 'A galaxy with a distinctive appearance, resembling a sombrero hat.', false, true, 13000, 'Spiral', 29);
INSERT INTO public.galaxy VALUES (7, 'Galaxy 7', 'A new galaxy with unique properties that was recently discovered.', true, false, 1000, 'Spiral', 1000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Mercury Moon 1', 'A small moon with a heavily cratered surface.', false, true, 4600, 92000000, 'Mercury', 1);
INSERT INTO public.moon VALUES (2, 'Pluto Moon 1', 'A distant moon with icy surface features.', true, false, 4500, 591300000, 'Pluto', 2);
INSERT INTO public.moon VALUES (3, 'Kepler-452b Moon 1', 'A large moon with signs of volcanic activity.', false, true, 1500, 1400, 'Kepler-452b', 3);
INSERT INTO public.moon VALUES (4, 'HD 209458 b Moon 1', 'A small, rocky moon in the hot Jupiter system.', false, true, 1200, 150, 'HD 209458 b', 4);
INSERT INTO public.moon VALUES (5, 'Alpha Centauri Bb Moon 1', 'A moon with a rocky surface and potential for life.', false, true, 4500, 4370000, 'Alpha Centauri Bb', 5);
INSERT INTO public.moon VALUES (6, 'LHS 1140 b Moon 1', 'A potentially habitable moon orbiting the exoplanet.', true, true, 200, 40400000, 'LHS 1140 b', 6);
INSERT INTO public.moon VALUES (7, 'TRAPPIST-1e Moon 1', 'A moon with oceans, possibly harboring life.', true, true, 300, 40000000, 'TRAPPIST-1e', 7);
INSERT INTO public.moon VALUES (8, 'K2-18b Moon 1', 'A moon with thick atmosphere and signs of water.', false, true, 800, 124000000, 'K2-18b', 8);
INSERT INTO public.moon VALUES (9, 'GJ 667 Cc Moon 1', 'A large moon with a rocky surface.', false, true, 2000, 22400000, 'GJ 667 Cc', 9);
INSERT INTO public.moon VALUES (10, 'WASP-33b Moon 1', 'A moon located near the hot exoplanet with volcanic activity.', false, true, 1500, 1045000, 'WASP-33b', 10);
INSERT INTO public.moon VALUES (11, 'Kepler-62f Moon 1', 'A potentially habitable moon with a thick atmosphere.', true, true, 1000, 1200000, 'Kepler-62f', 11);
INSERT INTO public.moon VALUES (12, 'Beta Pictoris c Moon 1', 'A cold moon orbiting the super-Earth exoplanet.', false, true, 1500, 240000000, 'Beta Pictoris c', 12);
INSERT INTO public.moon VALUES (13, 'Earth Moon', 'The only natural satellite of Earth.', true, true, 4500, 0, 'Earth', 13);
INSERT INTO public.moon VALUES (14, 'Mars Moon 1', 'A small moon with a dusty surface.', false, true, 4500, 225000000, 'Mars', 14);
INSERT INTO public.moon VALUES (15, 'Venus Moon 1', 'A moon orbiting Venus with an unknown composition.', false, true, 4600, 42000000, 'Venus', 15);
INSERT INTO public.moon VALUES (16, 'Proxima b Moon 1', 'A moon with potential for liquid water on its surface.', false, true, 500, 4, 'Proxima b', 16);
INSERT INTO public.moon VALUES (17, 'Mercury Moon 2', 'A rocky moon with large impact craters.', false, true, 4600, 92000000, 'Mercury', 17);
INSERT INTO public.moon VALUES (18, 'Pluto Moon 2', 'A moon with a frozen surface and low gravity.', true, false, 4500, 591300000, 'Pluto', 18);
INSERT INTO public.moon VALUES (19, 'Kepler-452b Moon 2', 'A moon with high mountains and deep valleys.', false, true, 1500, 1400, 'Kepler-452b', 19);
INSERT INTO public.moon VALUES (20, 'HD 209458 b Moon 2', 'A volatile moon with intense radiation and extreme weather patterns.', false, true, 1200, 150, 'HD 209458 b', 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'The closest planet to the Sun, with extreme temperature fluctuations.', false, true, 4600, 92000000, 'Orion', 'Orion');
INSERT INTO public.planet VALUES (2, 'Pluto', 'A dwarf planet located in the Kuiper Belt, beyond Neptune.', false, false, 4500, 591300000, 'Orion', 'Orion');
INSERT INTO public.planet VALUES (3, 'Kepler-452b', 'An exoplanet in the habitable zone of its star, often called Earth’s cousin.', true, true, 1500, 1400, 'Centaurus', 'Centaurus');
INSERT INTO public.planet VALUES (4, 'HD 209458 b', 'A hot Jupiter exoplanet orbiting a star in the Pegasus constellation.', false, true, 1200, 150, 'Canis Major', 'Canis Major');
INSERT INTO public.planet VALUES (5, 'Alpha Centauri Bb', 'An exoplanet orbiting the closest star system to Earth, Alpha Centauri.', true, true, 4500, 4370000, 'Centaurus', 'Centaurus');
INSERT INTO public.planet VALUES (6, 'LHS 1140 b', 'A potentially habitable exoplanet located in the Centaurus constellation.', true, true, 200, 40400000, 'Centaurus', 'Centaurus');
INSERT INTO public.planet VALUES (7, 'TRAPPIST-1e', 'An exoplanet located in the TRAPPIST-1 system, potentially habitable.', true, true, 300, 40000000, 'Orion', 'Orion');
INSERT INTO public.planet VALUES (8, 'K2-18b', 'An exoplanet in the habitable zone of its star, located in the Lyra constellation.', true, true, 800, 124000000, 'Orion', 'Orion');
INSERT INTO public.planet VALUES (9, 'GJ 667 Cc', 'A super-Earth exoplanet located in the constellation of Centaurus.', true, true, 2000, 22400000, 'Centaurus', 'Centaurus');
INSERT INTO public.planet VALUES (10, 'WASP-33b', 'An exoplanet with a highly elliptical orbit, located in the Triangulum constellation.', false, true, 1500, 1045000, 'Triangulum', 'Triangulum');
INSERT INTO public.planet VALUES (11, 'Kepler-62f', 'An exoplanet in the Kepler-62 system, potentially habitable.', true, true, 1000, 1200000, 'Triangulum', 'Triangulum');
INSERT INTO public.planet VALUES (12, 'Beta Pictoris c', 'A planet in the Beta Pictoris system, located in the Centaurus constellation.', false, true, 1500, 240000000, 'Centaurus', 'Centaurus');
INSERT INTO public.planet VALUES (13, 'Earth', 'The third planet from the Sun, known to support life.', true, true, 4500, 0, 'Orion', 'Orion');
INSERT INTO public.planet VALUES (14, 'Mars', 'The fourth planet from the Sun, known as the Red Planet.', false, true, 4500, 225000000, 'Orion', 'Orion');
INSERT INTO public.planet VALUES (15, 'Venus', 'The second planet from the Sun, with a thick, toxic atmosphere.', false, true, 4600, 42000000, 'Orion', 'Orion');
INSERT INTO public.planet VALUES (16, 'Proxima b', 'An exoplanet orbiting Proxima Centauri, located in the Centaurus constellation.', true, true, 500, 4, 'Centaurus', 'Centaurus');
INSERT INTO public.planet VALUES (17, 'Planet 17', 'Description of Planet 17', false, true, 1000, 500000000, 'Orion', 'Orion');
INSERT INTO public.planet VALUES (18, 'Planet 18', 'Description of Planet 18', false, true, 1000, 500000000, 'Centaurus', 'Centaurus');
INSERT INTO public.planet VALUES (19, 'Planet 19', 'Description of Planet 19', false, true, 1000, 500000000, 'Triangulum', 'Triangulum');
INSERT INTO public.planet VALUES (20, 'Planet 20', 'Description of Planet 20', false, true, 1000, 500000000, 'Orion', 'Orion');


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES (1, 'Solar System', true, 'Milky Way', 'The star system to which Earth belongs, including the Sun and its orbiting planets.', 4600);
INSERT INTO public.solar_system VALUES (2, 'Andromeda Solar System', true, 'Andromeda', 'A star system within the Andromeda galaxy, home to many planets and stars.', 10000);
INSERT INTO public.solar_system VALUES (3, 'Triangulum Solar System', true, 'Triangulum', 'A star system in the Triangulum galaxy, known for its lower luminosity.', 3000);
INSERT INTO public.solar_system VALUES (4, 'Messier 87 Solar System', false, 'Messier 87', 'A star system in the massive elliptical galaxy Messier 87, with a supermassive black hole.', 13000);
INSERT INTO public.solar_system VALUES (5, 'Whirlpool Galaxy Solar System', true, 'Whirlpool Galaxy', 'A star system within the Whirlpool Galaxy, characterized by its grand spiral arms.', 11000);
INSERT INTO public.solar_system VALUES (6, 'Sombrero Galaxy Solar System', false, 'Sombrero Galaxy', 'A star system in the Sombrero Galaxy, featuring a unique appearance and shape.', 13000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (7, 'Sirius', 'Brightest star in the night sky.', true, true, 120, 'Milky Way', 9, 'Canis Major', 1);
INSERT INTO public.star VALUES (8, 'Betelgeuse', 'Red supergiant, known for reddish hue.', false, true, 10, 'Milky Way', 642, 'Orion', 2);
INSERT INTO public.star VALUES (9, 'Alpha Centauri', 'Closest star system to Earth.', true, true, 5000, 'Andromeda', 4, 'Centaurus', 3);
INSERT INTO public.star VALUES (10, 'Triangulum Star', 'A star in the Triangulum Galaxy.', true, true, 500, 'Triangulum', 3000000, 'Triangulum', 4);
INSERT INTO public.star VALUES (12, 'Proxima Centauri', 'The closest star to the Sun.', true, true, 4500, 'Milky Way', 4, 'Centaurus A', 5);
INSERT INTO public.star VALUES (13, 'Aldebaran', 'Red giant star, represents the eye of the bull.', false, true, 6500, 'Milky Way', 65, 'Taurus Alpha', 6);
INSERT INTO public.star VALUES (14, 'Virgo Star', 'A star in the Virgo constellation.', true, true, 1000, 'Milky Way', 100, 'Virgo', 7);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 97, true);


--
-- Name: solar_system_solar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_system_solar_id_seq', 1, false);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 21, true);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_key UNIQUE (name);


--
-- Name: solar_system solar_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_pkey PRIMARY KEY (solar_system_id);


--
-- Name: solar_system solar_system_solar_system_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_solar_system_name_key UNIQUE (name);


--
-- Name: star star_constellations_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_constellations_key UNIQUE (constellations);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_key UNIQUE (name);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon m_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT m_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_constellations_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_constellations_fkey FOREIGN KEY (constellations) REFERENCES public.star(constellations);


--
-- PostgreSQL database dump complete
--

