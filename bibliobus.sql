--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-05-03 16:53:17

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
-- TOC entry 215 (class 1259 OID 16554)
-- Name: LIBROS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LIBROS" (
    id_libro integer NOT NULL,
    "ISBN" character varying NOT NULL,
    titulo character varying(200) NOT NULL,
    autor character varying(200) NOT NULL,
    numero_ejemplares integer NOT NULL,
    id_tema integer
);


ALTER TABLE public."LIBROS" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16577)
-- Name: LIBROS_SOCIOS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LIBROS_SOCIOS" (
    id_prestamo integer NOT NULL,
    id_libro integer NOT NULL,
    id_socio integer NOT NULL,
    fecha_prestamo date NOT NULL,
    fecha_devolucion date NOT NULL
);


ALTER TABLE public."LIBROS_SOCIOS" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16576)
-- Name: LIBROS_SOCIOS_id_prestamo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."LIBROS_SOCIOS_id_prestamo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."LIBROS_SOCIOS_id_prestamo_seq" OWNER TO postgres;

--
-- TOC entry 3358 (class 0 OID 0)
-- Dependencies: 220
-- Name: LIBROS_SOCIOS_id_prestamo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."LIBROS_SOCIOS_id_prestamo_seq" OWNED BY public."LIBROS_SOCIOS".id_prestamo;


--
-- TOC entry 214 (class 1259 OID 16553)
-- Name: LIBROS_id_libro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."LIBROS_id_libro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."LIBROS_id_libro_seq" OWNER TO postgres;

--
-- TOC entry 3359 (class 0 OID 0)
-- Dependencies: 214
-- Name: LIBROS_id_libro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."LIBROS_id_libro_seq" OWNED BY public."LIBROS".id_libro;


--
-- TOC entry 217 (class 1259 OID 16563)
-- Name: SOCIOS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SOCIOS" (
    id_socio integer NOT NULL,
    nombre character varying(200) NOT NULL,
    telefono integer NOT NULL
);


ALTER TABLE public."SOCIOS" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16562)
-- Name: SOCIOS_id_socio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SOCIOS_id_socio_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SOCIOS_id_socio_seq" OWNER TO postgres;

--
-- TOC entry 3360 (class 0 OID 0)
-- Dependencies: 216
-- Name: SOCIOS_id_socio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SOCIOS_id_socio_seq" OWNED BY public."SOCIOS".id_socio;


--
-- TOC entry 219 (class 1259 OID 16570)
-- Name: TEMAS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."TEMAS" (
    id_tema integer NOT NULL,
    nombre character varying(200) NOT NULL
);


ALTER TABLE public."TEMAS" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16569)
-- Name: TEMAS_id_tema_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."TEMAS_id_tema_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."TEMAS_id_tema_seq" OWNER TO postgres;

--
-- TOC entry 3361 (class 0 OID 0)
-- Dependencies: 218
-- Name: TEMAS_id_tema_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."TEMAS_id_tema_seq" OWNED BY public."TEMAS".id_tema;


--
-- TOC entry 3188 (class 2604 OID 16557)
-- Name: LIBROS id_libro; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LIBROS" ALTER COLUMN id_libro SET DEFAULT nextval('public."LIBROS_id_libro_seq"'::regclass);


--
-- TOC entry 3191 (class 2604 OID 16580)
-- Name: LIBROS_SOCIOS id_prestamo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LIBROS_SOCIOS" ALTER COLUMN id_prestamo SET DEFAULT nextval('public."LIBROS_SOCIOS_id_prestamo_seq"'::regclass);


--
-- TOC entry 3189 (class 2604 OID 16566)
-- Name: SOCIOS id_socio; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SOCIOS" ALTER COLUMN id_socio SET DEFAULT nextval('public."SOCIOS_id_socio_seq"'::regclass);


--
-- TOC entry 3190 (class 2604 OID 16573)
-- Name: TEMAS id_tema; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TEMAS" ALTER COLUMN id_tema SET DEFAULT nextval('public."TEMAS_id_tema_seq"'::regclass);


--
-- TOC entry 3346 (class 0 OID 16554)
-- Dependencies: 215
-- Data for Name: LIBROS; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."LIBROS" (id_libro, "ISBN", titulo, autor, numero_ejemplares, id_tema) VALUES (1, 'asdws12341', 'El camino de los reyes', 'Brandon Sanderson', 570000, 3);
INSERT INTO public."LIBROS" (id_libro, "ISBN", titulo, autor, numero_ejemplares, id_tema) VALUES (2, 'dad123123d', 'Código Da''Vinci', 'Pepito', 23452, 2);
INSERT INTO public."LIBROS" (id_libro, "ISBN", titulo, autor, numero_ejemplares, id_tema) VALUES (3, 'd23ed123123', 'Los viajes de Tuf', 'Geroge Martin', 12223, 1);


--
-- TOC entry 3352 (class 0 OID 16577)
-- Dependencies: 221
-- Data for Name: LIBROS_SOCIOS; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."LIBROS_SOCIOS" (id_prestamo, id_libro, id_socio, fecha_prestamo, fecha_devolucion) VALUES (2, 3, 3, '2023-06-08', '2023-06-30');
INSERT INTO public."LIBROS_SOCIOS" (id_prestamo, id_libro, id_socio, fecha_prestamo, fecha_devolucion) VALUES (3, 2, 2, '2023-06-07', '2023-06-25');
INSERT INTO public."LIBROS_SOCIOS" (id_prestamo, id_libro, id_socio, fecha_prestamo, fecha_devolucion) VALUES (4, 1, 1, '2023-05-21', '2023-05-30');


--
-- TOC entry 3348 (class 0 OID 16563)
-- Dependencies: 217
-- Data for Name: SOCIOS; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."SOCIOS" (id_socio, nombre, telefono) VALUES (1, 'Pilar', 655334477);
INSERT INTO public."SOCIOS" (id_socio, nombre, telefono) VALUES (2, 'Ana', 675432067);
INSERT INTO public."SOCIOS" (id_socio, nombre, telefono) VALUES (3, 'Juan', 600455677);


--
-- TOC entry 3350 (class 0 OID 16570)
-- Dependencies: 219
-- Data for Name: TEMAS; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."TEMAS" (id_tema, nombre) VALUES (1, 'Fantasía');
INSERT INTO public."TEMAS" (id_tema, nombre) VALUES (2, 'Suspense');
INSERT INTO public."TEMAS" (id_tema, nombre) VALUES (3, 'Ciencia Ficción');


--
-- TOC entry 3362 (class 0 OID 0)
-- Dependencies: 220
-- Name: LIBROS_SOCIOS_id_prestamo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."LIBROS_SOCIOS_id_prestamo_seq"', 4, true);


--
-- TOC entry 3363 (class 0 OID 0)
-- Dependencies: 214
-- Name: LIBROS_id_libro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."LIBROS_id_libro_seq"', 3, true);


--
-- TOC entry 3364 (class 0 OID 0)
-- Dependencies: 216
-- Name: SOCIOS_id_socio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SOCIOS_id_socio_seq"', 3, true);


--
-- TOC entry 3365 (class 0 OID 0)
-- Dependencies: 218
-- Name: TEMAS_id_tema_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."TEMAS_id_tema_seq"', 3, true);


--
-- TOC entry 3199 (class 2606 OID 16582)
-- Name: LIBROS_SOCIOS LIBROS_SOCIOS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LIBROS_SOCIOS"
    ADD CONSTRAINT "LIBROS_SOCIOS_pkey" PRIMARY KEY (id_prestamo);


--
-- TOC entry 3193 (class 2606 OID 16561)
-- Name: LIBROS LIBROS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LIBROS"
    ADD CONSTRAINT "LIBROS_pkey" PRIMARY KEY (id_libro);


--
-- TOC entry 3195 (class 2606 OID 16568)
-- Name: SOCIOS SOCIOS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SOCIOS"
    ADD CONSTRAINT "SOCIOS_pkey" PRIMARY KEY (id_socio);


--
-- TOC entry 3197 (class 2606 OID 16575)
-- Name: TEMAS TEMAS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TEMAS"
    ADD CONSTRAINT "TEMAS_pkey" PRIMARY KEY (id_tema);


--
-- TOC entry 3201 (class 2606 OID 16588)
-- Name: LIBROS_SOCIOS LIBROS_SOCIOS_id_libro_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LIBROS_SOCIOS"
    ADD CONSTRAINT "LIBROS_SOCIOS_id_libro_fkey" FOREIGN KEY (id_libro) REFERENCES public."LIBROS"(id_libro) NOT VALID;


--
-- TOC entry 3202 (class 2606 OID 16593)
-- Name: LIBROS_SOCIOS LIBROS_SOCIOS_id_socio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LIBROS_SOCIOS"
    ADD CONSTRAINT "LIBROS_SOCIOS_id_socio_fkey" FOREIGN KEY (id_socio) REFERENCES public."SOCIOS"(id_socio) NOT VALID;


--
-- TOC entry 3200 (class 2606 OID 16583)
-- Name: LIBROS LIBROS_id_tema_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LIBROS"
    ADD CONSTRAINT "LIBROS_id_tema_fkey" FOREIGN KEY (id_tema) REFERENCES public."TEMAS"(id_tema) NOT VALID;


-- Completed on 2023-05-03 16:53:17

--
-- PostgreSQL database dump complete
--

