--
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.20 (Ubuntu 12.20-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 17.0 (Ubuntu 17.0-1.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE project_1;
--
-- Name: project_1; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE project_1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


\connect project_1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: airlines; Type: TABLE DATA; Schema: public; Owner: -
--

\i $$PATH$$/2996.dat

--
-- Data for Name: airplanes; Type: TABLE DATA; Schema: public; Owner: -
--

\i $$PATH$$/2994.dat

--
-- Data for Name: airports; Type: TABLE DATA; Schema: public; Owner: -
--

\i $$PATH$$/2992.dat

--
-- Data for Name: flights; Type: TABLE DATA; Schema: public; Owner: -
--

\i $$PATH$$/2998.dat

--
-- Name: airlines_airline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.airlines_airline_id_seq', 1, false);


--
-- Name: airplanes_airplane_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.airplanes_airplane_id_seq', 1, false);


--
-- Name: airports_airport_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.airports_airport_id_seq', 1, false);


--
-- Name: flights_flight_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.flights_flight_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

