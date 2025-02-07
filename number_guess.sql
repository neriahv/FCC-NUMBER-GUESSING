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
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 934);
INSERT INTO public.games VALUES (2, 1, 669);
INSERT INTO public.games VALUES (3, 2, 88);
INSERT INTO public.games VALUES (4, 2, 320);
INSERT INTO public.games VALUES (5, 1, 35);
INSERT INTO public.games VALUES (6, 1, 280);
INSERT INTO public.games VALUES (7, 1, 251);
INSERT INTO public.games VALUES (8, 3, 689);
INSERT INTO public.games VALUES (9, 3, 189);
INSERT INTO public.games VALUES (10, 4, 683);
INSERT INTO public.games VALUES (11, 4, 91);
INSERT INTO public.games VALUES (12, 3, 310);
INSERT INTO public.games VALUES (13, 3, 864);
INSERT INTO public.games VALUES (14, 3, 730);
INSERT INTO public.games VALUES (15, 5, 535);
INSERT INTO public.games VALUES (16, 5, 816);
INSERT INTO public.games VALUES (17, 6, 655);
INSERT INTO public.games VALUES (18, 6, 735);
INSERT INTO public.games VALUES (19, 5, 128);
INSERT INTO public.games VALUES (20, 5, 170);
INSERT INTO public.games VALUES (21, 5, 584);
INSERT INTO public.games VALUES (22, 7, 381);
INSERT INTO public.games VALUES (23, 7, 28);
INSERT INTO public.games VALUES (24, 8, 961);
INSERT INTO public.games VALUES (25, 8, 950);
INSERT INTO public.games VALUES (26, 7, 635);
INSERT INTO public.games VALUES (27, 7, 989);
INSERT INTO public.games VALUES (28, 7, 552);
INSERT INTO public.games VALUES (29, 9, 356);
INSERT INTO public.games VALUES (30, 9, 599);
INSERT INTO public.games VALUES (31, 10, 262);
INSERT INTO public.games VALUES (32, 10, 528);
INSERT INTO public.games VALUES (33, 9, 705);
INSERT INTO public.games VALUES (34, 9, 540);
INSERT INTO public.games VALUES (35, 9, 601);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1738933026014');
INSERT INTO public.users VALUES (2, 'user_1738933026013');
INSERT INTO public.users VALUES (3, 'user_1738933075017');
INSERT INTO public.users VALUES (4, 'user_1738933075016');
INSERT INTO public.users VALUES (5, 'user_1738933106207');
INSERT INTO public.users VALUES (6, 'user_1738933106206');
INSERT INTO public.users VALUES (7, 'user_1738933172946');
INSERT INTO public.users VALUES (8, 'user_1738933172945');
INSERT INTO public.users VALUES (9, 'user_1738933292090');
INSERT INTO public.users VALUES (10, 'user_1738933292089');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 35, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 10, true);


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
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

