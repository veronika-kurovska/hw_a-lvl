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
-- Name: автомобіль; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."автомобіль" (
    id integer NOT NULL,
    "модель_id" integer,
    "рік_випуску" integer,
    "колір" character varying(255),
    "номер_бірки" character varying(255),
    "кількість_місць" integer
);


ALTER TABLE public."автомобіль" OWNER TO postgres;

--
-- Name: виробники; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."виробники" (
    id integer NOT NULL,
    "назва" character varying(255)
);


ALTER TABLE public."виробники" OWNER TO postgres;

--
-- Name: моделі; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."моделі" (
    id integer NOT NULL,
    "виробник_id" integer,
    "назва" character varying(255)
);


ALTER TABLE public."моделі" OWNER TO postgres;

--
-- Data for Name: автомобіль; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."автомобіль" (id, "модель_id", "рік_випуску", "колір", "номер_бірки", "кількість_місць") FROM stdin;
1	1	2019	сірий	AB1234CD	5
2	1	2020	червоний	BC2345DE	5
3	2	2021	білий	CD3456EF	5
4	3	2022	жовтий	DE4567FG	4
5	4	2022	чорний	EF5678GH	3
6	5	2021	синій	FG6789HI	5
7	6	2020	сріблястий	GH7890IJ	5
\.


--
-- Data for Name: виробники; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."виробники" (id, "назва") FROM stdin;
1	Toyota
2	Ford
3	Honda
\.


--
-- Data for Name: моделі; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."моделі" (id, "виробник_id", "назва") FROM stdin;
1	1	Camry
2	1	Corolla
3	2	Mustang
4	2	F-150
5	3	Civic
6	3	Accord
\.


--
-- Name: автомобіль автомобіль_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."автомобіль"
    ADD CONSTRAINT "автомобіль_pkey" PRIMARY KEY (id);


--
-- Name: виробники виробники_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."виробники"
    ADD CONSTRAINT "виробники_pkey" PRIMARY KEY (id);


--
-- Name: моделі моделі_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."моделі"
    ADD CONSTRAINT "моделі_pkey" PRIMARY KEY (id);


--
-- Name: автомобіль автомобіль_модель_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."автомобіль"
    ADD CONSTRAINT "автомобіль_модель_id_fkey" FOREIGN KEY ("модель_id") REFERENCES public."моделі"(id);


--
-- Name: моделі моделі_виробник_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."моделі"
    ADD CONSTRAINT "моделі_виробник_id_fkey" FOREIGN KEY ("виробник_id") REFERENCES public."виробники"(id);


--
-- PostgreSQL database dump complete
--

