--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: civilisation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.civilisation (
    civilisation_id integer NOT NULL,
    name character varying(30),
    civilisation_type character varying(30),
    planet_id integer NOT NULL
);


ALTER TABLE public.civilisation OWNER TO freecodecamp;

--
-- Name: civilisation_civilisation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.civilisation_civilisation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civilisation_civilisation_id_seq OWNER TO freecodecamp;

--
-- Name: civilisation_civilisation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.civilisation_civilisation_id_seq OWNED BY public.civilisation.civilisation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    description text,
    galaxy_type character varying(30),
    has_exo_earths boolean NOT NULL
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
    distance_from_planet_in_million_miles numeric(6,1),
    planet_id integer NOT NULL,
    is_spherical boolean
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
    distance_from_star_in_million_miles numeric(6,1),
    is_spherical boolean,
    star_id integer NOT NULL
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
    galaxy_id integer NOT NULL,
    is_spherical boolean
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
-- Name: civilisation civilisation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilisation ALTER COLUMN civilisation_id SET DEFAULT nextval('public.civilisation_civilisation_id_seq'::regclass);


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
-- Data for Name: civilisation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.civilisation VALUES (1, 'Humans', 'Type 3', 3);
INSERT INTO public.civilisation VALUES (2, 'Martians', 'Type 2', 4);
INSERT INTO public.civilisation VALUES (3, 'Neptunians', 'Type 4', 7);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Dim, milky band of light across the night sky', 'Spiral', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Named after the constellation Andromeda where it is located', 'Spiral', false);
INSERT INTO public.galaxy VALUES (3, 'Whoolpirl', 'Distinct, well-defined spiral arms', 'Spiral', false);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'Bright central bulge and dark dust lane', 'Spiral', false);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 'Toy pinwheel', 'Spiral', true);
INSERT INTO public.galaxy VALUES (6, 'Antennae', 'Interacting, colliding galaxies', 'Spiral', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 0.2, 3, true);
INSERT INTO public.moon VALUES (2, 'Phobos', 0.0, 4, false);
INSERT INTO public.moon VALUES (3, 'Deimos', 0.0, 4, false);
INSERT INTO public.moon VALUES (4, 'Titan', 0.8, 5, true);
INSERT INTO public.moon VALUES (5, 'Enceladus', 0.1, 5, true);
INSERT INTO public.moon VALUES (6, 'Mimas', 0.1, 5, true);
INSERT INTO public.moon VALUES (7, 'Rhea', 0.3, 5, true);
INSERT INTO public.moon VALUES (8, 'Iapetus', 2.2, 5, true);
INSERT INTO public.moon VALUES (9, 'Dione', 0.2, 5, true);
INSERT INTO public.moon VALUES (10, 'Tethys', 0.2, 5, true);
INSERT INTO public.moon VALUES (11, 'Titania', 0.3, 6, true);
INSERT INTO public.moon VALUES (12, 'Oberon', 0.4, 6, true);
INSERT INTO public.moon VALUES (13, 'Umbriel', 0.2, 6, true);
INSERT INTO public.moon VALUES (14, 'Ariel', 0.1, 6, true);
INSERT INTO public.moon VALUES (15, 'Miranda', 0.1, 6, true);
INSERT INTO public.moon VALUES (16, 'Triton', 0.2, 7, true);
INSERT INTO public.moon VALUES (17, 'Proteus', 0.1, 7, false);
INSERT INTO public.moon VALUES (18, 'Nereid', 3.4, 7, false);
INSERT INTO public.moon VALUES (19, 'Larissa', 0.1, 7, false);
INSERT INTO public.moon VALUES (20, 'Galatea', 0.0, 7, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 10, 3.0, true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 12, 5.0, true, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 4000, 7.0, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 15, 9.0, true, 1);
INSERT INTO public.planet VALUES (5, 'Saturn', 20, 11.0, true, 1);
INSERT INTO public.planet VALUES (6, 'Uranus', 40, 13.0, true, 1);
INSERT INTO public.planet VALUES (7, 'Neptune', 100, 15.0, true, 1);
INSERT INTO public.planet VALUES (8, 'Logic', 200, 1.0, false, 2);
INSERT INTO public.planet VALUES (9, 'Fizzle', 300, 18.0, true, 2);
INSERT INTO public.planet VALUES (10, 'LZG', 450, 100.0, false, 3);
INSERT INTO public.planet VALUES (11, 'KLD', 600, 1000.0, true, 4);
INSERT INTO public.planet VALUES (12, 'KCY', 70, 34.0, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 4600, 1, true);
INSERT INTO public.star VALUES (2, 'M31-V1', 75, 2, true);
INSERT INTO public.star VALUES (3, 'SN 2011dh', 11, 3, true);
INSERT INTO public.star VALUES (4, 'SN 2023ixf', 15, 5, false);
INSERT INTO public.star VALUES (5, 'R136a1', 1, 1, true);
INSERT INTO public.star VALUES (6, 'HV 11423', 17, 1, true);


--
-- Name: civilisation_civilisation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.civilisation_civilisation_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: civilisation civilisation_civilisation_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilisation
    ADD CONSTRAINT civilisation_civilisation_id_key UNIQUE (civilisation_id);


--
-- Name: civilisation civilisation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilisation
    ADD CONSTRAINT civilisation_pkey PRIMARY KEY (civilisation_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: civilisation civilisation_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilisation
    ADD CONSTRAINT civilisation_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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
