--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-05-03 16:52:58

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
-- TOC entry 215 (class 1259 OID 16510)
-- Name: BUSES; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."BUSES" (
    id_bus integer NOT NULL,
    car_registration character varying(15) NOT NULL,
    price numeric(10,4)
);


ALTER TABLE public."BUSES" OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16509)
-- Name: BUSES_id_bus_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."BUSES_id_bus_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."BUSES_id_bus_seq" OWNER TO postgres;

--
-- TOC entry 3358 (class 0 OID 0)
-- Dependencies: 214
-- Name: BUSES_id_bus_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."BUSES_id_bus_seq" OWNED BY public."BUSES".id_bus;


--
-- TOC entry 217 (class 1259 OID 16517)
-- Name: DRIVERS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DRIVERS" (
    id_driver integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public."DRIVERS" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16516)
-- Name: DRIVERS_id_driver_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."DRIVERS_id_driver_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DRIVERS_id_driver_seq" OWNER TO postgres;

--
-- TOC entry 3359 (class 0 OID 0)
-- Dependencies: 216
-- Name: DRIVERS_id_driver_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DRIVERS_id_driver_seq" OWNED BY public."DRIVERS".id_driver;


--
-- TOC entry 219 (class 1259 OID 16524)
-- Name: ROUTES; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ROUTES" (
    id_route integer NOT NULL,
    id_visit integer,
    id_bus integer,
    id_driver integer,
    drive_date date
);


ALTER TABLE public."ROUTES" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16523)
-- Name: ROUTES_id_route_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ROUTES_id_route_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ROUTES_id_route_seq" OWNER TO postgres;

--
-- TOC entry 3360 (class 0 OID 0)
-- Dependencies: 218
-- Name: ROUTES_id_route_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ROUTES_id_route_seq" OWNED BY public."ROUTES".id_route;


--
-- TOC entry 221 (class 1259 OID 16531)
-- Name: VISITS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."VISITS" (
    id_visit integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public."VISITS" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16530)
-- Name: VISITS_id_visit_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."VISITS_id_visit_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."VISITS_id_visit_seq" OWNER TO postgres;

--
-- TOC entry 3361 (class 0 OID 0)
-- Dependencies: 220
-- Name: VISITS_id_visit_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."VISITS_id_visit_seq" OWNED BY public."VISITS".id_visit;


--
-- TOC entry 3188 (class 2604 OID 16513)
-- Name: BUSES id_bus; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BUSES" ALTER COLUMN id_bus SET DEFAULT nextval('public."BUSES_id_bus_seq"'::regclass);


--
-- TOC entry 3189 (class 2604 OID 16520)
-- Name: DRIVERS id_driver; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DRIVERS" ALTER COLUMN id_driver SET DEFAULT nextval('public."DRIVERS_id_driver_seq"'::regclass);


--
-- TOC entry 3190 (class 2604 OID 16527)
-- Name: ROUTES id_route; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ROUTES" ALTER COLUMN id_route SET DEFAULT nextval('public."ROUTES_id_route_seq"'::regclass);


--
-- TOC entry 3191 (class 2604 OID 16534)
-- Name: VISITS id_visit; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."VISITS" ALTER COLUMN id_visit SET DEFAULT nextval('public."VISITS_id_visit_seq"'::regclass);


--
-- TOC entry 3346 (class 0 OID 16510)
-- Dependencies: 215
-- Data for Name: BUSES; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."BUSES" (id_bus, car_registration, price) VALUES (1, '1596CTY', 300000.0000);
INSERT INTO public."BUSES" (id_bus, car_registration, price) VALUES (2, '2343THV', 330000.0000);
INSERT INTO public."BUSES" (id_bus, car_registration, price) VALUES (3, '3452CGH', 350000.0000);


--
-- TOC entry 3348 (class 0 OID 16517)
-- Dependencies: 217
-- Data for Name: DRIVERS; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."DRIVERS" (id_driver, name) VALUES (1, 'Pilar');
INSERT INTO public."DRIVERS" (id_driver, name) VALUES (2, 'Ana');
INSERT INTO public."DRIVERS" (id_driver, name) VALUES (3, 'Juan');


--
-- TOC entry 3350 (class 0 OID 16524)
-- Dependencies: 219
-- Data for Name: ROUTES; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."ROUTES" (id_route, id_visit, id_bus, id_driver, drive_date) VALUES (1, 3, 3, 3, '2023-05-06');
INSERT INTO public."ROUTES" (id_route, id_visit, id_bus, id_driver, drive_date) VALUES (2, 2, 2, 2, '2023-05-04');
INSERT INTO public."ROUTES" (id_route, id_visit, id_bus, id_driver, drive_date) VALUES (3, 1, 1, 1, '2023-03-05');


--
-- TOC entry 3352 (class 0 OID 16531)
-- Dependencies: 221
-- Data for Name: VISITS; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."VISITS" (id_visit, name) VALUES (1, 'Neptuno');
INSERT INTO public."VISITS" (id_visit, name) VALUES (2, 'Puerta Alcalá');
INSERT INTO public."VISITS" (id_visit, name) VALUES (3, 'Plaza España');


--
-- TOC entry 3362 (class 0 OID 0)
-- Dependencies: 214
-- Name: BUSES_id_bus_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."BUSES_id_bus_seq"', 3, true);


--
-- TOC entry 3363 (class 0 OID 0)
-- Dependencies: 216
-- Name: DRIVERS_id_driver_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."DRIVERS_id_driver_seq"', 3, true);


--
-- TOC entry 3364 (class 0 OID 0)
-- Dependencies: 218
-- Name: ROUTES_id_route_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ROUTES_id_route_seq"', 3, true);


--
-- TOC entry 3365 (class 0 OID 0)
-- Dependencies: 220
-- Name: VISITS_id_visit_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."VISITS_id_visit_seq"', 3, true);


--
-- TOC entry 3193 (class 2606 OID 16515)
-- Name: BUSES BUSES_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BUSES"
    ADD CONSTRAINT "BUSES_pkey" PRIMARY KEY (id_bus);


--
-- TOC entry 3195 (class 2606 OID 16522)
-- Name: DRIVERS DRIVERS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DRIVERS"
    ADD CONSTRAINT "DRIVERS_pkey" PRIMARY KEY (id_driver);


--
-- TOC entry 3197 (class 2606 OID 16529)
-- Name: ROUTES ROUTES_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ROUTES"
    ADD CONSTRAINT "ROUTES_pkey" PRIMARY KEY (id_route);


--
-- TOC entry 3199 (class 2606 OID 16536)
-- Name: VISITS VISITS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."VISITS"
    ADD CONSTRAINT "VISITS_pkey" PRIMARY KEY (id_visit);


--
-- TOC entry 3200 (class 2606 OID 16537)
-- Name: ROUTES ROUTES_id_bus_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ROUTES"
    ADD CONSTRAINT "ROUTES_id_bus_fkey" FOREIGN KEY (id_bus) REFERENCES public."BUSES"(id_bus) NOT VALID;


--
-- TOC entry 3201 (class 2606 OID 16542)
-- Name: ROUTES ROUTES_id_driver_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ROUTES"
    ADD CONSTRAINT "ROUTES_id_driver_fkey" FOREIGN KEY (id_driver) REFERENCES public."DRIVERS"(id_driver) NOT VALID;


--
-- TOC entry 3202 (class 2606 OID 16547)
-- Name: ROUTES ROUTES_id_visit_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ROUTES"
    ADD CONSTRAINT "ROUTES_id_visit_fkey" FOREIGN KEY (id_visit) REFERENCES public."VISITS"(id_visit) NOT VALID;


-- Completed on 2023-05-03 16:52:58

--
-- PostgreSQL database dump complete
--

