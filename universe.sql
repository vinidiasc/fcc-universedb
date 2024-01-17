--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer,
    distance_from_earth numeric(10,4),
    comet_type text,
    has_life boolean NOT NULL
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer,
    distance_from_earth numeric(10,4),
    galaxy_type text,
    has_life boolean NOT NULL
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
    name character varying(30),
    age_in_millions_of_years integer,
    distance_from_earth numeric(10,4),
    moon_type text,
    has_life boolean NOT NULL,
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
    name character varying(30),
    age_in_millions_of_years integer,
    distance_from_earth numeric(10,4),
    planet_type text,
    has_life boolean NOT NULL,
    star_id integer
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer,
    distance_from_earth numeric(10,4),
    star_type text,
    has_life boolean NOT NULL,
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'BLANK', 0, 0.0000, 'NULL', false);
INSERT INTO public.comet VALUES (2, 'BLANK', 0, 0.0000, 'NULL', false);
INSERT INTO public.comet VALUES (3, 'BLANK', 0, 0.0000, 'NULL', false);
INSERT INTO public.comet VALUES (4, 'BLANK', 0, 0.0000, 'NULL', false);
INSERT INTO public.comet VALUES (5, 'BLANK', 0, 0.0000, 'NULL', false);
INSERT INTO public.comet VALUES (6, 'BLANK', 0, 0.0000, 'NULL', false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 16000, 25.0000, 'Barred spiral galaxy', true);
INSERT INTO public.galaxy VALUES (2, 'andromeda', 10000, 2.5000, 'Barred spiral galaxy', false);
INSERT INTO public.galaxy VALUES (3, 'Antennae Galaxies', 12000, 45.0000, 'SB(s)m pec / SA(s)m pec', false);
INSERT INTO public.galaxy VALUES (4, 'NGC 4622', 0, 111.0000, 'SA(r)ab', false);
INSERT INTO public.galaxy VALUES (5, 'NGC 2537', 0, 48.0000, 'SB(rs)dm', false);
INSERT INTO public.galaxy VALUES (6, 'Black Eye Galaxy', 0, 17.0000, '(R)SA(rs)ab', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Moon', 4420, 384.0000, 'Rockie', false, 1);
INSERT INTO public.moon VALUES (3, 'Metis', 0, 728.0000, 'Rockie', false, 6);
INSERT INTO public.moon VALUES (4, 'Adrastea', 0, 728.0000, 'Rockie', false, 6);
INSERT INTO public.moon VALUES (5, 'Amalthea', 0, 728.0000, 'Rockie', false, 6);
INSERT INTO public.moon VALUES (6, 'Thebe', 0, 728.0000, 'Rockie', false, 6);
INSERT INTO public.moon VALUES (7, 'Europa', 0, 728.0000, 'Rockie', false, 6);
INSERT INTO public.moon VALUES (8, 'Ganymede', 0, 728.0000, 'Rockie', false, 6);
INSERT INTO public.moon VALUES (9, 'Callisto', 0, 728.0000, 'Rockie', false, 6);
INSERT INTO public.moon VALUES (10, 'Themisto', 0, 728.0000, 'Rockie', false, 6);
INSERT INTO public.moon VALUES (11, 'Leda', 0, 728.0000, 'Rockie', false, 6);
INSERT INTO public.moon VALUES (12, 'S/2018 J 2', 0, 728.0000, 'Rockie', false, 6);
INSERT INTO public.moon VALUES (13, 'Himalia', 0, 728.0000, 'Rockie', false, 6);
INSERT INTO public.moon VALUES (14, 'Pandia', 0, 728.0000, 'Rockie', false, 6);
INSERT INTO public.moon VALUES (15, 'Lysithea', 0, 728.0000, 'Rockie', false, 6);
INSERT INTO public.moon VALUES (16, 'Elara', 0, 728.0000, 'Rockie', false, 6);
INSERT INTO public.moon VALUES (17, 'Dia', 0, 728.0000, 'Rockie', false, 6);
INSERT INTO public.moon VALUES (18, 'Carpo', 0, 728.0000, 'Rockie', false, 6);
INSERT INTO public.moon VALUES (19, 'Valetudo', 0, 728.0000, 'Rockie', false, 6);
INSERT INTO public.moon VALUES (20, 'Valetudo', 0, 728.0000, 'Rockie', false, 6);
INSERT INTO public.moon VALUES (21, 'Euporie', 0, 728.0000, 'Rockie', false, 6);
INSERT INTO public.moon VALUES (22, 'Eupheme', 0, 728.0000, 'Rockie', false, 6);
INSERT INTO public.moon VALUES (23, 'Euanthe', 0, 728.0000, 'Rockie', false, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4500, 0.0000, 'Terrestrial', true, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 99590, 91.6910, 'Terrestrial', false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 39020, 41.4000, 'Terrestrial', false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 12760, 78.3400, 'Terrestrial', false, 1);
INSERT INTO public.planet VALUES (5, 'Saturn', 1, 1275.0000, 'Gas Giant', false, 1);
INSERT INTO public.planet VALUES (6, 'Jupiter', 20200, 728.0000, 'Gas Giant', false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 2900, 2723.9500, 'Ice Giant', false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 1500, 4351.4000, 'Ice Giant', false, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 1000, 5050.0000, 'Dwarf planet', false, 1);
INSERT INTO public.planet VALUES (10, '14 Andromedae b', 2008, 249.2000, 'Terrestrial', false, 2);
INSERT INTO public.planet VALUES (11, 'Upsilon Andromedae b', 1996, 43.9000, 'Terrestrial', false, 2);
INSERT INTO public.planet VALUES (12, 'Upsilon Andromedae c', 1996, 43.9000, 'Terrestrial', false, 2);
INSERT INTO public.planet VALUES (13, 'Upsilon Andromedae d', 1996, 43.9000, 'Terrestrial', false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 8.1900, 'G-type', true, 1);
INSERT INTO public.star VALUES (2, 'Alpheratz', 70000, 97.0000, 'B8IV-VHgMn', false, 2);
INSERT INTO public.star VALUES (3, 'Mirach', 0, 199.0000, 'M0 III', false, 2);
INSERT INTO public.star VALUES (4, 'Gamma Andromedae', 65000, 355.0000, 'K2+IIb', false, 2);
INSERT INTO public.star VALUES (5, 'Delta Andromedae', 320000, 101.0000, 'K3 III', false, 2);
INSERT INTO public.star VALUES (6, '51 Andromedae', 170000, 174.0000, 'K3- III CN0.5', false, 2);
INSERT INTO public.star VALUES (7, '14 Andromedae', 0, 0.0000, 'K0 III', false, 2);
INSERT INTO public.star VALUES (8, 'Upsilon Andromedae', 0, 0.0000, 'F8V + M4.5V', false, 2);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: comet comet_unique_constr; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_unique_constr UNIQUE (comet_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_constr; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_constr UNIQUE (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_constr; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_constr UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique_constr; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_constr UNIQUE (star_id);


--
-- Name: galaxy unique_constr; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_constr UNIQUE (galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

