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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    weight integer,
    age numeric(6,1),
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
    size integer,
    weight integer,
    age numeric(6,1),
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
-- Name: other_bodies; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.other_bodies (
    name character varying(30) NOT NULL,
    description text,
    other_bodies_id integer NOT NULL
);


ALTER TABLE public.other_bodies OWNER TO freecodecamp;

--
-- Name: other_bodies_other_bodies_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.other_bodies_other_bodies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_bodies_other_bodies_id_seq OWNER TO freecodecamp;

--
-- Name: other_bodies_other_bodies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.other_bodies_other_bodies_id_seq OWNED BY public.other_bodies.other_bodies_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    weight integer,
    age numeric(6,1),
    is_gas boolean,
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
    size integer,
    weight integer,
    age numeric(6,1),
    is_alive boolean,
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
-- Name: other_bodies other_bodies_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_bodies ALTER COLUMN other_bodies_id SET DEFAULT nextval('public.other_bodies_other_bodies_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Млечный Путь', NULL, 1000, NULL, 'Галактика, в которой находятся Солнце и Земля.');
INSERT INTO public.galaxy VALUES (2, 'HD1', NULL, NULL, NULL, 'Наиболее удалённая галактика - 13 млрд световых лет от нашей.');
INSERT INTO public.galaxy VALUES (3, 'Галактика Андромеды', NULL, 1200, NULL, 'Ближайшая крупная галактика.');
INSERT INTO public.galaxy VALUES (4, 'Магеллановы Облака', NULL, NULL, NULL, 'Две гравитационно связанных галактики.');
INSERT INTO public.galaxy VALUES (5, 'Галактика Треугольника', NULL, NULL, NULL, 'Спиральная галактика, одна из ближайших к Млечному Пути.');
INSERT INTO public.galaxy VALUES (6, 'ГIC 1101', NULL, NULL, NULL, 'Сверхгигантская эллиптическая галактика.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Луна', 3500, 1, NULL, 3);
INSERT INTO public.moon VALUES (2, 'Ио', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (3, 'Ганимед', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (4, 'Европа', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (5, 'Каллисто', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'Амальтея', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (7, 'Метида', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (8, 'Адрастея', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (9, 'Карме', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (10, 'Синопе', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (11, 'Ананке', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (12, 'Пасифе', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (13, 'Титан', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (14, 'Япет', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (15, 'Мимас', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (16, 'Рея', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (17, 'Миранда', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (18, 'Титания', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (19, 'Умбриэль', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (20, 'Оберон', NULL, NULL, NULL, 7);


--
-- Data for Name: other_bodies; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.other_bodies VALUES ('Пояс Астероидов', 'Проходит между Марсом и Юпитером', 1);
INSERT INTO public.other_bodies VALUES ('Кометы', 'Небольшие небесные тела, обращающиеся вокруг Солнца.', 2);
INSERT INTO public.other_bodies VALUES ('Чёрная дыра', 'Область пространства-времени, гравитационное притяжение которой настолько велико, что её не могут покинуть даже объекты, движущиеся со скоростью света.', 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Земля', 12600, 1, 5.0, false, 1);
INSERT INTO public.planet VALUES (1, 'Меркурий', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Венера', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Марс', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Юпитер', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Сатурн', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Уран', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Нептун', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Плутон', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (10, 'Девятая планета', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (11, 'Церера', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (12, 'Эрида', NULL, NULL, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Солнце', 1400000, 1, 5.0, true, 1);
INSERT INTO public.star VALUES (2, 'Сириус', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'R Андромеды', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'RR Лиры', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'Бетельгейзе', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'Альдебаран', NULL, NULL, NULL, NULL, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: other_bodies_other_bodies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.other_bodies_other_bodies_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unq UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unq UNIQUE (name);


--
-- Name: other_bodies other_bodies_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_bodies
    ADD CONSTRAINT other_bodies_pkey PRIMARY KEY (other_bodies_id);


--
-- Name: other_bodies other_bodies_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_bodies
    ADD CONSTRAINT other_bodies_unq UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unq UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unq UNIQUE (name);


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

