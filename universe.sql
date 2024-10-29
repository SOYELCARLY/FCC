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
    name character varying(40) NOT NULL,
    discovered_by text,
    born integer,
    galaxy_type character varying(25)
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
    name character varying(40) NOT NULL,
    distance_from_earth numeric(3,1),
    planet_id integer,
    age integer
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
    name character varying(40) NOT NULL,
    position_from_the_sun integer,
    amazing boolean,
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
    name character varying(40) NOT NULL,
    amazing boolean,
    galaxy_id integer,
    age integer
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
    name character varying(40) NOT NULL,
    related_star character varying(40)
);


ALTER TABLE public.zodiac_sign OWNER TO freecodecamp;

--
-- Name: zodiac_sign_zodiac_sign_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.zodiac_sign_zodiac_sign_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.zodiac_sign_zodiac_sign_id_seq OWNER TO freecodecamp;

--
-- Name: zodiac_sign_zodiac_sign_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.zodiac_sign_zodiac_sign_id_seq OWNED BY public.zodiac_sign.zodiac_sign_id;


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

ALTER TABLE ONLY public.zodiac_sign ALTER COLUMN zodiac_sign_id SET DEFAULT nextval('public.zodiac_sign_zodiac_sign_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda 1', 'Sydney V', 1970, 'E3 pec');
INSERT INTO public.galaxy VALUES (2, 'Andromeda 2', 'Sydney V', 1971, 'dE0');
INSERT INTO public.galaxy VALUES (3, 'Centaurus A', 'Jhon H', 1847, 'S0 pec');
INSERT INTO public.galaxy VALUES (4, 'Baby Boom', 'Subaru', 2008, 'SMG');
INSERT INTO public.galaxy VALUES (5, 'Antennae', 'William H', 1785, 'SB');
INSERT INTO public.galaxy VALUES (6, 'Bode', 'Johann E', 1774, 'Espiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 38.4, 3, 0);
INSERT INTO public.moon VALUES (2, 'Fobos', 0.3, 4, 1877);
INSERT INTO public.moon VALUES (3, 'Deimos', 23.4, 4, 1877);
INSERT INTO public.moon VALUES (4, 'Io', 42.1, 5, 1610);
INSERT INTO public.moon VALUES (5, 'Europa', 67.1, 5, 1610);
INSERT INTO public.moon VALUES (6, 'Ganimedes', 10.7, 5, 1610);
INSERT INTO public.moon VALUES (7, 'Callisto', 16.6, 5, 1610);
INSERT INTO public.moon VALUES (8, 'Amaltea', 0.4, 5, 1892);
INSERT INTO public.moon VALUES (9, 'Himalia', 25.0, 5, 1904);
INSERT INTO public.moon VALUES (10, 'Mimas', 0.9, 6, 1789);
INSERT INTO public.moon VALUES (11, 'Encelado', 1.3, 6, 1789);
INSERT INTO public.moon VALUES (12, 'Rea', 4.5, 6, 1672);
INSERT INTO public.moon VALUES (13, 'Titan', 15.9, 6, 1655);
INSERT INTO public.moon VALUES (14, 'Japeto', 79.3, 6, 1671);
INSERT INTO public.moon VALUES (15, 'Ariel', 2.5, 7, 1851);
INSERT INTO public.moon VALUES (16, 'Umbriel', 4.1, 7, 1851);
INSERT INTO public.moon VALUES (17, 'Miranda', 1.4, 7, 1948);
INSERT INTO public.moon VALUES (18, 'Triton', 5.8, 8, 1846);
INSERT INTO public.moon VALUES (19, 'Nereda', 36.0, 8, 1949);
INSERT INTO public.moon VALUES (20, 'Sao', 29.1, 8, 2002);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Mercurio', 1, true, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 2, false, 2);
INSERT INTO public.planet VALUES (4, 'Tierra', 3, true, 3);
INSERT INTO public.planet VALUES (5, 'Marte', 4, false, 4);
INSERT INTO public.planet VALUES (6, 'Jupiter', 5, false, 5);
INSERT INTO public.planet VALUES (7, 'Saturno', 6, true, 6);
INSERT INTO public.planet VALUES (8, 'Urano', 7, false, 2);
INSERT INTO public.planet VALUES (9, 'Neptuno', 8, true, 6);
INSERT INTO public.planet VALUES (10, 'Pluton', 9, false, 2);
INSERT INTO public.planet VALUES (11, 'GJ 3323 b', 12, true, 5);
INSERT INTO public.planet VALUES (12, 'Teegarden B', 11, true, 1);
INSERT INTO public.planet VALUES (13, 'K2-72 e', 10, false, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Acamar', true, 1, 2016);
INSERT INTO public.star VALUES (2, 'Beid', false, 2, 2016);
INSERT INTO public.star VALUES (3, 'Castula', true, 3, 2017);
INSERT INTO public.star VALUES (4, 'Dingolay', false, 4, 2019);
INSERT INTO public.star VALUES (5, 'Errai', true, 5, 2015);
INSERT INTO public.star VALUES (6, 'Felis', true, 6, 2018);


--
-- Data for Name: zodiac_sign; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.zodiac_sign VALUES (1, 'Libra', 'Errai');
INSERT INTO public.zodiac_sign VALUES (2, 'Tauro', 'Felis');
INSERT INTO public.zodiac_sign VALUES (3, 'Geminis', 'Acamar');


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
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: zodiac_sign_zodiac_sign_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.zodiac_sign_zodiac_sign_id_seq', 3, true);


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
-- Name: zodiac_sign zodiac_sign_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zodiac_sign
    ADD CONSTRAINT zodiac_sign_name_key UNIQUE (name);


--
-- Name: zodiac_sign zodiac_sign_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zodiac_sign
    ADD CONSTRAINT zodiac_sign_pkey PRIMARY KEY (zodiac_sign_id);


--
-- Name: star fk_galaxyid; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxyid FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planetid; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planetid FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_starid; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_starid FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--
