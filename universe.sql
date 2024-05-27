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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size numeric NOT NULL,
    composition text NOT NULL,
    planet_id integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size numeric,
    years integer,
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
    name character varying(30) NOT NULL,
    size numeric,
    years integer,
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
    name character varying(30) NOT NULL,
    size numeric,
    years integer,
    has_life boolean,
    is_spherical boolean,
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
    name character varying(30) NOT NULL,
    size numeric,
    years integer,
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Asteroid1', 100, 'Iron', 1);
INSERT INTO public.asteroid VALUES (2, 'Asteroid2', 150, 'Rock', 2);
INSERT INTO public.asteroid VALUES (3, 'Asteroid3', 200, 'Ice', 3);
INSERT INTO public.asteroid VALUES (4, 'Asteroid4', 120, 'Metal', 4);
INSERT INTO public.asteroid VALUES (5, 'Asteroid5', 180, 'Silicate', 5);
INSERT INTO public.asteroid VALUES (6, 'Asteroid6', 90, 'Carbonaceous', 6);
INSERT INTO public.asteroid VALUES (7, 'Asteroid7', 110, 'Nickel-Iron', 7);
INSERT INTO public.asteroid VALUES (8, 'Asteroid8', 130, 'Mafic', 8);
INSERT INTO public.asteroid VALUES (9, 'Asteroid9', 170, 'Basaltic', 9);
INSERT INTO public.asteroid VALUES (10, 'Asteroid10', 190, 'Chondritic', 10);
INSERT INTO public.asteroid VALUES (11, 'Asteroid11', 140, 'Stony', 11);
INSERT INTO public.asteroid VALUES (12, 'Asteroid12', 160, 'Metallic', 12);
INSERT INTO public.asteroid VALUES (13, 'Asteroid13', 105, 'Sulfide', 13);
INSERT INTO public.asteroid VALUES (14, 'Asteroid14', 125, 'Ferric', 14);
INSERT INTO public.asteroid VALUES (15, 'Asteroid15', 195, 'Olivine', 15);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'via_lactea', 100, 1000000, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 110000, 2500000, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 60000, 3000000, NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 110000, 2500000, NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 60000, 3000000, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxia1', 1000, 2000, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'luna', 50000, 100000, 1);
INSERT INTO public.moon VALUES (2, 'Moon', 2.73, 45370, 1);
INSERT INTO public.moon VALUES (3, 'Phobos', 0, 275, 2);
INSERT INTO public.moon VALUES (4, 'Deimos', 0, 1277, 2);
INSERT INTO public.moon VALUES (5, 'Ganymede', 0.25, 70950, 3);
INSERT INTO public.moon VALUES (6, 'Callisto', 0.18, 40000, 3);
INSERT INTO public.moon VALUES (7, 'Io', 0.15, 15047, 3);
INSERT INTO public.moon VALUES (8, 'Europa', 0.08, 30647, 3);
INSERT INTO public.moon VALUES (9, 'Amalthea', 0, 498, 3);
INSERT INTO public.moon VALUES (10, 'Himalia', 0, 250, 3);
INSERT INTO public.moon VALUES (11, 'Elara', 0, 259, 3);
INSERT INTO public.moon VALUES (12, 'Enceladus', 0, 127706, 4);
INSERT INTO public.moon VALUES (13, 'Titan', 2.25, 15, 4);
INSERT INTO public.moon VALUES (14, 'Rhea', 1.89, 458212, 4);
INSERT INTO public.moon VALUES (15, 'Iapetus', 0.28, 79, 4);
INSERT INTO public.moon VALUES (16, 'Mimas', 0.37, 942, 4);
INSERT INTO public.moon VALUES (17, 'Miranda', 0.12, 1413, 5);
INSERT INTO public.moon VALUES (18, 'Ariel', 0.24, 2520, 5);
INSERT INTO public.moon VALUES (19, 'Umbriel', 0.24, 4144, 5);
INSERT INTO public.moon VALUES (20, 'Titania', 0.43, 8706234, 5);
INSERT INTO public.moon VALUES (21, 'Oberon', 0.46, 13463234, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 50000, 100000, true, true, 1);
INSERT INTO public.planet VALUES (2, 'Proxima b', 0.847, 6000000, true, true, 2);
INSERT INTO public.planet VALUES (3, 'Alpha Centauri Bb', 1.13, 6000000, false, true, 3);
INSERT INTO public.planet VALUES (4, 'Kepler-186f', 1.11, 5500000, true, true, 4);
INSERT INTO public.planet VALUES (5, 'TRAPPIST-1e', 0.77, 7000000, true, true, 5);
INSERT INTO public.planet VALUES (6, 'Andromeda Planet 1', 0.9, 1500000, false, true, 6);
INSERT INTO public.planet VALUES (7, 'Jupiter', 0.3178, 4600000, false, true, 1);
INSERT INTO public.planet VALUES (8, 'Saturn', 0.9516, 4600000, false, true, 1);
INSERT INTO public.planet VALUES (9, 'Uranus', 0.01454, 4600000, false, true, 1);
INSERT INTO public.planet VALUES (10, 'Neptune', 0.01715, 4600000, false, true, 1);
INSERT INTO public.planet VALUES (11, 'Ganymede', 0.0004135, 4600000, false, true, 2);
INSERT INTO public.planet VALUES (12, 'Titan', 0.0004043, 4600000, false, true, 2);
INSERT INTO public.planet VALUES (13, 'Io', 0.000286, 4600000, false, true, 2);
INSERT INTO public.planet VALUES (14, 'Europa', 0.000245, 4600000, false, true, 2);
INSERT INTO public.planet VALUES (15, 'Callisto', 0.000378, 4600000, false, true, 2);
INSERT INTO public.planet VALUES (16, 'Triton', 0.000212, 4600000, false, true, 1);
INSERT INTO public.planet VALUES (17, 'Charon', 0.000077, 4600000, false, true, 1);
INSERT INTO public.planet VALUES (18, 'Enceladus', 0.000159, 4600000, false, true, 1);
INSERT INTO public.planet VALUES (19, 'Miranda', 0.000024, 4600000, false, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sol', 100, 1000000, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 0.14, 600000, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 1.1, 600000, 1);
INSERT INTO public.star VALUES (4, 'Kepler-444', 0.6, 1150000, 1);
INSERT INTO public.star VALUES (5, 'TRAPPIST-1', 0.08, 7000000, 1);
INSERT INTO public.star VALUES (6, 'Andromeda Star 1', 2.3, 20000000, 2);
INSERT INTO public.star VALUES (7, 'Whirlpool Star 1', 3.5, 15000000, 4);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 15, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 19, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_unique UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


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
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: asteroid asteroid_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

