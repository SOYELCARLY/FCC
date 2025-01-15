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
    name character varying(30) NOT NULL,
    constrain name,
    type character varying(15),
    age_in_millions numeric(3,1)
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
    constrain name,
    has_life boolean,
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
    age_in_millions numeric(3,1),
    distance_from_earth numeric(4,1),
    has_life boolean,
    num_near_stars integer,
    num_of_elements integer,
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
    constrain name,
    age_in_millions numeric(4,1),
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
-- Name: zodiac_sign; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.zodiac_sign (
    zodiac_sign_id integer NOT NULL,
    name character varying(30) NOT NULL,
    constrain name,
    element text
);


ALTER TABLE public.zodiac_sign OWNER TO freecodecamp;

--
-- Name: zodiac_sign_sign_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.zodiac_sign_sign_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.zodiac_sign_sign_id_seq OWNER TO freecodecamp;

--
-- Name: zodiac_sign_sign_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.zodiac_sign_sign_id_seq OWNED BY public.zodiac_sign.zodiac_sign_id;


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
-- Name: zodiac_sign zodiac_sign_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zodiac_sign ALTER COLUMN zodiac_sign_id SET DEFAULT nextval('public.zodiac_sign_sign_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Lactea', NULL, 'Esiral barrada', 13.6);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, 'Espiral', 10.0);
INSERT INTO public.galaxy VALUES (3, 'Triangulo (M33)', NULL, 'Espiral', 12.7);
INSERT INTO public.galaxy VALUES (4, 'Messier 87 (M87)', NULL, 'Eliptica', 13.8);
INSERT INTO public.galaxy VALUES (5, 'Sombrero (M104)', NULL, 'Espiral', 9.0);
INSERT INTO public.galaxy VALUES (6, 'NGC 1300', NULL, 'Espiral barrada', 9.6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'luna', NULL, true, 1);
INSERT INTO public.moon VALUES (2, 'fobos', NULL, false, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', NULL, false, 2);
INSERT INTO public.moon VALUES (4, 'Titan', NULL, NULL, 5);
INSERT INTO public.moon VALUES (5, 'encelado', NULL, NULL, 6);
INSERT INTO public.moon VALUES (6, 'lo', NULL, false, 7);
INSERT INTO public.moon VALUES (7, 'europa', NULL, NULL, 8);
INSERT INTO public.moon VALUES (8, 'ganimedes', NULL, false, 9);
INSERT INTO public.moon VALUES (9, 'calisto', NULL, false, 10);
INSERT INTO public.moon VALUES (10, 'mimas', NULL, false, 11);
INSERT INTO public.moon VALUES (11, 'triton', NULL, false, 12);
INSERT INTO public.moon VALUES (12, 'ariel', NULL, false, 1);
INSERT INTO public.moon VALUES (13, 'umbriel', NULL, false, 2);
INSERT INTO public.moon VALUES (14, 'miranda', NULL, false, 4);
INSERT INTO public.moon VALUES (15, 'titania', NULL, false, 5);
INSERT INTO public.moon VALUES (16, 'oberon', NULL, false, 6);
INSERT INTO public.moon VALUES (17, 'lysithea', NULL, false, 3);
INSERT INTO public.moon VALUES (18, 'metis', NULL, false, 7);
INSERT INTO public.moon VALUES (19, 'adrastea', NULL, false, 9);
INSERT INTO public.moon VALUES (20, 'pandora', NULL, false, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Tierra', 4.5, 0.0, true, 5, 1, 3);
INSERT INTO public.planet VALUES (2, 'Marte', 4.6, 0.3, false, 3, 2, 3);
INSERT INTO public.planet VALUES (3, 'Venus', 4.6, 0.2, false, 3, 2, 3);
INSERT INTO public.planet VALUES (4, 'Proxima B', 4.8, 4.0, NULL, 2, 1, 3);
INSERT INTO public.planet VALUES (5, 'Keepler-452b', 6.0, 140.0, NULL, 1, 1, 3);
INSERT INTO public.planet VALUES (6, 'Kepler-22b', 6.5, 620.0, NULL, 2, 1, 3);
INSERT INTO public.planet VALUES (7, 'Gliese 667', 5.5, 22.0, NULL, 3, 1, 4);
INSERT INTO public.planet VALUES (8, 'HD 209458', 4.0, 150.0, false, 4, 1, 3);
INSERT INTO public.planet VALUES (9, 'LHS', 5.0, 49.0, NULL, 1, 1, 1);
INSERT INTO public.planet VALUES (10, 'Kepler-62f', 7.5, 120.0, NULL, 6, 1, 5);
INSERT INTO public.planet VALUES (11, 'Trappist', 7.6, 39.0, NULL, 8, 7, 6);
INSERT INTO public.planet VALUES (12, 'Gliese 581', 7.0, 20.0, NULL, 62, 1, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius A', NULL, 200.0, 1);
INSERT INTO public.star VALUES (2, 'Alpheratz', NULL, 200.0, 2);
INSERT INTO public.star VALUES (3, 'Sol', NULL, 4.6, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', NULL, 10.0, 1);
INSERT INTO public.star VALUES (5, 'M31-5(Estrella en andromeda)', NULL, 7.0, 2);
INSERT INTO public.star VALUES (6, 'NGC 188(Estrella en NGC)', NULL, 6.0, 1);


--
-- Data for Name: zodiac_sign; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.zodiac_sign VALUES (1, 'aries', NULL, 'fuego');
INSERT INTO public.zodiac_sign VALUES (2, 'tauro', NULL, 'tierra');
INSERT INTO public.zodiac_sign VALUES (3, 'geminis', NULL, 'aire');
INSERT INTO public.zodiac_sign VALUES (4, 'cancer', NULL, 'agua');


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
-- Name: zodiac_sign_sign_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.zodiac_sign_sign_id_seq', 4, true);


--
-- Name: galaxy galaxy_constrain_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constrain_key UNIQUE (constrain);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_constrain_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_constrain_key UNIQUE (constrain);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet name_unic; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_unic UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_constrain_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_constrain_key UNIQUE (constrain);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: zodiac_sign zodiac_sign_constrain_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zodiac_sign
    ADD CONSTRAINT zodiac_sign_constrain_key UNIQUE (constrain);


--
-- Name: zodiac_sign zodiac_sign_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zodiac_sign
    ADD CONSTRAINT zodiac_sign_pkey PRIMARY KEY (zodiac_sign_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
