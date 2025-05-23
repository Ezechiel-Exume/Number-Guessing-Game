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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    user_id integer NOT NULL,
    games_played character varying(50) NOT NULL,
    best_game integer NOT NULL,
    game_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 'Game 1', 1, 1);
INSERT INTO public.games VALUES (2, 'Game 1', 4, 2);
INSERT INTO public.games VALUES (2, 'Game 2', 1, 3);
INSERT INTO public.games VALUES (2, 'Game 3', 2, 4);
INSERT INTO public.games VALUES (3, 'Game 1', 2, 5);
INSERT INTO public.games VALUES (3, 'Game 2', 2, 6);
INSERT INTO public.games VALUES (4, 'Game 1', 2, 7);
INSERT INTO public.games VALUES (4, 'Game 2', 2, 8);
INSERT INTO public.games VALUES (3, 'Game 3', 2, 9);
INSERT INTO public.games VALUES (3, 'Game 4', 1, 10);
INSERT INTO public.games VALUES (3, 'Game 5', 2, 11);
INSERT INTO public.games VALUES (5, 'Game 1', 1, 12);
INSERT INTO public.games VALUES (2, 'Game 4', 1, 13);
INSERT INTO public.games VALUES (2, 'Game 5', 1, 14);
INSERT INTO public.games VALUES (2, 'Game 6', 1, 15);
INSERT INTO public.games VALUES (2, 'Game 7', 1, 16);
INSERT INTO public.games VALUES (6, 'Game 1', 1, 17);
INSERT INTO public.games VALUES (7, 'Game 1', 2, 18);
INSERT INTO public.games VALUES (7, 'Game 2', 2, 19);
INSERT INTO public.games VALUES (8, 'Game 1', 2, 20);
INSERT INTO public.games VALUES (8, 'Game 2', 2, 21);
INSERT INTO public.games VALUES (7, 'Game 3', 2, 22);
INSERT INTO public.games VALUES (7, 'Game 4', 2, 23);
INSERT INTO public.games VALUES (9, 'Game 1', 697, 24);
INSERT INTO public.games VALUES (9, 'Game 2', 508, 25);
INSERT INTO public.games VALUES (10, 'Game 1', 45, 26);
INSERT INTO public.games VALUES (10, 'Game 2', 306, 27);
INSERT INTO public.games VALUES (9, 'Game 3', 169, 28);
INSERT INTO public.games VALUES (9, 'Game 4', 41, 29);
INSERT INTO public.games VALUES (9, 'Game 5', 804, 30);
INSERT INTO public.games VALUES (11, 'Game 1', 245, 31);
INSERT INTO public.games VALUES (11, 'Game 2', 689, 32);
INSERT INTO public.games VALUES (12, 'Game 1', 508, 33);
INSERT INTO public.games VALUES (12, 'Game 2', 608, 34);
INSERT INTO public.games VALUES (11, 'Game 3', 776, 35);
INSERT INTO public.games VALUES (11, 'Game 4', 540, 36);
INSERT INTO public.games VALUES (11, 'Game 5', 16, 37);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, '25456');
INSERT INTO public.users VALUES (2, 'keyezex');
INSERT INTO public.users VALUES (3, 'user_1748023137754');
INSERT INTO public.users VALUES (4, 'user_1748023137753');
INSERT INTO public.users VALUES (5, '745hd');
INSERT INTO public.users VALUES (6, 'Zapatann');
INSERT INTO public.users VALUES (7, 'user_1748027998209');
INSERT INTO public.users VALUES (8, 'user_1748027998208');
INSERT INTO public.users VALUES (9, 'user_1748028200799');
INSERT INTO public.users VALUES (10, 'user_1748028200798');
INSERT INTO public.users VALUES (11, 'user_1748028431520');
INSERT INTO public.users VALUES (12, 'user_1748028431519');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 37, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 12, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

