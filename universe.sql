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
-- Name: cluster; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cluster (
    cluster_id integer NOT NULL,
    name character varying(120),
    description text NOT NULL
);


ALTER TABLE public.cluster OWNER TO freecodecamp;

--
-- Name: cluster_cluster_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.cluster_cluster_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cluster_cluster_id_seq OWNER TO freecodecamp;

--
-- Name: cluster_cluster_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.cluster_cluster_id_seq OWNED BY public.cluster.cluster_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(120) NOT NULL,
    description text,
    discovery_years integer,
    galaxy_types character varying(120)
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
    name character varying(120) NOT NULL,
    description text,
    distance_from_earth integer,
    discovery_years integer,
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
    name character varying(120),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years numeric(4,3),
    discovery_years integer,
    distance_from_earth integer,
    planet_types character varying(120),
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(120) NOT NULL,
    description text,
    discovery_years integer,
    distance_from_earth integer,
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
-- Name: cluster cluster_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster ALTER COLUMN cluster_id SET DEFAULT nextval('public.cluster_cluster_id_seq'::regclass);


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
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: cluster; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cluster VALUES (1, 'cluster_1', 'cluster_1,lorem ipsum dolor sit amet.');
INSERT INTO public.cluster VALUES (2, 'cluster_2', 'cluster_2,lorem ipsum dolor sit amet.');
INSERT INTO public.cluster VALUES (3, 'cluster_3', 'cluster_3,lorem ipsum dolor sit amet.');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy_1', 'galaxy_1, lorem ipsum dolor sit amet.', 1111, 'type_1');
INSERT INTO public.galaxy VALUES (2, 'galaxy_2', 'galaxy_2, lorem ipsum dolor sit amet.', 1122, 'type_2');
INSERT INTO public.galaxy VALUES (3, 'galaxy_3', 'galaxy_3, lorem ipsum dolor sit amet.', 1133, 'type_3');
INSERT INTO public.galaxy VALUES (4, 'galaxy_4', 'galaxy_4, lorem ipsum dolor sit amet.', 1144, 'type_4');
INSERT INTO public.galaxy VALUES (5, 'galaxy_5', 'galaxy_5, lorem ipsum dolor sit amet.', 1155, 'type_5');
INSERT INTO public.galaxy VALUES (6, 'galaxy_6', 'galaxy_6, lorem ipsum dolor sit amet.', 1166, 'type_6');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon_1', 'moon_1,lorem ipsum dolor sit amet.', 2, 4411, 1);
INSERT INTO public.moon VALUES (2, 'moon_2', 'moon_2,lorem ipsum dolor sit amet.', 1, 4412, 2);
INSERT INTO public.moon VALUES (3, 'moon_3', 'moon_3,lorem ipsum dolor sit amet.', 12, 4413, 3);
INSERT INTO public.moon VALUES (4, 'moon_4', 'moon_4,lorem ipsum dolor sit amet.', 1, 4414, 4);
INSERT INTO public.moon VALUES (5, 'moon_5', 'moon_5,lorem ipsum dolor sit amet.', 3, 4415, 5);
INSERT INTO public.moon VALUES (6, 'moon_6', 'moon_6,lorem ipsum dolor sit amet.', 3, 4416, 6);
INSERT INTO public.moon VALUES (7, 'moon_7', 'moon_7,lorem ipsum dolor sit amet.', 3, 4417, 7);
INSERT INTO public.moon VALUES (8, 'moon_8', 'moon_8,lorem ipsum dolor sit amet.', 7, 4418, 8);
INSERT INTO public.moon VALUES (9, 'moon_9', 'moon_9,lorem ipsum dolor sit amet.', 7, 4419, 9);
INSERT INTO public.moon VALUES (10, 'moon_10', 'moon_10,lorem ipsum dolor sit amet.', 1, 4420, 10);
INSERT INTO public.moon VALUES (11, 'moon_11', 'moon_11,lorem ipsum dolor sit amet.', 1, 4421, 11);
INSERT INTO public.moon VALUES (12, 'moon_12', 'moon_12,lorem ipsum dolor sit amet.', 2, 4422, 12);
INSERT INTO public.moon VALUES (13, 'moon_13', 'moon_13,lorem ipsum dolor sit amet.', 3, 4423, 13);
INSERT INTO public.moon VALUES (14, 'moon_14', 'moon_14,lorem ipsum dolor sit amet.', 3, 4423, 14);
INSERT INTO public.moon VALUES (15, 'moon_15', 'moon_15,lorem ipsum dolor sit amet.', 5, 4423, 15);
INSERT INTO public.moon VALUES (16, 'moon_16', 'moon_16,lorem ipsum dolor sit amet.', 7, 4423, 16);
INSERT INTO public.moon VALUES (17, 'moon_17', 'moon_17,lorem ipsum dolor sit amet.', 7, 4423, 17);
INSERT INTO public.moon VALUES (18, 'moon_18', 'moon_18,lorem ipsum dolor sit amet.', 7, 4423, 18);
INSERT INTO public.moon VALUES (19, 'moon_19', 'moon_19,lorem ipsum dolor sit amet.', 7, 4423, 19);
INSERT INTO public.moon VALUES (20, 'moon_20', 'moon_20,lorem ipsum dolor sit amet.', 7, 4423, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet_1', 'planet_1,lorem ipsum dolor sit amet.', true, true, 1.000, 3311, 0, 'type_01', 1);
INSERT INTO public.planet VALUES (2, 'planet_2', 'planet_2,lorem ipsum dolor sit amet.', false, true, 2.000, 3312, 11, 'type_02', 2);
INSERT INTO public.planet VALUES (3, 'planet_3', 'planet_3,lorem ipsum dolor sit amet.', false, true, 3.000, 3313, 12, 'type_03', 3);
INSERT INTO public.planet VALUES (4, 'planet_4', 'planet_4,lorem ipsum dolor sit amet.', false, true, 4.000, 3314, 13, 'type_04', 4);
INSERT INTO public.planet VALUES (5, 'planet_5', 'planet_5,lorem ipsum dolor sit amet.', false, true, 5.000, 3315, 14, 'type_05', 5);
INSERT INTO public.planet VALUES (6, 'planet_6', 'planet_6,lorem ipsum dolor sit amet.', false, true, 6.000, 3316, 15, 'type_06', 6);
INSERT INTO public.planet VALUES (7, 'planet_7', 'planet_7,lorem ipsum dolor sit amet.', false, true, 7.000, 3317, 16, 'type_07', 7);
INSERT INTO public.planet VALUES (8, 'planet_8', 'planet_8,lorem ipsum dolor sit amet.', false, true, 8.000, 3318, 17, 'type_08', 8);
INSERT INTO public.planet VALUES (9, 'planet_9', 'planet_9,lorem ipsum dolor sit amet.', false, true, 9.000, 3319, 18, 'type_09', 9);
INSERT INTO public.planet VALUES (10, 'planet_10', 'planet_10,lorem ipsum dolor sit amet.', false, true, 1.000, 3319, 19, 'type_10', 10);
INSERT INTO public.planet VALUES (11, 'planet_11', 'planet_11,lorem ipsum dolor sit amet.', false, true, 2.000, 3320, 20, 'type_11', 11);
INSERT INTO public.planet VALUES (12, 'planet_12', 'planet_12,lorem ipsum dolor sit amet.', false, true, 3.000, 3321, 21, 'type_12', 12);
INSERT INTO public.planet VALUES (13, 'planet_13', 'planet_13,lorem ipsum dolor sit amet.', false, true, 3.000, 3322, 22, 'type_13', 13);
INSERT INTO public.planet VALUES (14, 'planet_14', 'planet_14,lorem ipsum dolor sit amet.', true, false, 6.000, 2345, 4, 'type_4', 3);
INSERT INTO public.planet VALUES (15, 'planet_15', 'planet_14,lorem ipsum dolor sit amet.', true, false, 6.000, 2345, 4, 'type_4', 3);
INSERT INTO public.planet VALUES (16, 'planet_16', 'planet_14,lorem ipsum dolor sit amet.', true, false, 6.000, 2345, 4, 'type_4', 3);
INSERT INTO public.planet VALUES (17, 'planet_17', 'planet_14,lorem ipsum dolor sit amet.', true, false, 6.000, 2345, 4, 'type_4', 3);
INSERT INTO public.planet VALUES (18, 'planet_18', 'planet_14,lorem ipsum dolor sit amet.', true, false, 6.000, 2345, 4, 'type_4', 3);
INSERT INTO public.planet VALUES (19, 'planet_19', 'planet_14,lorem ipsum dolor sit amet.', true, false, 6.000, 2345, 4, 'type_4', 3);
INSERT INTO public.planet VALUES (20, 'planet_20', 'planet_14,lorem ipsum dolor sit amet.', true, false, 6.000, 2345, 4, 'type_4', 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star_1', 'star_1, lorem ipsum dolor sit amet.', 2211, 2221, 1);
INSERT INTO public.star VALUES (2, 'star_2', 'star_2, lorem ipsum dolor sit amet.', 2212, 2222, 2);
INSERT INTO public.star VALUES (3, 'star_3', 'star_3, lorem ipsum dolor sit amet.', 2213, 2223, 3);
INSERT INTO public.star VALUES (4, 'star_4', 'star_4, lorem ipsum dolor sit amet.', 2214, 2224, 4);
INSERT INTO public.star VALUES (5, 'star_5', 'star_5, lorem ipsum dolor sit amet.', 2215, 2225, 5);
INSERT INTO public.star VALUES (6, 'star_6', 'star_6, lorem ipsum dolor sit amet.', 2215, 2226, 6);
INSERT INTO public.star VALUES (7, 'star_7', 'star_7, lorem ipsum dolor sit amet.', 1234, 5, 2);
INSERT INTO public.star VALUES (8, 'star_8', 'star_8, lorem ipsum dolor sit amet.', 1234, 5, 5);
INSERT INTO public.star VALUES (9, 'star_9', 'star_9, lorem ipsum dolor sit amet.', 1234, 5, 3);
INSERT INTO public.star VALUES (10, 'star_10', 'star_10, lorem ipsum dolor sit amet.', 1234, 5, 2);
INSERT INTO public.star VALUES (11, 'star_11', 'star_11, lorem ipsum dolor sit amet.', 1234, 5, 2);
INSERT INTO public.star VALUES (12, 'star_12', 'star_12, lorem ipsum dolor sit amet.', 1234, 5, 2);
INSERT INTO public.star VALUES (13, 'star_13', 'star_13, lorem ipsum dolor sit amet.', 1234, 5, 1);


--
-- Name: cluster_cluster_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cluster_cluster_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 13, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 13, true);


--
-- Name: cluster cluster_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster
    ADD CONSTRAINT cluster_name_key UNIQUE (name);


--
-- Name: cluster cluster_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster
    ADD CONSTRAINT cluster_pkey PRIMARY KEY (cluster_id);


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

