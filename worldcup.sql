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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(20) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (93, 2018, 'Final', 287, 288, 4, 2);
INSERT INTO public.games VALUES (94, 2018, 'Third Place', 289, 290, 2, 0);
INSERT INTO public.games VALUES (95, 2018, 'Semi-Final', 288, 290, 2, 1);
INSERT INTO public.games VALUES (96, 2018, 'Semi-Final', 287, 289, 1, 0);
INSERT INTO public.games VALUES (97, 2018, 'Quarter-Final', 288, 291, 3, 2);
INSERT INTO public.games VALUES (98, 2018, 'Quarter-Final', 290, 292, 2, 0);
INSERT INTO public.games VALUES (99, 2018, 'Quarter-Final', 289, 293, 2, 1);
INSERT INTO public.games VALUES (100, 2018, 'Quarter-Final', 287, 294, 2, 0);
INSERT INTO public.games VALUES (101, 2018, 'Eighth-Final', 290, 295, 2, 1);
INSERT INTO public.games VALUES (102, 2018, 'Eighth-Final', 292, 296, 1, 0);
INSERT INTO public.games VALUES (103, 2018, 'Eighth-Final', 289, 297, 3, 2);
INSERT INTO public.games VALUES (104, 2018, 'Eighth-Final', 293, 298, 2, 0);
INSERT INTO public.games VALUES (105, 2018, 'Eighth-Final', 288, 299, 2, 1);
INSERT INTO public.games VALUES (106, 2018, 'Eighth-Final', 291, 300, 2, 1);
INSERT INTO public.games VALUES (107, 2018, 'Eighth-Final', 294, 301, 2, 1);
INSERT INTO public.games VALUES (108, 2018, 'Eighth-Final', 287, 302, 4, 3);
INSERT INTO public.games VALUES (109, 2014, 'Final', 303, 302, 1, 0);
INSERT INTO public.games VALUES (110, 2014, 'Third Place', 304, 293, 3, 0);
INSERT INTO public.games VALUES (111, 2014, 'Semi-Final', 302, 304, 1, 0);
INSERT INTO public.games VALUES (112, 2014, 'Semi-Final', 303, 293, 7, 1);
INSERT INTO public.games VALUES (113, 2014, 'Quarter-Final', 304, 305, 1, 0);
INSERT INTO public.games VALUES (114, 2014, 'Quarter-Final', 302, 289, 1, 0);
INSERT INTO public.games VALUES (115, 2014, 'Quarter-Final', 293, 295, 2, 1);
INSERT INTO public.games VALUES (116, 2014, 'Quarter-Final', 303, 287, 1, 0);
INSERT INTO public.games VALUES (117, 2014, 'Eighth-Final', 293, 306, 2, 1);
INSERT INTO public.games VALUES (118, 2014, 'Eighth-Final', 295, 294, 2, 0);
INSERT INTO public.games VALUES (119, 2014, 'Eighth-Final', 287, 307, 2, 0);
INSERT INTO public.games VALUES (120, 2014, 'Eighth-Final', 303, 308, 2, 1);
INSERT INTO public.games VALUES (121, 2014, 'Eighth-Final', 304, 298, 2, 1);
INSERT INTO public.games VALUES (122, 2014, 'Eighth-Final', 305, 309, 2, 1);
INSERT INTO public.games VALUES (123, 2014, 'Eighth-Final', 302, 296, 1, 0);
INSERT INTO public.games VALUES (124, 2014, 'Eighth-Final', 289, 310, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (287, 'France');
INSERT INTO public.teams VALUES (288, 'Croatia');
INSERT INTO public.teams VALUES (289, 'Belgium');
INSERT INTO public.teams VALUES (290, 'England');
INSERT INTO public.teams VALUES (291, 'Russia');
INSERT INTO public.teams VALUES (292, 'Sweden');
INSERT INTO public.teams VALUES (293, 'Brazil');
INSERT INTO public.teams VALUES (294, 'Uruguay');
INSERT INTO public.teams VALUES (295, 'Colombia');
INSERT INTO public.teams VALUES (296, 'Switzerland');
INSERT INTO public.teams VALUES (297, 'Japan');
INSERT INTO public.teams VALUES (298, 'Mexico');
INSERT INTO public.teams VALUES (299, 'Denmark');
INSERT INTO public.teams VALUES (300, 'Spain');
INSERT INTO public.teams VALUES (301, 'Portugal');
INSERT INTO public.teams VALUES (302, 'Argentina');
INSERT INTO public.teams VALUES (303, 'Germany');
INSERT INTO public.teams VALUES (304, 'Netherlands');
INSERT INTO public.teams VALUES (305, 'Costa Rica');
INSERT INTO public.teams VALUES (306, 'Chile');
INSERT INTO public.teams VALUES (307, 'Nigeria');
INSERT INTO public.teams VALUES (308, 'Algeria');
INSERT INTO public.teams VALUES (309, 'Greece');
INSERT INTO public.teams VALUES (310, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 124, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 310, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

