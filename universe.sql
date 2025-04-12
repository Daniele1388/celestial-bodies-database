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
    name character varying(100) NOT NULL,
    galaxy_types character varying(50),
    distance_from_earth numeric,
    has_life boolean,
    description text
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
    name character varying(100) NOT NULL,
    distance_from_earth numeric,
    is_spherical boolean,
    diameter_km integer,
    planet_id integer
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    planet_types character varying(50),
    has_life boolean,
    distance_from_star numeric,
    star_id integer,
    diameter_km integer,
    planet_type_id integer
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
-- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_type (
    planet_type_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE public.planet_type OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_type_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_type_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_type_planet_type_id_seq OWNED BY public.planet_type.planet_type_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    star_types character varying(50),
    age_in_millions_of_years numeric,
    is_visible boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_type planet_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type ALTER COLUMN planet_type_id SET DEFAULT nextval('public.planet_type_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 0, true, 'Our galaxy, it contains the Solar System.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 2537000, false, 'Nearby galaxy that will merge with the Milky Way.');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 3000000, false, 'One of the smallest spiral galaxies.');
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'Elliptical', 29000000, false, 'Galaxy with a prominent dark dust lane.');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'Spiral', 23000000, false, 'Known for its well-defined spiral structure.');
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 'Irregular', 163000, false, 'One of the satellite galaxies of the Milky Way.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 384400, true, 3474, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 9376, false, 22, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 23460, false, 12, 2);
INSERT INTO public.moon VALUES (4, 'Europa', 628300000, true, 3122, 5);
INSERT INTO public.moon VALUES (5, 'Ganymede', 628300000, true, 5268, 5);
INSERT INTO public.moon VALUES (6, 'Callisto', 628300000, true, 4820, 5);
INSERT INTO public.moon VALUES (7, 'Io', 628300000, true, 3643, 5);
INSERT INTO public.moon VALUES (8, 'AndroMoon-1', 2537000000, true, 1000, 6);
INSERT INTO public.moon VALUES (9, 'AndroMoon-2', 2537000000, false, 800, 6);
INSERT INTO public.moon VALUES (10, 'KeplerMoon-1', 11200000000, true, 1500, 3);
INSERT INTO public.moon VALUES (11, 'KeplerMoon-2', 11200000000, false, 1200, 3);
INSERT INTO public.moon VALUES (12, 'ProximaMoon', 4000000000, false, 500, 4);
INSERT INTO public.moon VALUES (13, 'TriangulumMoon', 3000000000, true, 900, 8);
INSERT INTO public.moon VALUES (14, 'VulcanMoon', 1000000, true, 700, 12);
INSERT INTO public.moon VALUES (15, 'WhirlMoon-1', 2300000000, true, 1000, 10);
INSERT INTO public.moon VALUES (16, 'WhirlMoon-2', 2300000000, false, 1100, 10);
INSERT INTO public.moon VALUES (17, 'SombreroMoon', 29000000000, false, 300, 9);
INSERT INTO public.moon VALUES (18, 'MagellanicMoon-1', 163000000, true, 850, 11);
INSERT INTO public.moon VALUES (19, 'MagellanicMoon-2', 163000000, false, 950, 11);
INSERT INTO public.moon VALUES (20, 'Andromeda-2-Moon', 2537000000, false, 400, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Kepler-442b', 'Terrestrial', NULL, 1120.0, 4, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Proxima b', 'Terrestrial', NULL, 0.05, 3, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Andromeda-1', 'Terrestrial', false, 0.8, 4, NULL, 1);
INSERT INTO public.planet VALUES (10, 'Whirlpool Terra', 'Terrestrial', false, 1.1, 11, NULL, 1);
INSERT INTO public.planet VALUES (11, 'Magellanic-1', 'Terrestrial', false, 0.9, 12, NULL, 1);
INSERT INTO public.planet VALUES (12, 'Vulcan', 'Terrestrial', false, 0.3, 2, NULL, 1);
INSERT INTO public.planet VALUES (1, 'Earth', 'Terrestrial', true, 1.0, 1, 12742, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Terrestrial', false, 1.5, 1, 6794, 1);
INSERT INTO public.planet VALUES (7, 'Andromeda-2', 'Gas Giant', false, 3.5, 7, NULL, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas Giant', false, 5.2, 1, 142984, 2);
INSERT INTO public.planet VALUES (8, 'Triangulum Prime', 'Ice Giant', false, 2.3, 5, NULL, 3);
INSERT INTO public.planet VALUES (9, 'Sombrero-1', 'Dwarf', false, 0.6, 6, 2274, 4);


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type VALUES (1, 'Terrestrial', 'Rocky planets with a solid surface, like Earth or Mars');
INSERT INTO public.planet_type VALUES (2, 'Gas Giant', 'Large planets with thick atmospheres of gas, like Jupiter or Saturn');
INSERT INTO public.planet_type VALUES (3, 'Ice Giant', 'Planets composed mostly of elements heavier than hydrogen and helium, like Uranus');
INSERT INTO public.planet_type VALUES (4, 'Dwarf', 'Small planetary-mass objects that do not dominate their orbits, like Pluto');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-type', 4600, true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'A-type', 250, true, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 'G-type', 5500, true, 1);
INSERT INTO public.star VALUES (4, 'Andromeda Star A', 'F-type', 800, false, 2);
INSERT INTO public.star VALUES (5, 'Triangulum Star X', 'K-type', 1500, false, 3);
INSERT INTO public.star VALUES (6, 'Sombrero Prime', 'M-type', 10000, false, 4);
INSERT INTO public.star VALUES (7, 'Betelgeuse', 'M-type', 10000, true, 1);
INSERT INTO public.star VALUES (8, 'Rigel', 'B-type', 800, true, 1);
INSERT INTO public.star VALUES (9, 'Andromeda Star B', 'G-type', 5600, false, 2);
INSERT INTO public.star VALUES (10, 'Triangulum Nova', 'F-type', 300, false, 3);
INSERT INTO public.star VALUES (11, 'Whirlpool Star X', 'A-type', 700, false, 5);
INSERT INTO public.star VALUES (12, 'Magellanic Alpha', 'K-type', 1500, false, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_type_planet_type_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet_type planet_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_name_key UNIQUE (name);


--
-- Name: planet_type planet_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_pkey PRIMARY KEY (planet_type_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planet_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_type_id_fkey FOREIGN KEY (planet_type_id) REFERENCES public.planet_type(planet_type_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

