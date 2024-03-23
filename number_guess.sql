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
    number_guesses integer NOT NULL,
    user_id integer
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
    username character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (1, 10, 2);
INSERT INTO public.games VALUES (2, 422, 3);
INSERT INTO public.games VALUES (3, 60, 3);
INSERT INTO public.games VALUES (4, 583, 5);
INSERT INTO public.games VALUES (5, 206, 5);
INSERT INTO public.games VALUES (6, 231, 3);
INSERT INTO public.games VALUES (7, 958, 3);
INSERT INTO public.games VALUES (8, 128, 3);
INSERT INTO public.games VALUES (9, 349, 10);
INSERT INTO public.games VALUES (10, 545, 10);
INSERT INTO public.games VALUES (11, 195, 12);
INSERT INTO public.games VALUES (12, 89, 12);
INSERT INTO public.games VALUES (13, 540, 10);
INSERT INTO public.games VALUES (14, 939, 10);
INSERT INTO public.games VALUES (15, 900, 10);
INSERT INTO public.games VALUES (16, 538, 17);
INSERT INTO public.games VALUES (17, 667, 17);
INSERT INTO public.games VALUES (18, 633, 19);
INSERT INTO public.games VALUES (19, 644, 19);
INSERT INTO public.games VALUES (20, 229, 17);
INSERT INTO public.games VALUES (21, 194, 17);
INSERT INTO public.games VALUES (22, 528, 17);
INSERT INTO public.games VALUES (23, 742, 24);
INSERT INTO public.games VALUES (24, 308, 24);
INSERT INTO public.games VALUES (25, 435, 26);
INSERT INTO public.games VALUES (26, 766, 26);
INSERT INTO public.games VALUES (27, 465, 24);
INSERT INTO public.games VALUES (28, 295, 24);
INSERT INTO public.games VALUES (29, 465, 24);
INSERT INTO public.games VALUES (30, 34, 31);
INSERT INTO public.games VALUES (31, 736, 31);
INSERT INTO public.games VALUES (32, 644, 33);
INSERT INTO public.games VALUES (33, 62, 33);
INSERT INTO public.games VALUES (34, 897, 31);
INSERT INTO public.games VALUES (35, 91, 31);
INSERT INTO public.games VALUES (36, 511, 31);
INSERT INTO public.games VALUES (37, 220, 59);
INSERT INTO public.games VALUES (38, 915, 59);
INSERT INTO public.games VALUES (39, 328, 61);
INSERT INTO public.games VALUES (40, 526, 61);
INSERT INTO public.games VALUES (41, 684, 59);
INSERT INTO public.games VALUES (42, 226, 59);
INSERT INTO public.games VALUES (43, 392, 59);
INSERT INTO public.games VALUES (44, 37, 66);
INSERT INTO public.games VALUES (45, 449, 66);
INSERT INTO public.games VALUES (46, 27, 68);
INSERT INTO public.games VALUES (47, 46, 68);
INSERT INTO public.games VALUES (48, 12, 66);
INSERT INTO public.games VALUES (49, 130, 66);
INSERT INTO public.games VALUES (50, 661, 66);
INSERT INTO public.games VALUES (51, 11, 73);
INSERT INTO public.games VALUES (52, 15, 76);
INSERT INTO public.games VALUES (53, 806, 80);
INSERT INTO public.games VALUES (54, 789, 80);
INSERT INTO public.games VALUES (55, 464, 81);
INSERT INTO public.games VALUES (56, 851, 81);
INSERT INTO public.games VALUES (57, 13, 80);
INSERT INTO public.games VALUES (58, 595, 80);
INSERT INTO public.games VALUES (59, 215, 80);
INSERT INTO public.games VALUES (60, 17, 76);
INSERT INTO public.games VALUES (61, 397, 82);
INSERT INTO public.games VALUES (62, 745, 82);
INSERT INTO public.games VALUES (63, 966, 83);
INSERT INTO public.games VALUES (64, 719, 83);
INSERT INTO public.games VALUES (65, 513, 82);
INSERT INTO public.games VALUES (66, 365, 82);
INSERT INTO public.games VALUES (67, 647, 82);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'wasabi');
INSERT INTO public.users VALUES (2, 'rom');
INSERT INTO public.users VALUES (3, 'user_1711178929342');
INSERT INTO public.users VALUES (76, 'aadil');
INSERT INTO public.users VALUES (5, 'user_1711178929341');
INSERT INTO public.users VALUES (80, 'user_1711181187191');
INSERT INTO public.users VALUES (10, 'user_1711179316245');
INSERT INTO public.users VALUES (81, 'user_1711181187190');
INSERT INTO public.users VALUES (12, 'user_1711179316244');
INSERT INTO public.users VALUES (82, 'user_1711181286155');
INSERT INTO public.users VALUES (83, 'user_1711181286154');
INSERT INTO public.users VALUES (17, 'user_1711179348741');
INSERT INTO public.users VALUES (19, 'user_1711179348740');
INSERT INTO public.users VALUES (24, 'user_1711179585061');
INSERT INTO public.users VALUES (26, 'user_1711179585060');
INSERT INTO public.users VALUES (31, 'user_1711179700868');
INSERT INTO public.users VALUES (33, 'user_1711179700867');
INSERT INTO public.users VALUES (38, 'user_1711180408963');
INSERT INTO public.users VALUES (40, 'user_1711180408962');
INSERT INTO public.users VALUES (45, 'user_1711180449074');
INSERT INTO public.users VALUES (47, 'user_1711180449073');
INSERT INTO public.users VALUES (52, 'user_1711180461957');
INSERT INTO public.users VALUES (54, 'user_1711180461956');
INSERT INTO public.users VALUES (59, 'user_1711180504261');
INSERT INTO public.users VALUES (61, 'user_1711180504259');
INSERT INTO public.users VALUES (66, 'user_1711180585667');
INSERT INTO public.users VALUES (68, 'user_1711180585666');
INSERT INTO public.users VALUES (73, '90');
INSERT INTO public.users VALUES (74, 'g');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 67, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 83, true);


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

