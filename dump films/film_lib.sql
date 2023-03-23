--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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
-- Name: actortable; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actortable (
    id integer NOT NULL,
    actor text NOT NULL,
    top_films text NOT NULL
);


ALTER TABLE public.actortable OWNER TO postgres;

--
-- Name: actortable_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.actortable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actortable_id_seq OWNER TO postgres;

--
-- Name: actortable_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.actortable_id_seq OWNED BY public.actortable.id;


--
-- Name: directortable; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.directortable (
    id integer NOT NULL,
    director text NOT NULL,
    top_film text NOT NULL
);


ALTER TABLE public.directortable OWNER TO postgres;

--
-- Name: directortable_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.directortable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directortable_id_seq OWNER TO postgres;

--
-- Name: directortable_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.directortable_id_seq OWNED BY public.directortable.id;


--
-- Name: filmtable; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filmtable (
    id integer NOT NULL,
    film text NOT NULL,
    year text NOT NULL
);


ALTER TABLE public.filmtable OWNER TO postgres;

--
-- Name: filmtable_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.filmtable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filmtable_id_seq OWNER TO postgres;

--
-- Name: filmtable_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.filmtable_id_seq OWNED BY public.filmtable.id;


--
-- Name: actortable id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actortable ALTER COLUMN id SET DEFAULT nextval('public.actortable_id_seq'::regclass);


--
-- Name: directortable id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.directortable ALTER COLUMN id SET DEFAULT nextval('public.directortable_id_seq'::regclass);


--
-- Name: filmtable id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filmtable ALTER COLUMN id SET DEFAULT nextval('public.filmtable_id_seq'::regclass);


--
-- Data for Name: actortable; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actortable (id, actor, top_films) FROM stdin;
1	Harrison Ford	Star Wars
2	Julia Roberts	Notting Hill
3	Drew Barrymore	Charlie`s angels
\.


--
-- Data for Name: directortable; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.directortable (id, director, top_film) FROM stdin;
1	Stanley Kubrick	The shining
2	Lars fon Trier	The house that Jack built
3	George Lukas	Star Wars
\.


--
-- Data for Name: filmtable; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.filmtable (id, film, year) FROM stdin;
2	The Dictator	2012
3	Stephen Hawking`s universe	2010
4	Avatar	2009
\.


--
-- Name: actortable_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.actortable_id_seq', 3, true);


--
-- Name: directortable_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.directortable_id_seq', 3, true);


--
-- Name: filmtable_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.filmtable_id_seq', 4, true);


--
-- PostgreSQL database dump complete
--

