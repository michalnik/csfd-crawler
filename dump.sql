--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Debian 12.9-1.pgdg110+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

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

--
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: csfd
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO csfd;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: csfd
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO csfd;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: csfd
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: csfd
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO csfd;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: csfd
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO csfd;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: csfd
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: csfd
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO csfd;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: csfd
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO csfd;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: csfd
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: csfd
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO csfd;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: csfd
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO csfd;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: csfd
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO csfd;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: csfd
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: csfd
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO csfd;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: csfd
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: csfd
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO csfd;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: csfd
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO csfd;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: csfd
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: csfd
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO csfd;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: csfd
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO csfd;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: csfd
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: csfd
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO csfd;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: csfd
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO csfd;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: csfd
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: top_favourites_actor; Type: TABLE; Schema: public; Owner: csfd
--

CREATE TABLE public.top_favourites_actor (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    external_id integer NOT NULL
);


ALTER TABLE public.top_favourites_actor OWNER TO csfd;

--
-- Name: top_favourites_actor_id_seq; Type: SEQUENCE; Schema: public; Owner: csfd
--

CREATE SEQUENCE public.top_favourites_actor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.top_favourites_actor_id_seq OWNER TO csfd;

--
-- Name: top_favourites_actor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: csfd
--

ALTER SEQUENCE public.top_favourites_actor_id_seq OWNED BY public.top_favourites_actor.id;


--
-- Name: top_favourites_film; Type: TABLE; Schema: public; Owner: csfd
--

CREATE TABLE public.top_favourites_film (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    external_id integer NOT NULL
);


ALTER TABLE public.top_favourites_film OWNER TO csfd;

--
-- Name: top_favourites_film_actors; Type: TABLE; Schema: public; Owner: csfd
--

CREATE TABLE public.top_favourites_film_actors (
    id bigint NOT NULL,
    film_id bigint NOT NULL,
    actor_id bigint NOT NULL
);


ALTER TABLE public.top_favourites_film_actors OWNER TO csfd;

--
-- Name: top_favourites_film_actors_id_seq; Type: SEQUENCE; Schema: public; Owner: csfd
--

CREATE SEQUENCE public.top_favourites_film_actors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.top_favourites_film_actors_id_seq OWNER TO csfd;

--
-- Name: top_favourites_film_actors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: csfd
--

ALTER SEQUENCE public.top_favourites_film_actors_id_seq OWNED BY public.top_favourites_film_actors.id;


--
-- Name: top_favourites_film_id_seq; Type: SEQUENCE; Schema: public; Owner: csfd
--

CREATE SEQUENCE public.top_favourites_film_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.top_favourites_film_id_seq OWNER TO csfd;

--
-- Name: top_favourites_film_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: csfd
--

ALTER SEQUENCE public.top_favourites_film_id_seq OWNED BY public.top_favourites_film.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: top_favourites_actor id; Type: DEFAULT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.top_favourites_actor ALTER COLUMN id SET DEFAULT nextval('public.top_favourites_actor_id_seq'::regclass);


--
-- Name: top_favourites_film id; Type: DEFAULT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.top_favourites_film ALTER COLUMN id SET DEFAULT nextval('public.top_favourites_film_id_seq'::regclass);


--
-- Name: top_favourites_film_actors id; Type: DEFAULT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.top_favourites_film_actors ALTER COLUMN id SET DEFAULT nextval('public.top_favourites_film_actors_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: csfd
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: csfd
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: csfd
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can view permission	1	view_permission
5	Can add group	2	add_group
6	Can change group	2	change_group
7	Can delete group	2	delete_group
8	Can view group	2	view_group
9	Can add user	3	add_user
10	Can change user	3	change_user
11	Can delete user	3	delete_user
12	Can view user	3	view_user
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add actor	5	add_actor
18	Can change actor	5	change_actor
19	Can delete actor	5	delete_actor
20	Can view actor	5	view_actor
21	Can add film	6	add_film
22	Can change film	6	change_film
23	Can delete film	6	delete_film
24	Can view film	6	view_film
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: csfd
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: csfd
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: csfd
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: csfd
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	auth	permission
2	auth	group
3	auth	user
4	contenttypes	contenttype
5	top_favourites	actor
6	top_favourites	film
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: csfd
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-12-18 21:02:33.974424+00
2	contenttypes	0002_remove_content_type_name	2021-12-18 21:02:33.984829+00
3	auth	0001_initial	2021-12-18 21:02:34.071941+00
4	auth	0002_alter_permission_name_max_length	2021-12-18 21:02:34.081977+00
5	auth	0003_alter_user_email_max_length	2021-12-18 21:02:34.094034+00
6	auth	0004_alter_user_username_opts	2021-12-18 21:02:34.104716+00
7	auth	0005_alter_user_last_login_null	2021-12-18 21:02:34.115619+00
8	auth	0006_require_contenttypes_0002	2021-12-18 21:02:34.118958+00
9	auth	0007_alter_validators_add_error_messages	2021-12-18 21:02:34.129935+00
10	auth	0008_alter_user_username_max_length	2021-12-18 21:02:34.143336+00
11	auth	0009_alter_user_last_name_max_length	2021-12-18 21:02:34.152674+00
12	auth	0010_alter_group_name_max_length	2021-12-18 21:02:34.163456+00
13	auth	0011_update_proxy_permissions	2021-12-18 21:02:34.172594+00
14	auth	0012_alter_user_first_name_max_length	2021-12-18 21:02:34.182353+00
15	top_favourites	0001_initial	2021-12-18 21:02:34.22842+00
\.


--
-- Data for Name: top_favourites_actor; Type: TABLE DATA; Schema: public; Owner: csfd
--

COPY public.top_favourites_actor (id, name, external_id) FROM stdin;
1	Tim Robbins	103
2	Morgan Freeman	92
3	Bob Gunton	202
4	William Sadler	203
5	Clancy Brown	204
6	Gil Bellows	2392
7	Mark Rolston	20260
8	James Whitmore	2357
9	Jeffrey DeMunn	5732
10	Larry Brandenburg	37518
11	Neil Giuntoli	37545
12	David Proval	9120
13	Jude Ciccolella	53688
14	Paul McCrane	24350
15	Alfonso Freeman	30899
16	Ned Bellamy	20757
17	James Babson	15400
18	Renee Blaine	55721
19	Frank Medrano	55722
20	Don McManus	78011
21	Brian Libby	88975
22	Dion Anderson	237860
23	Joseph Ragno	260579
24	Sergio Kato	311428
25	Morgan Lund	383496
26	Brian Brophy	403538
27	V.J. Foster	403542
28	Brian Delate	617215
29	Bill Bolender	418947
30	Neil Summers	494962
31	Dorothy Silver	630178
32	Tom Hanks	330
33	Robin Wright	604
34	Gary Sinise	491
35	Mykelti Williamson	1903
36	Sally Field	541
37	Haley Joel Osment	52
38	Peter Dobson	212
39	Siobhan Fallon Hogan	1986
40	Hanna Hall	35091
41	Brett Rice	15188
42	Kirk Ward	4579
43	Kurt Russell	110
44	Stephen Bridgewater	25083
45	Michael Jace	20867
46	Michael McFall	49198
47	Joe Alaskey	49931
48	Sam Anderson	55396
49	Jacqueline Lovell	50970
50	Mary Ellen Trainor	65288
51	Vanessa Roth	69806
52	Bryan Hanna	86632
53	Jason McGuire	87495
54	Gerald Ford	97912
55	Lyndon B. Johnson	98931
56	John F. Kennedy	20102
57	Michael Conner Humphreys	123636
58	David Brisbin	151962
59	Zach Hanner	172303
60	John Lennon	5368
61	Al Harrington	221325
62	Robb Skyler	227339
63	Charles Boswell	233516
64	Afemo Omilami	277838
65	Byron Minns	284712
66	Troy Christian	293158
67	Geoffrey Blake	318968
68	Timothy McNeil	321632
69	Don Fischer	324157
70	Nora Dunfee	324170
71	Bill Roberson	324174
72	Rebecca Williams	324308
73	Dick Cavett	317307
74	George Wallace	329012
75	Daniel C. Striepeke	352498
76	Marla Sucharetza	353277
77	Sonny Shroyer	390648
78	Jim Boeke	416984
79	Tiffany Salerno	445127
80	David Morse	324
81	Bonnie Hunt	552
82	Michael Clarke Duncan	337
83	James Cromwell	381
84	Michael Jeter	2313
85	Graham Greene	407
86	Doug Hutchison	15137
87	Sam Rockwell	2389
88	Barry Pepper	2095
89	Patricia Clarkson	4852
90	Harry Dean Stanton	242
91	Dabbs Greer	16432
92	Eve Brent	230491
93	Brent Briscoe	9441
94	Bill McKinney	64739
95	Paula Malcomson	70378
96	Rebecca Klingler	331876
97	Todd Thompson	166149
98	Tommy Barnes	218450
99	Van Epperson	340199
100	Rai Tasco	452983
101	Gary Imhoff	532841
102	Scotty Leavenworth	71917
103	Judy Herrera	606599
104	Jack Nicholson	182
105	Louise Fletcher	790
106	Sydney Lassick	68847
107	William Redfield	97854
108	Brad Dourif	124
109	Christopher Lloyd	438
110	Will Sampson	15006
111	Danny DeVito	391
112	Vincent Schiavelli	14182
113	William Duell	97874
114	Mews Small	97881
115	Michael Berryman	11227
116	Scatman Crothers	7715
117	Mimi Sarkisian	55455
118	Delos V. Smith Jr.	68892
119	Dean R. Brooks	72732
120	Ted Markland	88910
121	Nathan George	97875
122	Mwako Cumbuka	97883
123	Louisa Moritz	102142
124	Peter Brocco	134008
125	Saul Zaentz	139592
126	Josip Elic	376020
127	Mel Lambert	617495
128	Brad Pitt	5
129	Gwyneth Paltrow	265
130	Kevin Spacey	266
131	R. Lee Ermey	5121
132	Richard Roundtree	8291
133	John C. McGinley	5265
134	Julie Araskog	202804
135	Mark Boone Junior	2413
136	John Cassini	53681
137	Reg E. Cathey	19932
138	Peter Crombie	202802
139	Hawthorne James	202800
140	Michael Massee	20178
141	Leland Orser	20217
142	Richard Portnow	1920
143	Richard Schiff	2223
144	Andrew Kevin Walker	20327
145	Daniel Zacapa	104667
146	Endre Hules	95381
147	Bob Collins	10534
148	Allan Kolman	70797
149	Harrison White	150795
150	Emily Wagner	50372
151	Lexie Bigham	22423
152	Evan Mirand	59583
153	Harris Savides	67237
154	Richmond Arquette	73387
155	Charles S. Dutton	260
156	Arthur Max	200482
157	Gene Borkan	233620
158	Heidi Schanz	268614
159	Shannon Wilcox	333342
160	Bob Stephenson	341791
161	Michael Reid MacKay	389483
162	Mario Di Donato	494914
163	Paul Eckstein	549739
164	Jennifer Mueller	581180
165	Liam Neeson	16
166	Ben Kingsley	197
167	Ralph Fiennes	198
168	Caroline Goodall	2103
169	Embeth Davidtz	2384
170	Götz Otto	8803
171	Mark Ivanir	35725
172	Andrzej Seweryn	18807
173	Friedrich von Thun	8406
174	Paweł Deląg	6382
175	Henryk Bista	8518
176	Wojciech Klata	5602
177	Hans-Jörg Assmann	1443
178	Ludger Pistor	47632
179	Jochen Nickel	9567
180	Stanisław Brejdygant	52931
181	Olaf Lubaszenko	4977
182	Joachim Paul Assböck	35697
183	Alexander Held	36391
184	Agnieszka Wagner	37043
185	Erwin Leder	44158
186	Bettina Kupfer	52595
187	Maja Ostaszewska	54319
188	Elina Löwensohn	57325
189	Jerzy Nowak	61415
190	Maria Peszek	67826
191	Miri Fabian	69341
192	Branko Lustig	70425
193	Tadeusz Bradecki	83233
194	August Schmölzer	107178
195	Alexander Strobele	109222
196	Jonathan Sagall	109886
197	Ben Talar	121055
198	Ruth Farhi	119597
199	Maciej Kozłowski	132606
200	Tadeusz Huk	132990
201	Piotr Polk	134037
202	Eugeniusz Priwieziencew	134471
203	Beata Paluch	134579
204	Jan Jurewicz	134604
205	Marian Glinka	134620
206	Agnieszka Krukówna	134635
207	Edward Linde-Lubaszenko	134677
208	Piotr Cyrwus	135006
209	Wiesław Komasa	135479
210	Maciej Kowalewski	135538
211	Tomasz Dedek	136260
212	Krzysztof Litwin	138067
213	Ryszard Radwański	139469
214	Hans-Michael Rehberg	143069
215	Radosław Krzyżowski	144120
216	Sławomir Holland	144502
217	Haymon Maria Buttinger	149300
218	Artus Maria Matthiessen	151041
219	Ezra Dagan	157007
220	Geno Lechner	166778
221	Rami Heuberger	169709
222	Michael Schiller	176940
223	Martin Semmelrogge	177108
224	Wilhelm Manske	190753
225	Thomas Morris	203775
226	Razia Israeli	216823
227	Norbert Weisser	225402
228	Grzegorz Kwas	239117
229	Marta Bizoń	245374
230	Grzegorz Damięcki	246635
231	Daniel Del-Ponte	259687
232	Peter Flechtner	276295
233	Adam Siemion	388962
234	Dieter Witting	390245
235	Georges Kern	397521
236	Michael Gordon	427924
237	Anna Mucha	367359
238	Peter Appiano	525508
239	Michael Z. Hoffmann	538387
240	Michael Schneider	552175
241	Martin Bergmann	567612
242	Hans Rosner	590058
243	Esti Yerushalmi	609655
244	Leopold Kozłowski	663289
245	Lucyna Zabawa	667512
246	Lidia Bank-Wyrobiec	670602
247	Stanisław Nałęcz-Koczanowicz	670630
248	Jerzy Sagan	671181
249	Lech Niebielski	671716
250	Małgorzata Gebel	675275
251	Tom Holland	85329
252	Zendaya	63036
253	Marisa Tomei	1834
254	Jacob Batalon	321049
255	Benedict Cumberbatch	55009
256	Jamie Foxx	2207
257	Alfred Molina	859
258	J.K. Simmons	1828
259	Tony Revolori	105615
260	Arian Moayed	185944
261	Harry Holland	98590
262	José Alfredo Fernandez	647268
263	Jon Favreau	2467
264	Angourie Rice	91681
265	Willem Dafoe	239
266	Benedict Wong	60234
267	Martin Starr	50332
268	J.B. Smoove	86727
269	Paula Newsome	47639
270	Glenn Keogh	150556
271	Jorge Lendeborg Jr.	349036
272	Hannibal Buress	236725
273	Andrew Garfield	47646
274	Tobey Maguire	1820
275	Tom Hardy	23781
276	Charlie Cox	25113
277	Rhys Ifans	2258
278	Thomas Haden Church	16365
279	Jake Gyllenhaal	6112
280	Marlon Brando	360
281	Al Pacino	99
282	James Caan	370
283	Richard S. Castellano	14801
284	Robert Duvall	199
285	Sterling Hayden	20060
286	John Marley	14481
287	Richard Conte	4202
288	Al Lettieri	44189
289	Diane Keaton	200
290	Abe Vigoda	14114
291	Talia Shire	5971
292	Gianni Russo	52602
293	John Cazale	201
294	Rudy Bond	128605
295	Al Martino	123929
296	Morgana King	289900
297	Lenny Montana	69290
298	John Martino	289903
299	Salvatore Corsitto	289905
300	Richard Bright	1978
301	Alex Rocco	14845
302	Tony Giorgio	289906
303	Vito Scotti	56349
304	Victor Rendina	289907
305	Jeannie Linero	289908
306	Julie Gregg	284903
307	Simonetta Stefanelli	57478
308	Angelo Infanti	63642
309	Corrado Gaipa	86300
310	Franco Citti	9903
311	Saro Urzì	76765
312	Carmine Coppola	64129
313	Roman Coppola	15469
314	Sofia Coppola	8075
315	Gray Frederickson	325161
316	Ron Gilbert	205146
317	Sonny Grosso	338104
318	Louis Guss	362761
319	Randy Jurgensen	248726
320	Tony King	10667
321	Lou Martini Jr.	322830
322	Raymond Martino	25668
323	Tom Rosqui	289911
324	Frank Sivero	289913
325	Joe Spinell	10818
326	Gabriele Torrei	289915
327	Nick Vallelonga	52920
328	Conrad Yama	486655
329	Tony Lip	528464
330	Ardell Sheridan	617565
331	Filomena Spagnuolo	628187
332	Rick Petrucelli	649126
333	Martin Balsam	190
334	John Fiedler	52989
335	Lee J. Cobb	5696
336	E.G. Marshall	20175
337	Jack Klugman	49692
338	Edward Binns	70053
339	Jack Warden	506
340	Henry Fonda	784
341	Joseph Sweeney	67254
342	Ed Begley	6322
343	Jiří Voskovec	2019
344	Robert Webber	69941
345	John Savoca	140476
346	Walter Stocker	143451
347	Billy Nelson	458525
348	François Cluzet	51027
349	Omar Sy	56100
350	Anne Le Ny	39208
351	Audrey Fleurot	75635
352	Joséphine de Meaux	132750
353	Clotilde Mollet	54235
354	Alba Gaïa Kraghede Bellugi	128827
355	Cyril Mendy	71583
356	Salimata Kamate	132688
357	Grégoire Oestermann	130360
358	Dominique Daguier	233190
359	François Caron	223702
360	Christian Ameri	284166
361	Thomas Solivéres	156120
362	Dorothée Briere	237506
363	Émilie Caen	72183
364	Sylvain Lazard	71584
365	Jean-François Cayrey	176837
366	François Bureloup	141381
367	Nicky Marbot	172714
368	Benjamin Baroche	96160
369	Antoine Laurent	121410
370	Caroline Bourg	194840
371	Marie-Laure Descoureaux	336863
372	Hedi Bouchenafa	535442
373	Jérôme Pauwels	648072
374	Miroslav Donutil	949
375	Jiří Kodet	996
376	Simona Stašová	1327
377	Emília Vášáryová	1075
378	Boleslav Polívka	954
379	Jaroslav Dušek	1523
380	Eva Holubová	1186
381	Stella Zázvorková	1038
382	Kristýna Badinková Nováková	29631
383	Michael Beran	29630
384	Sylvie Koblížková	36429
385	Marek Morvai-Javorský	1526
386	Jiří Krejčík	1525
387	Ondřej Brousek	14359
388	Boris Hybner	1524
389	Richard Tesařík	1527
390	Dagmar Teichmannová	58840
391	Miroslav Kaman	63907
392	Hana Marcoňová	218548
393	Ruslana Miňajlúk	218549
394	Jana Švamberková	218551
395	Soňa Nemcová	140611
396	Arnold Schwarzenegger	34
397	Linda Hamilton	64
398	Edward Furlong	173
399	Robert Patrick	174
400	Michael Edwards	103199
401	Earl Boen	53234
402	Joe Morton	175
403	S. Epatha Merkerson	48705
404	Danny Cooksey	13530
405	Xander Berkeley	2519
406	Dean Norris	37301
407	Michael Biehn	178
408	Jenette Goldstein	27510
409	Nikki Cox	35877
410	Scott Shaw	52480
411	Mark Christopher Lawrence	54788
412	DeVaughn Nixon	66740
413	Leslie Hamilton Gearren	73472
414	Castulo Guerra	78776
415	Diane Rodriguez	91675
416	Jim Palmer	177422
417	Terrence Evans	218078
418	Don Lake	222741
419	Colin Patrick Lynch	286622
420	Abdul Salaam El Razzac	287380
421	Peter Schrum	392126
422	Don Stanton	426324
423	Dan Stanton	426326
424	Van Ling	450986
425	Nancy Fish	207076
426	Robert Winley	620513
427	Mike Muscat	675056
428	John Travolta	115
429	Samuel L. Jackson	425
430	Tim Roth	477
431	Uma Thurman	180
432	Christopher Walken	149
433	Bruce Willis	3
434	Harvey Keitel	280
435	Amanda Plummer	878
436	Rosanna Arquette	517
437	Eric Stoltz	911
438	Ving Rhames	896
439	Maria de Medeiros	7207
440	Peter Greene	20043
441	Duane Whitaker	36913
442	Paul Calderon	20775
443	Frank Whaley	1973
444	Burr Steers	3376
445	Phil LaMarr	24644
446	Bronagh Gallagher	36977
447	Quentin Tarantino	2120
448	Steve Buscemi	95
449	Joseph Pilato	5178
450	Angela Jones	27350
451	Julia Sweeney	9618
452	Laura Lovelace	86751
453	Alexis Arquette	6041
454	Lawrence Bender	47648
455	Kathy Griffin	54587
456	Michael Gilden	63952
457	Dick Miller	34587
458	Don Blakely	127837
459	Stephen Hibbert	218510
460	Karen Maruyama	235105
461	Emil Sitka	277860
462	Brenda Hillhouse	382463
463	Ani Sava	404383
464	Robert Ruth	437314
465	Richard Rossi	604563
466	Chandler Lindauer	637199
467	Robert De Niro	98
468	Lee Strasberg	21893
469	Michael V. Gazzo	14977
470	G. D. Spradlin	24375
471	Gastone Moschin	8564
472	Bruno Kirby	431
473	Francesca De Sapio	323400
474	Marianna Hill	23015
475	Leopoldo Trieste	72220
476	Dominic Chianese	9181
477	Troy Donahue	17847
478	John Aprea	151683
479	Oreste Baldini	323402
480	Giuseppe Sillato	323401
481	James Gounaris	323403
482	Fay Spain	97402
483	James Murdock	349523
484	Carmine Caridi	288701
485	Danny Aiello	731
486	Carmen Argenziano	2518
487	William Bowers	89771
488	Kathleen Beller	73182
489	Peter Donat	17387
490	Phil Feldman	314902
491	Roger Corman	2853
492	Ivonne Coll	157814
493	Erica Yohn	355405
494	Šó Kosugi	15608
495	Gary Kurtz	276918
496	Richard Matheson	76055
497	John Megna	11400
498	Frank Pesce	248727
499	Jay Rasumny	262741
500	Judith Woodbury	432722
501	George Holmes	458555
502	Maria Carta	523596
503	Elijah Wood	165
504	Ian McKellen	74
505	Noel Appleby	69116
506	Viggo Mortensen	166
507	Sean Astin	167
508	Cate Blanchett	62
509	Sean Bean	170
510	Liv Tyler	97
511	John Rhys-Davies	76
512	Billy Boyd	168
513	Dominic Monaghan	169
514	Orlando Bloom	60
515	Christopher Lee	81
516	Hugo Weaving	102
517	Ian Holm	171
518	Marton Csokas	11781
519	Craig Parker	4356
520	Andy Serkis	13883
521	Ian Mune	9563
522	Lawrence Makoare	64124
523	Harry Sinclair	3829
524	Elizabeth Moody	207
525	Peter Jackson	11
526	Bill Johnson	23296
527	Billy Jackson	33786
528	Bret McKenzie	47731
529	Sala Baker	50740
530	Alan Howard	52339
531	Shane Rangi	74156
532	Sabine Crossen	93207
533	Mark Ferguson	285042
534	Martyn Sanderson	289024
535	Jono Manks	384226
536	Lori Dungey	392127
537	Sam Kelly	526543
538	Peter McKenzie	603214
539	Gino Acevedo	631715
540	Tim Kano	668564
541	Jodie Foster	273
542	Anthony Hopkins	225
543	Scott Glenn	125
544	Ted Levine	1990
545	Anthony Heald	11795
546	Brooke Smith	4542
547	Diane Baker	7537
548	Kasi Lemmons	6641
549	Charles Napier	14107
550	Tracey Walter	53621
551	Ron Vawter	388999
552	Danny Dean Darst	387629
553	Frankie Faison	11947
554	Paul Lazar	150302
555	Dan Butler	225702
556	Chris Isaak	13187
557	Obba Babatundé	13959
558	Cynthia Ettinger	17674
559	Daniel von Bargen	1892
560	Ted Monte	14652
561	George A. Romero	3056
562	Stuart Rudin	70197
563	Brent Hinkley	81610
564	John W. Iwanonkiw	88571
565	John Hall	93575
566	Tommy LaFitte	93576
567	Lawrence A. Bonney	124345
568	Ella Scott Lynch	133272
569	Adelle Lutz	134000
570	Harry Northup	201999
571	Chris McGinn	336315
572	Don Brockett	355476
573	Leib Lensky	385330
574	Pat McNamara	386796
575	Mike Schaeffer	444665
576	Robert W. Castle	459518
577	Andre B. Blake	476069
578	Kenneth Utt	550278
579	Claudia Cardinale	2015
580	Jason Robards	898
581	Charles Bronson	364
582	Gabriele Ferzetti	20007
583	Don Galloway	216691
584	Paolo Stoppa	10122
585	Woody Strode	10125
586	Jack Elam	19993
587	Keenan Wynn	20354
588	Frank Wolff	20349
589	Lionel Stander	10121
590	Fabio Testi	6526
591	Al Mulock	56438
592	Aldo Sambrell	107661
593	Bruno Corazzari	122569
594	Aldo Berti	122746
595	Cris Huerta	122753
596	Ricardo Palacios	180531
597	Conrado San Martín	194297
598	Benito Stefanelli	235521
599	Luana Strode	246111
600	Marilù Carteny	270969
601	Antonio Molino Rojo	295737
602	Frank Braña	296100
603	Renato Pinciroli	313389
604	Lorenzo Robledo	318920
605	Paolo Figlia	321954
606	Giovanni Ivan Scratuglia	323298
607	Saturno Cerra	327994
608	Spartaco Conversi	353199
609	Michael Harvey	398631
610	John Frederick	474506
611	Robert Hossein	10634
612	Claudio Mancini	516080
613	Salvatore Basile	508414
614	Bernard Hill	4354
615	Miranda Otto	4352
616	Karl Urban	4353
617	David Wenham	4355
618	John Noble	13424
619	Bruce Spence	6326
620	Joel Tobeck	52031
621	Peter Tait	56931
622	John Bach	59415
623	Bruce Hopkins	66484
624	Pete Smith	20986
625	Jed Brophy	68605
626	Bruce Phillips	70350
627	Ali Astin	197864
628	Ian Hughes	208294
629	Andrew Lesnie	67568
630	Richard Taylor	33794
631	Ross Duncan	675002
632	Christian Bale	352
633	Heath Ledger	1976
634	Aaron Eckhart	6732
635	Michael Caine	754
636	Maggie Gyllenhaal	1987
637	Gary Oldman	313
638	Cillian Murphy	4833
639	Eric Roberts	1914
640	Ritchie Coster	128817
641	Anthony Michael Hall	1980
642	Michael Jai White	11486
643	Chin Han	50066
644	William Fichtner	320
645	Keith Szarabajka	20303
646	Danny Goldring	14979
647	Beatrice Rosen	35894
648	Edison Chen	17553
649	Matthew Leitch	8495
650	Nestor Carbonell	17549
651	Nicky Katt	2195
652	Monique Gabriela Curnen	44761
653	Tommy 'Tiny' Lister	45031
654	Nathan Gamble	45251
655	Sarah Jayne Dunn	35888
656	Matt Rippy	45455
657	Bronson Webb	48990
658	Melinda McGraw	60454
659	Ariyon Bakare	67671
660	Vincent Riotta	69095
661	Peter Brooke	71637
662	Marisol Giraud	74484
663	Danielle Day	74487
664	William Smillie	90416
665	David Dastmalchian	103699
666	Lisa McAllister	112278
667	David Ajala	122933
668	Ramses Jimenez	132128
669	Andrew Bicknell	142936
670	Colin McFarlane	147526
671	Vincenzo Nicoli	209375
672	Jordon Hodges	229292
673	Ron Dean	237244
674	Charles Venn	240420
675	Richard Dillane	242406
676	Tommy Campbell	39298
677	Ryan McGonagle	276960
678	Joshua Harto	311347
679	Ronan Summers	327470
680	Stephen Armourae	333741
681	Richard Strobel	69334
682	Chris Wilson	350449
683	Ian Pirie	351358
684	Robert Patrick Stern	381843
685	Keith Kupferer	382290
686	Essa Zahir	397989
687	Blayne Bennett	418725
688	Will Zahrn	426445
689	Jonathan Ryland	436053
690	Douglas Bunn	647308
691	Michael Stoyanov	647959
692	Brandon Lambdin	677985
693	Peter DeFaria	686102
694	Keanu Reeves	46
695	Laurence Fishburne	47
696	Carrie-Anne Moss	101
697	Gloria Foster	38608
698	Joe Pantoliano	869
699	Belinda McClory	11024
700	Robert Taylor	39094
701	Anthony Ray Parker	47109
702	Ada Nicodemou	54785
703	Paul Goddard	70039
704	Julian Arahanga	76075
705	Marcus Chong	77763
706	Matt Doran	79154
707	Marc Aden Gray	109248
708	Chris Pattinson	250914
709	Deni Gordon	269571
710	Bill Young	296508
711	Nash Edgerton	44188
712	Clint Eastwood	42
713	Bee Vang	49839
714	Ahney Her	49838
715	Christopher Carley	49840
716	Brian Haley	307858
717	Geraldine Hughes	55381
718	Dreama Walker	40771
719	Brian Howe	2201
720	John Carroll Lynch	13683
721	William Hill	18366
722	Brooke Chia Thao	563857
723	Chee Thao	563754
724	Scott Eastwood	50374
725	Cory Hardrict	50738
726	Davis Gloff	563888
727	Eli Wallach	6485
728	Lee Van Cleef	9397
729	Aldo Giuffré	250030
730	Luigi Pistilli	10758
731	Rada Rassimov	122548
732	Enzo Petito	335421
733	Claudio Scarchilli	335422
734	John Bartha	21542
735	Livio Lorenzon	71809
736	Antonio Casale	335423
737	Sandro Scarchilli	335424
738	Angelo Novi	335425
739	Antonio Casas	150230
740	Sergio Mendizábal	327881
741	Mario Brega	82273
742	Chelo Alonso	68820
743	Fortunato Arena	122961
744	Román Ariznavarreta	342460
745	Silvana Bacci	324609
746	Amerigo Castrighella	353206
747	Tony Di Mitri	353204
748	Alberigo Donadeo	122756
749	Attilio Dottesio	10564
750	Veriano Ginesi	326188
751	Joyce Gordon	354632
752	Jesús Guzmán	327978
753	Víctor Israel	122634
754	Nazzareno Natale	352392
755	Romano Puppo	66967
756	Antoñito Ruiz	331615
757	José Terrón	324595
758	Luis Fernández de Eribe	303148
759	Harrison Ford	51
760	Karen Allen	84
761	Paul Freeman	85
762	Ronald Lacey	86
763	Denholm Elliott	87
764	Anthony Higgins	13185
765	Frank Marshall	3362
766	Terry Leonard	53889
767	Sergio Mioni	61548
768	Kiran Shah	63430
769	George Harris	68509
770	William Hootkins	77448
771	Eddie Tagoe	105370
772	Vic Tablian	134536
773	Pat Roach	147343
774	Matthew Scurfield	158715
775	Tutte Lemkow	225046
776	Don Fellows	247579
777	Terry Richards	269706
778	Ishaq Bux	277503
779	Wolf Kahler	280502
780	Peter Diamond	290467
781	John Rees	295825
782	Anthony Chinn	295826
783	Michael Sheard	295791
784	Patrick Durkin	298810
785	Harry Fielder	298866
786	Ted Grossman	373354
787	Dennis Muren	627745
788	Dustin Hoffman	419
789	Tom Cruise	72
790	Valeria Golino	2455
791	Gerald R. Molen	253858
792	Jack Murdock	364272
793	Michael D. Roberts	132824
794	Ralph Seymour	144008
795	Lucinda Jenney	20465
796	Kim Robillard	319327
797	Beth Grant	34126
798	Nick Mazzola	329739
799	Ray Baker	18310
800	Jake Hoffman	119703
801	Royce D. Applegate	340449
802	Archie Hahn	135381
803	Ira Miller	340458
804	Chris Mulkey	13202
805	Reni Santoni	60283
806	Jonathan Stark	310209
807	Lynne Marie Stewart	294940
808	Gigi Vorgan	257511
809	Barry Levinson	2984
810	Julie Payne	371539
811	Bridget Sienna	554773
812	Richard A. Buswell	618090
813	Arnold F. Turner	648670
814	Yul Brynner	368
815	Steve McQueen	854
816	Horst Buchholz	2449
817	Robert Vaughn	504
818	Brad Dexter	8292
819	James Coburn	377
820	Jorge Martínez de Hoyos	281047
821	Vladimir Sokoloff	8182
822	Rosenda Monteros	127283
823	Rico Alaniz	177603
824	Pepe Hern	297769
825	John A. Alonzo	76412
826	Enrique Lucero	197400
827	Alex Montoya	177656
828	Robert J. Wilke	32749
829	Val Avery	95829
830	Whit Bissell	4464
831	Bing Russell	132751
832	Roberto Contreras	381901
833	Valentin de Vargas	249743
834	Larry Duran	249237
835	Victor French	85222
836	Joseph Ruskin	133729
837	Natividad Vacío	393939
838	František Smolík	4795
839	Jana Brejchová	1107
840	Ivan Mistrík	1909
841	Jan Šmíd	31930
842	Alexandr Postler st.	32466
843	Petr Kostka	1480
844	Radovan Lukavský	1569
845	Václav Lohniský	938
846	Marie Lukášová	32348
847	Miroslav Svoboda	26265
848	Gustav Hilmar	7958
849	Bohuš Záhorský	4794
850	Marie Vášová	1397
851	Otomar Krejča st.	7828
852	Hannjo Hasse	32294
853	František Pálka	37134
854	Nora Houfová	37712
855	Jindřich Narenta	1695
856	Rudolf Hrušínský	961
857	Bedřich Prokoš	9054
858	Marie Glázrová	1165
859	Věra Tichánková	1356
860	Zuzana Stivínová	1334
861	Stanislava Seimlová	23047
862	Vladimír Hlavatý	1680
863	Karel Pavlík	26806
864	Josef Kozák	32293
865	Elena Hálková	1193
866	Naděžda Gajerová	27594
867	Blažena Slavíčková	1316
868	Jan Skopeček	942
869	Štěpán Bulejko	21578
870	Karel Enzmann	37713
871	Václav Švec	28949
872	Rudolf Široký	31302
873	Jarmila Kurandová	1242
874	Ladislav Gzela	28850
875	Bohuš Hradil	21710
876	Libuše Švormová	1344
877	Luba Skořepová	1313
878	František Suk	21352
879	Michal Staninec	32509
880	Jitka Frantová	37625
881	Elmar Kloss	37714
882	Jan Kühmund	31056
883	Sheila Miroslava Ochová	37715
884	Jiří Šrámek	26815
885	Sigourney Weaver	172
886	Tom Skerritt	281
887	Veronica Cartwright	16987
888	John Hurt	226
889	Yaphet Kotto	282
890	Bolaji Badejo	123646
891	Helen Horton	443396
892	Chris Hemsworth	35444
893	Daniel Brühl	7201
894	Olivia Wilde	34000
895	Alexandra Maria Lara	18518
896	Pierfrancesco Favino	39366
897	David Calder	281342
898	Natalie Dormer	25378
899	Stephen Mangan	51566
900	Christian McKay	36214
901	Alistair Petrie	55151
902	Julian Rhind-Tutt	69293
903	Colin Stinton	18811
904	Jamie de Courcey	236359
905	Patrick Baladi	56090
906	Martin Savage	83441
907	Jamie Sives	10809
908	Tom Wlaschiha	20347
909	Cristian Solimeno	65839
910	James Norton	135332
911	Joséphine de La Baume	92994
912	Geoffrey Streatfeild	344497
913	Julien Vialon	210166
914	Douglas Reith	230634
915	Brooke Johnston	330166
916	Hannah Britland	70788
917	Val Jobara	372607
918	Folker Banik	172106
919	Jochen Kolenda	159095
920	Roger Nevares	239058
921	Raffaello Degruttola	15495
922	Christian Feist	204815
923	Demetri Goritsas	116775
924	Marcello Walton	374517
925	Masaši Fudžimoto	184756
926	Roberto Cavazos	198321
927	Marco Napoli	454827
928	Cristian Stelluti	505729
929	Lee Asquith-Coe	81721
930	Robert Cambrinus	100961
931	Niki Lauda	57348
932	Stuart Mulcaster	226068
933	Gemita Samarra	225675
934	Julian Seager	92550
935	Michael Vardian	151727
936	Rosalie Wolff	166332
937	Egija Zviedre	84248
938	Chris Cowlin	283929
939	Graham Curry	322560
940	Tobias James-Samuels	332202
941	Aisling Knight	380454
942	Shaun Lucas	417207
943	James Hunt	448568
944	Zack Niizato	548088
945	Vanda Dadras	548096
946	Filippo Delaunay	560557
947	Pete Meads	571241
948	Guy Mayfield	579701
949	Bob Constanduros	582215
950	Devora Wilde	634232
951	Marco Canadea	643260
952	Philippe Spall	654780
953	Laura Jean Marsh	679053
954	Ricardo Freitas	695513
955	Matt Damon	339
956	Jon Bernthal	60932
957	Caitriona Balfe	80907
958	Tracy Letts	65522
959	Josh Lucas	2533
960	Noah Jupe	239127
961	Remo Girone	4872
962	Ray McKinnon	18401
963	JJ Feild	44176
964	Corrado Invernizzi	60550
965	Joe Williamson	401172
966	Ian Harding	71875
967	Christopher Darga	340718
968	Shawn Law	247704
969	Adam Mayfield	86661
970	Sean Carrigan	359213
971	Giles Matthey	119733
972	Rudolf Martin	18398
973	Evan Arnold	195188
974	Darin Cooper	73544
975	Wallace Langham	43085
976	Jonathan LaPaglia	41891
977	Brad Beyer	36514
978	Giovanni Cirfiera	520646
979	Wyatt Nash	212917
980	Ward Horton	130857
981	Tanner Foust	71962
982	Andrew Burlinson	511796
983	Lou Beatty Jr.	233517
984	Marc Forget	107929
985	Arron Shiver	60415
986	Paul Fox	190158
987	Zack Zublena	322449
988	Kirt Kishita	79455
989	Stefania Spampinato	351578
990	Jan Munroe	384034
991	Fatimah Hassan	491283
992	Mariah Maison	587706
993	Sergi Cervera	595503
994	Benjamin Rigby	600080
995	Dallas Chandler	626906
996	Marisa Petroro	644042
997	Brea Bee	651346
998	Joss Glennie-Smith	685628
999	Jack McMullen	706755
1000	Bruce M. Stockert	709287
1001	Sean Connery	58
1002	Alison Doody	39251
1003	Julian Glover	7894
1004	River Phoenix	462
1005	Michael Byrne	2106
1006	Kevork Malikyan	1951
1007	Alex Hyde-White	5702
1008	Eugene Lipinski	20159
1009	Suzanne Roquette	45524
1010	Alexei Sayle	70122
1011	Richard Young	75131
1012	Vernon Dobtcheff	77461
1013	Bradley Gregg	94925
1014	Lee Richards	127154
1015	Isla Blair	224672
1016	Chris Jenkinson	292621
1017	Tip Tipping	302061
1018	Frederick Jaeger	316881
1019	Stefan Kalipha	433635
1020	Robert Eddison	459633
1021	Julie Eccles	670447
1022	Carrie Henn	27398
1023	Paul Reiser	5341
1024	Lance Henriksen	263
1025	Bill Paxton	20
1026	William Hope	33096
1027	Al Matthews	127822
1028	Ricco Ross	244815
1029	Colette Hiller	244817
1030	Daniel Kash	17082
1031	Jay Benedict	265846
1032	Holly De Jong	127284
1033	Mac McDonald	44283
1034	Tom Woodruff Jr.	203653
1035	Stuart Milligan	304275
1036	Cynthia Dale Scott	619047
1037	Trevor Steedman	619049
1038	Paul Newman	93
1039	Robert Redford	471
1040	Robert Shaw	57
1041	Charles Durning	4962
1042	Ray Walston	53496
1043	Eileen Brennan	6474
1044	Harold Gould	17584
1045	John Heffernan	172477
1046	Dana Elcar	19994
1047	Jack Kehoe	111757
1048	Dimitra Arliss	59071
1049	Robert Earl Jones	257585
1050	James Sloyan	334941
1051	Charles Dierkop	49703
1052	Lee Paul	315974
1053	Sally Kirkland	11871
1054	Avon Long	334944
1055	Arch Johnson	132754
1056	Ed Bakey	334946
1057	Brad Sullivan	234959
1058	John Quade	134496
1059	Larry D. Mann	180238
1060	Leonard Barr	334947
1061	Paulene Myers	148229
1062	Jack Collins	228520
1063	Tom Spratley	334976
1064	Ken Sansom	4526
1065	William 'Billy' Benedict	181025
1066	Patricia Bratcher	334966
1067	Robert Brubaker	139778
1068	Kathleen Freeman	32099
1069	Susan French	256698
1070	Mike Lally	134895
1071	Alexander Lockwood	315150
1072	Byron Morrow	275775
1073	Edwin Rochelle	175856
1074	Arthur Tovey	148761
1075	Joe Tornatore	85790
1076	Clarke Gordon	393926
1077	Bruce Kimball	465195
1078	Pearl Shear	481581
1079	Bonnie Bedelia	1863
1080	Alan Rickman	475
1081	Paul Gleason	2573
1082	Reginald VelJohnson	21008
1083	Alexander Godunov	15549
1084	William Atherton	70
1085	Hart Bochner	7420
1086	James Shigeta	63618
1087	Andreas Wisniewski	86008
1088	De'voreaux White	251201
1089	Clarence Gilyard Jr.	36344
1090	Grand L. Bush	38593
1091	Wilhelm von Homburg	54414
1092	Robert Davi	2572
1093	Rick Ducommun	19980
1094	Anthony Peck	61321
1095	Dennis Hayden	74526
1096	Al Leong	80524
1097	Charlie Picerni	136215
1098	Rebecca Broussard	198540
1099	Fred Lerner	201847
1100	Robert Lesser	324541
1101	Tracy Reiner	368909
1102	Selma Archerd	393855
1103	Lorenzo Caccialanza	472149
1104	Kym Malin	484617
1105	Conrad Hurtt	651129
1106	Bill Marcus	695956
1107	Gary Roberts	702326
1108	Edward Burns	751
1109	Tom Sizemore	317
1110	Jeremy Davies	2091
1111	Vin Diesel	129
1112	Adam Goldberg	2094
1113	Giovanni Ribisi	251
1114	Dennis Farina	2093
1115	Ted Danson	2089
1116	Harve Presnell	18420
1117	Bryan Cranston	22446
1118	David Wohl	370182
1119	Nathan Fillion	25138
1120	Paul Giamatti	4853
1121	Ryan Hurst	16454
1122	Max Martini	46717
1123	Dylan Bruno	55911
1124	Dale Dye	29600
1125	Rolf Saxon	7755
1126	Corey Johnson	20084
1127	Andrew Scott	21506
1128	Glenn Wrage	18827
1129	John de Lancie	2092
1130	Martin McDougall	18399
1131	John Sharian	30518
1132	Kathleen Byron	23452
1133	Martin Hub	64588
1134	Rob Freeman	70472
1135	Leoš Stránský	28988
1136	Aiden Condron	225187
1137	Crofton Hardester	190164
1138	Nigel Whitmey	244336
1139	Shane Johnson	247333
1140	Lee Aaron Rosen	270813
1141	Anna Maguire	280479
1142	Amanda Boxer	283816
1143	Laird Macintosh	297995
1144	Paul Hickey	304403
1145	Daniel Cerqueira	326579
1146	John Walters	349094
1147	Harrison Young	384903
1148	Mac Steinmeier	388775
1149	Vincent Walsh	514868
1150	Grahame Wood	554844
1151	Tilo Keiner	676660
1152	Jean Reno	473
1153	Natalie Portman	158
1154	Peter Appel	214941
1155	Willi One Blood	321305
1156	Michael Badalucco	16305
1157	Ellen Greene	14028
1158	Elizabeth Regen	51345
1159	Frank Senger	54175
1160	Maïwenn	32861
1161	Jessie Keosian	59357
1162	George Martin	40057
1163	Kent Broadhurst	226817
1164	Geoffrey Bateman	127262
1165	Arsène Jiroyan	220725
1166	Joseph Malerba	132841
1167	Robert LaSardo	39201
1168	Crystal Michelle Blake	561944
1169	Randy Pearlstein	248564
1170	Fred Fischer	88692
1171	Adam Busch	298868
1172	Samy Naceri	2065
1173	Marc Andréoni	112149
1174	Dan Thorens	631965
1175	Vladimír Dlouhý	1475
1176	Ondřej Vetchý	1464
1177	Karel Heřmánek	1807
1178	Jana Dítětová	1139
1179	Josef Kemr	936
1180	Viktor Preiss	1457
1181	Jaroslava Kretschmerová	1066
1182	Monika Stará	73059
1183	Dana Bartůňková	1092
1184	Petr Nárožný	940
1185	František Vicena	29137
1186	Václav Vydra nejml.	1005
1187	Vladimír Hrubý	977
1188	Ladislav Gerendáš	976
1189	Jiří Růžička ml.	1594
1190	Václav Upír Krejčí	1585
1191	Stanislav Hájek	1733
1192	Vladimír Hrabánek	934
1193	Vlastimil Bedrna	9107
1194	David Schneider	29280
1195	Zdeněk Blažek	45844
1196	Vlastimil Přáda	34349
1197	Jiří Schmiedt	44476
1198	Michal Roneš	47761
1199	Pavel Spálený	27585
1200	Jana Robenková	29258
1201	Miro Grisa	44620
1202	Miloslav Štibich	13434
1203	Milan Charvát	32828
1204	Jan Schmid	1546
1205	Stanislav Oubram	43298
1206	Jan Šimek	43849
1207	Vladimír Švabík	40001
1208	Petr Růžička	42225
1209	Václav Král	40698
1210	Václav Štercl	40580
1211	Naděžda Prchalová-Vicenová	30868
1212	Miloslav Homola	26943
1213	Martin Hron	993
1214	Roman Holý	58963
1215	Pavel Cajzl	65387
1216	Jan Kreidl	46673
1217	Jiří Pomeje	2042
1218	Luděk Munzar	1565
1219	Tom Hulce	422
1220	F. Murray Abraham	2262
1221	Elizabeth Berridge	520
1222	Simon Callow	12966
1223	Roy Dotrice	19977
1224	Christine Ebersole	20416
1225	Jeffrey Jones	2263
1226	Charles Kay	20098
1227	Lenka Loubalová	57079
1228	Kenneth McMillan	6400
1229	Cynthia Nixon	575
1230	Vladimír Svitáček	3294
1231	Jiří Krytinář	20130
1232	Karel Effa	1537
1233	Ivan Pokorný	26528
1234	Jaroslav Mikulín	25018
1235	Jitka Molavcová	1261
1236	Aťka Janoušková	33219
1237	Zdeněk Srstka	1676
1238	Karel Gult	43748
1239	Karel Fiala	5064
1240	Zuzana Kadlecová	48364
1241	Eva Šenková	30939
1242	Ladislav Krečmer	29241
1243	Jan Blažek	42150
1244	Zdeněk Jelen	41189
1245	Hana Brejchová	1108
1246	Miriam Chytilová	1121
1247	Karel Hábl	1734
1248	Vladimír Krouský	47541
1249	Jan Kuželka	9108
1250	Jiří Lír	939
1251	Jana Musilová	26192
1252	Pavel Nový	1062
1253	Viktor Maurer	7557
1254	Jan Pohan	1704
1255	Milan Riehs	1592
1256	Jiří Vančura	43673
1257	Dana Vávrová	1077
1258	Josef Zeman	29955
1259	Milan Karpíšek	18744
1260	Radka Fidlerová	1147
1261	Helena Cihelníková	61032
1262	Zdeněk Mahler	77207
1263	Brian Pettifer	107534
1264	Kenny Baker	114641
1265	Peter DiGesu	124237
1266	Martin Cavina	124239
1267	Milan Demjanenko	124240
1268	Herman Meckler	220399
1269	Tereza Pokorná-Herzová	16277
1270	Cassie Stuart	309674
1271	Milan Aulický	385004
1272	Douglas Seale	388720
1273	John Strauss	440784
1274	Nicholas Kepros	528081
1275	Roderick Cook	552103
1276	René Gabzdyl	29623
1277	Rita Zohar	652203
1278	Jan Tříska	1679
1279	Zdeněk Svěrák	946
1280	Libuše Šafránková	1301
1281	Irena Pavlásková	3251
1282	Daniela Kolářová	1223
1283	Rudolf Hrušínský ml.	962
1284	Iva Škudrnová	71015
1285	Miroslava Škudrnová	71016
1286	Alice Šnirychová-Dvořáková	48329
1287	Petr Čepek	975
1288	Zdeněk Mucha	1668
1289	Oldřich Vlach	1702
1290	Petr Brukner	1685
1291	Karla Chadimová	1117
1292	Bořivoj Penc	29844
1293	Jiří Menzel	968
1294	Karel Kachyňa	2956
1295	Tat'ána Puttová	48396
1296	Ladislav Chroust	24973
1297	Miroslava Pleštilová	7268
1298	Václav Chalupa	1042
1299	Viktor Nejedlý ml.	39113
1300	Olga Vohryzková	337827
1301	Rudolf Hammer	46288
1302	Václav Jakoubek	1044
1303	Radoslav Budáč	57976
1304	Marek Endal	71014
1305	Michal Škrabal	55085
1306	Jaroslav Slánský	300174
1307	Jan Demeter	337829
1308	Filip Lim	337831
1309	Tomáš Krejčík	337832
1310	Jaroslav Kudláček	337833
1311	Jiří Peterka	337835
1312	Michal Lajtkep	337838
1313	Jaroslav Ježek	337839
1314	Jan Kasala	337841
1315	Tomáš Procházka	27393
1316	Marek Pelc	337842
1317	Pavel Kučera	48484
1318	Tomáš Jakl	225766
1319	Martin Pětioký	337843
1320	Ivo Hasalík	337844
1321	Karel Kmoch	41123
1322	Michal Škrabák	337846
1323	Jiří Tala	337847
1324	Jiří Prückner	337849
1325	Petra Bžunková	337851
1326	Hynek Votoček	107921
1327	Jiří Sovák	944
1328	Iva Janžurová	1013
1329	Míla Myslíková	1016
1330	Ladislav Smoljak	943
1331	František Kovářík	937
1332	Josef Abrhám	931
1333	Jiří Schmitzer	941
1334	Taťjana Medvecká	1014
1335	Milena Dvorská	1012
1336	Marie Motlová	1015
1337	Jaroslava Obermaierová	1017
1338	František Filipovský	932
1339	Jiří Hálek	935
1340	Jaroslav Weigel	7368
1341	Pavel Vondruška	1809
1342	Oldřich Velen	1622
1343	Darja Hajská	1424
1344	Václav Trégl	947
1345	Roman Čada	29812
1346	Markéta Čaňková	46817
1347	Václav Kotva	1602
1348	Tomáš Holý	933
1349	Jaroslav Vozáb	24441
1350	Eduard Pavlíček	29327
1351	Mojmír Drahota	46818
1352	Milan Bouška	46819
1353	Jan Dvořák	24914
1354	Lydie Havláková	46401
1355	Daniela Kopecká	46820
1356	Jiří Kosek	43676
1357	Gabriela Osvaldová	25011
1358	Miluše Pěnkavová	46821
1359	Leoš Slavkovský	46822
1360	David Smoljak	46691
1361	Martin Učík	34361
1362	Marcel Vašinka	1596
1363	Vlasta Žehrová	1408
1364	Václav David	46823
1365	Karel Fiala	41457
1366	Jiří Flíček	38406
1367	Marie Petrová	46824
1368	Naděžda Slavkovská	46825
1369	Eva Strychová	46826
1370	Václav Špidla	31460
1371	Miloš Švarc	38193
1372	Jaromír Vogel	46827
1373	František Zeman	41281
1374	Soňa Vlčková	44128
1375	Otto Hudrlík	44098
1376	Viktor Rindler	43682
1377	Libuše Štědrá	29197
1378	Olga Michálková	29381
1379	Milada Kadeřábková	40910
1380	Erich Fichtner	42755
1381	Květuše Zemanová	38511
1382	Josef Střecha	29278
1383	Jiřina Bílá	23453
1384	Karel Bodnár	40704
1385	Miloš Větvička	46828
1386	Miroslav Vrba	49607
1387	Martin Mahdal	24541
1388	Mark Hamill	411
1389	Carrie Fisher	542
1390	Billy Dee Williams	1905
1391	Anthony Daniels	1956
1392	David Prowse	71949
1393	Peter Mayhew	57730
1394	Frank Oz	3395
1395	Alec Guinness	409
1396	Jeremy Bulloch	118510
1397	Kenneth Colley	11775
1398	John Dicks	60230
1399	Treat Williams	82
1400	James Earl Jones	427
1401	Ian McDiarmid	17943
1402	Denis Lawson	72181
1403	Martin Dew	75764
1404	John Ratzenberger	79482
1405	Clive Revill	39235
1406	Mark Jones	160601
1407	Tom Egeland	186375
1408	John Hollis	193454
1409	Peter MacDonald	6223
1410	Mike Edmonds	279629
1411	Michael Culver	287191
1412	Milton Johns	290281
1413	Peter Roy	292713
1414	Bruce Boa	304745
1415	Jason Wingreen	312947
1416	Marjorie Eaton	354158
1417	Shaun Curry	387882
1418	Doug Robinson	488440
1419	Jack Purvis	626396
1420	Arve Juritzen	708257
1421	Jindřich Plachta	2027
1422	Jaroslav Marvan	1908
1423	František Vnouček	22960
1424	Miloš Nedbal	6715
1425	Jaroslav Průcha	21851
1426	František Kreuzmann st.	4792
1427	Ludvík Veverka	27615
1428	Vojta Novák	28440
1429	Jarmila Holmová	28504
1430	Karel Veverka	28514
1431	Ferenc Futurista	24469
1432	Ladislav Pešek	1688
1433	R. A. Strejka	26264
1434	Jana Ebertová	29001
1435	Zbyšek Olšovský	29000
1436	Karel Hošek	29002
1437	Vilém Pruner	28935
1438	Vladimír Salač	2026
1439	Marie Blažková	1100
1440	Bolek Prchal	28559
1441	Ella Nollová	26946
1442	Zvonimir Rogoz	28485
1443	Libuše Rogozová	29003
1444	Antonín Jirsa	28522
1445	Stanislav Procházka st.	30096
1446	Bohdan Lachman	28486
1447	Marie Nademlejnská	1427
1448	Karel Roden	29442
1449	Marie Vildová	27658
1450	Russell Crowe	111
1451	Guy Pearce	876
1452	David Strathairn	498
1453	Kim Basinger	185
1454	Graham Beckel	16318
1455	Simon Baker	2538
1456	Matt McCoy	6138
1457	Jim Metzler	5731
1458	Paul Guilfoyle	5762
1459	Ron Rifkin	5972
1460	Paolo Seganti	48952
1461	Steve Rankin	73459
1462	Symba	58791
1463	Bob Clendenin	32180
1464	Amber Smith	15281
1465	Shane Dixon	10561
1466	Tomas Arana	17796
1467	Michael McCleery	15659
1468	Jack Conley	33620
1469	Michael Chieffo	37766
1470	Jeremiah Birkett	14586
1471	Brenda Bakke	5849
1472	David St. James	23403
1473	Nectar Rose	53303
1474	Thomas Rosales Jr.	87816
1475	Jordan Marder	88539
1476	Brian Lally	143241
1477	Brian Bossetta	214330
1478	Allan Graf	268277
1479	John Mahon	320184
1480	Jack Knight	323933
1481	Robert Foster	338663
1482	Jeff Austin	351288
1483	Precious Chong	416875
1484	Irene Roseen	417510
1485	Steven Lambert	438936
1486	Norman Howell	480194
1487	Salim Grant	537615
1488	Gregory White	578800
1489	Kevin Patrick Kelly	584772
1490	George Yager	665829
1491	Dell Yount	559219
1492	Darrell Sandeen	700241
1493	Katharine Ross	14732
1494	Strother Martin	4844
1495	Henry Jones	7536
1496	Jeff Corey	5671
1497	George Furth	132779
1498	Cloris Leachman	5376
1499	Ted Cassidy	56059
1500	Kenneth Mars	6354
1501	Donnelly Rhodes	8805
1502	Jody Gilbert	211010
1503	Timothy Scott	182238
1504	Don Keefer	216279
1505	Pancho Córdova	276766
1506	Nelson Olmsted	320482
1507	Paul Bryar	134954
1508	Sam Elliott	5173
1509	Eric Sinclair	90348
1510	José Chávez	269535
1511	Percy Helton	133897
1512	Jorge Russek	274763
1513	José Torvay	159759
1514	Larry Barton	388611
1515	Rico Cattani	401420
1516	Alexandre Rodrigues	4779
1517	Leandro Firmino	13542
1518	Matheus Nachtergaele	4777
1519	Phellipe Haagensen	13548
1520	Seu Jorge	4778
1521	Jonathan Haagensen	20052
1522	Douglas Silva	13580
1523	Alice Braga	20380
1524	Gero Camilo	17045
1525	Paulo Lins	75172
1526	Renato de Souza	138962
1527	Jefechander Suplino	138963
1528	Emerson Gomes	138964
1529	Charles Paraventi	153896
1530	Luis Carlos Oliveira	154823
1531	Roberta Rodrigues	175192
1532	Babu Santana	179173
1533	Kiko Marques	546166
1534	Leandro Lima	576387
1535	Tulé Peak	654206
1536	Leonardo DiCaprio	769
1537	Joseph Gordon-Levitt	15553
1538	Elliot Page	16775
1539	Ken Watanabe	13592
1540	Dileep Rao	52856
1541	Tom Berenger	73
1542	Marion Cotillard	13604
1543	Pete Postlethwaite	264
1544	Lukas Haas	7663
1545	Tai-Li Lee	278359
1546	Claire Geare	194487
1547	Taylor Geare	51405
1548	Johnathan Geare	278363
1549	Tohoru Masamune	131095
1550	Júdži Okumoto	212737
1551	Earl Cameron	135889
1552	Ryan Hayward	72390
1553	Talulah Riley	53833
1554	Silvie Laguna	224020
1555	Virgile Bramly	200018
1556	Nicole Pulliam	85715
1557	Peter Basham	226062
1558	Michael Gaston	36464
1559	Michael August	56070
1560	John Ceallach	77103
1561	Adam Cole	313331
1562	Mark Fleischmann	424733
1563	Tim Kelleher	497055
1564	Carl Gilliard	507664
1565	Andrew Pleavin	549255
1566	Miranda Nolan	620551
1567	Russ Fega	620552
1568	Michael J. Fox	210
1569	Lea Thompson	592
1570	Crispin Glover	2365
1571	Thomas F. Wilson	20345
1572	Claudia Wells	52369
1573	Marc McClure	102516
1574	Wendie Jo Sperber	218965
1575	George DiCenzo	17385
1576	Frances Lee McCain	218968
1577	James Tolkan	21908
1578	J.J. Cohen	218988
1579	Casey Siemaszko	6019
1580	Billy Zane	163
1581	Courtney Gains	20019
1582	Robert Krantz	11804
1583	Huey Lewis	43033
1584	Jason Hervey	59428
1585	Lisa Freeman	88799
1586	George 'Buck' Flower	101742
1587	Norman Alden	111390
1588	Will Hare	165784
1589	Read Morgan	209140
1590	Ivy Bethune	301586
1591	Maia Brewton	302685
1592	Gary Riley	324408
1593	Deborah Harmon	370926
1594	Elsa Raven	411719
1595	Donald Fullilove	484599
1596	Charles L. Campbell	586499
1597	Hal Gausman	621915
1598	Richard Patrick	650409
1599	John McCook	704229
1600	Jennifer Connelly	327
1601	Ed Harris	109
1602	Christopher Plummer	463
1603	Paul Bettany	2400
1604	Judd Hirsch	5933
1605	Anthony Rapp	39480
1606	Vivien Cardone	31839
1607	Jason Gray-Stanford	44246
1608	Austin Pendleton	13026
1609	Josh Pais	35790
1610	Ron Howard	2943
1611	Alessandro Tanaka	77167
1612	Stelio Savante	14660
1613	Roy Thinnes	64428
1614	Scott Fernstrom	66606
1615	Rance Howard	78625
1616	Reggie Austin	118787
1617	Tanya Clarke	127534
1618	Robert Myers	214641
1619	Michael Fiore	268651
1620	Michael Esper	306045
1621	Michael Abbott Jr.	324914
1622	Bryce Dallas Howard	16273
1623	Betsy Klompus	592719
1624	Seth Gabel	39304
1625	Peter Bonilla	648537
1626	Vlasta Chramostová	1118
1627	Jana Stehnová - Čechová	13506
1628	Miloš Vognič	1605
1629	Ilja Prachař	1742
1630	Zora Božinová	1106
1631	Eduard Kohout	1600
1632	Dimitrij Rafalský	41338
1633	Jan Vlček	1604
1634	Václav Halama	30545
1635	Vladimír Menšík	1548
1636	Václav Štekl	1700
1637	Nataša Gollová	1166
1638	Helena Anýžová	35920
1639	Jana Šulcová	1073
1640	Jan Řeřicha	1603
1641	Oldřich Vízner	1599
1642	Carmen Mayerová	7262
1643	Libuše Pešková	31661
1644	Růžena Vlčková	41341
1645	Eva Ulincová	42753
1646	Věra Vlčková	1036
1647	Rudolf Iltis	40332
1648	Josef Střecha	42754
1649	František Kubíček	32384
1650	Jan Kraus	1517
1651	Alfred Růžička	42756
1652	Alena Balejová	40892
1653	Marie Hübschová	39795
1654	Pavla Břínková	42757
1655	Zuzana Rumlová	40552
1656	Olga Bušková	40153
1657	Karel Hovorka st.	29092
1658	Miloslav Šindler	29139
1659	Jaroslav Toms	41300
1660	Václav Vodák	40554
1661	František Häusler	42758
1662	Radomír Hubáček	42759
1663	Helena Kotoučová	31781
1664	Jiří Kaftan	978
1665	Theodor Kunst	42760
1666	František Poláček	42761
1667	Felix Černý	29335
1668	Karel Přinesdomů	42762
1669	Zdeněk Šmidrkal	41340
1670	Marie Rosůlková	1294
1671	Jiřina Jandová	584019
1672	Nathaniel Lees	20152
1673	Robyn Malcolm	18898
1674	Robbie Magasiva	2752
1675	Karlos Drinkwater	59447
1676	John Leigh	66935
1677	Bruce Allpress	83005
1678	Olivia Tennet	196371
1679	Dan Hennah	270736
1680	Barrie M. Osborne	351113
1681	Ben Fransham	363568
1682	Owen Black	465431
1683	Alix Bushnell	676323
1684	Samuel E. Shore	676404
1685	Kevin Costner	141
1686	Mary McDonnell	570
1687	Rodney A. Grant	20042
1688	Floyd 'Red Crow' Westerman	36167
1689	Tantoo Cardinal	5310
1690	Robert Pastorelli	7667
1691	Charles Rocket	110924
1692	Maury Chaykin	5663
1693	Tom Everett	59022
1694	Wes Studi	2525
1695	Jim Wilson	13061
1696	Michael Horton	20071
1697	Michael Spears	35605
1698	Kirk Baltz	64353
1699	Steve Reevis	88307
1700	Tony Pierce	88946
1701	Wayne Grace	227233
1702	Jimmy Herman	227518
1703	Larry Joshua	228379
1704	Donald Hotton	318791
1705	Buffalo Child	542513
1706	Joaquin Phoenix	307
1707	Connie Nielsen	308
1708	Oliver Reed	309
1709	Richard Harris	310
1710	Derek Jacobi	311
1711	Djimon Hounsou	312
1712	John Shrapnel	10804
1713	David Hemmings	6429
1714	Ralf Moeller	6586
1715	Spencer Treat Clark	17833
1716	Tommy Flanagan	32141
1717	Sven-Ole Thorsen	6427
1718	Omid Djalili	19973
1719	Tony Curran	14455
1720	David Bailie	46484
1721	Giorgio Cantarini	48974
1722	Allan Corduner	50201
1723	David Schofield	50287
1724	Nicholas McGaughey	123011
1725	Adam Levy	132258
1726	Giannina Facio-Scott	214741
1727	Alun Raglan	293406
1728	Michael Mellinger	298050
1729	Antone Pagán	446002
1730	János Bán	5065
1731	Marián Labuda st.	985
1732	Rudolf Hrušínský nejml.	964
1733	Jan Hartl	1058
1734	Stanislav Aubrecht	992
1735	Magda Křížková-Šebestová	41887
1736	Július Satinský	982
1737	Josef Somr	983
1738	František Vláčil	3323
1739	Milada Ježková	1205
1740	Ladislav Županič	7365
1741	Jitka Asterová	1085
1742	Blanka Lormanová	1247
1743	Eugen Jegorov	965
1744	Vlastimila Vlková	1390
1745	Jana Vaňková	1380
1746	Jan Hraběta	7269
1747	Jana Kušiaková	51162
1748	Milan Šteindler	3304
1749	Zuzana Burianová	29185
1750	Klára Pollertová-Trojanová	1279
1751	Vida Neuwirthová	48413
1752	Jan Kašpar	11360
1753	Vlasta Jelínková	28956
1754	Dagmar Hajná	30305
1755	Alena Fišerová	246033
1756	Adrien Brody	4307
1757	Emilia Fox	4311
1758	Michał Żebrowski	4762
1759	Ed Stoppard	64518
1760	Maureen Lipman	4310
1761	Frank Finlay	4309
1762	Jessica Kate Meyer	249202
1763	Wanja Mues	9343
1764	Thomas Kretschmann	4308
1765	Daniel Caltagirone	54310
1766	Zbigniew Zamachowski	8379
1767	Katarzyna Bargiełowska	13890
1768	Andrew Tiernan	12479
1769	Katarzyna Figura	2379
1770	Axel Prahl	16572
1771	Marian Dziędziel	24323
1772	Paweł Małaszyński	34699
1773	Andrzej Zieliński	35565
1774	Ronan Vibert	48422
1775	Borys Szyc	49064
1776	Ruth Platt	65661
1777	Popeck	67629
1778	Andrzej Pieczyński	80805
1779	Cezary Kosiński	88305
1780	Andrzej Blumenfeld	102817
1781	Udo Kroschwald	105957
1782	Krzysztof Pieczyński	132400
1783	Joanna Brodzik	133652
1784	Zofia Czerwińska	134020
1785	Andrzej Szenajch	135060
1786	Lech Mackiewicz	131958
1787	Piotr Siejka	136734
1788	Paweł Burczyk	137068
1789	Tadeusz Wojtych	143645
1790	Rafał Mohr	144046
1791	Jarosław Kopaczewski	145537
1792	Thomas Lawinky	154788
1793	Peter Rappenglück	203279
1794	Uwe Rathsam	205596
1795	Frank-Michael Köbe	220523
1796	John Keogh	235075
1797	Zbigniew Waleryś	235541
1798	Nina Franoszek	242957
1799	Morgane Polanski	247196
1800	Valentine Pelka	256625
1801	Richard Ridings	258024
1802	Cyril Shaps	303146
1803	Norbert Rakowski	312811
1804	Torsten Flach	390209
1805	Zbigniew Dziduch	395757
1806	Wojciech Smolarz	599005
1807	Roman Garbowski	614173
1808	Sharon Stone	2
1809	Joe Pesci	460
1810	James Woods	512
1811	Don Rickles	49634
1812	Alan King	16481
1813	Kevin Pollak	2211
1814	L.Q. Jones	4845
1815	Dick Smothers	307023
1816	Frank Vincent	22592
1817	John Bloom	25078
1818	Catherine Scorsese	18919
1819	Heide Keller	16745
1820	Charles Scorsese	18805
1821	Frank Adonis	16285
1822	Richard Riehle	20255
1823	Frankie Avalon	49687
1824	Joseph Rigano	53144
1825	Vinny Vella	53161
1826	Joseph P. Reidy	58052
1827	Alfonso Gomez-Rejon	70524
1828	Paul Herman	87138
1829	Clem Caserta	88690
1830	Melissa Prophet	96028
1831	Dick Warlock	102847
1832	Sam Wilson	124351
1833	Carl Ciarfalio	130338
1834	Jayne Meadows	89168
1835	Gene Ruffini	202996
1836	Steve Schirripa	208037
1837	Steve Allen	210453
1838	Stuart Nisbet	229144
1839	Joseph Bono	237370
1840	Cathy Scorsese	262673
1841	Bill Allison	320828
1842	Daniel P. Conte	341946
1843	Ronald Maccone	341947
1844	Philip Suriano	341948
1845	Pasquale Cajano	343281
1846	Craig Vincent	355331
1847	Roy Conrad	379540
1848	Anthony Russell	390617
1849	Jack Orend	391591
1850	Ffolliott Le Coque	401206
1851	Ali Pirouzkar	401270
1852	Jed Mills	475231
1853	Sly Smith	527983
1854	Joe La Due	527984
1855	Dom Angelo	527986
1856	Brian Le Baron	527987
1857	Jonathan Kraft	619452
1858	Jo-Anne Smith-Ojeil	628601
1859	Joey DePinto	649085
1860	Toni Collette	2340
1861	Olivia Williams	2351
1862	Donnie Wahlberg	6173
1863	Mischa Barton	9419
1864	Trevor Morgan	25251
1865	KaDee Strickland	17479
1866	M. Night Shyamalan	3081
1867	Angelica Page	77511
1868	Glenn Fitzgerald	85559
1869	Kate Kearney-Patch	134973
1870	Jonathan Nation	292149
1871	Peter Anthony Tambakis	297307
1872	Jeffrey Zubernis	297308
1873	Bruce Norris	297309
1874	Greg Wood	297310
1875	Sarah Ripard	594698
1876	Patrick McDade	653541
1877	Firdous Bamji	669887
1878	Edward Norton	18
1879	Beverly D'Angelo	5380
1880	Jennifer Lien	2168
1881	Ethan Suplee	6067
1882	Fairuza Balk	738
1883	Avery Brooks	2134
1884	Elliott Gould	2276
1885	Stacy Keach	5724
1886	William Russ	60594
1887	Guy Torry	52267
1888	Joe Cortese	39137
1889	Antonio David Lyons	148805
1890	Keram Malicki-Sánchez	94507
1891	Giuseppe Andrews	35644
1892	Christopher Masterson	2303
1893	Paul Le Mat	6477
1894	Allie Moss	37792
1895	Sam Sarpong	195735
1896	Jim Norton	212204
1897	Selwyn Ward	216225
1898	Anne Lambton	284965
1899	Sam Vlahos	650777
1900	Andre McCoy	702558
1901	Val Kilmer	100
1902	Jon Voight	155
1903	Diane Venora	5306
1904	Amy Brenneman	5735
1905	Ashley Judd	821
1906	Dennis Haysbert	2743
1907	Tom Noonan	1981
1908	Kevin Gage	18721
1909	Hank Azaria	2346
1910	Danny Trejo	30
1911	Henry Rollins	253
1912	Jerry Trimble	55707
1913	Tone Loc	12118
1914	Jeremy Piven	2550
1915	Bud Cort	2202
1916	Dan Martin	18397
1917	Niki Harris	50384
1918	Darin Mangan	54513
1919	Yvonne Zima	64920
1920	Farrah Forke	74957
1921	Iva Franks Singer	85101
1922	Susan Traylor	86884
1923	Rick Avery	88767
1924	Martin Ferrero	129812
1925	Begonya Plaza	150108
1926	Max Daniels	191327
1927	Steven Ford	193067
1928	Monica Lee Bellais	242019
1929	Ricky Harris	242868
1930	Terry Miller	314015
1931	Hazelle Goodman	331731
1932	Patricia Healy	351114
1933	Jimmy Star	636697
1934	Kenny Endoso	650369
1935	Cindy Katz	677421
1936	Manny Perry	651213
1937	Mark Ruffalo	5108
1938	Max von Sydow	505
1939	Michelle Williams	9405
1940	Emily Mortimer	1895
1941	Jackie Earle Haley	31677
1942	Elias Koteas	828
1943	Robin Bartlett	20375
1944	Christopher Denham	53056
1945	Nellie Sciutto	58074
1946	Joseph Sikora	58073
1947	Curtiss Cook	58069
1948	Raymond Anthony Thomas	58068
1949	Joseph McKenna	58067
1950	Ruby Jerins	58066
1951	Tom Kemp	58065
1952	Bates Wilder	58064
1953	Lars Gerhard	58063
1954	Matthew Cowles	58062
1955	Jill Larson	58060
1956	Ziad Akl	58059
1957	Dennis Lynch	58058
1958	John Porell	58054
1959	Drew Beasley	58053
1960	Bree Elrod	58042
1961	Thomas B. Duffy	58041
1962	Ken Cheeseman	58039
1963	Steve Witting	58037
1964	Michael E. Chapman	58036
1965	Keith Fluker	58035
1966	Darryl Wooten	58034
1967	Michael Byron	58033
1968	Gary Galone	58032
1969	Gabriel Hansen	58031
1970	Cassity Atkins	58030
1971	Danny Carney	58025
1972	Jeffrey Corazzini	58023
1973	Rob W. Gray	58029
1974	Guy A. Grundy	58022
1975	Cody Harter	58021
1976	Alex Hoffman	58028
1977	Daniel Lowney	58020
1978	Evalena Marie	88932
1979	Dan Marshall	58019
1980	Robert Masiello	58026
1981	Americo Presciutti	58018
1982	Eric Rollins	58017
1983	Skip Shea	58016
1984	Billy Silvia	58015
1985	Helena Bonham Carter	271
1986	Meat Loaf	272
1987	Jared Leto	276
1988	Zach Grenier	17877
1989	Holt McCallany	20179
1990	Eion Bailey	6179
1991	David Andrews	7898
1992	Eugenie Bondurant	212034
1993	Christina Cabot	41737
1994	Tim DeZarn	152267
1995	Ezra Buzzington	33274
1996	David Lee Smith	48901
1997	Thom Gossom Jr.	141482
1998	Valerie Bickford	9214
1999	Stuart Blumberg	85523
2000	Matt Winston	84662
2001	David Jean Thomas	194492
2002	Paul Carafotes	129863
2003	Michael Shamus Wiles	74192
2004	Leonard Termo	51240
2005	Van Quattro	87339
2006	Markus Redmond	44140
2007	Michael Arturo	126921
2008	Matt Cinquanta	199307
2009	Brian Tochi	21002
2010	Charlie Dell	312835
2011	Christopher John Fields	349991
2012	Paul Dillon	351680
2013	Peter Iacangelo	461796
2014	George Maguire	542204
2015	Kevin Scott Mack	630458
2016	Greg Bronson	701998
2017	Christoph Waltz	13705
2018	Kerry Washington	14437
2019	Walton Goggins	35765
2020	Dennis Christopher	69029
2021	James Remar	2439
2022	Dana Gourrier	71164
2023	Nichole Galicia	90341
2024	Laura Cayouette	40441
2025	Sammi Rotibi	80990
2026	Don Johnson	426
2027	Franco Nero	2079
2028	James Russo	2360
2029	Tom Wopat	9645
2030	Don Stroud	6509
2031	Russ Tamblyn	5389
2032	Amber Tamblyn	5207
2033	Bruce Dern	390
2034	M.C. Gainey	14370
2035	Cooper Huckabee	10638
2036	Doc Duhame	60190
2037	Jonah Hill	34777
2038	Lee Horsley	66754
2039	Zoë Bell	35816
2040	Michael Bowen	14087
2041	Ted Neeley	6391
2042	James Parks	54558
2043	Tom Savini	3356
2044	Jamal Duff	20815
2045	Michael Parks	16561
2046	John Jarratt	20872
2047	Todd Allen	15073
2048	Michael Bacall	48327
2049	Gary Grubbs	45784
2050	Glen Warner	73023
2051	Rex Linn	16508
2052	Lewis Smith	38821
2053	Misty Upham	71046
2054	Robert Carradine	5350
2055	Kimberley Drummond	78764
2056	Kasey James	80795
2057	LaTeace Towns-Cuellar	86907
2058	Dane Rhodes	96439
2059	John McConnell	78014
2060	Amari Cheatom	104686
2061	Jon Eyez	121449
2062	Evan Parke	128219
2063	Omar J. Dorsey	143829
2064	Christopher Berry	148125
2065	Ritchie Montgomery	148135
2066	Ato Essandoh	154126
2067	Louise Stratten	164006
2068	Mark Ulano	192511
2069	Kim Collins	205460
2070	Kesha Bullard	205466
2071	Deborah Ayorinde	212776
2072	J.D. Evermore	197999
2073	Keith Jefferson	220561
2074	Craig Stark	220563
2075	Belinda Owino	220568
2076	Jacquelyn Twodat Jackson	221435
2077	David Steen	244318
2078	Escalante Lundy	244538
2079	Miriam F. Glover	244540
2080	Edrick Browne	254391
2081	Elton LeBlanc	214334
2082	Marcus Henderson	338826
2083	Danièle Watts	354197
2084	Marsha Stephanie Blake	477543
2085	Sharon Pierre-Louis	603394
2086	Samantha Smith	627710
2087	Jake Garber	629927
2088	Mel Gibson	1
2089	Sophie Marceau	567
2090	Patrick McGoohan	445
2091	Catherine McCormack	7423
2092	Angus Macfadyen	17937
2093	Brendan Gleeson	4836
2094	David O'Hara	36770
2095	Ian Bannen	5673
2096	James Cosmo	15101
2097	Sean McGinley	9552
2098	Ralph Riach	20252
2099	Brian Cox	2200
2100	Peter Hanly	21687
2101	Barry McGovern	21789
2102	John Kavanagh	21734
2103	Alun Armstrong	17798
2104	Peter Mullan	7836
2105	Gerard McSorley	18770
2106	David Gant	49302
2107	Alex Norton	49533
2108	Jer O'Leary	77233
2109	Stephen Billington	112662
2110	Mhairi Calvey	132893
2111	Rupert Vansittart	219917
2112	William Scott-Masson	225896
2113	Jeanne Marine	291065
2114	Mal Whyte	302271
2115	James Robinson	307402
2116	Sean Lawlor	307403
2117	Gerda Stevenson	307407
2118	John Murtagh	307413
2119	Julie Austin	307876
2120	Malcolm Tienery	309660
2121	Bernard Horsfall	323684
2122	Richard Leaf	328803
2123	Dean Lopata	391084
2124	Martin Dunne	436927
2125	Daniel Coll	512805
2126	John Burns	550504
2127	Stephen J. Austin	667824
2128	Hilary Swank	1800
2129	Anthony Mackie	20169
2130	Jay Baruchel	18679
2131	Mike Colter	18703
2132	Lucia Rijker	18916
2133	Brían F. O'Byrne	8672
2134	Margo Martindale	17698
2135	Riki Lindhome	39515
2136	Michael Peña	27855
2137	Marco Rodríguez	64785
2138	Benito Martinez	56197
2139	Michael Bentt	20759
2140	Marcus Chait	46925
2141	Morgan Eastwood	49997
2142	Tom McCleister	69385
2143	Kimberly Estrada	117894
2144	Susan Krebs	130710
2145	Ned Eisenberg	243497
2146	Brian T. Finney	248784
2147	Jason Williams	250155
2148	Ming Lo	262248
2149	Miguel Pérez	197663
2150	Bruce MacVittie	370644
2151	Steven M. Porter	400494
2152	Jim Cantafio	471014
2153	Robin Williams	510
2154	Ben Affleck	94
2155	Stellan Skarsgård	157
2156	Minnie Driver	537
2157	Casey Affleck	6027
2158	Cole Hauser	2244
2159	Alison Folland	12007
2160	Vik Sahay	35381
2161	Scott William Winters	97790
2162	Philip Williams	552032
2163	Kevin Rushton	526088
2164	George Plimpton	131671
2165	Richard Fitzpatrick	152214
2166	David Eisner	324374
2167	James Allodi	40476
2168	Paul Essiembre	59563
2169	Harmony Korine	3793
2170	Dale Resteghini	320157
2171	Jay Yoo	50944
2172	Roberto Benigni	745
2173	Nicoletta Braschi	4767
2174	Giustino Durano	19984
2175	Marisa Paredes	5707
2176	Verena Buratti	20383
2177	Gina Rovere	23545
2178	Andrea Tidona	12478
2179	Omero Antonutti	6757
2180	Richard Sammel	56354
2181	Lidia Alfonsi	84747
2182	Hannes Hellmann	175305
2183	Pietro De Silva	223571
2184	Francesco Guzzo	237352
2185	Giuliana Lojodice	274966
2186	Dirk K. van den Berg	397566
2187	Claudio Alfonsi	511418
2188	Sergio Bini Bustric	503414
2189	Hugh Jackman	69
2190	Piper Perabo	7949
2191	Rebecca Hall	40054
2192	Scarlett Johansson	2411
2193	David Bowie	159
2194	Daniel Davis	17059
2195	Christopher Neame	21814
2196	Mark Ryan	53340
2197	Roger Rees	9361
2198	Jamie Harris	18364
2199	Ricky Jay	13554
2200	James Otis	33288
2201	Chris Cleveland	105359
2202	William Morgan Sheppard	120019
2203	Jim Piddock	239779
2204	Ron Perkins	282468
2205	Kevin Will	298024
2206	Edward Hibbert	312786
2207	John B. Crye	568465
2208	Jodi Bianca Wise	613083
2209	Enn Reitel	677496
2210	Danny Glover	403
2211	Gary Busey	117
2212	Mitchell Ryan	17423
2213	Tom Atkins	11752
2214	Darlene Love	289380
2215	Traci Wolfe	289381
2216	Damon Hines	289382
2217	Ebonie Smith	289383
2218	Jackie Swanson	289384
2219	Ed O'Ross	8111
2220	Mic Rodgers	3053
2221	Joan Severance	7802
2222	Don Gordon	77694
2223	Blackie Dammett	96715
2224	Steve Kahan	128984
2225	Paul Tuerpe	209148
2226	Jack Thibeau	228497
2227	Jimmie F. Skaggs	230970
2228	Lenny Juliano	425606
2229	Henry Brown	478983
2230	Jason Ronard	480292
2231	Lycia Naff	529671
2232	Michael Shaner	544304
2233	Patrick Cameron	652860
2234	Shelley Duvall	2096
2235	Danny Lloyd	13418
2236	Barry Nelson	39538
2237	Philip Stone	21891
2238	Joe Turkel	37193
2239	Anne Jackson	103835
2240	Tony Burton	23221
2241	Lia Beldam	70330
2242	Vivian Kubrick	33925
2243	Billie Gibson	123647
2244	Lisa Burns	123650
2245	Louise Burns	123651
2246	Barry Dennen	131681
2247	David Baxt	251067
2248	Manning Redwood	338830
2249	Bunny Seaman	529948
2250	George Holdcroft	529950
2251	Peter McNamara	619310
2252	Rami Malek	53849
2253	Lucy Boynton	170745
2254	Gwilym Lee	115651
2255	Ben Hardy	170464
2256	Joseph Mazzello	1862
2257	Aidan Gillen	14815
2258	Allen Leech	15628
2259	Tom Hollander	18731
2260	Mike Myers	451
2261	Aaron McCusker	160053
2262	Meneka Das	427845
2263	Ace Bhatti	145282
2264	Priya Blackburn	427855
2265	Dermot Murphy	339362
2266	Dickie Beau	427858
2267	Tim Plester	58929
2268	Jack Roth	99700
2269	Max Bennett	305254
2270	Neil Fox-Roberts	427861
2271	Kieran Hardcastle	88473
2272	Bruce Mackinnon	304675
2273	Michelle Duncan	68833
2274	Matt Greenwood	441584
2275	Jess Radomska	291252
2276	Philip Andrew	427865
2277	John Ottman	3029
2278	Adam Lambert	60141
2279	Freddie Mercury	16535
2280	Morten Bekkenes	666131
2281	Anthony Perkins	183
2282	Vera Miles	188
2283	John Gavin	189
2284	Janet Leigh	191
2285	John McIntire	53209
2286	Simon Oakland	11423
2287	Frank Albertson	92951
2288	Patricia Hitchcock	4301
2289	Vaughn Taylor	134046
2290	Lurene Tuttle	108360
2291	John Anderson	50293
2292	Mort Mills	134047
2293	Alfred Hitchcock	2935
2294	Jeanette Nolan	97387
2295	Virginia Gregg	134048
2296	Ted Knight	95228
2297	Sam Flint	206690
2298	George Eldredge	208985
2299	Francis De Sales	314640
2300	Hans Moebus	407213
2301	Don Ross	425411
2302	Pat McCaffrie	442997
2303	Peter Cushing	342
2304	Garrick Hagon	33110
2305	Joe Johnston	3495
2306	Linda Jones	54216
2307	Phil Tippett	15778
2308	Shane Rimmer	135320
2309	Phil Brown	214599
2310	Angus MacInnes	227278
2311	Eddie Byrne	241933
2312	Don Henderson	273690
2313	Leslie Schofield	279346
2314	George Roubicek	292229
2315	Drewe Henley	298779
2316	Fred Wood	298829
2317	Alf Mangan	298886
2318	Jack Klaff	304346
2319	Graham Ashley	305967
2320	Rick McCallum	341841
2321	Jeremy Sinden	347690
2322	Morgan Upton	354630
2323	Richard LeParmentier	371082
2324	Scott Beach	389455
2325	Tiffany Hillkurtz	473398
2326	Steve 'Spaz' Williams	20732
2327	Doug Beswick	628300
2328	Charlie Sheen	487
2329	Forest Whitaker	275
2330	Francesco Quinn	24366
2331	Richard Edson	9472
2332	Kevin Dillon	4602
2333	Keith David	8090
2334	Johnny Depp	331
2335	Mark Moses	4876
2336	Chris Pedersen	75329
2337	Tony Todd	4596
2338	Bob Orwig	36165
2339	Oliver Stone	3093
2340	Chris Castillejo	36166
2341	Warren McLean	74401
2342	Henry Strzalkowski	74408
2343	Corey Glover	325806
2344	Nick Nicholson	74418
2345	Eric Hahn	74719
2346	Brad Cassini	126181
2347	Paul Sanchez	270321
2348	H. Gordon Boos	330175
2349	David Neidorf	348281
2350	Corkey Ford	398875
2351	Reggie Johnson	405533
2352	Ivan Kane	405534
2353	James Terry McIlvain	488631
2354	Roger Carel	6739
2355	Pierre Tornade	5866
2356	Henri Labussière	6738
2357	Henri Poirier	23867
2358	Pierre Tchernia	39231
2359	Henri Virlogeux	67340
2360	Odette Laure	13245
2361	Alice Sapritch	60391
2362	Nicole Vervil	68770
2363	Oliver Postgate	78337
2364	Pascal Mazzotti	81167
2365	Roger Lumont	81921
2366	Bernard Lavalette	83492
2367	Gérard Hernandez	83564
2368	Nicole Jonesco	88130
2369	Jacques Morel	97077
2370	Bill Oddie	127211
2371	Georges Atlas	165798
2372	Gisèle Grimm	196066
2373	Claude Bertrand	191958
2374	Caroline Clerc	192024
2375	Michael Kilgarriff	279584
2376	Gregory Peck	873
2377	Audrey Hepburn	811
2378	Eddie Albert	11200
2379	Hartley Power	11436
2380	Harcourt Williams	11488
2381	Margaret Rawlings	11622
2382	Tullio Carminati	96821
2383	Paolo Carlini	21587
2384	Claudio Ermelli	94164
2385	Paola Borboni	71366
2386	Alfredo Rizzo	15190
2387	Gorella Gori	78283
2388	Armando Annuale	298916
2389	Laura Solari	73020
2390	Tania Weber	73024
2391	Marco Tulli	81385
2392	Mimmo Poli	123043
2393	Vittoria Crispo	246246
2394	Maurizio Arena	259880
2395	Silvio Bagolini	299222
2396	Gildo Bocci	322335
2397	Franco Corsaro	338322
2398	Gianna Segale	353926
2399	Joop van Hulzen	424274
2400	Marilyn Monroe	860
2401	Tony Curtis	120
2402	Jack Lemmon	128
2403	George Raft	889
2404	Pat O'Brien	4218
2405	Joe E. Brown	66396
2406	Nehemiah Persoff	17419
2407	Joan Shawlee	182178
2408	Billy Gray	218830
2409	George E. Stone	71571
2410	Dave Barry	209696
2411	Mike Mazurki	60426
2412	Harry Wilson	216503
2413	Steve Carruthers	340667
2414	Noble 'Kid' Chissell	320000
2415	Marian Collier	300465
2416	Paul Cristo	341985
2417	James Dime	223371
2418	Franklyn Farnum	180041
2419	Duke Fishman	258613
2420	Paul Frees	135805
2421	Joe Gray	277863
2422	Sam Harris	135753
2423	Shep Houghton	326272
2424	John Indrisano	201754
2425	Tom Kennedy	134806
2426	Carl M. Leviness	265040
2427	Hank Mann	250671
2428	Tiger Joe Marsh	344602
2429	Jack Mather	268622
2430	Frank Mclure	299400
2431	William H. O'Brien	133432
2432	Jack Perry	223367
2433	John Roy	342781
2434	Cosmo Sardo	181086
2435	Scott Seaton	291240
2436	Fred Sherman	212933
2437	Carl Sklover	348726
2438	Bert Stevens	134899
2439	Ralph Volkie	324873
2440	Tito Vuolo	301050
2441	Sandra Warner	306087
2442	Grace Lee Whitney	2131
2443	Danny Richards Jr.	400399
2444	Laurie Mitchell	405576
2445	Sid Troy	419314
2446	George Ford	425984
2447	Sam Bagley	432725
2448	Stuart Hall	458545
2449	King Lockwood	465771
2450	Billy Wayne	496093
2451	Mads Mikkelsen	4929
2452	Thomas Bo Larsen	7814
2453	Annika Wedderkopp	86412
2454	Lasse Fogelstrøm	86413
2455	Susse Wold	84682
2456	Anne Louise Hassing	86414
2457	Lars Ranthe	93952
2458	Alexandra Rapaport	14220
2459	Sebastian Bull Sarning	166202
2460	Steen Ordell Guldbrandsen	283987
2461	Daniel Engstrup	283778
2462	Troels Thorsen	282891
2463	Søren Rønholt	283988
2464	Hana Shuan	283989
2465	Jytte Kvinesdal	274386
2466	Josefine Gråbøl	283990
2467	Bjarne Henriksen	24227
2468	Nicolai Dahl Hamilton	283991
2469	Øyvind Hagen-Traberg	283992
2470	Allan Wibor Christensen	283993
2471	Rikke Bergmann	285293
2472	Rasmus Lind Rubin	285290
2473	Frank Rubæk	285297
2474	Jakob Højlev Jørgensen	119274
2475	Nina Christrup	393895
2476	Karina Fogh Holmkjær	374481
2477	Thomas Ravn	657674
2478	Martin Boserup	467110
2479	Ole Dupont	207732
2480	Thomas Vinterberg	3627
2481	Victor Jory	5498
2482	Anthony Zerbe	31560
2483	Robert Deman	88078
2484	Woodrow Parfrey	86584
2485	Bill Mumy	2155
2486	George Coulouris	77647
2487	Ratna Assan	90095
2488	William Smithers	97964
2489	Gregory Sierra	115634
2490	Vic Tayback	89475
2491	Mills Watson	112153
2492	Richard Farnsworth	254
2493	Dalton Trumbo	45035
2494	Len Lesser	83729
2495	Ron Soble	134498
2496	Barbara Morrison	134499
2497	Don Hanmer	134501
2498	E.J. André	134502
2499	Richard Angarola	134508
2500	Fred Sadoff	134511
2501	Allen Jaffe	134517
2502	Liam Dunn	134522
2503	Jack Denbo	401421
2504	Billy M. Greene	450255
2505	Marie Hradilková	26875
2506	Martin Hradilek	43057
2507	Naďa Urbánková	1371
2508	Zdeněk Blažek	1648
2509	Alois Liškutín	26331
2510	František Řehák	971
2511	Rudolf Kalina	29252
2512	Miloš Šustr	43844
2513	Jan Waldmann	44031
2514	Alois Vachek	40912
2515	Vlastimil Brodský	958
2516	Miloň Čepelka	7252
2517	Ellen Burstyn	1815
2518	Marlon Wayans	2193
2519	Christopher McDonald	293
2520	Louise Lasser	7400
2521	Mark Margolis	7398
2522	Ajay Naidu	2199
2523	Sean Gullette	20050
2524	Ben Shenkman	23395
2525	Dylan Baker	13309
2526	Jimmie Ray Weeks	18459
2527	Lianna Pai	40056
2528	Darren Aronofsky	4252
2529	Hubert Selby Jr.	72207
2530	Scott Franklin	110931
2531	Nina Zavarin	197460
2532	Peter Maloney	202632
2533	Gregg Bello	208358
2534	Olga Merediz	262842
2535	Bill Buell	292764
2536	Suzanne Shepherd	204578
2537	Ami Goodheart	318884
2538	James Chinlund	323265
2539	Henry Stram	323988
2540	Jack O'Connell	365410
2541	Denise Dowse	407687
2542	Marcia Jean Kurtz	210333
2543	Gabriel Byrne	369
2544	Stephen Baldwin	44
2545	Chazz Palminteri	454
2546	Benicio Del Toro	388
2547	Suzy Amis	5148
2548	Giancarlo Esposito	396
2549	Dan Hedaya	1933
2550	Paul Bartel	20755
2551	Christopher McQuarrie	8681
2552	Clark Gregg	38892
2553	Michelle Clunie	71501
2554	Louis Lombardi	83021
2555	Christine Estabrook	203424
2556	Vito D'Ambrosio	289386
2557	Jack Shearer	352488
2558	Gene Lythgow	437401
2559	Bert Williams	440778
2560	Elo Romančík	5806
2561	Vladimír Šmeral	974
2562	Soňa Valentová	1376
2563	Lola Skrbková	1315
2564	Jiřina Štěpničková	1332
2565	Miriam Kantorková	1210
2566	Lubor Tokoš	7721
2567	Blažena Holišová	1029
2568	Jiří Holý	1577
2569	Rudolf Krátký	38140
2570	Čestmír Řanda st.	1459
2571	Blanka Waleská	1431
2572	Martin Růžek	1684
2573	Josef Bláha	1911
2574	Eduard Cupák	7833
2575	Gustav Opočenský	1498
2576	Jiří Hurta	31442
2577	Štěpán Zemánek	23159
2578	František Holar	21343
2579	Zdeněk Kryzánek	1660
2580	Miloš Willig	21932
2581	Josef Mixa	21799
2582	Josef Elsner	22460
2583	Karel Bělohradský	1574
2584	Karel Čížek	37881
2585	Zdeněk Dohnal	38174
2586	Marie Cingrošová	41144
2587	Miloš Hájek	32376
2588	Zdeněk Hodr	1656
2589	Zbyněk Jirmář	41145
2590	Vladimír Navrátil	29225
2591	Jindřiška Gabriela Preissová	29232
2592	Jan Prokeš	48267
2593	Boleslava Svobodová	36983
2594	Martin Kapoun	41147
2595	I. Horká	41148
2596	E. Lázničková	41149
2597	J. Odehnalová	41150
2598	M. Svoboda	41151
2599	J. Umlauf	41152
2600	Zdeněk Derka	41153
2601	Vladimír Šebesta	41154
2602	I. Bobková	41155
2603	J. Janovcová	41156
2604	O. Mazůrek	41157
2605	M. Ždánská	41158
2606	Otakar Rademacher	29221
2607	J. Bartoš	41160
2608	L. Kot	41159
2609	Yvonne Kodoňová	34848
2610	L. Divišová	41161
2611	E. Maragnová	41162
2612	S. Procházková	41163
2613	R. Propperová	41164
2614	L. Šindlerová	41165
2615	Gisela Mattishent	247946
2616	Zbyněk Bruthans	46633
2617	Elizabeth McGovern	4944
2618	Tuesday Weld	14534
2619	Burt Young	16659
2620	William Forsythe	2440
2621	Darlanne Fluegel	64278
2622	James Hayden	10626
2623	Scott Schutzman Tiler	62367
2624	Rusty Jacobs	62368
2625	Brian Bloom	8676
2626	Adrian Curran	62369
2627	Chuck Low	47944
2628	Scott Coffey	15099
2629	Olga Karlatos	64399
2630	Salvatore Billa	91564
2631	Cliff Cudney	101641
2632	Noah Moazezi	124322
2633	Mike Monetti	124323
2634	Frankie Caserta	124324
2635	Gerritt Debeer	124325
2636	Estelle Harris	195736
2637	Richard Foronjy	212690
2638	Arnon Milchan	242385
2639	Robert Harper	262540
2640	Jerry Strivelli	312126
2641	Baxter Harris	319358
2642	Joey Faye	395716
2643	Zora Ulla Keslerová	23505
2644	Gerard Murphy	480297
2645	Frank Gio	528454
2646	Tandy Cronyn	578910
2647	Dutch Miller	631834
2648	Amy Ryder	709944
2649	Petr Herrmann	1625
2650	Vladimír Bejval	1623
2651	Josef Lukáš	1627
2652	Zdeněk Husták	1626
2653	Bedřich Šetena	31845
2654	Joel Edgerton	25126
2655	Nick Nolte	133
2656	Jennifer Morrison	32184
2657	Noah Emmerich	13671
2658	Kevin Dunn	7794
2659	Denzel Whitaker	56002
2660	Carlos Miranda	78217
2661	Frank Grillo	31546
2662	Gavin O'Connor	9023
2663	Jeff Hochendoner	34397
2664	Maximiliano Hernández	70728
2665	Vanessa Martinez	51423
2666	Kurt Angle	72051
2667	Jake McLaughlin	73476
2668	Brenna Roth	77388
2669	Anthony Tambakis	73540
2670	Jason Baker	95679
2671	Bryan Callen	217889
2672	Jace Jeanes	255176
2673	Lloyd Booker	150398
2674	Kevin Christy	259921
2675	Manuel Espinosa	290085
2676	Marquis Wood	468066
2677	Laura Chinn	486245
2678	Fernando Chien	542959
2679	Chad Bruns	601412
2680	Rick Montgomery Jr.	670244
2681	Ray Liotta	314
2682	Lorraine Bracco	290
2683	Paul Sorvino	2784
2684	Mike Starr	16621
2685	Debi Mazar	7403
2686	Christopher Serrone	65685
2687	Elaine Kagan	20469
2688	Beau Starr	9383
2689	Kevin Corrigan	19954
2690	Michael Imperioli	8271
2691	Tony Sirico	9121
2692	Joe D'Onofrio	15105
2693	Illeana Douglas	12169
2694	Edward McDonald	71502
2695	Vincent Pastore	9122
2696	James Quattrochi	14396
2697	Vincent Gallo	3540
2698	Peter Onorati	18780
2699	Tobin Bell	17807
2700	Isiah Whitlock Jr.	39067
2701	Anthony Caso	47919
2702	Steve Forleo	88593
2703	Johnny Williams	133727
2704	Marianne Leone	220954
2705	Elizabeth Whitcraft	224267
2706	Tony Darrow	225697
2707	Gene Canfield	228381
2708	Billy L. Sullivan	259782
2709	Gina Mastrogiacomo	290754
2710	Frank Pellegrino	301158
2711	Frank Cassini	302901
2712	Frank DiLeo	341941
2713	Margo Winkler	341944
2714	Welker White	341945
2715	Katherine Wallach	341949
2716	Bo Dietl	344166
2717	Stella Keitel	344175
2718	Dominique DeVito	344184
2719	Tony Ellis	344187
2720	Berlinda Tolbert	349480
2721	Michael Citriniti	366608
2722	Lisa Dapolito	373373
2723	Peter Hanlon	389285
2724	Henny Youngman	398689
2725	Angela Pietropinto	405450
2726	Mark Evan Jacobs	503328
2727	John Di Benedetto	547672
2728	Edward D. Murphy	564844
2729	Nancy Cassaro	590316
2730	Ken Waters	656467
2731	Matthew T. Gitkin	638658
2732	Vlasta Burian	1445
2733	Ladislav Hemmer	1499
2734	Adina Mandlová	9324
2735	Čeněk Šlégl	3301
2736	Anna Gabrielová	28998
2737	Antonín Streit	27428
2738	Karel Postranecký	27053
2739	Emanuel Kovařík	28600
2740	Antonín Soukup	28611
2741	Marta Školudová	29070
2742	Václav Mlčkovský	27738
2743	Václav Menger	28100
2744	Betty Kysilková	1243
2745	František Lašek	27267
2746	Karel Němec	27542
2747	Jaroslav Tryzna	28487
2748	Ferdinand Jarkovský	28526
2749	Marie Ježková	1204
2750	Rudolf Antonín Dvorský	28725
2751	Růžena Kurelová	564116
2752	Rashida Jones	25414
2753	Joan Cusack	531
2754	Jason Schwartzman	15737
2755	Mila Brener	157929
2756	Tucker Meek	401193
2757	Pierce Pope	354371
2758	Will Sasso	29837
2759	Norm MacDonald	20167
2760	Teddy Blum	488735
2761	Alyson Reed	58862
2762	Dee Dee Rescher	198574
2763	Helen Slayton-Hughes	532417
2764	Sam McMurray	20182
2765	Cathy Cavadini	223648
2766	Kendall Joy Hall	537684
2767	Hailey Hermida	540779
2768	Lucian Perez	629764
2769	Bill Chott	662111
2770	Sydney Brower	688787
2771	Eddie Murphy	6
2772	Cameron Diaz	123
2773	John Lithgow	437
2774	Vincent Cassel	2024
2775	Jim Cummings	4525
2776	Simon J. Smith	16613
2777	Conrad Vernon	9186
2778	Ian Abercrombie	5664
2779	Andrew Adamson	8902
2780	Chris Miller	27299
2781	Christopher Knights	48802
2782	Cody Cameron	81299
2783	Jean-Paul Vignon	298523
2784	Charles Dennis	314985
2785	Guillaume Aretos	579179
2786	Patrick Pinney	654105
2787	Richard Steven Horvitz	698652
2788	Hope Levy	709484
2789	Annette Bening	519
2790	Thora Birch	1846
2791	Wes Bentley	1842
2792	Mena Suvari	1848
2793	Peter Gallagher	106
2794	Allison Janney	1847
2795	Chris Cooper	1844
2796	Scott Bakula	1841
2797	Sam Robards	1845
2798	Ara Celi	12376
2799	John Cho	1843
2800	Sue Casey	4842
2801	Joel McCrary	204756
2802	Bruce Cohen	205606
2803	Barry Del Sherman	242621
2804	Fort Atkinson	252362
2805	Marissa Jaret Winokur	405219
2806	Matthew Kimbrough	503331
2807	Kent Faulcon	651021
2808	Ewan McGregor	15
2809	Hayden Christensen	1955
2810	Jimmy Smits	493
2811	Keisha Castle-Hughes	8204
2812	Jay Laga'aia	52360
2813	Temuera Morrison	2562
2814	Ahmed Best	53513
2815	Claudia Karvan	13906
2816	Rena Owen	2561
2817	Genevieve O'Reilly	67747
2818	Matthew Wood	53392
2819	Bai Ling	11510
2820	Caroline de Souza Correa	49793
2821	George Lucas	2989
2822	Oliver Ford Davies	1950
2823	David Bowers	65825
2824	Wayne Pygram	65996
2825	Goran D. Kleut	76260
2826	Christopher Kirby	79551
2827	Silas Carson	85837
2828	Rohan Nichol	199693
2829	Bonnie Piesse	219385
2830	Roger Guyett	219402
2831	David Stiff	257110
2832	Trisha Noble	313158
2833	Masa Yamaguchi	316027
2834	Kee Chan	499981
2835	Aaliyah Williams	556633
2836	David Acord	613206
2837	Rob Coleman	629634
2838	Katie Lucas	629640
2839	John Knoll	629824
2840	Matt Sloan	648644
2841	Jason Statham	2517
2842	Stephen Graham	34974
2843	Alan Ford	33800
2844	Rade Šerbedžija	2740
2845	Robbie Gee	36912
2846	Lennie James	36192
2847	Vinnie Jones	5381
2848	Jason Flemyng	2375
2849	Ewen Bremner	319
2850	William Beck	63939
2851	Julianne Nicholson	21119
2852	Guy Ritchie	3050
2853	Dave Legeno	70085
2854	Goldie	77719
2855	Sorcha Cusack	130355
2856	Velibor Topic	133434
2857	Charles Cork	142373
2858	Ade	202997
2859	Andy Beckwith	225121
2860	Liam McMahon	234944
2861	Mike Reid	280784
2862	Chuck Julian	304261
2863	Adam Fogerty	337333
2864	James Warren	507894
2865	Sam Douglas	665974
2866	Julia Stiles	2311
2867	Paddy Considine	8890
2868	Édgar Ramírez	25983
2869	Albert Finney	278
2870	Joan Allen	1945
2871	Tom Gallop	209162
2872	Joey Ansah	114197
2873	Dan Fredenburgh	178713
2874	Lucy Liemann	230743
2875	Arkie Reece	74062
2876	Mark Bazeley	62475
2877	Scott Adkins	15382
2878	Michael Ahl	58445
2879	Chris Mansfield	41984
2880	Franka Potente	1998
2881	James Schram	58321
2882	Ben Youcef	194628
2883	Branko Tomović	242534
2884	Trevor St. John	252353
2885	Jeffrey Lee Gibson	301377
2886	Marina Blake	320594
2887	Luis Mottola	453903
2888	Albert Jones	494705
2889	Laurentiu Possa	517866
2890	Michael Wildman	697587
2891	Piotr Trojan	235551
2892	Agata Kulesza	80610
2893	Dariusz Chojnacki	329320
2894	Jan Frycz	49043
2895	Łukasz Lewandowski	436632
2896	Mikołaj Chroboczek	243758
2897	Andrzej Konopka	238775
2898	Julian Świeżewski	365958
2899	Magdalena Różczka	49486
2900	Adam Nawojczyk	366252
2901	Adam Kupaj	459219
2902	Piotr Szekowski	468899
2903	Artur Steranko	68155
2904	Elżbieta Okupska	9354
2905	Bartosz Bielenia	233412
2906	Ewelina Starejki	454664
2907	Sebastian Stankiewicz	151374
2908	Dariusz Toczek	23412
2909	Stanisław Linowski	469060
2910	Jacek Beler	369505
2911	Małgorzata Rudzka	439730
2912	Sebastian Pawlak	243772
2913	Magdalena Osińska	460546
2914	Nel Kaczmarek	468409
2915	Halina Bartosik	598693
2916	Elżbieta Bienias	598694
2917	Mateusz Bożek	466786
2918	Arkadiusz Brykalski	421113
2919	Szymon Bujak	598695
2920	Wiesław Cichy	317381
2921	Noah Culbreth	526242
2922	Katarzyna Cynke	136062
2923	Michał Czernecki	239310
2924	Mariusz Dzuryk	598696
2925	Amelia Dążałowicz	598697
2926	Marcin Fabisiak	445908
2927	Slawomir Federowicz	45167
2928	Paweł Ferens	372317
2929	Sebastian Figat	474968
2930	Joanna Gonschorek	372176
2931	Krzysztof Grabowski	369368
2932	Adam Hutyra	369669
2933	Piotr Jamróg	598698
2934	Aleksander Janiszewski	369069
2935	Mila Jankowska	598699
2936	Kaja Karpa	598700
2937	Hanna Knyziak	598701
2938	Andrzej Kordos	598702
2939	Ireneusz Kozioł	371743
2940	Małgorzata Kozłowska	447604
2941	Bartłomiej Krat	369673
2942	Mirosław Kropielnicki	371853
2943	Ewa Kurek	578735
2944	Szymon Kuśmider	369633
2945	Anita Lotko	598703
2946	Piotr Łukaszczyk	369654
2947	Piotr Łukawski	371941
2948	Paweł Łęski	441381
2949	Wojciech Machnicki	445379
2950	Konrad Marszałek	368434
2951	Mateusz Malecki	534801
2952	Tomasz Namiotko	598704
2953	Piotr Nowak	240273
2954	Stanisław Osior	475434
2955	Feliks Probola	457467
2956	Agata Pruchniewska	368503
2957	Adam Przybylski	537066
2958	Grzegorz Przybył	371785
2959	Emilia Puczko	598705
2960	Agnieszka Radzikowska	402340
2961	Iwo Rajski	421157
2962	Jacek Reda	458406
2963	Bożena Rudnik	555811
2964	Antoni Sałaj	459546
2965	Jacek Sałaj	598706
2966	Adam Sikora	507286
2967	Zofia Stafiej	546771
2968	Ireneusz Tatko	598707
2969	Tomasz Tarnowski	598708
2970	Kamila Urzędowska	469850
2971	Juliusz Krzysztof Warunek	372188
2972	Mariusz Węgłowski	557295
2973	Nikodem Wodzyński	457318
2974	Natalia Wolska	421114
2975	Tymoteusz Woźniak	598709
2976	Szymon Wróblewski	598710
2977	Daniel Wrzosek	598711
2978	Krzysztof Zarzycki	598712
2979	Małgorzata Zawadzka	553308
2980	Tomasz Komenda	598713
2981	Marek Dyjak	468410
2982	Piotr Więcławski	366246
2983	Warwick Davis	9003
2984	Richard Marquand	3001
2985	Debbie Lee Carrington	8904
2986	John Altman	11203
2987	Paul Brooke	23217
2988	Tony Cox	5984
2989	Richard Jones	17905
2990	Deep Roy	30368
2991	Luis De Jesus	39465
2992	Felix Silla	56429
2993	Richard Driscoll	15513
2994	Phil Fondacaro	62382
2995	Dermot Crowley	78982
2996	Hilton McRae	112829
2997	Caroline Blakiston	117443
2998	Sebastian Shaw	213314
2999	Michael Carter	224858
3000	Ernie Fosselius	230384
3001	Robert Watts	260700
3002	Tom Mannion	280368
3003	Claire Davenport	285194
3004	Anthony Lang	296243
3005	Anthony Smee	297544
3006	Daniel Frishman	362945
3007	Kevin Thompson	540201
3008	Peter Allen	586642
3009	Vivienne Chandler	587470
3010	Ronny Cush	604314
3011	Monty Jordan	648660
3012	Tim Rose	665446
3013	Anthony Gonzalez	352648
3014	Gael García Bernal	5097
3015	Benjamin Bratt	5968
3016	Alanna Ubach	17482
3017	Edward James Olmos	286
3018	Gabriel Iglesias	108919
3019	Jaime Camil	52919
3020	Cheech Marin	29
3021	Alfonso Arau	4026
3022	Lombardo Boyar	190157
3023	Sofía Espinosa	54024
3024	Renee Victor	130016
3025	Selene Luna	86543
3026	Carla Medina	446550
3027	Jan Werich	2018
3028	Terezie Brzková	1113
3029	Irena Kačírková	4785
3030	Stella Májová	24511
3031	Miroslav Horníček	2335
3032	Lubomír Lipský st.	981
3033	Miloš Kopecký	979
3034	Zdeněk Dítě	1654
3035	Josef Pehr	22811
3036	Vladimír Ráž	9185
3037	František Černý	1633
3038	Fanda Mrázek	21805
3039	František Hanus	21688
3040	Gustav Hrdlička	27579
3041	Eman Fiala	1888
3042	Josef Bartůněk	22839
3043	Josef Bělský	27748
3044	Vladimír Jedenáctík	29101
3045	Vladimír Klemens	29100
3046	Zdeněk Kříž	22799
3047	Jiří Valenta	29103
3048	Marcela Sedláčková	29097
3049	Karla Svobodová	29102
3050	Slávka Rosenbergová	1293
3051	Eva Klepáčová	1217
3052	Jiří Novotný	37284
3053	Irena Bernátová	29099
3054	Jiřina Lukešová	29104
3055	Damon Wayans	2464
3056	Chelsea Field	6025
3057	Noble Willingham	20342
3058	Taylor Negron	54074
3059	Danielle Harris	6021
3060	Halle Berry	521
3061	Bruce McGill	5059
3062	Badja Djola	6020
3063	Kim Coates	6024
3064	Tony Longo	6023
3065	Billy Blanks	5433
3066	Morris Chestnut	4299
3067	Denise Ames	18465
3068	Ryan Cutrona	15484
3069	Eddie Griffin	5005
3070	Michael Papajohn	1825
3071	Anne Lockhart	43527
3072	Frank Collison	44245
3073	Chelcie Ross	54499
3074	John Cenatiempo	79441
3075	Joe Santos	89798
3076	James Keane	154782
3077	Jack Kehler	195276
3078	Sara Suzanne Brown	216405
3079	Clarence Felder	235885
3080	Donna W. Scott	271318
3081	Teal Roberts	370275
3082	Dick Butkus	383904
3083	Robert Apisa	525457
3084	Julie K. Smith	586510
3085	George Kennedy	2268
3086	J. D. Cannon	19925
3087	Lou Antonio	9201
3088	Robert Drivas	19979
3089	Jo Van Fleet	6264
3090	Clifton James	71169
3091	Morgan Woodward	20352
3092	Luke Askew	19871
3093	Robert Donner	19976
3094	Dennis Hopper	236
3095	Wayne Rogers	4607
3096	Warren Finnerty	58656
3097	Joe Don Baker	14791
3098	Donn Pearce	73676
3099	James Gammon	78465
3100	Ralph Waite	82650
3101	Richard Davalos	84472
3102	Charles Tyner	99357
3103	John McLiam	132257
3104	Marc Cavell	221004
3105	Joy Harmon	224583
3106	Rush Williams	296155
3107	John Pearce	393780
3108	James Jeter	401334
3109	Chuck Hicks	488595
3110	Paul Winfield	7211
3111	Rick Rossovich	5884
3112	Franco Columbu	54281
3113	Marianne Muellerleile	37343
3114	Brian Thompson	39965
3115	Harriet Medin	63334
3116	Brad Rearden	435731
3117	Shawn Schepps	76602
3118	Bess Motta	646870
3119	Philip Gordon	651292
3120	Leslie Morris	679030
3121	Tommy Lee Jones	26
3122	Sela Ward	6050
3123	Julianne Moore	138
3124	Andreas Katsulas	429
3125	Jeroen Krabbé	2526
3126	Daniel Roebuck	23384
3127	L. Scott Caldwell	18037
3128	Tom Wood	33619
3129	David Darlow	18708
3130	Nick Searcy	20279
3131	Jane Lynch	14894
3132	Neil Flynn	35257
3133	Kirsten Nelson	72368
3134	Wendy George	79204
3135	David Pasquesi	80116
3136	Mike Bacarella	87509
3137	Kevin Mukherji	148440
3138	Darren W. Conrad	221329
3139	Frank Ray Perilli	233251
3140	Mark D. Espinoza	291577
3141	Nicholas Kusenko	294066
3142	Joseph F. Kosala	294774
3143	Andy Romano	300904
3144	Cheryl Lynn Bruce	320096
3145	Dru Anne Carlson	340165
3146	Kevin Crowley	364303
3147	Gene Barge	383861
3148	Allen Hamilton	456252
3149	John M. Watson Sr.	475227
3150	Eddie Bo Smith Jr.	476082
3151	Pancho Demmings	546328
3152	Johnny Lee Davenport	547960
3153	Don Albert	672505
3154	Dale Hawes	710132
3155	Julie Kavner	11585
3156	John Heard	1975
3157	Penelope Ann Miller	1925
3158	Alice Drummond	9467
3159	Barton Heyman	6513
3160	Anne Meara	49745
3161	Dexter Gordon	14621
3162	Richard Libertini	86140
3163	Mary Alice	1984
3164	Bradley Whitford	14496
3165	Harvey Miller	11973
3166	Peter Stormare	132
3167	Ruth Nelson	157841
3168	Judith Malina	171844
3169	Doris McCarthy	192697
3170	Keith Diamond	201685
3171	Charles Keating	283158
3172	James Medina	330179
3173	Steve Vinovich	361334
3174	Mel Gorham	362476
3175	Laura Esterman	363934
3176	Tiger Haynes	525814
3177	Steven Randazzo	550892
3178	Jonny Lee Miller	5384
3179	Kevin McKidd	4427
3180	Robert Carlyle	1993
3181	Kelly Macdonald	2451
3182	Eileen Nicholas	207193
3183	Susan Vidler	11090
3184	Pauline Lynch	300365
3185	Shirley Henderson	4821
3186	Stuart McQuarrie	83498
3187	Irvine Welsh	2509
3188	Keith Allen	344
3189	Kevin Allen	8982
3190	John Hodge	14984
3191	Andrew Macdonald	170385
3192	Rachael Fleming	254532
3193	Annie Louise Ross	302085
3194	Hugh Ross	347016
3195	Fiona Bell	360017
3196	Júko Tanaka	24796
3197	Jódži Macuda	579635
3198	Kaoru Kobajaši	71948
3199	Tecu Watanabe	71929
3200	Juriko Išida	126423
3201	Masahiko Nišimura	153926
3202	Jošimasa Kondó	151321
3203	Takako Fudži	201496
3204	Adam Paul	269405
3205	Hisaja Morišige	273529
3206	Tošio Suzuki	286190
3207	Akihiro Miwa	296848
3208	Sumi Šimamoto	318003
3209	Širó Saitó	342061
3210	Akira Nagoja	359307
3211	Keiko Cukamoto	371250
3212	Kazuja Kobajaši	698662
3213	Jan Libíček	7251
3214	Jiřina Bohdalová	1088
3215	Jiřina Jirásková	1206
3216	Jiřina Šejbalová	1308
3217	Oldřich Nový	3246
3218	Otto Šimánek	1617
3219	Jaroslav Moučka	1709
3220	Ladislav Křiváček	1811
3221	Jaroslav Štercl	9064
3222	Karel Bláha	29310
3223	Josef Bek	1624
3224	Karel Hála	33381
3225	Jana Andresíková	1083
3226	Josef Borovian	40132
3227	Otto Budín	29263
3228	Oldřich Hoblík	1612
3229	Běla Jurdová	23018
3230	Josef Chval	41191
3231	Bohuslav Konvička	41192
3232	Bohuslav Kupšovský	29079
3233	Josef Maršík	37776
3234	Josef Žák	41193
3235	Milan Neděla	1543
3236	Olga Jungová	40927
3237	Jiřina Machalická	40193
3238	Táňa Zavřelová	42087
3239	Ela Šilarová	39824
3240	Marta Richterová	32711
3241	Helena Růžičková	1037
3242	Jana Sedlmajerová	39666
3243	Iva Šašková	40286
3244	Hana Talpová	1349
3245	Dana Balounová	38447
3246	Bohumil Zoula	41091
3247	O. Březina	37433
3248	medvěd Bart	14356
3249	medvěd Youk	47031
3250	Tchéky Karyo	299
3251	André Lacombe	190232
3252	Jack Wallace	218576
3253	Martin Sheen	488
3254	Nathalie Baye	2317
3255	Amy Adams	18464
3256	James Brolin	2277
3257	Frank John Hughes	6176
3258	Steve Eastin	5283
3259	Chris Ellis	52065
3260	John Finn	35780
3261	Jennifer Garner	5231
3262	Nancy Lenehan	46203
3263	Ellen Pompeo	29465
3264	Elizabeth Banks	20373
3265	Guy Thauvette	149963
3266	Candice Azzara	104877
3267	Kaitlin Doubleday	56361
3268	Thomas Kopache	50636
3269	Margaret Travolta	25483
3270	Lilyan Chauvin	4545
3271	James Morrison	57075
3272	Robert Symonds	204762
3273	Robert Curtis Brown	15483
3274	Wendy Worthington	347598
3275	Brian Goodman	45198
3276	Sarah Lancaster	35487
3277	Jim Antonio	135248
3278	Shane Edelman	22861
3279	Morgan Rusler	237819
3280	Dave Hager	145547
3281	Kyle Davis	145785
3282	Jaime Ray Newman	49965
3283	Amy Acker	32873
3284	Robert Peters	352491
3285	James DuMont	85007
3286	Sarah Rush	316266
3287	Malachi Throne	88547
3288	Alfred Dennis	236021
3289	Stephen Dunham	19982
3290	Brandon Keener	217577
3291	Jasmine Jessica Anthony	83439
3292	Jeremy Howard	81399
3293	Jamie Anderson	39620
3294	Kam Heskin	21077
3295	Jessica Collins	20399
3296	Frank Abagnale Jr.	67022
3297	Roger Léger	308597
3298	Jean-François Blanchard	129598
3299	Alex Bisping	295879
3300	Ashley Cohen	45029
3301	Kelly Cohen	45028
3302	Steven Meizler	184359
3303	Kitty Carlisle	277079
3304	Nicole Andrews	339129
3305	Honor Blackman	37187
3306	Jillian Clare	149394
3307	Brian Reed Garvin	216913
3308	Jesse Heiman	65723
3309	Beverly Lynne	45515
3310	Andy Signore	127450
3311	Nick Zano	36908
3312	Jonathan Brent	383354
3313	Kelly Hutchinson	469309
3314	G. Larry Butler	487605
3315	Mike Baldridge	491279
3316	Donna Kimball	611602
3317	Benita Krista Nall	618624
3318	Patrice Dussault	636467
3319	Guy-Daniel Tremblay	640695
3320	Ray Proscia	667319
3321	Ben Northenor	674438
3322	Alden Olmsted	690724
3323	Patrick Thomas O'Brien	699180
3324	Valerie Kaplanová	1211
3325	Marie Drahokoupilová	1136
3326	Edita Dindělová	40893
3327	Zdeňka Rosolová	45086
3328	Ladislav Šimek	973
3329	Ivan Lukeš	39756
3330	Leoš Suchařípa	957
3331	Bořík Procházka	25009
3332	Ladislav Frej st.	1730
3333	Jiří Zahajský	11500
3334	Nina Divíšková	1130
3335	Jiří Wimmer	7208
3336	Karel Houska	21709
3337	Věra Bublíková	24892
3338	Jan Cmíral st.	1607
3339	František Husák	1613
3340	Jiří Kostka	21754
3341	Marian Cingroš	37386
3342	Jan Kehár	1471
3343	Linda Dřevikovská	32928
3344	Radka Dulíková	41291
3345	Bohumil Vávra	1074
3346	Jožka Stoklasa	29856
3347	Jaroslav Tomsa	1701
3348	Jana Viščaková	1387
3349	Lena Birková	1095
3350	Josef Kubíček	29290
3351	Miroslav Vladyka	7558
3352	Zdeněk Podskalský st.	1672
3353	Jaromír Kučera	45413
3354	Gustav Skála	49258
3355	Vlastimil Zavřel	1007
3356	Eva Trunečková	24560
3357	Gustav Vondráček	1064
3358	Nina Strnadová-Jarková	29390
3359	Josef A. Stehlík	28174
3360	Filip Švarc	29209
3361	Jan Unger	18819
3362	Jiří Bruder	9106
3363	Ivan Šlapeta	41941
3364	Eva Kudláčková	52302
3365	Milan Klacek	43937
3366	Eliška Sirová	1310
3367	Martin Šotola	29339
3368	Jan Laibl	29238
3369	Ivan Kubíček	67246
3370	Lubomír Krystlík	40351
3371	Jindřich Sejk	38343
3372	Zdeněk Skalický	29287
3373	Olga Světelská	29337
3374	Martin Mikuláš	40068
3375	Monika Žáková	33864
3376	Kateřina Smoljaková	74248
3377	Alžběta Smoljaková	74249
3378	Richard Honzovič	34157
3379	Theodor Pištěk	1887
3380	Ladislav Boháč	2025
3381	Marie Burešová	23956
3382	Antonín Novotný	4793
3383	Věra Gabrielová	30941
3384	Marta Májová	27088
3385	Milada Smolíková	1322
3386	Zdeňka Baldová	1089
3387	Karel Jičínský	27900
3388	Miloš Šubrt	28519
3389	Zorka Janů	27161
3390	Milivoj Uzelac st.	26995
3391	Antonín Padrlík	31085
3392	Vladimír Cikán	31087
3393	Milena Velíšková	28557
3394	Ladislav Velíšek	29430
3395	Václav Piskáček	28430
3396	Marie Pilská	28952
3397	František Roland	24487
3398	Alois Dvorský	21636
3399	Leopold Horešovský	28491
3400	Dagmar Appelová	28709
3401	Marie Přikrylová	28927
3402	František Šimon	31086
3403	Madeleine Stowe	146
3404	Jon Seda	5919
3405	Bill Raymond	52898
3406	Frank Gorshin	20842
3407	Chuck Jeffreys	14637
3408	Matt Ross	4433
3409	Christopher Meloni	20919
3410	Richard Stanley	27368
3411	LisaGay Hamilton	51983
3412	Frederick Strother	60778
3413	Roger Pratt	74021
3414	Harry O'Toole	74086
3415	Annie Golden	101747
3416	Simon Jones	252972
3417	Allelon Ruggiero	266962
3418	Thomas Roy	324115
3419	Bob Adrian	79153
3420	Raymond Mamrak	343672
3421	Irma St. Paule	396881
3422	Charles Techman	451570
3423	Kevin Thigpen	612691
3424	Ashton Kutcher	4302
3425	Amy Smart	2534
3426	Melora Walters	20586
3427	John Patrick Amedori	39177
3428	Elden Henson	11334
3429	Kevin G. Schmidt	73063
3430	Kevin Durand	37683
3431	William Lee Scott	2230
3432	Logan Lerman	36845
3433	Jesse James	21719
3434	Cameron Bright	23215
3435	Callum Keith Rennie	8336
3436	Sam Easton	26939
3437	Tara Wilson	32907
3438	Magda Apanowicz	43573
3439	Kevan Ohtsji	58163
3440	Camille Sullivan	75211
3441	Kimani Ray Smith	83964
3442	Kendall Cross	86246
3443	Jesse Hutch	86940
3444	John B. Lowe	148497
3445	Meilani Paul	13911
3446	Irina Gorovaia	195138
3447	Paul Lazenby	226975
3448	Lorena Gale	233472
3449	Douglas Arthurs	245411
3450	June B. Wilde	409532
3451	Bill Croft	474337
3452	John Tierney	476195
3453	Grant Thompson	663973
3454	Denzel Washington	13
3455	Chiwetel Ejiofor	10572
3456	Josh Brolin	363
3457	Lymari Nadal	35471
3458	Roger Guenveur Smith	8216
3459	John Hawkes	20059
3460	RZA	20267
3461	Yul Vazquez	39440
3462	Malcolm Goodwin	73086
3463	Ruby Dee	21061
3464	Ruben Santiago-Hudson	6363
3465	Carla Gugino	5842
3466	John Ortiz	30858
3467	Cuba Gooding Jr.	156
3468	Armand Assante	296
3469	Idris Elba	34502
3470	Common	33541
3471	T.I.	35531
3472	Robert Funaro	150107
3473	Jon Polito	15710
3474	Robert C. Kirk	151213
3475	Jon DeVries	51103
3476	Gavin Grazer	12095
3477	Norman Reedus	5472
3478	Eddie Rouse	85618
3479	Cedric Sanders	133250
3480	Roger Bart	30008
3481	Conor Romero	186286
3482	Daniel Hilt	47998
3483	Ric Young	10870
3484	Chuck Cooper	247359
3485	Chance Kelly	229046
3486	Joey Klein	234841
3487	Al Santos	85026
3488	Fab 5 Freddy	39230
3489	Dj Nino Carta	214392
3490	Ernest Dancy	56113
3491	Hristo Hristov	58376
3492	Robert Nicotra	114734
3493	Richard Nixon	20208
3494	Nick Poltoranin	58373
3495	Evelyn Vaccaro	90031
3496	Adrain Washington	148457
3497	Clarence Williams III	14952
3498	Frances Mignano	267745
3499	Monique Dupree	273068
3500	Sam Freed	287370
3501	Tom O'Rourke	288186
3502	Mark DiConzo	329667
3503	Larry Mitchell	341126
3504	Kevin Geer	388068
3505	Dan Moran	389926
3506	Jermel Howard	390138
3507	Brad Lee Wind	395806
3508	Linda Powell	422978
3509	Cris D'Annunzio	429750
3510	Celestine Rae	503380
3511	Eddie Goines	607865
3512	Artie Pasquale	654236
3513	Saycon Sengbloh	664741
3514	Kathleen Garrett	709739
3515	Dexter Fletcher	6184
3516	Nick Moran	15172
3517	Steven Mackintosh	4247
3518	Nicholas Rowe	55925
3519	Lenny McLean	13199
3520	Peter McNicholl	394385
3521	P. H. Moriarty	76335
3522	Frank Harper	17880
3523	Steve Sweeney	394386
3524	Stephen Marcus	275939
3525	Vas Blackwood	14787
3526	Sting	2355
3527	Rob Brydon	33635
3528	Vera Day	298670
3529	Danny John-Jules	6781
3530	Tim Maurice-Jones	98253
3531	Victor McGuire	280338
3532	David Reid	240574
3533	Richard Vanstone	552093
3534	Matthew Vaughn	18002
3535	Olivier Cabassut	223567
3536	Charles Forbes	674916
3537	Jake Abraham	674917
3538	Steven Bauer	5921
3539	Michelle Pfeiffer	582
3540	Mary Elizabeth Mastrantonio	177
3541	Robert Loggia	252
3542	Miriam Colon	71295
3543	Paul Shenar	73554
3544	Pepe Serna	117439
3545	Harris Yulin	7929
3546	Al Israel	73556
3547	Richard Belzer	2247
3548	Gregg Henry	13677
3549	Brett Ratner	3044
3550	Katt Shea	16001
3551	Lana Clarkson	35509
3552	Gary Carlos Cervantes	51002
3553	Marcus Shirock	92306
3554	Victor Campos	156390
3555	Mike Moroff	156785
3556	Angela Aames	175722
3557	Wayne Doba	207649
3558	Victor Millan	216265
3559	Ted Beniades	217179
3560	Tony Perez	226763
3561	Richard Delmonte	262354
3562	Gregory Cruz	285348
3563	Michael Alldredge	292023
3564	John Carter	293887
3565	Albert Carrier	293911
3566	Dennis Holahan	300152
3567	Michael P. Moran	300153
3568	Ben Frommer	302299
3569	Geno Silva	307318
3570	Santos Morales	338112
3571	Kevyn Major Howard	338607
3572	Sue Bowser	346413
3573	Ava Lazar	370654
3574	John Brandon	387095
3575	Henry Kingi	306577
3576	Marii Mak	472721
3577	Ángel Salazar	489323
3578	Linda Gillen	646253
3579	Caesar Cordova	559967
3580	Takaši Šimura	10803
3581	Daisuke Kató	53349
3582	Minoru Čiaki	10527
3583	Isao Kimura	53916
3584	Seidži Mijaguči	53901
3585	Toširó Mifune	855
3586	Kamatari Fudžiwara	11311
3587	Acuši Watanabe	11849
3588	Isao Jamagata	10159
3589	Noriko Sengoku	24523
3590	Tacuja Nakadai	11411
3591	Eidžiró Tóno	53123
3592	Ken Ucui	274584
3593	Bokuzen Hidari	282125
3594	Jošio Inaba	296735
3595	Haruo Suzuki	296758
3596	Jošio Kosugi	382129
3597	Šigeo Kató	493920
3598	Kokuten Kôdô	648524
3599	Josh Hartnett	315
3600	Eric Bana	316
3601	Sam Shepard	318
3602	Gabriel Casseus	9450
3603	Hugh Dancy	21617
3604	Ron Eldard	5887
3605	Ioan Gruffudd	4619
3606	Tom Guiry	9499
3607	Charlie Hofheimer	58990
3608	Danny Hoch	7952
3609	Jason Isaacs	2238
3610	Željko Ivanek	29638
3611	Glenn Morshower	39459
3612	Brendan Sexton III	12466
3613	Johnny Strong	69064
3614	Richard Tyson	1921
3615	Brian Van Holt	5261
3616	Nikolaj Coster-Waldau	35253
3617	Ian Virgo	84809
3618	Gregory Sporleder	16618
3619	Carmine Giovinazzo	39123
3620	Chris Beetem	197451
3621	Matthew Marsden	17408
3622	Enrique Murciano	18777
3623	Razaaq Adoti	68346
3624	Treva Etienne	128035
3625	Pavel Vokoun	38491
3626	Ty Burrell	10507
3627	Boyd Kestner	83273
3628	Jason Hildebrandt	274598
3629	Tac Fitzgerald	587622
3630	Johann Myers	600035
3631	Jim Carrey	322
3632	Laura Linney	2269
3633	Natascha McElhone	1838
3634	Holland Taylor	21152
3635	Peter Krause	8106
3636	Antoni Corone	41547
3637	Harry Shearer	11453
3638	Philip Baker Hall	2469
3639	Saemi Nakamura	9564
3640	Philip Glass	50868
3641	Marcia DeBonis	59242
3642	O-Lan Jones	103282
3643	Marc Macaulay	200706
3644	Kevin D. Ross	251491
3645	Susan Angelo	257973
3646	Marco Rubeo	293922
3647	Joel McKinnon Miller	299087
3648	Jeanette Miller	340196
3649	Terry Camilleri	257246
3650	Dona Hardy	368978
3651	Judson Vaughn	370657
3652	John Roselius	390918
3653	Una Damon	400566
3654	Joe Minjares	456255
3655	Zoaunne LeRoy	461773
3656	Jake Eberle	557039
3657	Mal Jones	622297
3658	Michael J. McAlister	629292
3659	Blair Slater	683538
3660	Tom Simmons	702073
3661	Mahershala Ali	45153
3662	Linda Cardellini	16697
3663	Sebastian Maniscalco	384755
3664	Dimiter D. Marinov	48574
3665	Mike Hatton	79252
3666	P.J. Byrne	105262
3667	Don Stark	20990
3668	Anthony Mangano	528471
3669	Paul Sloan	87476
3670	Frank Vallelonga	547181
3671	Jenna Laurenzo	381432
3672	Randal Gonzalez	221433
3673	Iqbal Theba	83714
3674	Sharon Landry	221416
3675	Mike Cerrone	40255
3676	Geraldine Singer	342787
3677	Martin Bats Bradford	275258
3678	Ted Huckabee	232298
3679	Gralen Bryant Banks	80451
3680	Sam Malone	211121
3681	David Kallaway	280028
3682	Harrison Stone	535347
3683	Ricky Muse	424921
3684	Tom Virtue	194532
3685	Daniel Greene	107538
3686	Brian Distance	58403
3687	Craig DiFrancia	116450
3688	Jim Klock	116223
3689	Brian Stepanek	68257
3690	Jon Michael Davis	448022
3691	Montrel Miller	297915
3692	Ninja N. Devoe	358906
3693	Brian Hayes Currie	398463
3694	Emily LaGroue	392441
3695	Karn Kalra	698257
3696	Douglas DeLisle	639784
3697	Roy Atwell	4291
3698	Stuart Buchanan	4292
3699	Adriana Caselotti	4293
3700	Pinto Colvig	23741
3701	Billy Gilbert	82711
3702	Otis Harlan	102214
3703	Moroni Olsen	143448
3704	Eddie Collins	173949
3705	Scotty Mattraw	558723
3706	Lucille La Verne	603577
3707	Ida Kamińska	5066
3708	Jozef Kroner	952
3709	František Zvarík	26132
3710	Hana Slivková	1318
3711	Martin Hollý st.	32560
3712	Elena Zvaríková-Pappová	1413
3713	Martin Gregor	12813
3714	Mikuláš Ladižinský	13004
3715	Adam Matejka	13012
3716	Alojz Kramár	5801
3717	Eugen Senaj	34207
3718	František Papp	13022
3719	Gita Strížencová-Mišurová	41985
3720	Tibor Vadaš	41986
3721	František Bujdák	41987
3722	Andrej Šilan	40727
3723	Anton Baláž	41988
3724	Martin Hajný	41989
3725	Štefan Petrák	26257
3726	Ladislav Farkaš	41990
3727	Elena Šoltésová	41991
3728	Milan Drotár	13289
3729	Jozef Hatok	41992
3730	Oldřich Kratochvíl	41993
3731	Július Piussi	41994
3732	Jozef Stražan	31595
3733	Juraj Herz	1538
3734	Ladislav Fecko	25765
3735	Stanislav Kubiš	40725
3736	Václav Podhorský	37416
3737	Štefan Servátka	41995
3738	Jozef Príhoda	39953
3739	Pavol Simko	41996
3740	Ján Mišura	41997
3741	Ján Pelech	41998
3742	Luisa Grossová	107237
3743	Mélanie Laurent	46896
3744	Eli Roth	9367
3745	Michael Fassbender	40058
3746	Diane Kruger	10258
3747	Til Schweiger	1884
3748	Gedeon Burkhard	7615
3749	Jacky Ido	47633
3750	B. J. Novak	45441
3751	Omar Doom	48326
3752	August Diehl	15507
3753	Denis Ménochet	52499
3754	Sylvester Groth	54392
3755	Martin Wuttke	51159
3756	Julie Dreyfus	22999
3757	Alexander Fehling	64516
3758	Rod Taylor	2265
3759	Sönke Möhring	69790
3760	Samm Levine	46371
3761	Paul Rust	46446
3762	Arndt Schwering-Sohnrey	49284
3763	Ken Duken	49846
3764	Volker Michalowski	78416
3765	Christian Berkel	4768
3766	Anne-Sophie Franck	52498
3767	Léa Seydoux	43398
3768	Jana Pallaske	21122
3769	Rainer Bock	57680
3770	Sebastian Hülk	53758
3771	Carlos Fidel	78417
3772	Bo Svenson	11466
3773	Enzo G. Castellari	9234
3774	Greg Nicotero	70811
3775	Brendan Potter	84642
3776	Andrew Napier	99877
3777	André Penvern	105544
3778	Eva Löbau	120809
3779	Michael Kranz	123865
3780	Wilfried Hochholdinger	162316
3781	Lena Friedrich	172789
3782	Christian Brückner	174876
3783	Sabrina Rattey	179824
3784	Hilmar Eichhorn	200986
3785	Guido Föhrweißer	241278
3786	Noemi Besedes	241743
3787	Patrick Elias	257334
3788	Buddy Joe Hooker	408179
3789	Wolfgang Lindner	451848
3790	Alex Boden	556069
3791	Petra Hartung	557691
3792	Carl Weathers	508
3793	Elpidia Carrillo	21973
3794	Bill Duke	1932
3795	Jesse Ventura	21922
3796	Sonny Landham	17092
3797	Richard Chaves	21593
3798	R.G. Armstrong	10463
3799	Shane Black	25077
3800	Kevin Peter Hall	22478
3801	Sylvester Stallone	33
3802	Burgess Meredith	9173
3803	Thayer David	11277
3804	Jimmy Gambina	219449
3805	Bill Baldwin	57995
3806	Al Silvani	219461
3807	Jodi Letizia	323639
3808	Diana Lewis	219468
3809	George O'Hanlon	69375
3810	Stan Shaw	13579
3811	Don Sherman	219475
3812	Pedro Lovell	54379
3813	Lloyd Kaufman	2958
3814	Frank Stallone	45173
3815	Joe Frazier	171560
3816	Michael Dorn	2135
3817	Billy Sands	287535
3818	George Memmoli	314110
3819	Larry Carroll	323640
3820	DeForest Covan	323643
3821	Simmy Bow	323644
3822	Hank Rolike	323646
3823	Shirley O'Hara	323650
3824	Jane Marla Robbins	323651
3825	Lou Fillipo	323654
3826	Arnold Johnson	369259
3827	Lavelle Roby	381805
3828	Jack Hollander	390661
3829	Frankie Van	449976
3830	Jorja Fox	5754
3831	Stephen Tobolowsky	294
3832	Harriet Sansom Harris	34973
3833	Thomas Lennon	52457
3834	Larry Holden	682217
3835	Joss Ackland	6417
3836	Patsy Kensit	7792
3837	Derrick O'Connor	151612
3838	Nestor Serrano	20283
3839	Sherman Howard	15574
3840	David Marciano	18763
3841	Tommy Hinkley	12101
3842	Kenneth Tigar	50696
3843	Jack McGee	51382
3844	J. Mills Goodloe	134117
3845	Pat Skipper	347867
3846	Juney Smith	362684
3847	James Oliver	410041
3848	Rumi Hiiragi	271082
3849	Takaši Naitó	4588
3850	Rjúnosuke Kamiki	23299
3851	Bunta Sugawara	69935
3852	Mari Nacuki	72280
3853	Šigejuki Tocugi	165287
3854	Takehiko Ono	183291
3855	Jasuko Sawaguči	276262
3856	Miju Irino	339147
3857	Koba Hajaši	375638
3858	Yumi Tamai	542682
3859	Kaori Jamagata	681278
3860	Hiromi Takeuči	688901
3861	Minako Masuda	692291
3862	Jóko Óno	696875
3863	Katie Holmes	2090
3864	Tom Wilkinson	1832
3865	Rutger Hauer	283
3866	Linus Roache	8928
3867	Sara Stewart	10315
3868	Gus Lewis	65082
3869	Christine Adams	64714
3870	John Nolan	21820
3871	David Murray	20196
3872	Darragh Kelly	21737
3873	Charles Edwards	58207
3874	Roger Yuan	39274
3875	Jon Foo	41175
3876	Tamer Hassan	43226
3877	Jeremy Theobald	21901
3878	Karen David	63963
3879	Jack Gleeson	66031
3880	Richard Brake	71364
3881	Lucy Russell	63680
3882	Terry McMahon	110281
3883	David Bedella	115305
3884	Stephen Walters	122284
3885	Vincent Wong	126284
3886	Kwaku Ankomah	205706
3887	Emma Lockhart	216632
3888	Spencer Wilding	224787
3889	Lasco Atkins	225913
3890	Tom Nolan	238073
3891	T.J. Ramini	240351
3892	Dean Alexandrou	246806
3893	Tom Wu	294817
3894	John Kazek	300333
3895	Jamie Hayden	321323
3896	Nadia Cameron-Blakey	325921
3897	Dominic Burgess	376087
3898	Jo Martin	423056
3899	Risteard Cooper	436836
3900	Omar Mostafa	447077
3901	Alexandra Bastedo	9421
3902	Charlie Kranz	533233
3903	Mark Rhino Smith	591673
3904	Daniela Bakerová	46511
3905	Eliška Balzerová	1071
3906	Dagmar Patrasová	1272
3907	Karel Augusta	1534
3908	Zuzana Fišerová-Svátková	42111
3909	Ilja Racek	1772
3910	Jana Altmannová	1082
3911	Václav Mareš	1490
3912	Petr Popelka	48691
3913	Jana Březinová	1109
3914	Jiří Knot	24910
3915	Pavel Havránek	32918
3916	Hana Čížková	1126
3917	František Olšovský	43911
3918	Jiří Pokora	38194
3919	Ivan Wiesner	45580
3920	Stanislava Bartošová	1091
3921	Ilona Vaňková	45300
3922	Jaroslav Němeček	48692
3923	Aleš Jánský	48693
3924	Lucie Horová	48694
3925	Josef Koudelka	35573
3926	Karel Šíp	36441
3927	Boris Rösner	1520
3928	Jiří Bednář	32262
3929	Helena Dubová	39783
3930	Milan Duchek	47129
3931	Iva Hercíková	47555
3932	Milena Koutná	45929
3933	Ludmila Krajíčková	32847
3934	Blažena Kramešová	31517
3935	Vít Pešina	29134
3936	Renata Mašková	1257
3937	Ladislav Trojan	1746
3938	Jana Vychodilová	24934
3939	Jan Vávra	41763
3940	Gabriela Wilhelmová	1401
3941	Alexej Pyško	8624
3942	Vladimír Žižka	39862
3943	Věra Kočišová	48695
3944	Bohumil Fišer	48696
3945	Rudolf Svěcený	48697
3946	Jan Němeček	48698
3947	Slávka Hamouzová	30435
3948	Václav Eisenhamer	48699
3949	Ivo Gübel	1609
3950	Filip Smoljak	59459
3951	Karel Engel	29220
3952	Alois Antal	265522
3953	Josef Koudelka	590409
3954	Matthew Broderick	323
3955	Jeremy Irons	21
3956	Moira Kelly	6408
3957	Nathan Lane	5661
3958	Ernie Sabella	377026
3959	Jonathan Taylor Thomas	8775
3960	Robert Guillaume	33052
3961	Rowan Atkinson	349
3962	Madge Sinclair	18553
3963	Whoopi Goldberg	91
3964	Frank Welker	22967
3965	Phil Proctor	183574
3966	Hans Ernback	547300
3967	Jürgen Prochnow	233
3968	Herbert Grönemeyer	62644
3969	Klaus Wennemann	8405
3970	Hubertus Bengsch	193961
3971	Bernd Tauber	53557
3972	Martin May	111561
3973	Heinz Hoenig	7839
3974	Uwe Ochsenknecht	6191
3975	Otto Sander	7351
3976	Günter Lamprecht	10014
3977	Sky du Mont	21635
3978	Oliver Stritzel	85655
3979	Rita Cadillac	86120
3980	Jan Fedder	89359
3981	Ralf Richter	177804
3982	Joachim Bernhard	203146
3983	Claude-Oliver Rudolph	225274
3984	Dirk Salomon	231528
3985	Ulrich Günther	280371
3986	Konrad Becker	396389
3987	Edwige Pierre	441302
3988	Lutz Schnell	665860
3989	Anne Hathaway	2188
3990	Matthew Modine	139
3991	Alon Aboutboul	69960
3992	Ben Mendelsohn	14293
3993	Burn Gorman	52824
3994	Daniel Sunjata	50586
3995	Brett Cullen	49303
3996	Reggie Lee	44881
3997	Juno Temple	33101
3998	Rob Brown	20771
3999	Fredric Lehne	55791
4000	Will Estes	17855
4001	David Dayan Fisher	76695
4002	Robert Wisdom	35831
4003	Ian Bohen	76804
4004	Uri Gavriel	15544
4005	Aramis Knight	67563
4006	Josh Stewart	32163
4007	William Devane	7541
4008	Joey King	51624
4009	Tom Conti	14597
4010	Desmond Harrington	8116
4011	Jillian Armenante	47930
4012	Aja Evans	62697
4013	Wade Williams	18008
4014	Jake Canuso	59356
4015	Daniel Newman	57408
4016	Warren Brown	77025
4017	Christopher Judge	9721
4018	Jason Yee	48902
4019	David Gyasi	81349
4020	James Rawlings	85742
4021	Joshua Elijah Reese	87176
4022	Claire Julien	90237
4023	India Wadsworth	92991
4024	Ronnie Gene Blevins	108592
4025	Josh Pence	113482
4026	Edgar Jimz	118050
4027	Thomas Tull	122461
4028	Glen Powell	127367
4029	Shaun O'Donnell	178977
4030	Shannon Lanier	190294
4031	Oliver Cotton	198237
4032	Ed Heavey	199321
4033	Mark Falvo	199324
4034	James Harvey Ward	190516
4035	Mitchell Yee	202385
4036	Alex Ziwak	214148
4037	Rey Goyos	214797
4038	John Mancini	215098
4039	Adam Piacente	221493
4040	John Macmillan	225939
4041	Kevin Tanski	256133
4042	Gonzalo Menendez	299202
4043	Trevor White	314477
4044	Joseph Lyle Taylor	324721
4045	Duane Henry	349137
4046	Andrea Vasiliou	375146
4047	Sarah Goldberg	376078
4048	James Blankenfeld	415417
4049	Peter Holden	430037
4050	Massi Furlan	483101
4051	Patrick Cox	505352
4052	Tyler Dean Flores	517547
4053	Daniel Jordano	606453
4054	David Monahan	644224
4055	Emily Schooley	703096
4056	Don Cheadle	2551
4057	Sophie Okonedo	20511
4058	Hakeem Kae-Kazim	56097
4059	Mothusi Magano	26113
4060	Cara Seymour	17189
4061	Tony Kgoroge	68857
4062	Fana Mokoena	95047
4063	Desmond Dube	148813
4064	Mosa Kaiser	148817
4065	Mathabo Pieterson	148839
4066	Ofentse Modiselle	148837
4067	Lebo Mashile	148877
4068	Rosie Motene	178867
4069	Ashleigh Tobias	692514
4070	Genadij Rumlena	11447
4071	Jan Svěrák	1462
4072	Michal Weigel	35574
4073	Drahomíra Fialková	36643
4074	Jaroslav Konečný	44008
4075	Boca Abrhámová	57643
4076	Václav Kotek	11369
4077	Josef Vondráček	37055
4078	Ludvík Toman	26261
4079	Martina Bezoušková	54718
4080	Zeno Fifka	88002
4081	Jana Vokrojová	88257
4082	Jan Jíra	279182
4083	Pavel Kovář	324007
4084	František Vinant-Petiška	46242
4085	Robert Bárta	35572
4086	Václav Werner	682142
4087	Arnošt Navrátil	1739
4088	František Šlégr	22948
4089	Miloslav Holub	21342
4090	Václav Kyzlink	31454
4091	Jana Zatloukalová	339985
4092	Felix le Breux	22513
4093	Alena Kreuzmannová	1234
4094	Gian Maria Volonté	7297
4095	Klaus Kinski	2197
4096	Luis Rodríguez	293934
4097	Panos Papadopulos	288269
4098	Mara Krupp	331134
4099	Roberto Camardiel	122659
4100	Josef Egger	222817
4101	Tomás Blanco	319539
4102	Dante Maggio	84257
4103	Diana Rabito	331137
4104	Giovanni Tarallo	331139
4105	Mario Meniconi	299326
4106	Werner Abrolat	192699
4107	José Canalejas	295767
4108	Rosemary Dexter	10217
4109	Fernando Di Leo	13321
4110	Robert Dryden	369371
4111	Peter Lee Lawrence	7690
4112	Sergio Leone	2980
4113	Rafael López	332810
4114	José Marco	203383
4115	Guillermo Méndez	326258
4116	Enrique Navarro	328199
4117	Carlo Simi	260534
4118	Kurt Zips	308566
4119	Macaulay Culkin	383
4120	Daniel Stern	497
4121	Roberts Blossom	6507
4122	Catherine O'Hara	1803
4123	Angela Goethals	94923
4124	Devin Ratray	54630
4125	Larry Hankin	25158
4126	Kristin Minter	16765
4127	Kieran Culkin	2468
4128	John Candy	83
4129	Ralph Foody	57588
4130	Michael Guido	57589
4131	Hope Davis	4520
4132	Ken Hudson Campbell	35079
4133	Ray Toler	37995
4134	Luciano Saber	95706
4135	Senta Moses	117758
4136	Bill Erwin	132238
4137	Billie Bird	184710
4138	Marie Verdi	195857
4139	Gerry Bamman	285117
4140	Alan Wilder	301999
4141	Mark Beltzman	309548
4142	James Ryan	57923
4143	Jim Ortlieb	351665
4144	Hillary Wolf	351669
4145	Michael C. Maronna	339841
4146	Terrie Snell	351735
4147	Jedidiah Cohen	351738
4148	Anna Slotky	351739
4149	Diana Rein	351742
4150	Jeffrey Wiseman	351744
4151	Virginia Smith	351745
4152	Matt Doherty	351746
4153	Gerry Becker	384904
4154	D. Danny Warhol	667157
4155	Tracy J. Connor	666825
4156	Sandra Macat	667043
4157	Emma Stone	37514
4158	Viola Davis	20407
4159	Octavia Spencer	36442
4160	Jessica Chastain	50706
4161	Ahna O'Reilly	80893
4162	Anna Camp	65969
4163	Chris Lowell	58119
4164	Cicely Tyson	14533
4165	Mike Vogel	15792
4166	Sissy Spacek	187
4167	Brian Kerwin	12828
4168	Aunjanue Ellis	13235
4169	Tarra Riggs	42102
4170	Leslie Jordan	53532
4171	Mary Steenburgen	2216
4172	Ashley Johnson	14704
4173	Nelsan Ellis	53462
4174	David Oyelowo	33829
4175	Dana Ivey	1893
4176	Wes Chatham	84765
4177	Shane McRae	140166
4178	Tiffany Brouwer	207341
4179	Carol Sutton	214622
4180	Ted Welch	305557
4181	LaChanze	335527
4182	Roslyn Ruff	472577
4183	Gerard Butler	12074
4184	Craig Ferguson	7679
4185	America Ferrera	4529
4186	Christopher Mintz-Plasse	35177
4187	T.J. Miller	40107
4188	Kristen Wiig	28095
4189	Robin Atkin Downes	68589
4190	Ashley Jensen	29841
4191	David Tennant	34525
4192	Kieron Elliott	109237
4193	Angela Bartys	136770
4194	Emily Blunt	17666
4195	Noah Taylor	18814
4196	Kick Gurry	5196
4197	Dragomir Mrsic	66238
4198	Charlotte Riley	66849
4199	Jonas Armstrong	33349
4200	Franz Drameh	194291
4201	Tony Way	115629
4202	Lara Pulver	70450
4203	Marianne Jean-Baptiste	37418
4204	Madeleine Mantock	104362
4205	Jd Roth-round	123055
4206	Jim Sturgeon	202710
4207	Jozef Aoki	226177
4208	Elaine Caulfield	230776
4209	Bentley Kalu	250871
4210	François Hollande	239609
4211	Harry Landis	290038
4212	Andrew Neil	297561
4213	Beth Goddard	55570
4214	Masayoshi Haneda	317143
4215	Matt Hookings	402789
4216	Pablo Verdejo	589196
4217	Daniel Stisen	635929
4218	Becky Wright	703546
4219	Jiří Krampol	1533
4220	Marta Vančurová	1378
4221	Dana Vlková	47078
4222	Miroslav Walter	47691
4223	Ladislav Potměšil	1492
4224	Jiří Strach	4189
4225	Jan Jirásek	62507
4226	Jan Přeučil	1566
4227	Ivan Vyskočil	1466
4228	Alois Švehlík	1521
4229	Bronislav Poloczek	1510
4230	Petr Pelzer	26888
4231	Karel Smrž	28231
4232	Jana Synková	1346
4233	Zuzana Geislerová	1163
4234	Jana Paulová	1273
4235	Valerie Čižmárová	46232
4236	Jana Marková	1255
4237	Jiřina Jelenská	1426
4238	Stanislav Zindulka	7271
4239	Vladimír Pospíšil	29255
4240	Petr Skarke	29342
4241	Jindřich Hinke	29305
4242	Roman Skamene	998
4243	Stanislav Tříska	21911
4244	Michal Herz	65061
4245	Eva Kelemenová-Ziliziová	43749
4246	Alena Mihulová	1260
4247	Bohumila Dolejšová	1131
4248	Romana Kvapilíková-Julinová	50805
4249	Eva Asterová	35922
4250	Marta Krampolová	59054
4251	Arnošt Proschek	46269
4252	Milan Pěkný	29348
4253	Miroslav Dubský	47064
4254	Tomáš Jančařík	1290
4255	Miroslav Krejča	38276
4256	Petr Svárovský	29299
4257	Ludvík Pozník	38240
4258	Jan Kotva	24911
4259	Jan Krafka	38394
4260	Jan Hájek	44976
4261	Jindra Kvardová	42280
4262	Jan Polívka	301204
4263	František Mikeš	46340
4264	Zdeněk Novotný	38407
4265	Karel Vejvoda	41066
4266	Eva Weissová	43161
4267	Graham Chapman	5653
4268	John Cleese	757
4269	Terry Gilliam	2910
4270	Eric Idle	2173
4271	Terry Jones	2540
4272	Michael Palin	2372
4273	Terence Bayler	13853
4274	Carol Cleveland	29805
4275	George Harrison	5365
4276	Spike Milligan	59570
4277	Chris Langham	79987
4278	Neil Innes	94262
4279	John Young	287020
4280	Charles Knode	291592
4281	Peter Brett	310578
4282	Gwen Taylor	361533
4283	Charles McKeown	72187
4284	Andrew MacLachlan	580694
4285	Adam Baldwin	43
4286	Vincent D'Onofrio	107
4287	Dorian Harewood	5122
4288	Arliss Howard	14102
4289	John Terry	35092
4290	Kieron Jecchinis	433478
4291	Kirk Taylor	338828
4292	Jon Stafford	425595
4293	Tim Colceri	403173
4294	Ian Tyler	433480
4295	Gary Landon Mills	433484
4296	Sal Lopez	199679
4297	Papillon Soo	433443
4298	Ngoc Le	433425
4299	Peter Edmund	433489
4300	Tan Hung Francione	433490
4301	Leanne Hong	433433
4302	Marcus D'Amico	433493
4303	Costas Dino Chimona	433504
4304	Gil Kopel	433507
4305	Keith Hodiak	433509
4306	Peter Merrill	433523
4307	Herbert Norville	433531
4308	Nguyen Hue Phong	433543
4309	Stanley Kubrick	2967
4310	David Palffy	23363
4311	Gary Meyer	116382
4312	Steve Hudson	33982
4313	Philip Bailey	282821
4314	Chris Maybach	671078
4315	William Holden	813
4316	Jack Hawkins	415
4317	Sessue Hajakawa	11330
4318	James Donald	11787
4319	Geoffrey Horne	11347
4320	André Morell	5511
4321	Percy Herbert	113276
4322	Harold Goodwin	134641
4323	John Boxer	269473
4324	Ann Sears	269474
4325	Peter Williams	269475
4326	Andrej Chalimon	1806
4327	Irina Bezrukova	65902
4328	Silvia Šuvadová	1805
4329	Liliana Malkina	9102
4330	Petra Špalková	1055
4331	Nela Boudová	1104
4332	René Přibil	1808
4333	Miroslav Táborský	1463
4334	Slávka Budínová	1114
4335	Regina Rázlová	1300
4336	Josef Lakatoš	211527
4337	Lubomír Píša	211530
4338	F.X. Thuri	211532
4339	Netta Deborská	30264
4340	Pavel Taussig	49552
4341	Marek Daniel	4809
4342	Věra Uzelacová	1372
4343	Otmar Brancuzský	34365
4344	Veronika Freimanová	1151
4345	Filip Renč	1460
4346	Hana Militká	40420
4347	Emma Černá	7957
4348	Petr Šplíchal	211533
4349	Nikolaj Hejko	26787
4350	Rafael Kubelík	29908
4351	Luboš Bíža	47100
4352	Pavel Pecháček	39900
4353	Lída Rakušanová	494907
4354	Jiří Plachý st.	7261
4355	Zdeněk Štěpánek	1677
4356	Vladimír Leraus	22895
4357	Vladimír Řepa	25279
4358	Bohumil Bezouška	26553
4359	Josef Hlinomaz	1571
4360	Ota Motyčka	22910
4361	Jan S. Kolár	22506
4362	Eliška Kuchařová	28714
4363	Jana Werichová-Kvapilová	1400
4364	Eva Jiroušková	22049
4365	František Miroslav Doubrava	29091
4366	Jaroslav Vlk	49604
4367	Věra Chytilová	2847
4368	Anna Pitašová	31927
4369	Ladislav Rychman	3272
4370	Martin Raus	21349
4371	Viktor Pejsar	32264
4372	Hynek Němec	21815
4373	Magda Kopřivová	30216
4374	Josef Oliak	27216
4375	Květa Fialová	1144
4376	Olga Schoberová	1307
4377	Rudolf Deyl ml.	4784
4378	Waldemar Matuška	1703
4379	Jiří Steimar	24491
4380	Oldřich Lukeš	21341
4381	Jaroslav Mareš	7264
4382	Antonín Šůra	1619
4383	Rudolf Cortés	30983
4384	Viktor Očásek	21827
4385	Stanislav Litera	20711
4386	Rudolf Princ	22927
4387	Miloš Vavruška	1621
4388	Břetislav Dolejší	41381
4389	Vladimír Erlebach	32477
4390	Jiří Hanzl	41011
4391	Václav Havelka	41383
4392	Gustav Jankovský	41382
4393	Jiří Kasík	38326
4394	Jaroslav Klenot	38327
4395	Jiří Lánský	39797
4396	Jaroslav Mařan	40575
4397	Jaromír Šťastný	40367
4398	Jaroslav Tetiva	41384
4399	Karel Vítek st.	38330
4400	Ludvík Wolf	38331
4401	Lubomír Žáček	41385
4402	Lubomír Bryg	24970
4403	Antonín Jedlička	1540
4404	Jiří Jelínek	32521
4405	Stanislav Navrátil	41380
4406	Jiří Schulz	32303
4407	Milena Zahrynowská	26087
4408	Michael Douglas	267
4409	Sean Penn	270
4410	Deborah Kara Unger	268
4411	James Rebhorn	1858
4412	Carroll Baker	1922
4413	Armin Mueller-Stahl	269
4414	Anna Katarina	433641
4415	Kimberly Russell	96711
4416	Linda Manz	63718
4417	Spike Jonze	2953
4418	J. Anthony Pena	63575
4419	Elise Robins	82069
4420	Caroline Barclay	242822
4421	Trish Summerville	256053
4422	Elizabeth Dennehy	329979
4423	Marc Siegler	494315
4424	Charles Martinet	606941
4425	Bob Geldof	18354
4426	Bob Hoskins	421
4427	Joanne Whalley	599
4428	Kevin McKeon	123599
4429	Phil Davis	14809
4430	Roger Waters	36031
4431	Jenny Wright	39265
4432	Alex McAvoy	62222
4433	Nell Campbell	68421
4434	Michael Ensign	131679
4435	Gary Olsen	192850
4436	Malcolm Rogers	204252
4437	Albert Moses	224878
4438	Diana King	279084
4439	Eleanor David	279137
4440	Margery Mason	279599
4441	Brenda Cowling	280216
4442	Christine Hargreaves	284337
4443	Peter Jonfield	298969
4444	John Scott Martin	301952
4445	James Laurenson	308948
4446	Ray Mort	458739
4447	Anne Bancroft	227
4448	John Gielgud	228
4449	Wendy Hiller	229
4450	Freddie Jones	234
4451	Hannah Gordon	277720
4452	Michael Elphick	54077
4453	John Standing	70463
4454	Lesley Dunlop	102392
4455	Patricia Hodge	71106
4456	Pauline Quirke	111039
4457	David Ryall	150609
4458	Pat Gorman	194269
4459	Eric Bergren	89230
4460	Christopher De Vore	89231
4461	Phoebe Nicholls	224903
4462	Helen Ryan	264747
4463	Hugh Manning	289458
4464	Gerald Case	292600
4465	Patsy Smart	292948
4466	Roy Evans	296737
4467	Fanny Carby	297896
4468	Frederick Trevers	312298
4469	Lesley Scoble	448400
4470	Bernadette Milnes	488502
4471	Ian Selby	529947
4472	Michele Amas	643962
4473	John Leguizamo	435
4474	Ingrid Rogers	533851
4475	Luis Guzmán	4905
4476	Joseph Siravo	140011
4477	Adrian Pasdar	7918
4478	Paul Mazursky	852
4479	Rocco Sisto	4563
4480	Brian Tarantina	14673
4481	Jaime Tirelli	13053
4482	Marc Anthony	17241
4483	Rick Aviles	64333
4484	Dan Brennan	86547
4485	Orlando Urdaneta	87815
4486	Chuck Zito	87947
4487	Elliot Santiago	155934
4488	Jorge Porcel	162473
4489	Jaime Sánchez	260577
4490	Rene Rivera	306241
4491	Daniel Margotta	309564
4492	Dean Rader-Duval	338669
4493	Saundra Santiago	418957
4494	Cynthia LaMontagne	437960
4495	Nelson Vasquez	528085
4496	John Michael Bolger	702579
4497	Charlie Chaplin	375
4498	Edna Purviance	12897
4499	Jackie Coogan	10537
4500	Henry Bergman	15415
4501	Charles Reisner	13032
4502	Lita Grey	14203
4503	Albert Austin	25062
4504	Esther Ralston	49304
4505	Carl Miller	186641
4506	Beulah Bains	186642
4507	Nellie Bly Baker	186644
4508	Kitty Bradbury	186649
4509	Edgar Sherrod	266048
4510	Edward Biby	267774
4511	Tom Wilson	328085
4512	S.D. Wilcox	337709
4513	Granville Redmond	571759
4514	Pavel Trávníček	1549
4515	Carola Braunbock	20381
4516	Rolf Hoppe	7740
4517	Karin Lesch	48578
4518	Dana Hlaváčová	29312
4519	Vítězslav Jandák	994
4520	Jaroslav Drbohlav	1573
4521	Jan Šůs	48579
4522	Ilona Jirotková	29135
4523	Ostara Körner	48580
4524	Joachim Pape	48583
4525	Gerd Funk	48581
4526	Karl-Helge Hofstadt	48582
4527	Holger Eckert	48584
4528	Erika Stiska	48585
4529	Jutta Molter	48586
4530	Aurora Pan	48587
4531	Gertrud Adam	48588
4532	Matthias Molter	48589
4533	Ursula Möckel	48590
4534	Vincenc Vávra	41957
4535	Bohumil Koška	29217
4536	Jiří Kodýtek	48591
4537	Vladimír Horáček	32537
4538	Mirka Cingaislová	48592
4539	Danuše Mikulová	48593
4540	Petr Svojtka	9052
4541	Jaroslava Adamová	1080
4542	Mirko Musil	9065
4543	Eva Svobodová	1341
4544	Svatopluk Beneš	7363
4545	Božena Havlíčková	32380
4546	Libuše Bokrová	30176
4547	Otto Hradecký	30552
4548	Olga Karásková	43322
4549	Bedřich Karen	21295
4550	Stanislav Neumann	1682
4551	Václav Poláček	37528
4552	Jiřina Steimarová	1330
4553	Světla Svozilová	1345
4554	Josef Šidlichovský	21397
4555	Adolf Šmíd	30559
4556	Jaroslav Vojta	1885
4557	Bedřich Vrbský	21926
4558	Josef Benátský	31453
4559	Kamil Bešťák	31455
4560	Arnošt Faltýnek	21645
4561	Miroslav Homola	11346
4562	Věra Koktová	1221
4563	Končel	37019
4564	Otto Lackovič	1591
4565	Stanislav Langer	21764
4566	Vladimír Majer	3230
4567	František Marek	22904
4568	Zdeněk Martínek	1576
4569	Miloš Patočka	21319
4570	Jan Petřík	30169
4571	Jaroslav Radimecký	24997
4572	Theodor Strejcius	32383
4573	Míla Vojta	32382
4574	Richard Záhorský	21941
4575	Žák	37020
4576	Milka Balek-Brodská	1417
4577	Jan Maška	26811
4578	Oskar Hák	24971
4579	Marie Grossová	1171
4580	Antonín Lebeda	32381
4581	Marie Nováková	26352
4582	Václav Wasserman	3331
4583	Milan Mach	1687
4584	Václav Vydra ml.	1006
4585	Karel Hlušička	29224
4586	Václav Sloup	1712
4587	Michael Madsen	144
4588	Chris Penn	143
4589	Lawrence Tierney	5899
4590	Edward Bunker	53999
4591	Steven Wright	53143
4592	Craig Hamann	54205
4593	Randy Brooks	70442
4594	Laurie Lathem	540696
4595	Frederic Forrest	5937
4596	Sam Bottoms	20768
4597	Albert Hall	61240
4598	Tom Mason	232306
4599	Colleen Camp	18038
4600	Christian Marquand	23337
4601	Aurore Clément	40765
4602	Frank Villard	30320
4603	Don Gordon Bell	74402
4604	Francis Ford Coppola	2852
4605	Jim Gaines	88881
4606	Evan A. Lottman	253419
4607	Charles Robinson	18798
4608	Vittorio Storaro	58520
4609	Bill Graham	390615
4610	Damien Leake	399488
4611	Marc Coppola	528467
4612	Kerry Rossall	649374
4613	Radoslav Brzobohatý	1531
4614	Drahomíra Hofmanová	24563
4615	Pavel Pavlovský	42868
4616	Václav Babka	12787
4617	Jiří Tomek	27023
4618	Věra Galatíková	1160
4619	Jaroslava Vysloužilová	39706
4620	Marie Málková	26967
4621	Zdeněk Kutil	1662
4622	Jaroslava Tichá	31529
4623	Oldřich Slavík	24569
4624	Alexandra Korytová	41696
4625	Vladimír Ptáček	970
4626	Eva Blažková	1099
4627	Svatopluk Skládal	1618
4628	Karel Vochoč	26328
4629	Ivana Bílková	41684
4630	Milan Sandhaus	17979
4631	Růžena Merunková	9058
4632	Ludmila Lebedová	37948
4633	Oldřich Vykypěl	22597
4634	Lubomír Kostelka	1589
4635	Jindřich Bonaventura	37091
4636	Otakar Horký	38186
4637	Jan Báča	43459
4638	Anna Navrátilová	43464
4639	František Unčovský	43467
4640	Adolf Peterka	43457
4641	Jiří Němec	41950
4642	Milada Burešová	35285
4643	Jan Mauer	43463
4644	Rudolf Staud	43465
4645	Antonín Divoký	43460
4646	František Dostál	43461
4647	Leopold Fric	43462
4648	Jan Štafa	43466
4649	Jaromír Knittl	43455
4650	Josef Dziedzic	43099
4651	Jaromír Hons	43456
4652	Miroslav Částek	26617
4653	František Kašpar	43458
4654	Zdeněk Novák	41016
4655	Bohuš Pastorek	38138
4656	Jiří Plachý ml.	16264
4657	Michaela Černá	104826
4658	Gene Kelly	825
4659	Donald O'Connor	10736
4660	Debbie Reynolds	895
4661	Jean Hagen	14123
4662	Cyd Charisse	23962
4663	Douglas Fowley	122620
4664	Millard Mitchell	89836
4665	Rita Moreno	6257
4666	Mae Clarke	6394
4667	Bobby Watson	23920
4668	Lance Fuller	6122
4669	Elaine Stewart	63723
4670	Dawn Addams	75995
4671	Pat Conway	93488
4672	Robert Fortier	94377
4673	Joi Lansing	98481
4674	William Schallert	113267
4675	Bess Flowers	131978
4676	Kenner G. Kemp	135037
4677	Forbes Murray	135571
4678	Harry 'Snub' Pollard	32996
4679	Robert Williams	139960
4680	Frank Hyers	147276
4681	Harry Tenbrook	152208
4682	Gail Bonney	160065
4683	Chet Brandenburg	178112
4684	Robert Foulk	179171
4685	Brick Sullivan	179833
4686	Joseph Mell	180889
4687	Phil Schumacher	209568
4688	Paul Maxey	221570
4689	Jack Hendricks	222697
4690	Chalky Williams	223198
4691	Dorothy Patrick	230468
4692	King Donovan	233629
4693	John George	136682
4694	Morgan Jones	258596
4695	Beatrice Gray	265526
4696	Mickey Golden	303152
4697	William F. Leicester	317220
4698	Kay Deslys	327718
4699	Margaret Bert	330498
4700	Jack George	338330
4701	Allen Pinson	339349
4702	Helen Eby-Rock	339903
4703	Julius Tannen	340068
4704	Tommy Farrell	353312
4705	John Dodsworth	362597
4706	Carl Milletaire	363908
4707	Lars Hensen	366432
4708	Leon Lontoc	369922
4709	Richard Emory	376032
4710	Philo McCullough	135357
4711	Lana Turner	919
4712	Timmy Hawkins	432607
4713	Phil Dunham	432652
4714	Bert Davidson	432698
4715	Wilson Wood	432688
4716	Jimmy Bates	442995
4717	Ann McCrea	452494
4718	Diki Lerner	478980
4719	Madge Blake	496206
4720	David Sharpe	558733
4721	Shirley Jean Rickert	686372
4722	Albert Brooks	365
4723	Ellen DeGeneres	5812
4724	Alexander Gould	23273
4725	Brad Garrett	33117
4726	Geoffrey Rush	2078
4727	Andrew Stanton	7886
4728	Elizabeth Perkins	581
4729	Bob Peterson	27126
4730	Bill Hunter	6196
4731	Erik Per Sullivan	5411
4732	Joe Ranft	42270
4733	Laura Marano	49879
4734	Stephen Root	65349
4735	Barry Humphries	67276
4736	Vicki Lewis	341940
4737	Mark Wahlberg	922
4738	Ray Winstone	2294
4739	Vera Farmiga	16722
4740	Anthony Anderson	13307
4741	Alec Baldwin	351
4742	James Badge Dale	52750
4743	Robert Wahlberg	63083
4744	Kristen Dalton	66737
4745	Tracey Paleo	29625
4746	Sallie Toussaint	29626
4747	Conor Donovan	50059
4748	Jay Giannone	29627
4749	Zachary Pauliks	29628
4750	Francesca Scorsese	29629
4751	James P. Anderson	58484
4752	Buddy Dolan	85371
4753	J.C. MacKenzie	85894
4754	Johnny Cicco	88609
4755	John Rue	128137
4756	Craig Castaldo	183335
4757	Terry Serpico	210992
4758	Audrie Neenan	245102
4759	Brendan Burke	257366
4760	Henry Yuk	292775
4761	Emma Tillinger Koskoff	299786
4762	Mark Philip Patrick	309592
4763	Shay Duffin	362033
4764	Armen Garo	376985
4765	Gurdeep Singh	395803
4766	Dorothy Lyman	406768
4767	Oliver Martin	495278
4768	Walter D'Errico	533343
4769	Luca Seta	506038
4770	Amanda Lynch	584605
4771	Jill Brown	584606
4772	Adam Masnyk	590507
4773	Elisabeth Shue	116
4774	Jeffrey Weissman	219007
4775	Charles Fleischer	257288
4776	Darlene Vogel	38052
4777	Jason Scott Lee	434
4778	Flea	12088
4779	Tracy Dali	12384
4780	Joe Flaherty	50504
4781	Al White	87183
4782	Ricky Dean Logan	185167
4783	Wesley Mann	240333
4784	Jim Ishida	437454
4785	John Erwin	673027
4786	Bořivoj Navrátil	1738
4787	Jiří Císler	7554
4788	Karel Vašíček	1713
4789	František Němec	1438
4790	Jan Teplý st.	1580
4791	Josef Šulc	32506
4792	Alois Mottl	38486
4793	Karel Vlček	29198
4794	Miroslav Nesvadba	43282
4795	Ivan Palúch	1711
4796	Vladimír Zátka	39975
4797	Daniela Bartáková	32979
4798	Alice Auspergerová	42078
4799	Jan Bartoš	32043
4800	Jana Hana Duffková	42070
4801	Milica Kolofíková	33255
4802	Galina Kopaněva	43281
4803	Zdeněk Hradilák	1657
4804	Hynek Kubasta	39765
4805	Senta Vollnerová	43283
4806	Sam Neill	54
4807	Laura Dern	237
4808	Jeff Goldblum	126
4809	Richard Attenborough	2809
4810	Ariana Richards	11058
4811	BD Wong	20351
4812	Wayne Knight	1960
4813	Miguel Sandoval	13345
4814	Dean Cundey	31989
4815	Brian Smrz	37780
4816	Bob Peck	75342
4817	Richard Kiley	86889
4818	Brad M. Bucklin	333814
4819	Cameron Thor	347446
4820	Whit Hertford	357668
4821	Michael Lantieri	257157
4822	Colin Firth	2007
4823	Richard Dixon	118666
4824	Jennifer Ehle	16716
4825	Ramona Marquez	68548
4826	David Bamber	52482
4827	Michael Gambon	5348
4828	Simon Chandler	11772
4829	Claire Bloom	4288
4830	Eve Best	67337
4831	Timothy Spall	8062
4832	Anthony Andrews	17794
4833	Patrick Ryecart	116506
4834	Teresa Gallagher	123371
4835	Adrian Scarborough	128829
4836	Freya Wilson	149487
4837	Tim Downie	324436
4838	Adolf Hitler	6211
4839	Roger Hammond	195875
4840	Jake Hathaway	221158
4841	Andrew Havill	226036
4842	Mary Robinson	417256
4843	Dominic Applewhite	438850
4844	Robert Portal	555346
4845	Jaromír Hanzlík	1487
4846	Johanna Tesařová	1354
4847	Zdena Hadrbolcová	1176
4848	Miroslav Kořínek	8940
4849	Zora Jiráková	24557
4850	Marie Spurná	46611
4851	Bohumil Hrabal	40532
4852	Ferdinand Havlík	32812
4853	Jaroslav Vlk	32263
4854	Pavel Dražan	39280
4855	Milada Štýbrová	92716
4856	Maria Bello	5892
4857	Terrence Howard	18734
4858	Melissa Leo	45158
4859	Paul Dano	22855
4860	Dylan Minnette	107950
4861	Zoë Soul	119455
4862	Erin Gerasimovich	338712
4863	Kyla-Drew	338714
4864	Wayne Duvall	136128
4865	Len Cariou	59330
4866	Brad James	72382
4867	Anthony Reynolds	188164
4868	Robert C. Trevelier	159234
4869	Sandra Ellis Lafferty	338719
4870	Victoria Staley	224610
4871	Todd Truley	323911
4872	Lana Yoo	88994
4873	Jane McNeill	232976
4874	Jason Davis	237468
4875	Katrina Despain	142473
4876	Faith Dillon	97315
4877	Andrew Fincher	272816
4878	Brody Rose	233201
4879	Josh Turner	254878
4880	Tiffany Morgan	493592
4881	Jeff Pope	585000
4882	J. Omar Castro	594875
4883	Jeff Bridges	302
4884	Mary McCormack	2215
4885	Alfre Woodard	5923
4886	David Patrick Kelly	1934
4887	Saul Williams	18460
4888	Peter Gerety	51383
4889	Celia Weston	1835
4890	Tracy Vilar	24802
4891	Kimberly Scott	2212
4892	Conchata Ferrell	18498
4893	Vincent Laresca	49508
4894	Rawle D. Lewis	20156
4895	Julie Sands	25466
4896	Aaron Paul	37286
4897	William Lucking	87954
4898	Kateri Walker	37298
4899	Clarke Peters	59955
4900	Erik LaRay Harvey	143652
4901	Lance E. Nichols	189549
4902	Mary Mara	201933
4903	Paul Linke	214787
4904	John Toles-Bey	284710
4905	Greg Lewis	301650
4906	Anne Carroll	580639
4907	Clebert Ford	606571
4908	Joe Holt	612112
4909	Scott Lincoln	650759
4910	Robert Sean Leonard	5301
4911	Ethan Hawke	14
4912	Josh Charles	5697
4913	Gale Hansen	12098
4914	Dylan Kussman	266959
4915	James Waterston	266964
4916	Norman Lloyd	14291
4917	Kurtwood Smith	5897
4918	Kevin Cooney	16373
4919	John Cunningham	19961
4920	Keith Snyder	20287
4921	Jamie Kennedy	2300
4922	Alexandra Powers	85530
4923	Debra Mooney	113337
4924	Matt Carey	123613
4925	James J. Christy	123614
4926	Alan Pottinger	503330
4927	Jeffrey Santoro	698433
4928	James Stewart	192
4929	Grace Kelly	826
4930	Wendell Corey	4368
4931	Thelma Ritter	14329
4932	Raymond Burr	7842
4933	Judith Evelyn	23003
4934	Ross Bagdasarian	22416
4935	Georgine Darcy	22996
4936	Frank Cady	132448
4937	Jesslyn Fax	182025
4938	Rand Harper	182024
4939	Irene Winston	23064
4940	Havis Davenport	182023
4941	Marla English	18494
4942	Fred Graham	178853
4943	Kathryn Grant	49137
4944	Len Hendry	143676
4945	Anthony Warde	135168
4946	Gig Young	6248
4947	Dick Simmons	258930
4948	Art Gilmore	277834
4949	Benny Bartlett	236395
4950	Jack Stoney	319190
4951	Eddie Parker	326391
4952	Harry Landers	357163
4953	Nick Borgani	363974
4954	Ralph Smiley	400351
4955	Mike Mahoney	406395
4956	Donna Reed	6265
4957	Lionel Barrymore	742
4958	Thomas Mitchell	6286
4959	Henry Travers	14303
4960	Beulah Bondi	14415
4961	Frank Faylen	85714
4962	Ward Bond	21563
4963	Gloria Grahame	6266
4964	H.B. Warner	14495
4965	Samuel S. Hinds	132589
4966	Mary Treen	199838
4967	Virginia Patton	62364
4968	Ray Walker	102185
4969	Ellen Corby	14510
4970	Marian Carr	77674
4971	Ernie Adams	96703
4972	J. Farrell MacDonald	96031
4973	Sheldon Leonard	111382
4974	Lane Chandler	131652
4975	Charles Sullivan	134637
4976	Max Wagner	148884
4977	Dick Elliott	154136
4978	Al Bridge	154239
4979	Sam Ash	154783
4980	Stanley Andrews	176793
4981	Charles Halton	113112
4982	Charles C. Wilson	180899
4983	Wilbur Mack	181880
4984	Frank Fenton	183608
4985	Harry Holman	188700
4986	Milton Kibbee	190573
4987	Lillian Randolph	202133
4988	Charles Lane	205813
4989	Charles Williams	205818
4990	Sarah Edwards	205826
4991	William Edmunds	205838
4992	Argentina Brunetti	205863
4993	Frank Hagney	206092
4994	Edward Keane	121011
4995	Frank O'Connor	206460
4996	Brooks Benedict	206677
4997	Bert Moorhouse	206686
4998	Jack Cheatham	206689
4999	Almira Sessions	211012
5000	Mark Roberts	235284
5001	Harry Cheshire	234698
5002	Tom Fadden	235881
5003	Eddie Kane	261667
5004	Todd Karns	290973
5005	Edward Clark	290975
5006	Garry Owen	290981
5007	Suzanne Ridgway	294828
5008	Charles Meakin	285007
5009	Karolyn Grimes	311425
5010	Larry Wheat	319202
5011	Constantine Romanoff	319570
5012	Carl 'Alfalfa' Switzer	322336
5013	Eddie Fetherson	324016
5014	Georgie Nokes	330440
5015	Joseph E. Bernard	331099
5016	Arthur Stuart Hull	332212
5017	Herbert Heywood	334470
5018	Franklin Parker	335393
5019	Tom Coleman	341335
5020	Herschel Graham	341943
5021	Jack Lomas	346048
5022	Jeanine Ann Roose	353135
5023	Carol Coombs	353139
5024	Ronnie Ralph	353152
5025	Danny Mummert	393956
5026	Jean Acker	394346
5027	Philip Morris	443690
5028	Netta Packer	450133
5029	Jack Mower	132075
5030	Bill Nighy	12132
5031	Gregor Fisher	2474
5032	Sienna Guillory	21075
5033	Emma Thompson	591
5034	Kris Marshall	42470
5035	Heike Makatsch	2328
5036	Martin Freeman	17867
5037	Andrew Lincoln	18388
5038	Keira Knightley	2240
5039	Hugh Grant	332
5040	Martine McCutcheon	30690
5041	Julia Davis	10931
5042	Abdul Salis	29563
5043	Edward Hardwicke	12818
5044	Thomas Brodie-Sangster	34247
5045	Rodrigo Santoro	12465
5046	Elisabeth Margoni	11016
5047	Billy Bob Thornton	1797
5048	Meredith Ostrom	33824
5049	Glenn Conroy	25627
5050	Ivana Milicevic	15967
5051	January Jones	14426
5052	Elisha Cuthbert	6458
5053	Adam Godley	44269
5054	Claudia Schiffer	9376
5055	Shannon Elizabeth	1874
5056	Denise Richards	1900
5057	Richard Curtis	6726
5058	Lúcia Moniz	56258
5059	Nina Sosanya	63607
5060	Declan Donnelly	68296
5061	Anthony McPartlin	68297
5062	Joanna Page	74524
5063	Rebecca Frayn	75525
5064	Richard Hawley	83922
5065	Caroline John	285198
5066	Gillian Barge	286023
5067	Meg Wynn Owen	287027
5068	Billy Campbell	297244
5069	Frank Moorey	303331
5070	Olivia Olson	323126
5071	Peter Marinker	324477
5072	Michael Fitzgerald	328343
5073	Richard Cotton	401130
5074	Bill Moody	472731
5075	Helder Costa	584661
5076	Carla Vasconcelos	613685
5077	Nicolas Cage	114
5078	Bridget Moynahan	2232
5079	Eamonn Walker	17651
5080	Donald Sutherland	499
5081	Zdeněk Pecháček	1670
5082	Liya Kebede	57368
5083	Tanit Phoenix	61356
5084	Jeremy Crutchley	77991
5085	Jean-Michel Richaud	81404
5086	Tony Caprari	249744
5087	Akin Omotoso	259717
5088	David Aranovich	268666
5089	Patrick John Walton	276589
5090	Jevgenij Lazarev	370664
5091	Weston Cage	382352
5092	Jerry Mofokeng	608547
5093	John Spencer	29604
5094	Vanessa Marcil	10270
5095	Bokeem Woodbine	11494
5096	Jim Maniaci	23330
5097	Brendan Kelly	23302
5098	Steve Harris	17881
5099	Danny Nucci	9352
5100	Claire Forlani	2124
5101	Todd Louiso	5038
5102	Anthony Clark	20788
5103	Stuart Wilson	2249
5104	David Marshall Grant	2046
5105	Stanley Anderson	1889
5106	James Caviezel	306
5107	Tom Towles	35627
5108	John Enos III	47936
5109	Raymond Cruz	53863
5110	Luenell	39646
5111	Buck Kartalian	55726
5112	David Bowe	58675
5113	Marshall R. Teague	58676
5114	Dwight Hicks	58677
5115	Willie Garson	67057
5116	Greg Collins	322458
5117	Matthew James Gulbranson	73111
5118	John Laughlin	104931
5119	Joseph Patrick Kelly	191334
5120	Sam Whipple	207480
5121	Howard Platt	287545
5122	Ralph Peduto	440880
5123	Michael Rose	471253
5124	Raymond O'Connor	593257
5125	Sean Skelton	600457
5126	Anthony Snow	634710
5127	Jack Yates	651282
5128	Louis de Funès	1997
5129	Geneviève Grad	23483
5130	Michel Galabru	2293
5131	Jean Lefebvre	10021
5132	France Rumilly	49007
5133	Daniel Cauchy	77750
5134	Christian Marin	23335
5135	Gabriele Tinti	6235
5136	Maria Pacôme	50360
5137	Fernand Sardou	71772
5138	Guy Grosso	75425
5139	Michel Modo	75545
5140	Claude Piéplu	71332
5141	Jean Droze	76109
5142	Patrice Laffont	77327
5143	Giuseppe Porelli	78751
5144	Paul Bisciglia	37569
5145	Jean Panisse	81829
5146	André Badin	82210
5147	Martine de Breteuil	82413
5148	Sacha Briquet	89115
5149	Henri Arius	136897
5150	Pierre Barouh	193885
5151	Maurice Jacquin	253053
5152	Sylvie Bréal	279727
5153	Louis Massis	297581
5154	Jean-Pierre Bertrand	576521
5155	Petr Čtvrtníček	1732
5156	David Vávra	1791
5157	Veronika Žilková	1069
5158	Jaromír Dulava	1448
5159	Pavel Bobek	1535
5160	Karel Dobrý	4764
5161	Jiří Maria Sieber	9114
5162	David Nykl	20938
5163	Bohumil Klepl	7378
5164	Zdeněk Dolejší	26688
5165	Zita Kabátová	1031
5166	Antonín Zacpal	28948
5167	Růžena Šlemrová	1317
5168	Marie Norrová	1268
5169	Bohumil Hradčanský	31332
5170	Ada Dohnal	29073
5171	Lída Borovcová-Marečková	29077
5172	Zdeněk Martínek ml.	29078
5173	Míla Svoboda	29016
5174	Dalibor Pták	28726
5175	Vojta Merten	28382
5176	F. X. Mlejnek	1667
5177	Marie Hodrová	28518
5178	Matthew McConaughey	334
5179	Charlie Hunnam	17894
5180	Michelle Dockery	33206
5181	Colin Farrell	2246
5182	Henry Golding	404551
5183	Jeremy Strong	51525
5184	Eddie Marsan	18766
5185	Lyne Renee	212512
5186	Jason Wong	348867
5187	Eliot Sumner	556080
5188	John Dagleish	345506
5189	Lily Frazer	438852
5190	Gershwyn Eustache Jnr	272749
5191	Samuel West	11484
5192	Geraldine Somerville	33378
5193	Sean Sagar	322895
5194	Tom Rhys Harries	209687
5195	Eugenia Kuzmina	89662
5196	George Asprey	545278
5197	McKell David	201996
5198	Togo Igawa	48194
5199	David Garrick	321162
5200	Andrew Greenough	132351
5201	Brittany Ashworth	81758
5202	Ashley McGuire	574228
5203	Bugzy Malone	602451
5204	Danny Griffin	626568
5205	James Garner	401
5206	Donald Pleasence	343
5207	Hannes Messemer	249900
5208	David McCallum	4770
5209	Gordon Jackson	4335
5210	John Leyton	98388
5211	Angus Lennie	298757
5212	Nigel Stock	291633
5213	Robert Graf	249042
5214	Jud Taylor	10131
5215	Hans Reiser	247716
5216	Harry Riebauer	306585
5217	William Russell	377355
5218	Robert Freitag	224130
5219	Ulrich Beiger	57523
5220	George Mikell	224935
5221	Lawrence Montaigne	302075
5222	Robert Desmond	377357
5223	Til Kiwe	306123
5224	Heinz Weiss	57520
5225	Tom Adams	377359
5226	Karl-Otto Alberty	60366
5227	Krystyna Szerman	675858
5228	Jack Oakie	14654
5229	Reginald Gardiner	23269
5230	Henry Daniell	84602
5231	Paulette Goddard	798
5232	Maurice Moscovitch	356389
5233	Emma Dunn	134648
5234	Chester Conklin	33003
5235	Eddie Gribbon	123531
5236	Eddie Dunn	78647
5237	Charles Irwin	24335
5238	Sig Arno	28471
5239	Hans Conried	86953
5240	Richard Alexander	96567
5241	Leo White	32159
5242	Don Brodie	133598
5243	Pat Flaherty	134226
5244	Gino Corrado	154234
5245	Cyril Ring	182447
5246	Henry Roquemore	78620
5247	William Irving	189288
5248	Harry Semels	193206
5249	Fred Aldrich	209173
5250	George Lynn	117714
5251	Joe Bordeaux	226713
5252	Hans Schumm	299354
5253	Manuel París	311892
5254	Eddie Hart	318297
5255	Lucien Prival	319173
5256	Bud Geary	319728
5257	Leyland Hodgson	325179
5258	John Davidson	326852
5259	Grace Hayle	335389
5260	William Arnold	336052
5261	Tiny Sandford	336955
5262	Max Davidson	375864
5263	Paul Weigel	427164
5264	Bernard Gorcey	427168
5265	Rudolph Anders	300108
5266	Ethelreda Leopold	443531
5267	Patton Oswalt	73471
5268	Lou Romano	36784
5269	Brian Dennehy	389
5270	Peter Sohn	67072
5271	Peter O'Toole	868
5272	Janeane Garofalo	5845
5273	Will Arnett	45716
5274	Teddy Newton	58902
5275	Brad Bird	8124
5276	Brad Lewis	38958
5277	Tony Fucile	175879
5278	Lindsey Collins	252041
5279	Jake Steinfeld	346414
5280	Clive Owen	9148
5281	Adewale Akinnuoye-Agbaje	13957
5282	Gabriel Mann	12123
5283	Josh Hamilton	412
5284	Orso Maria Guerrini	96119
5285	Tim Dutton	9928
5286	Denis Braccini	178836
5287	Nicky Naudé	102361
5288	Anthony Green	55564
5289	Hubert Saint-Macary	132815
5290	Vincent Franklin	155316
5291	Paulette Frantz	218310
5292	Roger Frost	118190
5293	Delphine Lanson	87555
5294	Joe Montana	23349
5295	Arnaud Henriet	130370
5296	Danny Erskine	230326
5297	Jimmy Jean-Louis	56845
5298	Eric Moreau	233213
5299	Emanuel Booz	297886
5300	John MacDonald	298563
5301	Gwenaël Clause	666067
5302	John Bedford Lloyd	19888
5303	Ethan Sandler	194328
5304	Michelle Monaghan	17701
5305	Karel Roden	1022
5306	Oksana Akiňšina	8221
5307	Jevgenij Sitočin	88486
5308	Tim Griffin	50747
5309	Dominique Chiout	202491
5310	Violetta Grafin Tarnowska Bronner	175896
5311	Claudio Maniscalco	222491
5312	Oxana Semjonova	69561
5313	Vitalij Abdulov	158803
5314	Dirk Schoedon	194511
5315	Ivan Shvedoff	8248
5316	Denis Burgazliev	212457
5317	Nick Wilder	49806
5318	Patrick Crowley	289017
5319	Alexej Medveděv	360235
5320	Marina Weis	436107
5321	Maxim Kovalevski	462025
5322	Stephan Wolf-Schönburg	680773
5323	Robert Downey Jr.	145
5324	Chris Evans	8909
5325	Chadwick Boseman	88418
5326	Zoe Saldana	20541
5327	Karen Gillan	58599
5328	Tom Hiddleston	53006
5329	Elizabeth Olsen	64335
5330	Sebastian Stan	56408
5331	Danai Gurira	65008
5332	Peter Dinklage	4854
5333	Pom Klementieff	65768
5334	Dave Bautista	67836
5335	Bradley Cooper	32142
5336	Chris Pratt	39066
5337	Sean Gunn	45025
5338	William Hurt	423
5339	Letitia Wright	155321
5340	Terry Notary	324905
5341	Tom Vaughan-Lawlor	335862
5342	Carrie Coon	121543
5343	Michael James Shaw	146453
5344	Winston Duke	334062
5345	Florence Kasumba	229338
5346	Kerry Condon	9455
5347	Monique Ganderton	141508
5348	Tiffany Espensen	195536
5349	Isabella Amara	371515
5350	Stephen McFeely	75063
5351	Aaron Lazar	287527
5352	Robert Pralgo	67642
5353	Matthew Zuk	96740
5354	Stan Lee	12114
5355	Cobie Smulders	26175
5356	Ross Marquand	232158
5357	Ariana Greenblatt	357987
5358	Harrison Osterfield	531732
5359	Robert Tinsley	567628
5360	Ameenah Kaplan	700595
5361	Jana Kovaříková	21304
5362	Jarka Pižla	27242
5363	Arna Pekárková	21334
5364	Miloš Nesvadba	1583
5365	Ota Sklenčka	7373
5366	Věra Ferbasová	1142
5367	Ljuba Hermanová	1183
5368	Jarmila Švabíková	24526
5369	Josef Příhoda	22929
5370	Oldřich Dvorský	32069
5371	Karel Svoboda	31440
5372	François Périer	13208
5373	Martine Sarcey	63683
5374	Georges Aminel	293179
5375	Richard Gere	402
5376	Cary-Hiroyuki Tagawa	12774
5377	Sarah Roemer	33290
5378	Jason Alexander	2121
5379	Erick Avari	15077
5380	Robert Capron	80168
5381	Robbie Sublett	235034
5382	Davenia McFadden	239855
5383	Troy Doherty	294946
5384	Raymond Alongi	391909
5385	Renée Zellweger	67
5386	Craig Bierko	2759
5387	Rosemarie DeWitt	34480
5388	Chuck Shamata	10797
5389	Ron Canada	19924
5390	Fulvio Cecere	19933
5391	Clint Howard	10637
5392	Boyd Banks	13311
5393	Aaron Abrams	39475
5394	Roman Podhora	16568
5395	Krysta Carter	59555
5396	Sergio Di Zio	101755
5397	Nicholas Campbell	13396
5398	R.D. Reid	183261
5399	Ken James	220191
5400	Gerry Quigley	224215
5401	Connor Price	224244
5402	Rick Cordeiro	231301
5403	Mark Simmons	249079
5404	Ramona Pringle	250479
5405	Philip Craig	251353
5406	Tony Munch	255587
5407	David Huband	260385
5408	Matthew G. Taylor	271998
5409	Timothy Burd	280275
5410	Nick Smyth	301667
5411	Judah Katz	318625
5412	Richard Bachynsky Hoover	320077
5413	Linda Kash	365736
5414	Alicia Johnston	405673
5415	Sharron Matthews	426410
5416	Nola Augustson	472156
5417	Conrad Bergschneider	526094
5418	Paul Ryan	545280
5419	Milada Gampeová	1161
5420	Karel Máj	22911
5421	Jiřina Sedláčková	28934
5422	Vladimír Pospíšil-Born	4886
5423	Elsa Vetešníková	27249
5424	Karel Lamač	3222
5425	Otto Heller	27790
5426	Josef Zora	27360
5427	Václav Dražil	28585
5428	Vratislav Innemann	27479
5429	Jana Romanová	24521
5430	Jiří Blahník	30229
5431	Lumír Blahník	21381
5432	Raoul Schránil	1051
5433	Antonie Nedošinská	1428
5434	Zdeněk Podlipný	1671
5435	Karel Dostal	27086
5436	Sláva Grossmann	28326
5437	Antonín Holzinger	21704
5438	Jan Černý	1635
5439	Jiří Vondrovič	24493
5440	Ladislav Herbert Struna	22951
5441	Vladimír Růžička	28505
5442	Fanča Inka Lopatová-Horáková	29875
5443	Robert Vyhlídka	29173
5444	Daniel Radcliffe	2073
5445	Rupert Grint	2075
5446	Emma Watson	2076
5447	Pam Ferris	23971
5448	Tom Felton	29755
5449	Lenny Henry	20062
5450	Matthew Lewis	33083
5451	James Phelps	47083
5452	Oliver Phelps	47084
5453	Mark Williams	52625
5454	Robbie Coltrane	2074
5455	Julie Walters	2453
5456	David Thewlis	2480
5457	Maggie Smith	22
5458	Miriam Margolyes	6313
5459	Dawn French	6718
5460	Julie Christie	756
5461	Robert Hardy	12819
5462	Richard Griffiths	14100
5463	Fiona Shaw	14435
5464	Harry Melling	69026
5465	Bonnie Wright	40468
5466	Lee Ingleby	44184
5467	David Bradley	52350
5468	Adrian Rawlins	10768
5469	Jamie Waylett	62717
5470	Chris Rankin	63218
5471	Devon Murray	63337
5472	Josh Herdman	63946
5473	Alfred Enoch	63960
5474	Jim Tavaré	81888
5475	Genevieve Gaunt	163563
5476	Paul Whitehouse	278562
5477	Jimmy Gardner	290445
5478	Maggie Grace	25690
5479	Jon Gries	15122
5480	David Warshofsky	84537
5481	Holly Valance	28918
5482	Katie Cassidy	40478
5483	Olivier Rabourdin	67643
5484	Gérard Watkins	54862
5485	Famke Janssen	1839
5486	Marc Amyot	251377
5487	Arben Bajraktaraj	63279
5488	Radivoje Bukvič	49461
5489	Nicolas Giraud	60566
5490	Fani Kolarova	62563
5491	Anatole Taubman	39500
5492	Camille Japy	129669
5493	Jalil Naciri	172178
5494	Héléna Soubeyrand	177470
5495	Mathieu Busson	178125
5496	Christophe Kourotchkine	245804
5497	Mehmet Koşar	387224
5498	Tim Allen	345
5499	Jim Varney	5973
5500	Wallace Shawn	8270
5501	Annie Potts	14727
5502	Erik von Detten	8941
5503	Laurie Metcalf	18529
5504	Penn Jillette	52566
5505	Greg Berg	25072
5506	Bill Farmer	20002
5507	Cody Dorkin	373439
5508	Debi Derryberry	611622
5509	Jan Rabson	651101
5510	Emile Hirsch	11342
5511	Marcia Gay Harden	547
5512	Jena Malone	2191
5513	Brian H. Dierker	61176
5514	Catherine Keener	2097
5515	Vince Vaughn	2012
5516	Kristen Stewart	274
5517	Hal Holbrook	2281
5518	Zach Galifianakis	52519
5519	Haley Ramm	32023
5520	Merritt Wever	36397
5521	medvěd Bart 2	39309
5522	J. Nathan Simmons	60414
5523	Thure Lindhardt	15632
5524	R.D. Call	111335
5525	Signe Egholm Olsen	135862
5526	Leonard Knight	268405
5527	Parris Mosteller	344188
5528	John Jabaley	673730
5529	Donnie Yen	39
5530	Simon Yam	5683
5531	Lynn Hung	59996
5532	Hirojuki Ikeuči	25177
5533	Gordon Lam	52470
5534	Siu-Wong Fan	11949
5535	Dennis To	71383
5536	Yu Xing	72077
5537	You-Nam Wong	72079
5538	Tony Siu-Hung Leung	14383
5539	Carlson Cheng	277314
5540	Kong Kam	289169
5541	Tenma Shibuya	598432
5542	Zhihui Chen	626692
5543	William Daniels	11783
5544	Murray Hamilton	63
5545	Elizabeth Wilson	84268
5546	Buck Henry	20859
5547	Brian Avery	96856
5548	Walter Brooke	23218
5549	Norman Fell	96805
5550	Alice Ghostley	145959
5551	Eddra Gale	144170
5552	Frank Baker	124357
5553	Richard Dreyfuss	55
5554	Mike Farrell	4608
5555	Elisabeth Fraser	195253
5556	Donald F. Glut	82382
5557	Harry Holcombe	157668
5558	Jonathan Hole	180324
5559	Elaine May	5414
5560	Eve McVeagh	178365
5561	Ben Murphy	96202
5562	Hal Taggart	177164
5563	Kevin Tighe	15777
5564	Robert P. Lieb	320120
5565	George Bruggeman	362029
5566	Noam Pitlik	408156
5567	Lainie Miller	432233
5568	Jiří Hrzán	1539
5569	Svatopluk Matyáš	13013
5570	Elisie Randolph	41722
5571	Jana Nováková	35600
5572	Joan Seton	41723
5573	Charles Cameron	41724
5574	Winston Chrislock	41725
5575	Geoffrey Russell-Jones	41726
5576	Vojtěch Holý	40412
5577	Josef Váša	27344
5578	Victor Carter	41727
5579	Ivan Krajíček	1628
5580	Jaroslav Rozsíval	31131
5581	Jan Kaplický	41728
5582	Zlata Adamová	36853
5583	Ivan Foltýn	40872
5584	Kazimierz Siedlaczek	32713
5585	Milan Morávek	37947
5586	Celestýn Mrázek	38226
5587	Otakar Šindelář	41045
5588	Antonín Kubový	28004
5589	Ladislav Bezubka	41729
5590	Karel Kos	41258
5591	Čestmír Preclík	41259
5592	Zdeněk Šedivý	41730
5593	Karel Hruška	40203
5594	Josef Chrastil	41731
5595	Gunter Schoß	41732
5596	Oldřich Unger	41733
5597	Jaroslav Doktor	41734
5598	Woo-seong Jeong	10651
5599	Ye-jin Son	22132
5600	Jong-hak Baek	21534
5601	Kwang-rok Oh	28567
5602	Joong-ki Kim	25199
5603	Sang-gyoo Park	57839
5604	Hie-ryeong Kim	57840
5605	Ji-hyun Seon	57841
5606	Boo-seon Kim	57842
5607	Min-seong Jeong	103708
5608	Byeong-gil Kwon	110420
5609	Seon-jin Lee	187515
5610	Yong-wook Jin	85033
5611	Yeong Hyeon	36461
5612	Hyeon-tak Sin	233224
5613	David Lee McInnis	335837
5614	Jin-won Seo	605146
5615	Feel Kim	632990
5616	Lloyd Ingraham	24334
5617	Louis Natheaux	24355
5618	Gloria DeHaven	63169
5619	Mira McKinney	305464
5620	Wilfred Lucas	244862
5621	Edward LeSaint	216508
5622	Bobby Barber	139049
5623	Chuck Hamilton	147062
5624	Stanley Blystone	185608
5625	Heinie Conklin	216502
5626	Russ Powell	222672
5627	Buddy Messinger	302300
5628	Frank Moran	318268
5629	Jack Low	325346
5630	Murdock MacQuarrie	328004
5631	Sammy Stein	334141
5632	Pat Harmon	334780
5633	J.C. Nugent	394344
5634	Walter James	423815
5635	Fred Malatesta	427179
5636	Wilford Brimley	5898
5637	T.K. Carter	83697
5638	David Clennon	92667
5639	Richard Dysart	61401
5640	Charles Hallahan	14625
5641	Richard Masur	7662
5642	Thomas G. Waites	37655
5643	Donald Moffat	4346
5644	Joel Polis	202633
5645	John Carpenter	2843
5646	Adrienne Barbeau	17663
5647	pes Jed	59605
5648	William Zeman	222763
5649	Larry J. Franco	262171
5650	Jean-Paul Belmondo	2008
5651	Raquel Welch	923
5652	Dany Saval	61620
5653	Jane Birkin	6432
5654	Johnny Hallyday	8122
5655	Charles Gérard	17879
5656	Claude Chabrol	7298
5657	Mario David	75400
5658	Julien Guiomar	2446
5659	Aldo Maccione	5883
5660	Josiane Balasko	9415
5661	Raymond Gerôme	72334
5662	Maurice Bénichou	13666
5663	Richard Bohringer	5575
5664	Didier Flamand	16406
5665	Rita Maiden	15960
5666	Jean-Jacques Moreau	55741
5667	Henri Attal	75378
5668	Henri Génès	30321
5669	Samson Fainsilber	78903
5670	Jean-Jacques	81594
5671	Georges Riquier	79985
5672	Anne-Marie Coffinet	93556
5673	Xavier Saint-Macary	102000
5674	Fred Personne	130363
5675	Jacques Alric	191036
5676	Jean Cherlian	189290
5677	Agathe Vannier	196080
5678	Patrice Melennec	196139
5679	Maurice Illouz	190884
5680	Marie Pillet	216645
5681	Martine Ferrière	223933
5682	Catherine Meurisse	273939
5683	Eduardo Bergara Leumann	391435
5684	Bourvil	5328
5685	Claudio Brook	13520
5686	Andréa Parisy	20516
5687	Colette Brosset	75697
5688	Mike Marshall	20176
5689	Mary Marquet	63989
5690	Pierre Bertin	29921
5691	Benno Sterzenbach	20294
5692	Marie Dubois	10221
5693	Terry-Thomas	20310
5694	Reinhard Kolldehoff	20124
5695	Paul Préboist	6368
5696	Hans Meyer	78902
5697	Sieghardt Rupp	20265
5698	Helmuth Schneider	10790
5699	Paul Mercey	78775
5700	Lionel Vitrant	78790
5701	Rudy Lenoir	80558
5702	Pierre Roussel	81461
5703	Alice Field	82598
5704	Gabriel Gobin	83100
5705	Christian Brocard	84992
5706	Jacques Bodoin	88073
5707	Jean-Pierre Posier	117453
5708	Mag-Avril	133599
5709	Raymond Pierson	197215
5710	Tony Rödel	191052
5711	Konrad von Bork	216975
5712	Jerry Brouer	190854
5713	Anne Berger	223802
5714	Jean Minisini	293426
5715	Noël Darzal	296376
5716	Anthony Stuart	310043
5717	Rémy Julienne	689099
5718	Rex Harrison	805
5719	Stanley Holloway	2768
5720	Wilfrid Hyde-White	56537
5721	Gladys Cooper	7499
5722	Jeremy Brett	11767
5723	Theodore Bikel	11229
5724	Bill Shirley	17424
5725	Alan Napier	24354
5726	Monika Henreid	82419
5727	John Mitchum	113384
5728	Ben Wright	123885
5729	Charles Fredericks	147060
5730	Colin Kenny	147556
5731	Oscar Beregi Jr.	160595
5732	Mona Washbourne	94904
5733	Walter Burke	201394
5734	Marjorie Bennett	218106
5735	John Alderson	236636
5736	Michael St. Clair	252214
5737	Barbara Pepper	204066
5738	Harvey B. Dunn	275465
5739	Queenie Leonrad	282126
5740	Isobel Elsom	282345
5741	Jeannie Carson	282371
5742	George Pelling	301053
5743	Pauline Drake	316608
5744	William Beckley	324491
5745	Phyllis Kennedy	338335
5746	Owen McGiveney	341735
5747	Jack Raine	342076
5748	Laurie Main	347544
5749	Orville Sherman	349031
5750	Natalie Core	369969
5751	Betty Blythe	370009
5752	Jerry Rush	387783
5753	Christopher Riordan	387798
5754	Ron Whelan	401374
5755	John Holland	425350
5756	Patrick O'Moore	431854
5757	Clyde Howdy	440660
5758	Roy Dean	448912
5759	Grady Sutton	305456
5760	Dinah Anne Rogers	529956
5761	Andreas Wilson	13593
5762	Henrik Lundström	13565
5763	Gustaf Skarsgård	13581
5764	Linda Zilliacus	38905
5765	Jesper Salén	13578
5766	Filip Berg	94929
5767	Fredrik af Trampe	275906
5768	Richard Danielsson	275907
5769	Martin Svane	275908
5770	Rustan Blomqvist	275909
5771	Per Westergren	275910
5772	Henrik Linnros	275911
5773	Johan Rabaeus	139048
5774	Marie Richardson	10303
5775	Magnus Roosmann	179226
5776	Ulf Friberg	187126
5777	Mats Bergman	256690
5778	Kjell Bergqvist	136173
5779	Björn Granath	10605
5780	Christian Rinmad	225709
5781	Adam Pålsson	88023
5782	Peter Eggers	306795
5783	Sannamari Patjas	315091
5784	Lennart Hjulström	322741
5785	Nicklas Bengtsson	542266
5786	Victor Hallgren	562619
5787	Christina Rothlin Löfqvist	562634
5788	Jan Håfström	573560
5789	Lillo Brancato	12370
5790	Francis Capra	371
5791	Taral Hicks	65714
5792	Kathrine Narducci	47877
5793	William DeMeo	15109
5794	David Batiste	32174
5795	Domenick Lombardozzi	55475
5796	Alex Ballar	79074
5797	Dave Salerno	88691
5798	Ronnie Marmo	118181
5799	Louis Vanaria	224777
5800	Derrick Simmons	249290
5801	Julia Campanelli	337725
5802	T.S.	477590
5803	Jody Millard	672861
5804	Daniel Day-Lewis	387
5805	Mark Sheppard	9373
5806	John Lynch	11810
5807	Saffron Burrows	2427
5808	Corin Redgrave	16584
5809	Richard Graham	18725
5810	Peter Howitt	3611
5811	Daniel Massey	14292
5812	Bosco Hogan	8461
5813	John Benfield	15412
5814	Dave Duffy	21634
5815	Paterson Joseph	11354
5816	Peter Sheridan	21876
5817	Beatie Edney	72132
5818	Stuart Wolfenden	100206
5819	Denys Hawthorne	127282
5820	Jürgen Rißmann	159093
5821	Stanley Townsend	173639
5822	Tina Kellegher	192640
5823	Jonathan Ryan	225148
5824	Anthony Brophy	238857
5825	Tony Denham	252879
5826	Rob Spendlove	280678
5827	Gloria Swanson	2556
5828	Erich von Stroheim	2557
5829	Nancy Olson	2558
5830	Fred Clark	89189
5831	Jack Webb	2559
5832	Lloyd Gough	135165
5833	Cecil B. DeMille	3144
5834	Hedda Hopper	93779
5835	Buster Keaton	823
5836	Anna Q. Nilsson	126821
5837	Yvette Vickers	5863
5838	Creighton Hale	11325
5839	E. Mason Hopper	16449
5840	Henry Wilcoxon	67574
5841	Ruth Clifford	132743
5842	Harold Miller	135762
5843	Archie R. Dalzell	139771
5844	Danny Borzage	146708
5845	Larry J. Blake	178368
5846	Eddie Dew	132690
5847	Jack Perrin	78718
5848	Gertrude Messinger	186014
5849	Gertrude Astor	212746
5850	Al Ferguson	222187
5851	Tiny Jones	267473
5852	Robert Emmett O'Connor	103162
5853	Lee Miller	290900
5854	Howard Negley	296167
5855	Eva Novak	300240
5856	Perc Launders	318703
5857	Rudy Germane	341353
5858	Anne Bauchens	354722
5859	William Meader	419318
5860	Kenneth Gibson	449999
5861	Ralph Montgomery	450144
5862	Ottola Nesmith	465160
5863	Archie Twitchell	474063
5864	Ivan Jiřík	7267
5865	Jiří Sedláček	61557
5866	Martin Dejdar	1041
5867	Tomáš Juřička	24909
5868	Dušan Cinkota	13949
5869	Jiří Langmajer	1528
5870	Tomáš Vacek	26716
5871	Daniel Landa	1518
5872	Daniel Větrovský	209070
5873	Marie Durnová	1138
5874	Radan Rusev	1593
5875	Pavel Zedníček	1026
5876	Jan Vlasák	26448
5877	Valentina Thielová	1355
5878	Václav Svoboda	1023
5879	Kirk Douglas	772
5880	Ralph Meeker	7684
5881	Adolphe Menjou	11401
5882	George Macready	32941
5883	Wayne Morris	66465
5884	Richard Anderson	2222
5885	Timothy Carey	54757
5886	Christiane Kubrick	93819
5887	Jerry Hausner	221395
5888	Peter Capell	221399
5889	Bert Freed	132393
5890	Emile Meyer	210300
5891	Rolf Kralovitz	216443
5892	James B. Harris	14818
5893	Kem Dibbs	221402
5894	Paul Bös	281246
5895	Herbert Ellis	381924
5896	Philippe Noiret	1996
5897	Enzo Cannavale	7429
5898	Salvatore Cascio	18327
5899	Leo Gullotta	9963
5900	Isa Danieli	52970
5901	Pupella Maggio	10267
5902	Agnese Nano	7877
5903	Tano Cimarosa	54584
5904	Jacques Perrin	3903
5905	Brigitte Fossey	8302
5906	Marco Leonardi	23321
5907	Nicola Di Pinto	49808
5908	Antonella Attili	85958
5909	Nino Terzo	189309
5910	Beatrice Palme	273793
5911	Angelo Tosto	504549
5912	Franco Catalano	508813
5913	Turi Killer	508877
5914	Angela Leontini	629606
5915	Nellina Laganà	633485
5916	Roberta Lena	688163
5917	Marion Mack	12014
5918	Glen Cavender	138640
5919	Jim Farley	356385
5920	Frederick Vroom	138651
5921	Joe Keaton	32129
5922	Edward Hearn	208987
5923	Eddie Foster	270526
5924	Al St. John	79298
5925	Boris Karloff	49
5926	Budd Fine	432718
5927	Barret Oliver	6642
5928	Noah Hathaway	17882
5929	Gerald McRaney	6645
5930	Drum Garrett	6643
5931	Darryl Cooksey	6644
5932	Thomas Hill	17889
5933	Tilo Prückner	32546
5934	Moses Gunn	59177
5935	Sydney Bromley	17818
5936	Tami Stronach	49616
5937	Alan Oppenheimer	132248
5938	Patricia Hayes	150602
5939	Silvia Seidel	177813
5940	Heinz Reincke	183711
5941	Limahl	57350
5942	Frank Lenart	557127
5943	Luděk Sobota	1482
5944	Josef Dvořák	1449
5945	Karel Novák	43524
5946	Eva Fiedlerová	46240
5947	Josef Beyvl	9061
5948	František Peterka	7241
5949	Vladimír Krška	7274
5950	Jan Vala	32011
5951	Tetsuchi Sassagawa	46241
5952	Radoslav Dubanský	45058
5953	Petr Kopřiva	29223
5954	Karel Kryška	40228
5955	Jiří Lábus	1039
5956	Jiří Zavřel	44007
5957	Oldřich Musil	28840
5958	Josef Koza	29136
5959	Antonín Navrátil	1740
5960	Karel Peyr	22553
5961	Luisa Kollingerová	41143
5962	Josef Skrčený	37073
5963	Marie Prokešová	43740
5964	Jana Posseltová	40309
5965	Michal Pospíšil	4889
5966	Ivan Martin	46243
5967	Vilém Lipský	42986
5968	Zdeněk Křeček	46244
5969	Jana Drastíková	46245
5970	Dana Klossová	42983
5971	Olga Hrzánová	46246
5972	Petr Hájek	46247
5973	Alena Augustová	44912
5974	Josef Brozman	46248
5975	Josefa Pechlátová	26086
5976	František Jákl	29226
5977	Petr Jákl st.	38335
5978	Jiří Mašín	38341
5979	Zdeněk Hrdlička	44664
5980	Vladimír Fürst	38192
5981	Richard Crenna	380
5982	Jack Starrett	11840
5983	Michael Talbott	220736
5984	Alf Humphreys	176827
5985	David Caruso	373
5986	David L. Crowley	222877
5987	Don MacKay	222879
5988	Bruce Greenwood	5723
5989	Gary Hetherington	55825
5990	Stephen E. Miller	198053
5991	Suzee Pai	198056
5992	Donald Adams	226803
5993	Jorge Bekris	462277
5994	Stephen Chang	473560
5995	Patrick Stack	648706
5996	Andy Garcia	32
5997	Joe Mantegna	4902
5998	George Hamilton	14982
5999	Bridget Fonda	544
6000	Raf Vallone	10139
6001	Franc D'Ambrosio	323726
6002	Donal Donnelly	21500
6003	Helmut Berger	7846
6004	Don Novello	34128
6005	John Savage	303
6006	Vittorio Duse	250857
6007	Enzo Robutti	76914
6008	Michele Russo	248943
6009	Al Ruscio	272112
6010	Mickey Knox	254600
6011	Brett Halsey	12405
6012	Gregory Corso	59294
6013	Marino Masé	177707
6014	Valeria Sabel	323223
6015	Mimmo Cuticchio	156111
6016	Diana Agostini	289220
6017	Sal Borgese	6523
6018	Anton Coppola	317282
6019	Gia Coppola	97715
6020	Luciano Foti	304591
6021	Ron Jeremy	38959
6022	Joe Drago	385189
6023	Paco Reconti	122703
6024	Remo Remotti	486095
6025	Robert Cicchini	498753
6026	John Abineri	592889
6027	Jessica DiCicco	698653
6028	Lex Barker	2059
6029	Götz George	5147
6030	Herbert Lom	6434
6031	Pierre Brice	2058
6032	Karin Dor	7628
6033	Marianne Hoppe	20458
6034	Eddi Arent	7625
6035	Sima Janićijević	432639
6036	Ralf Wolter	7627
6037	Mirko Boman	150134
6038	Slobodan Dimitrijevič	83373
6039	Velimir Chytil	150136
6040	Jozo Kovačević	490663
6041	Branko Špoljar	81135
6042	Milivoj Stojanović	383286
6043	Ilija Ivezič	131613
6044	Sime Jagarinac	131614
6045	Rolf Mamero	511943
6046	Vladimir Medar	45347
6047	Antun Nalis	31848
6048	Herbert Stass	683108
6049	Charles Martin Smith	3817
6050	Richard Bradford	9438
6051	Billy Drago	10567
6052	Don Harvey	14627
6053	Robert Swan	13699
6054	Robert Miranda	20189
6055	Del Close	259949
6056	Joe Greco	294064
6057	Anthony Mockus Sr.	425528
6058	Stephen Burrows	424200
6059	Pat Billingsley	469536
6060	Valentino Cimo	610524
6061	Eddy Donno	651218
6062	Jacqueline Bisset	2190
6063	Vittorio Caprioli	71718
6064	Monique Tarbès	83234
6065	André Weber	83254
6066	Philippe de Broca	3975
6067	Maurice Auzel	16301
6068	Jean-Pierre Rambal	77764
6069	Robert Berri	16324
6070	Hubert Deschamps	80006
6071	Bernard Musson	80573
6072	Lucienne Legrand	81838
6073	Michel Thomass	82781
6074	Henry Czarniak	83102
6075	Micha Bayard	83264
6076	Max Desrau	87710
6077	Raoul Guylad	102887
6078	Louis Navarre	105552
6079	René Barrera	284937
6080	Gaëtan Noël	296974
6081	Rodrigo Puebla	310368
6082	Jacques Wajsmark	589329
6083	Takuja Kimura	29533
6084	Čieko Baišó	263523
6085	Akio Ócuka	11997
6086	Jó Óizumi	145564
6087	Sang-hyeon Eom	187467
6088	Haruko Kató	296852
6089	Makoto Jasumura	307710
6090	Majuno Jasokawa	342581
6091	Seidži Sasaki	348385
6092	Manabu Muradži	681066
6093	Jóhei Óbajaši	701030
6094	Meryl Streep	589
6095	Jane Alexander	5206
6096	Justin Henry	14282
6097	Howard Duff	78250
6098	George Coe	84403
6099	JoBeth Williams	601
6100	Bill Moor	265371
6101	Jack Ramage	61494
6102	Howland Chamberlain	178724
6103	Ellen Parker	61496
6104	Shelby Brammer	61497
6105	Carol Nadell	61498
6106	Donald Gantry	61499
6107	Judith Calder	61500
6108	Peter Lownds	61501
6109	Kathleen Keller	61502
6110	Ingeborg Sørensen	61503
6111	Iris Albanti	61504
6112	Quentin J. Hruska	61505
6113	Petra King	61506
6114	Melissa Morell	61507
6115	Joe Seneca	82278
6116	Sean Albertson	248794
6117	Jess Osuna	312285
6118	Nicholas Hormann	346197
6119	Kevin Bacon	333
6120	John Larroquette	2548
6121	Beata Poźniak Daniels	9758
6122	Michael Rooker	2510
6123	Jay O. Sanders	14399
6124	Richard Rutowski	20266
6125	Pruitt Taylor Vince	14494
6126	Edward Asner	2203
6127	Walter Matthau	444
6128	Tony Plana	22556
6129	Tomas Milian	21795
6130	Sean Stone	47570
6131	Edwin Neal	2545
6132	Lolita Davidovich	6472
6133	Ron Jackson	318192
6134	John S. Davies	49002
6135	George R. Robertson	58721
6136	Chuck Kelley	83690
6137	Jerry Douglas	84112
6138	Jacqueline Kennedy	85377
6139	Leonid Iljič Brežněv	97617
6140	Martin Luther King	99163
6141	Malcolm X	99179
6142	Red Mitchell	107182
6143	Brian Doyle-Murray	109466
6144	Perry R. Russo	123634
6145	J.J. Johnston	135774
6146	Gail Cronauer	212733
6147	Ellen McElduff	257942
6148	John Finnegan	271080
6149	Wayne Tippit	284020
6150	Victor Kempster	285540
6151	Jo Anderson	304825
6152	Marco Perella	351276
6153	Darryl Cox	371205
6154	Alex Rodine	380905
6155	Duane Grey	388098
6156	James N. Harrell	398629
6157	Ryan MacDonald	410249
6158	Willem Oltmans	413144
6159	Gil Glasgow	447854
6160	Benjamin Dane	448009
6161	Richmond Hoxie	465349
6162	Terence Rosemore	546907
6163	Ludwig Erhard	594725
6164	John Seitz	595217
6165	Marie Del Marco	656487
6166	Jean Gabin	2251
6167	Bernard Blier	2366
6168	Lucien Baroux	9830
6169	Gerhard Bienert	8360
6170	Christian Fourcade	30600
6171	Danièle Delorme	68776
6172	Jean Murat	11409
6173	Jacques Marin	53330
6174	Silvia Monfort	54234
6175	Serge Reggiani	60170
6176	Jean d'Yd	58386
6177	Gabrielle Fontan	71864
6178	Jean Ozenne	72046
6179	Fernand Ledoux	76408
6180	Béatrice Altariba	76565
6181	Jean Topart	76984
6182	Madeleine Barbulée	77615
6183	Marc Eyraud	81127
6184	Raymonde Vattier	82746
6185	Giani Esposito	82754
6186	Paul Bonifas	84692
6187	Gérard Darrieu	84972
6188	Palmyre Levasseur	85498
6189	Édouard Francomme	86157
6190	Laure Paillette	86215
6191	Louis Arbessier	86372
6192	André Dalibert	88608
6193	Henri Coutet	89797
6194	Jacques Harden	89842
6195	Edmond Ardisson	133594
6196	Émile Genevois	154741
6197	Henri Guégan	155255
6198	Werner Dissel	180546
6199	Paul Villé	196791
6200	Pierre Moncorbier	191042
6201	Julienne Paroli	217866
6202	Pierre Tabard	221283
6203	Marcel Rouzé	223737
6204	Luc Andrieux	257977
6205	Pierre Ferval	267489
6206	Rodolphe Marcilly	268360
6207	Harry Hindemith	247944
6208	Jean Sylvère	281393
6209	André Wasley	281406
6210	Allain Dhurtal	290644
6211	Nico Turoff	290717
6212	François Darbon	292424
6213	Jean Favre-Bertin	298007
6214	Yvonne Décade	298337
6215	Julien Maffre	298546
6216	Elfriede Florin	300224
6217	Trude Brentina	301397
6218	Johannes Knittel	301401
6219	Horst Buder	301457
6220	Kurt Mühlhardt	319272
6221	Jean Blancheur	339775
6222	Waltraud Kramm	376430
6223	Hans Ulrich Laufer	380847
6224	Gerhard Einert	550336
6225	Christoph Beyertt	650190
6226	Mone Kamiširaiši	162052
6227	Aoi Júki	226474
6228	Ecuko Ičihara	200800
6229	Masami Nagasawa	25447
6230	Rjó Narita	232143
6231	Kanon Tani	121542
6232	Čafúrin	307639
6233	Kaito Išikawa	312660
6234	Šin'ja Hamazoe	319117
6235	Kazuhiko Inoue	321291
6236	Kanami Sató	337188
6237	Juka Terasaki	352326
6238	Nobunaga Šimazaki	353116
6239	Mijú Cudži	382918
6240	Júki Šin	648070
6241	Tomohiro Jamaguči	676591
6242	Hiroki Macukawa	678863
6243	Tacuhiro Kikuči	682907
6244	Manami Hanawa	686792
6245	Juki Ominami	688105
6246	Šindžiró Góda	695073
6247	Nodoka Hasegawa	696363
6248	Miho Morisaki	700394
6249	Jasuhiro Kikuči	701706
6250	Baron Jamazaki	706828
6251	Takaši Onozuka	707951
6252	Helen Hunt	553
6253	Greg Kinnear	325
6254	Shirley Knight	7664
6255	Skeet Ulrich	9778
6256	Yeardley Smith	11636
6257	Lupe Ontiveros	4530
6258	Bibi Osterwald	226651
6259	Leslie Stefanson	11893
6260	Lawrence Kasdan	3359
6261	Julie Benz	9427
6262	Kathryn Morris	12758
6263	Harold Ramis	470
6264	Kaitlin Hopkins	14702
6265	Matt Malloy	12427
6266	Missi Pyle	18120
6267	Peter Jacobson	20870
6268	Lisa Edelstein	20417
6269	Randall Batinkoff	21544
6270	Maurice LaMarche	20898
6271	Maya Rudolph	34399
6272	Wood Harris	39526
6273	Tara Subkoff	59429
6274	Jimmy Workman	65844
6275	Danielle Brisebois	67580
6276	John F. O'Donohue	76980
6277	Todd Solondz	3089
6278	Tom McGowan	135863
6279	Rebekah Johnson	208030
6280	Kristi Zea	241838
6281	Jaffe Cohen	306223
6282	Linda Gehringer	312796
6283	Justin Ward	316841
6284	Paul Greenberg	210151
6285	Patricia Childress	476923
6286	Annie Maginnis Tippe	651845
6287	Roger Ferreira	665352
6288	Eddie L. Fauria	666055
6289	Bronwyn Cornelius	673692
6290	Zazie Beetz	277450
6291	Frances Conroy	5747
6292	Shea Whigham	15799
6293	Bill Camp	63250
6294	Glenn Fleshler	183622
6295	Leigh Gill	516454
6296	Marc Maron	122199
6297	Sondra James	389918
6298	Murphy Guyer	237117
6299	Douglas Hodge	13413
6300	Dante Pereira-Olson	419006
6301	Sharon Washington	272571
6302	Hannah Gross	97953
6303	Brian Tyree Henry	297899
6304	April Grace	37969
6305	Carl Lundstedt	384433
6306	Michael Benz	230649
6307	Gary Gulman	288420
6308	Chris Redd	413886
6309	Mandela Bellamy	404562
6310	Isabella Ferreira	490065
6311	Alissa Bourne	442405
6312	Tamiz U. Rezvi	493172
6313	Ben Warheit	538492
6314	Matthew Vincini	602177
6315	David Iacono	614195
6316	Brendan Patrick Connor	706355
6317	Roberta Maxwell	21105
6318	Mark Sorensen Jr.	184932
6319	Jeffrey Williamson	184933
6320	Charles Glenn	184935
6321	Anna Deavere Smith	104679
6322	Joanne Woodward	928
6323	Chandra Wilson	30497
6324	Antonio Banderas	353
6325	Warren Miller	151192
6326	Ann Dowd	76851
6327	Adam LeFevre	18758
6328	Kathryn Witt	75083
6329	Quentin Crisp	50086
6330	Jaime Gomez	10598
6331	Stephanie Roth Haberle	18917
6332	Tak Fujimoto	67842
6333	Robert Ridgely	220435
6334	Gary Goetzman	277792
6335	Ford Wheeler	286531
6336	José Castillo	290070
6337	Roy Blount Jr.	334383
6338	Daniel Chapman	675169
6339	Michael Dymek	26311
6340	Petr Voříšek	26313
6341	Petr Starý	43753
6342	Magdalena Reifová	1288
6343	Jitka Chalupníková	47566
6344	David Vlček	43755
6345	Bohumil Luxík	43765
6346	Karel Dellapina	29275
6347	Jan Vostrčil	26035
6348	Vít Olmer	3247
6349	Josef Laufer	1484
6350	Michal Hofbauer	30771
6351	Daniel Netušil	44682
6352	Jana Rabová	44946
6353	Jiří Wohanka	35943
6354	Miles Teller	81521
6355	Melissa Benoist	82694
6356	Austin Stowell	104404
6357	Nate Lang	146654
6358	Damon Gupton	118025
6359	Max Kasch	57963
6360	Jayson Blair	68223
6361	C.J. Vana	184366
6362	Tarik Lowe	199337
6363	Kofi Siriboe	293399
6364	Henry G. Sanders	305217
6365	Keenan Henson	323971
6366	Herman Johansen	478416
6367	Suanne Spoke	487603
6368	Jocelyn Ayanna	592761
6369	Michael D. Cohen	634374
6370	Calvin C. Winbush	656469
6371	Shameik Moore	227976
6372	Jake Johnson	72536
6373	Hailee Steinfeld	57709
6374	Lily Tomlin	1896
6375	Lauren Vélez	27374
6376	Zoë Kravitz	54825
6377	John Mulaney	95736
6378	Kimiko Glenn	257382
6379	Kathryn Hahn	45445
6380	Liev Schreiber	5701
6381	Chris Pine	17626
6382	Natalie Morales	49924
6383	Oscar Isaac	36761
6384	Greta Lee	224685
6385	Jorma Taccone	52059
6386	Joaquín Cosio	36243
6387	Marvin 'Krondon' Jones III	427646
6388	Lake Bell	17664
6389	Miguel Jiron	455778
6390	Justin Shenkarow	456844
6391	Post Malone	381134
6392	Michelle Jubilee Gonzalez	534087
6393	Melanie Haynes	535201
6394	Claudia Choi	648055
6395	Mimi Davila	639251
6396	Charlton Heston	417
6397	Haya Harareet	87687
6398	Stephen Boyd	358
6399	Hugh Griffith	6259
6400	Martha Scott	14737
6401	Cathy O'Donnell	4294
6402	Sam Jaffe	14476
6403	Finlay Currie	58844
6404	Frank Thring	112682
6405	Terence Longdon	130139
6406	George Relph	153020
6407	Ferdy Mayne	13014
6408	Giuliano Gemma	21662
6409	Laurence Payne	5519
6410	Ralph Truman	7532
6411	John Le Mesurier	7385
6412	Lando Buzzanca	57066
6413	José Greci	69213
6414	Marina Berti	69536
6415	Raimondo Van Riel	27495
6416	Pietro Tordi	81530
6417	Enzo Fiermonte	82764
6418	Mino Doro	93723
6419	Aldo Pini	136907
6420	Richard Hale	146047
6421	Nazzareno Zamperla	185188
6422	Robert Brown	263508
6423	Aldo Silvani	272231
6424	Ady Berber	291917
6425	Edwin Richfield	292150
6426	Richard Coleman	298605
6427	Franco Fantasia	299416
6428	Dervis Ward	299555
6429	Joe Canutt	322626
6430	Liana Del Balzo	322730
6431	John Horsley	323994
6432	Gianni Solaro	335938
6433	Antonio Corevi	351713
6434	Bruno Ariè	352340
6435	Hector Ross	419468
6436	Diego Pozzetto	549006
6437	David Davies	618270
6438	Rudolf Jelínek	1736
6439	Ladislav Mrkvička	6345
6440	Josef Vinklář	1477
6441	Siegfried Loyda	38158
6442	Harry Studt	39724
6443	Wolf Goette	39725
6444	Gerhard Rachold	38152
6445	Vlastimil Čaněk	29216
6446	Jaroslav Dufek	26856
6447	Václav Kutheil	39726
6448	Pavel Molčík	32705
6449	Petr Oliva	29196
6450	Jiří Vršťala	21927
6451	Vlasta Matulová	22087
6452	Gustav Heverle	21700
6453	Eduard Dubský	22454
6454	Ivo Foustka	39727
6455	Pavel Robin	29206
6456	Ludmila Dyrová	39728
6457	Věra Kalenská	39729
6458	Milada Lukašovská	39730
6459	Pavel Bártl	24943
6460	Josef Trousílek	39731
6461	Miroslav Barták	39732
6462	Jiří Cimický	29237
6463	Alex Jandouš	29219
6464	Karel Černoch	37163
6465	Jaroslav Ciboch	39733
6466	Otto Ševčík	1698
6467	Jan Neubert	39734
6468	Vladimír Machek	39735
6469	Jaroslav Krupař	39736
6470	Pavel Kvasnička	39737
6471	Křížek	39738
6472	Jiří Hein	32300
6473	Jindřich Chmela	39739
6474	Josef Šolc	32033
6475	Harald Halgardt	39741
6476	Yves Montand	2318
6477	Gérard Depardieu	295
6478	Daniel Auteuil	2001
6479	Elisabeth Depardieu	62085
6480	Margarita Lozano	22645
6481	Ernestine Mazurowna	62086
6482	Roger Souza	105076
6483	Chantal Liennel	145311
6484	Armand Meffre	150942
6485	Marcel Champel	155268
6486	Marc Betton	195758
6487	Jean Maurel	220867
6488	Didier Pain	223561
6489	Marcel Berbert	278803
6490	Fransined	298567
6491	André Dupon	337934
6492	Pierre Nougaro	624105
6493	Jo Doumerg	667852
6494	Honor Kneafsey	207973
6495	Simon McBurney	61315
6496	Maria Doyle Kennedy	20472
6497	Jon Kenny	147104
6498	Nora Twomey	78819
6499	John Morton	649015
6500	Aamir Khan	4478
6501	Sakshi Tanwar	271989
6502	Fatima Sana Shaikh	271990
6503	Sanya Malhotra	271991
6504	Aparshakti Khurana	283518
6505	Zaira Wasim	283519
6506	Girish Kulkarni	162220
6507	Ritvik Sahore	283521
6508	Shishir Sharma	223208
6509	Anurag Arora	129455
6510	Vivan Bhatena	62624
6511	Shivam Sharma	564917
6512	Re Lee	102441
6513	Kyeong-gu Seol	8478
6514	Ji-won Eom	29660
6515	Mi-ran Ra	112691
6516	Sang-ho Kim	22888
6517	Hae-sook Kim	109257
6518	Jin-seong Yang	112692
6519	Tae-won Kwon	150274
6520	Jin-hyeok Kim	184423
6521	Bok-rae Jo	206135
6522	Sin-cheol Kang	111998
6523	Se-ha Ahn	295996
6524	Moon-ee Jo	360735
6525	Dae-woong Jang	380214
6526	Hyun-woo Seo	216799
6527	Mi-kyeong Kim	486213
6528	Yeong-gyu Song	495223
6529	Do-yeop Kim	541663
6530	John Goodman	404
6531	Billy Crystal	382
6532	Mary Gibbs	53029
6533	Jennifer Tilly	593
6534	Bob Bergen	19893
6535	Rodger Bumpass	12962
6536	Bobby Edner	12085
6537	Ashley Edner	9025
6538	Steve Susskind	104528
6539	Laraine Newman	5813
6540	Lee Unkrich	7885
6541	David Silverman	26870
6542	Kay Panabaker	35172
6543	Pete Docter	35757
6544	Marc John Jefferies	58127
6545	Teresa Ganzel	312843
6546	Gino Conforti	319616
6547	Bret 'Brook' Parker	483731
6548	Guido Quaroni	538345
6549	Noah Luke	577673
6550	Paul Eiding	648699
6551	Pat Fraley	654104
6552	Michal Dočolomanský	984
6553	Naďa Konvalinková	1224
6554	Myrtil Frída	1686
6555	Jiří Brdečka	3157
6556	Vítězslav Černý	1630
6557	Pavel Kudláček	43665
6558	Václav Cihelka	43666
6559	Leoš Holan	43667
6560	Petr Hornych	43668
6561	Jiří Mach	43669
6562	Zdeněk Růžička	43670
6563	Josef Vašátko	43671
6564	Miloš Vychtil	41895
6565	Vladislav Vychtil	43672
6566	Lorna Homoláčová-Vančurová	56706
6567	Jiřina Koucká	43674
6568	Jarmila Orlová	33264
6569	Marie Popelková	28925
6570	Eva Přidalová	43675
6571	Jitka Zelenohorská	1433
6572	Andrea Andreánská	43677
6573	Zdena Heřmanová	43678
6574	Milena Kaplická	38393
6575	Hana Šterclová	43679
6576	Isabella Tylínková	41260
6577	Marcela Vraná	43680
6578	Miroslav Chochola	38524
6579	Jiří Kraus	38399
6580	Antonín Kramerius	38528
6581	Petr Popelák	43681
6582	Miloš Rozhoň	29333
6583	Jiří Šašek	32960
6584	Karel Šott ml.	29891
6585	Miloslav Novák	32305
6586	Ivana Beranová	43717
6587	Dana Daňková	43718
6588	Dana Horáková	43719
6589	Elena Lindauerová	41902
6590	Jindřiška Šulcová	43720
6591	Marcela Šulcová	43721
6592	Eva Tichá	43722
6593	Jitka Vašutová	43723
6594	Jiří Bureš	43683
6595	Miloš Kuchyňka	43684
6596	Lubomír Přidal	43685
6597	Miroslav Dvořák	43686
6598	Josef Pechanec	38531
6599	Miroslav Polívka	43687
6600	Vojtěch Přidal	43688
6601	Gaston Šubert	43689
6602	Jiří Vyvadil	43690
6603	Miroslav Vydlák	43691
6604	Ivan Vorlíček	40086
6605	Jaroslav Wagner-Klenka	32887
6606	Otakar Žebrák	32643
6607	Emanuel Brejša	43692
6608	Josef Braun	42988
6609	Vlasta Ziegner	43693
6610	Pavel Stránský	43694
6611	Michael Tarant	29375
6612	Miloslava Dlhá	43695
6613	Jaroslav Engelhart	43696
6614	Stanislav Benda	38396
6615	Vladimír Jelínek	43697
6616	Jiří Kalenský	29274
6617	Jiří Klenot	29227
6618	Jan Váňa	38349
6619	Jarmila Glosová	43698
6620	Miroslav Jíra	29245
6621	Vilém Kratochvíl	43699
6622	Ladislav Havlák	43700
6623	František Kokta	43701
6624	Jana Fominová	43702
6625	Věra Laňková	29276
6626	Ladislav Lahoda	38340
6627	Jiřina Zemanová	38455
6628	Milena Kudrnová	43703
6629	Jan Brokl	43704
6630	Miroslav Brokl	38518
6631	Pavel Jiras	29285
6632	Rudolf Pešek	32956
6633	Vladimír Linka	29239
6634	Bohuslav Mládek	43705
6635	Ota Robek	43707
6636	Jarmila Schwarzová	43708
6637	Zorka Adamíková	43709
6638	Ivan Anthon	39952
6639	Vítězslav Bouchner	35143
6640	Hana Lamková	39760
6641	Jana Prachařová	39574
6642	Helena Veselá	21336
6643	Jaroslav Vidlář	43710
6644	Vlasta Weiselová	43711
6645	Jaroslava Zelenková	1409
6646	Marie Landová	29286
6647	Helena Postránecká	43712
6648	Arnošt Böhm	38332
6649	Libuše Kosová	38538
6650	Karel Křiváček	43713
6651	Jiří Novák	43714
6652	Eduard Opočenský	43715
6653	Petr Pavlíček	43716
6654	Matt Clark	21606
6655	Harry Carey Jr.	86266
6656	Dub Taylor	20308
6657	Donovan Scott	13046
6658	Marvin J. McIntyre	51112
6659	Billy Gibbons	129804
6660	Pat Buttram	132741
6661	Dusty Hill	154029
6662	Hugh Gillin	262541
6663	Frank Beard	304436
6664	Burton Gilliam	306379
6665	Sean Sullivan	356053
6666	Kenny Myers	628446
6667	Michael Mills	629024
6668	Csongor Kassai	1775
6669	Anna Šišková	1311
6670	Jiří Pecha	953
6671	Martin Huba	1787
6672	Vladimír Marek	1788
6673	Kryštof Hanzlík	3184
6674	Anička Jarchovská	1425
6675	Iveta Dušková	23472
6676	Pjér la Šé'z	77269
6677	Martin Dušek	129728
6678	Robert Štěrba	316008
6679	Alena Bradáčová	39752
6680	Vladimír Čech st.	39956
6681	Valtr Levý	40680
6682	Petr Sedlák	40681
6683	Miloš Macourek	6604
6684	Ilona Cicvárková	40682
6685	Milena Jandová	32392
6686	Vojtěch Kheck	40683
6687	Milan Kindl	29235
6688	Josef Krameš	37430
6689	Ivan Kraus	32686
6690	Jiří Sýkora	1646
6691	Kateřina Krausová	40684
6692	Helena Rychterová	40685
6693	Otakar Kuttner	40686
6694	Jan Fleischer	40687
6695	Jan Obrda	1544
6696	Jan Odl	32462
6697	Otakar Rödr	40688
6698	Karel Mikuláštík	40689
6699	Jan Sieber	38239
6700	Rudolf Veselý	40233
6701	Soňa Zborníková-Stenová	40690
6702	Jiřina Hladíková	29170
6703	Rolf Mey-Dahl	428430
6704	Alain Delon	2009
6705	Mimsy Farmer	4922
6706	Victor Lanoux	15623
6707	Michel Bouquet	4487
6708	Christine Fabréga	79639
6709	Bernard Giraudeau	7799
6710	Guido Alberti	9814
6711	Jacques Marchand	16526
6712	Dominique Zardi	74965
6713	Armand Mestral	75682
6714	Malka Ribowska	76896
6715	Pierre Collet	80492
6716	Maurice Barrier	80593
6717	Robert Castel	81315
6718	Jacques Monod	81462
6719	André Rouyer	81540
6720	Jacques Rispal	82821
6721	Michel Fortin	83988
6722	Cécile Vassort	84164
6723	Gilbert Servien	85328
6724	Pierre Asso	96812
6725	Roland Monod	193503
6726	Albert Augier	192179
6727	Raymond Loyer	190828
6728	Nicole Desailly	192660
6729	Jean Degrave	192265
6730	Jean-Pierre Honoré	214919
6731	Jacques Pisias	223645
6732	Jean Rougeul	227331
6733	Ilaria Occhini	299460
6734	Lucie Arnold	310045
6735	John Glover	18357
6736	Lucy Liu	838
6737	David Paymer	4945
6738	Sally Kellerman	2430
6739	Christian Stolte	31532
6740	Alex Henteloff	287616
6741	Kwame Amoaku	646454
6742	Spencer Tracy	918
6743	Burt Lancaster	832
6744	Richard Widmark	925
6745	Marlene Dietrich	770
6746	Maximilian Schell	2527
6747	Judy Garland	795
6748	Montgomery Clift	758
6749	William Shatner	486
6750	Werner Klemperer	152786
6751	Kenneth MacKenna	309624
6752	Torben Meyer	272144
6753	Joseph Bernard	319855
6754	Alan Baxter	7504
6755	Virginia Christine	6117
6756	Otto Waldis	290077
6757	Karl Swenson	56175
6758	Martin Brandt	319856
6759	Ray Teal	130221
6760	John Wengraf	253173
6761	Howard Caine	132746
6762	Olga Fabian	319857
6763	Paul Busch	319858
6764	Bernard Kates	319897
6765	Ed Nelson	6079
6766	John Clarke	83012
6767	Asher Brauner	89559
6768	Sheila Bromley	99484
6769	Joseph Crehan	133440
6770	George Nardelli	175435
6771	Waclaw Rekwart	175436
6772	Reed Howes	78643
6773	Herman Hack	177670
6774	Sayre Dearing	325323
6775	Jana Taylor	385060
6776	Dick Cherney	408164
6777	Norman Stevans	416420
6778	Norbert Schiller	420585
6779	Tony Regan	438632
6780	Rudy Solari	465767
6781	Tyrone Power	882
6782	Charles Laughton	833
6783	Elsa Lanchester	9087
6784	John Williams	7523
6785	Ian Wolfe	138859
6786	Torin Thatcher	133900
6787	Norma Varden	143737
6788	Una O'Connor	11619
6789	Ruta Lee	143750
6790	J. Pat O'Malley	24674
6791	Jeffrey Sayre	135041
6792	Cap Somers	180720
6793	Paul Kruger	330516
6794	Philip Tonge	341018
6795	Patrick Aherne	341028
6796	Glen Walters	342359
6797	Thomas Martin	443552
6798	George Calliga	443686
6799	Eddie Baker	458226
6800	Kate Winslet	176
6801	Kathy Bates	326
6802	Gloria Stuart	4235
6803	Frances Fisher	5711
6804	Jonathan Hyde	20077
6805	David Warner	7178
6806	Victor Garber	2050
6807	Ewan Stewart	17138
6808	Ron Donachie	9924
6809	Bernard Fox	20011
6810	Eric Braeden	52813
6811	James Cameron	2840
6812	Seth Adkins	9810
6813	Tricia O'Neil	13722
6814	Anne Fletcher	27295
6815	Mark Lindsay Chapman	35839
6816	Lewis Abernathy	35968
6817	Simon Crane	41320
6818	Mike Butters	51388
6819	Camilla Overbye Roos	54364
6820	John Walcutt	56136
6821	Charlotte Chatton	66745
6822	Martin Jarvis	72550
6823	Scott Anderson	331540
6824	Jason Barry	81520
6825	Greg Ellis	90171
6826	Rosalind Ayres	118729
6827	Jari Kinnunen	120571
6828	Jonny Phillips	146330
6829	Paul Herbert	225449
6830	Nicholas Cascone	238382
6831	Martin Laing	251298
6832	Erik Holland	297259
6833	Scott Hislop	224339
6834	Rudy Joffroy	355933
6835	Paul Brightwell	368565
6836	Lew Palter	394631
6837	Rochelle Rose	411724
6838	Brian McDermott	481887
6839	Emmett James	487770
6840	Alexandra Boyd	534207
6841	Nick Meaney	219153
6842	Chris Byrne	671029
6843	Linda Kerns	709518
6844	Ben Burtt	5222
6845	Elissa Knight	44749
6846	Jeff Garlin	56327
6847	Fred Willard	21016
6848	Kathy Najimy	7387
6849	MacInTalk	44750
6850	Kim Kopf	44751
6851	Garrett Palmer	45013
6852	Jim Ward	68588
6853	John Cygan	289033
6854	Lori Alan	597108
6855	Barbara Hershey	549
6856	Rachel Ticotin	2020
6857	Lois Smith	21146
6858	Joey Hope Singer	123608
6859	Michael Paul Chan	16351
6860	Raymond J. Barry	1970
6861	D. W. Moffett	16540
6862	John Fleck	17575
6863	Dedee Pfeiffer	14902
6864	Vondie Curtis-Hall	384
6865	John Fink	13673
6866	John Diehl	5375
6867	Amy Morton	58118
6868	Jack Betts	59355
6869	Benjamin Mouton	83551
6870	Deron McBee	88344
6871	Richard Montoya	114719
6872	Macon McCalman	154781
6873	Jean-Pierre Bagot	195493
6874	Gérard Desarthe	223723
6875	Ebbe Roe Smith	226813
6876	Susie Singer Carter	289063
6877	Al Mancini	314139
6878	Eddie Frias	330178
6879	Spencer Rochfort	338667
6880	Jeffrey Byron	338728
6881	Steve Park	339699
6882	Dean Hallo	357859
6883	Carole Androsky	439222
6884	Karina Arroyave	490059
6885	Carole White	535802
6886	Karel Kalaš	1897
6887	Karolina Slunéčková	1319
6888	Rudolf Vodrážka	31525
6889	Věra Kalendová	1209
6890	Emilie Zíchová	45590
6891	Rudolf Pechan	44120
6892	Tibor Kiss	41411
6893	Mari Kiss	46689
6894	Daniel Beran	46688
6895	Hana Jírková	327615
6896	Zdena Pavlátová	36945
6897	Z. Petrová	327619
6898	V. Prášilová	327625
6899	Eliška Moulisová	46690
6900	Petr Drozda	38521
6901	Karel Hovorka ml.	38457
6902	Zdena Lukášová	46692
6903	Václav Syřiště	44086
6904	Alice Pinková	46666
6905	Oldřich Semerák	38344
6906	Jodhi May	5347
6907	Russell Means	7926
6908	Eric Schweig	13696
6909	Steven Waddington	14410
6910	Maurice Roëves	8459
6911	Patrice Chéreau	3522
6912	Terry Kinney	13192
6913	Colm Meaney	446
6914	Scott Means	48877
6915	Jared Harris	15127
6916	Sebastian Roché	9591
6917	Mark Joy	77675
6918	Benton Jennings	91935
6919	Don Tilley	94958
6920	Tim Hopper	339055
6921	Dennis Banks	564502
6922	Patrick Fitzgerald	583073
6923	Malcolm Storry	473052
6924	Tracey Ellis	614856
6925	Juliette Lewis	563
6926	Darlene Cates	33587
6927	Laura Harrington	49163
6928	Mary Kate Schellhardt	33588
6929	John C. Reilly	893
6930	Joe Stevens	77334
6931	Steve Cook	74405
6932	Cameron Finley	240826
6933	Libby Villari	297104
6934	Mona Lee Fultz	351685
6935	David Stanford	558793
6936	Ota Jirák	1568
6937	Serge Sauvion	85092
6938	Pierre Mondy	13200
6939	Nicolas Silberg	66646
6940	Maurice Risch	77342
6941	Billy Kearns	81133
6942	Alain Doutey	81926
6943	Pierre Mirat	82677
6944	Steve Gadler	195715
6945	Patrick Floersheim	215213
6946	Gérard Croce	285115
6947	Gordon Heath	291913
6948	Michel Elias	624524
6949	John Malkovich	122
6950	Sherilyn Fenn	540
6951	Peer Schmidt	262756
6952	Alfred Schieske	270172
6953	Moira Sinise	323700
6954	Peggy Lee	15256
6955	Verna Felton	178610
6956	George Givot	187094
6957	Bill Thompson	121525
6958	Dal McKennon	134223
6959	Alan Reed	217537
6960	Faye Dunaway	538
6961	Chief Dan George	14619
6962	Richard Mulligan	64685
6963	William Hickey	5665
6964	Aimee Eccles	232151
6965	Kelly Jean Peters	232152
6966	Jesse Vint	7645
6967	Lou Cutell	5958
6968	M. Emmet Walsh	6188
6969	James Anderson	146039
6970	Tracy Hotchner	218990
6971	Jack Bannon	232175
6972	Ruben Moreno	232212
6973	Cal Bellini	235017
6974	Ken Mayer	346124
6975	Jack Mullaney	380876
6976	Philip Kenneally	450268
6977	Herbert Nelson	450272
6978	Bud Cokes	458280
6979	Bert Conway	477986
6980	Cary Grant	800
6981	Eva Marie Saint	5746
6982	James Mason	849
6983	Jessie Royce Landis	7528
6984	Leo G. Carroll	7514
6985	Josephine Hutchinson	11575
6986	Philip Ober	11424
6987	Martin Landau	432
6988	Adam Williams	98480
6989	Les Tremayne	5532
6990	Robert Ellenstein	134122
6991	Lawrence Dobkin	19974
6992	Philip Coolidge	85317
6993	Jimmy Cross	10545
6994	Jeremy Slate	69373
6995	Patricia Cutts	85316
6996	Edward Platt	131674
6997	Ned Glass	132460
6998	Ken Lynch	132747
6999	Frank Wilcox	132783
7000	Malcolm Atterbury	132820
7001	Stanley Adams	134127
7002	Robert Shayne	134142
7003	Dale Van Sickel	135022
7004	John Beradino	153023
7005	Frank Marlowe	154995
7006	Walter Coy	155236
7007	Tom Greenway	178683
7008	Harry Strang	182183
7009	Harvey Stephens	166485
7010	Carleton Young	78635
7011	Helen Spring	211015
7012	Olan Soule	228662
7013	Patrick McVey	263128
7014	Adolph Faylauer	264654
7015	Nora Marlowe	287460
7016	Tol Avery	291082
7017	Harry Seymour	296151
7018	James Mccallion	305670
7019	Monty O'Grady	320001
7020	James Gonzalez	320125
7021	Jack Daly	338764
7022	Ralph Reed	338902
7023	Robert Haines	342718
7024	Paul Genge	346038
7025	Baynes Barron	346131
7026	Bobby Johnson	353315
7027	Eugene Jackson	370379
7028	Murray Pollack	380910
7029	Sally Fraser	388125
7030	John Damler	388161
7031	Andy Albin	431885
7032	Lucille Curtis	433207
7033	Doreen Lang	437544
7034	Perk Lazelle	458519
7035	Don Anderson	458530
7036	Paula Winslowe	468479
7037	Bill Catching	488191
7038	Alfred Abel	7462
7039	Gustav Fröhlich	53083
7040	Rudolf Klein-Rogge	16974
7041	Fritz Rasp	16979
7042	Theodor Loos	11387
7043	Erwin Biswanger	203061
7044	Brigitte Helm	6156
7045	Fritz Alberti	7463
7046	Grete Berger	10180
7047	Olly Boeheim	203062
7048	Max Dietze	203063
7049	Ellen Frey	203066
7050	Beatrice Garga	203064
7051	Heinrich George	56905
7052	Curt Siodmak	5523
7053	Helene Weigel	34162
7054	Dolly Grey	203067
7055	Anny Hintze	203069
7056	Georg John	31324
7057	Walter Kuehle	203070
7058	Margarete Lanner	203072
7059	Rolf von Goth	284637
7060	Helen von Münchofen	459496
7061	Harry Andrews	64246
7062	Ossie Davis	15107
7063	Ian Hendry	89219
7064	Michael Redgrave	7493
7065	Norman Bird	248851
7066	Howard Goorney	57448
7067	Neil McCarthy	60528
7068	Roy Kinnear	91999
7069	Alfred Lind	35412
7070	Jack Watson	224030
7071	Richard Easton	258798
7072	Alfred Lynch	300749
7073	Tony Caunter	304784
7074	Virginia Cherrill	7547
7075	Harry Myers	223419
7076	Jean Harlow	804
7077	Robert Parrish	17624
7078	Tiny Ward	129887
7079	Robert Graves	266716
7080	Leila McIntyre	268076
7081	James Donnelly	316888
7082	Stanhope Wheatcroft	327434
7083	Lars Mikkelsen	17947
7084	Sofie Gråbøl	15913
7085	Søren Sætter-Lassen	88667
7086	David Dencik	67701
7087	Sonja Richter	8264
7088	Solbjørg Højfeldt	204502
7089	Morten Hauch-Fausbøll	200090
7090	Paw Henriksen	24228
7091	Jens Jørn Spottag	79992
7092	Ulla Vejby	330958
7093	Thomas Guldberg Madsen	330977
7094	Mogens Holm	337308
7095	Albert Rudbeck Lindhardt	355087
7096	Benjamin Kitter	374434
7097	Mads Kruse	393945
7098	Jakob B. Engmann	395092
7099	Lukas Helt	405245
7100	Mads Wille	405246
7101	Harald Kaiser Hermann	414882
7102	Laurids Skovgaard Andersen	524845
7103	James McAvoy	23842
7104	Jennifer Lawrence	53547
7105	Nicholas Hoult	18733
7106	Rose Byrne	17667
7107	Lucas Till	52459
7108	Edi Gathegi	48970
7109	Morgan Lily	35296
7110	Caleb Landry Jones	67377
7111	Oliver Platt	877
7112	Bill Milner	52508
7113	Laurence Belcher	65346
7114	Matt Craven	12383
7115	Álex González	35293
7116	Rebecca Romijn	2747
7117	Michael Ironside	424
7118	Ray Wise	244
7119	Olek Krupa	23310
7120	David Agranov	58442
7121	Annabelle Wallis	60878
7122	Brendan Fehr	2564
7123	Sasha Pieterse	23535
7124	Jason Beghe	18315
7125	Carlos Besse Peres	58920
7126	Arthur Darbinyan	47715
7127	David Joseph Martinez	87407
7128	Neil Fingleton	120166
7129	Gene Farber	128828
7130	Andy Callaghan	130119
7131	Andrei Zayats	133112
7132	Michael Medeiros	139676
7133	Georg Nikoloff	206721
7134	Éva Magyar	219154
7135	Katrine De Candole	237385
7136	Teresa Mahoney	336593
7137	Peter Stark	360630
7138	Shaun Gerardo	389170
7139	David Crow	391348
7140	Kieran Patrick Campbell	418156
7141	Robert Eames	560558
7142	Sandra Bullock	524
7143	Matt Dillon	392
7144	Jennifer Esposito	5385
7145	Brendan Fraser	1796
7146	Ludacris	16512
7147	Thandiwe Newton	2235
7148	Ryan Phillippe	304
7149	Larenz Tate	5282
7150	Tony Danza	15489
7151	Loretta Devine	5913
7152	Daniel Dae Kim	30350
7153	Ashlyn Sanchez	41324
7154	Shaun Toub	45658
7155	Nona Gaye	11863
7156	Bahar Soomekh	34964
7157	Alexis Rhee	41694
7158	Dato Bachtadze	62433
7159	Jayden Lund	70247
7160	Beverly Todd	70377
7161	Ime Etuk	128799
7162	Sina Fredrich	141436
7163	Bruce Kirby	152501
7164	Joe Ordaz	172768
7165	Glenn Taranto	197831
7166	Octavio Gómez Berríos	208545
7167	Eddie J. Fernandez	208910
7168	Taber Cross	311447
7169	Billy Gallo	416932
7170	Howard Fong	552736
7171	Kathleen York	9786
7172	Fred Astaire	736
7173	Susan Blakely	5330
7174	Richard Chamberlain	1902
7175	Jennifer Jones	820
7176	O.J. Simpson	2280
7177	Robert Wagner	8946
7178	Susan Flannery	83152
7179	Sheila Allen	228515
7180	Norman Burton	11247
7181	Felton Perry	107879
7182	Dabney Coleman	6468
7183	Paul Comi	17382
7184	Jennifer Rhodes	18122
7185	William Bassett	154780
7186	George Wallace	155258
7187	John Crawford	156838
7188	Ross Elliott	228660
7189	Ernie F. Orsatti	300241
7190	Mike Lookinland	305472
7191	Patrick Culliton	305474
7192	William Traylor	318208
7193	Paul King	352375
7194	Norman Grabowski	400350
7195	David Armstrong	410046
7196	Dale Johnson	410444
7197	Scott Newman	633613
7198	Václav Neckář	969
7199	Jaroslav Satoranský	972
7200	Ferdinand Krůta	966
7201	Věra Křesadlová	1233
7202	Tereza Bariová	42613
7203	Karel Mareš	967
7204	Gustav Oplustil	37338
7205	Jiřina Třebická	20578
7206	Otakar Brousek st.	959
7207	Zdena Burdová	29244
7208	Eva Rubínová	35591
7209	Miroslav Saic	38156
7210	Antonín Gondolán	41064
7211	František Gondolán	42615
7212	Jiří Gondolán	42616
7213	Vojtěch Gondolán	42618
7214	Ondřej Gondolán	42617
7215	Miloš Kohout	36905
7216	Oldřich Janovský	29302
7217	Bořivoj Fiala	42614
7218	Miloslav Balcar	40752
7219	Alena Frimlová	1155
7220	Rudolf Pešta	42619
7221	Jarmila Gybasová	42621
7222	Antonín Samler	42620
7223	Eva Vejlová	42622
7224	Helena Velenovská	42623
7225	Marie Benetková	42624
7226	Ivana Horká	42625
7227	Eva Podzimková	42626
7228	Leonard Whiting	60890
7229	Olivia Hussey	2367
7230	John McEnery	17616
7231	Milo O'Shea	7623
7232	Pat Heywood	103505
7233	Michael York	1901
7234	Bruce Robinson	18426
7235	Paul Hardwick	109021
7236	Natasha Parry	109023
7237	Roberto Bisacco	67051
7238	Roy Holder	109024
7239	Keith Skinner	54298
7240	Laurence Olivier	867
7241	Robert Stephens	60624
7242	Carlo Palmucci	152657
7243	Esmeralda Ruspoli	192843
7244	Antonio Pierfederici	331167
7245	Dyson Lovell	494530
7246	Richard Warwick	592887
7247	Jean Simmons	907
7248	Burl Ives	6260
7249	Charles Bickford	11228
7250	Alfonso Bedoya	133825
7251	Chuck Connors	66252
7252	Chuck Hayward	218808
7253	Chuck Roberson	133783
7254	Dorothy Adams	133822
7255	Donald Kerr	135765
7256	Ralph Sanford	180297
7257	Roddy McDowall	2054
7258	Buff Brady	246121
7259	John McKee	325433
7260	Rudy Bowman	343369
7261	Emmanuelle Béart	2333
7262	Hippolyte Girardot	50272
7263	Ticky Holgado	11345
7264	Jean Bouchaud	84538
7265	Gabriel Bacquier	188678
7266	Yvonne Gamy	332252
7267	Antonie Hegerlíková	1180
7268	Eva Očenášová	24514
7269	Václav Tomšovský	31516
7270	Jarmil Škrdlant	21881
7271	Zbyněk Vostřák	32369
7272	Bedřich Bozděch	27332
7273	Oldřich Dědek	21622
7274	Marta Fričová	1153
7275	Roman Holát	32800
7276	Zdeněk Řehoř	1673
7277	Věra Váchová	1373
7278	Jean Marais	2260
7279	Mylène Demongeot	14691
7280	Jacques Dynam	75096
7281	Robert Dalban	41516
7282	Marie-Hélène Arnaud	77914
7283	Christian Toma	129871
7284	Michel Duplaix	80991
7285	Andrée Tainsy	215981
7286	Hugues Wanner	293358
7287	Georges Adet	80596
7288	Jean-Louis Allibert	69929
7289	Marc Arian	217877
7290	Charles Bayard	293372
7291	Jean-Paul Blonday	102882
7292	Philippe Castelli	80555
7293	Michel Charrel	193010
7294	Yvan Chiffre	74973
7295	Gabrielle Doulcet	86098
7296	André Dumas	84325
7297	Marius Gaidon	127583
7298	André Hunebelle	3707
7299	Raymond Pellegrin	60995
7300	Daniel Lecourtois	28972
7301	Louisette Rousseau	82685
7302	Josef Šebánek	6749
7303	Ladislav Adam	40728
7304	Vratislav Čermák	40729
7305	František Debelka	40730
7306	Václav Novotný	40731
7307	František Paska	40732
7308	František Reinstein	40733
7309	Josef Řehořek	40734
7310	Josef Valnoha	40735
7311	J. Řeháček	40736
7312	Josef Kolb	26489
7313	František Svět	40737
7314	Jan Stöckl	40738
7315	Antonín Blažejovský	40739
7316	Josef Kutálek	40740
7317	Stanislav Holubec	40741
7318	Alena Květová	40742
7319	Olga Blechová-Matušková	40743
7320	Alena Freiburgová	40744
7321	Marie Slívová	40745
7322	V. Bartošová	40746
7323	V. Janusová	40747
7324	E. Šnajdrová	40748
7325	Hana Kuberová	39791
7326	Miluše Zelená	40749
7327	Jiří Líbal	40750
7328	Anna Liepoldová	40751
7329	Marie Kovářová	40753
7330	Jarmila Kuchařová	40754
7331	Hana Hanusová	40755
7332	Stanislav Dytrich	17846
7333	F. Řehořková	40757
7334	M. Mejsnarová	40758
7335	Petr Forman	1501
7336	Matěj Forman	24464
7337	Jiří Dědík	40409
7338	Růžena Pružinová	40406
7339	Karel Fridrich	25017
7340	Julie Kučerová-Nezavdalová	40410
7341	Miroslav Jelínek	85017
7342	Cheyenne Jackson	28773
7343	Khalid Abdalla	26390
7344	Lewis Alsamari	17240
7345	Trish Gates	28774
7346	Omar Berdouni	28775
7347	Jamie Harding	29530
7348	Ben Sliney	29531
7349	John Rothman	18799
7350	Olivia Thirlby	36095
7351	Trieste Kelly Dunn	55675
7352	Kate Jennings Grant	49124
7353	Peter Hermann	14454
7354	Marceline Hugot	49048
7355	Richard Bekins	79335
7356	Christian Clemenson	107870
7357	Michael Bofshever	118712
7358	David Alan Basche	200819
7359	Chip Zien	218057
7360	Patrick St. Esprit	271446
7361	Denny Dillon	291803
7362	Susan Blommaert	292767
7363	Simon Poland	322584
7364	Libby Morris Morris	541527
7365	Liza Colón-Zayas	588444
7366	Leigh Zimmerman	628480
7367	Chloe Sirene	676643
7368	Tara Hugo	689505
7369	Opal Alladin	689506
7370	Marie Versini	11655
7371	Mario Adorf	2370
7372	Walter Barnes	14147
7373	Chris Howland	11348
7374	Milivoje Popovič-Mavid	102551
7375	Dunja Rajter	188990
7376	Niksa Stefanini	494486
7377	Husein Čokić	503825
7378	Demeter Bitenc	330609
7379	Tomislav Erak	501594
7380	Hrvoje Svob	102550
7381	Dusko Dobudj	502649
7382	Vladimir Krstulović	339968
7383	Tedy Sotosek	512979
7384	Ana Kranjcec	501213
7385	Gojko Mitić	2320
7386	Karl Dall	23239
7387	Arnold Marquis	20174
7388	Gert Günther Hoffmann	292220
7389	Gerd Duwner	297767
7390	Jochen Schröder	297785
7391	Heinz Lausch	306501
7392	Benno Hoffmann	306993
7393	Gerd D. Samariter	386960
7394	Dieter Assmann	461907
7395	Miroslav Buhin	160658
7396	Peter Ehlebracht	665358
7397	Bedřich Veverka	4796
7398	Jára Kohout	1601
7399	Anna Steimarová	1328
7400	František Paul	23366
7401	Jan W. Speerger	24490
7402	Aša Vašátková	1382
7403	Miroslava Hromková	30047
7404	Přemysl Pražský	3263
7405	Doďa Pražský	28016
7406	Jaroslav Sadílek	29167
7407	Jiří Schreinzer	27195
7408	František Juhan	27289
7409	Jindřich Láznička	21777
7410	Jindřich Fiala	27180
7411	Marie Hrdličková	28613
7412	Ulrich Mühe	7341
7413	Sebastian Koch	7355
7414	Martina Gedeck	14697
7415	Ulrich Tukur	7352
7416	Thomas Thieme	87023
7417	Charly Hübner	82634
7418	Martin Brambach	21568
7419	Herbert Knaup	8023
7420	Werner Dähn	52032
7421	Hinnerk Schönemann	69556
7422	Gitta Schweighöfer	97021
7423	Ludwig Blochberger	106845
7424	Matthias Brenner	145267
7425	Paul Faßnacht	152178
7426	Hans-Uwe Bauer	153050
7427	Sheri Hagen	153144
7428	Hildegard Schroedter	153789
7429	Kai Ivo Baulitz	155527
7430	Fabian von Klitzing	173468
7431	Volkmar Kleinert	173631
7432	Inga Birkenfeld	178026
7433	Paul Maximilian Schüller	181447
7434	Bastian Trost	181983
7435	Hubertus Hartmann	183419
7436	Hervé Hiolle	215911
7437	Anabelle D. Munro	240412
7438	Klaus Münster	275035
7439	Michael Gerber	148545
7440	Harald Polzin	511230
7441	Jean Desailly	16389
7442	Cyrielle Clair	79682
7443	Michel Beaune	16317
7444	Jean-Louis Richard	43100
7445	Marie-Christine Descouard	52370
7446	Bernard-Pierre Donnadieu	51848
7447	Pierre Vernier	64120
7448	Serge Nubret	55781
7449	Pierre Forget	84432
7450	Marc Lamole	99438
7451	Daniel Breton	99563
7452	Jean-Claude Bouillaud	100284
7453	Cheik Doukouré	113738
7454	Beate Kopp	129039
7455	Pascal N'Zonzi	132687
7456	Yves Pignot	141294
7457	Jacques Canselier	160574
7458	Baaron	193020
7459	Michel Berreur	215204
7460	Pierre Saintons	221499
7461	Bernard Marcellin	223703
7462	Sidiki Bakaba	277753
7463	Dany Kogan	689805
7464	Keiko Jokozawa	5225
7465	Majumi Tanaka	5224
7466	Ičiró Nagai	7215
7467	Megumi Hajašibara	10245
7468	Tošihiko Seki	9600
7469	Minori Terada	264198
7470	Kotoe Hacui	326514
7471	Tarako	326699
7472	Hóčú Ócuka	334464
7473	Šin'ja Ótaki	337356
7474	Jošito Jasuhara	340223
7475	Reiko Suzuki	345075
7476	Tomomiči Nišimura	345515
7477	Takuzó Kamijama	356089
7478	Rjúdži Saikači	362956
7479	Hiroši Ito	363815
7480	Mine Eken	374307
7481	Masaši Sugawara	695874
7482	Cutomu Tacumi	9117
7483	Ajano Širaiši	9118
7484	Acuo Omote	357176
7485	Akemi Jamaguči	357177
7486	Michalina Łabacz	244638
7487	Arkadiusz Jakubik	23291
7488	Wasyl Wasylik	405115
7489	Adrian Zaremba	405117
7490	Jacek Braciak	12070
7491	Tomasz Sapryk	44337
7492	Izabela Kuna	88303
7493	Kinga Preis	60643
7494	Jarosław Gruda	144970
7495	Wojciech Zieliński	66120
7496	Lech Dyblik	131945
7497	Gabriela Muskała	80601
7498	Zacharjasz Muszyński	163555
7499	Jerzy Rogalski	137182
7500	Janusz Chabior	122597
7501	Magda Celówna	24391
7502	Ireneusz Czop	69390
7503	Bohdan Graczyk	205314
7504	Anna Grzeszczak	123254
7505	Mateusz Janicki	238418
7506	Eryk Lubos	54321
7507	Filip Pławiak	134980
7508	Grzegorz Wojdon	133173
7509	Ignacy Sut	237197
7510	Oles Fedorčenko	374594
7511	Georgij Povolockij	368843
7512	Monika Roszko	526485
7513	Gera Sandler	567596
7514	Krzysztof Domaszczyński	598986
7515	Grzegorz Domański	621713
7516	Julia Zielińska	623307
7517	Roy Dupuis	12084
7518	Jean-Hugues Anglade	4385
7519	Tom McCamus	72460
7520	Patrice Faye	125448
7521	John Matshikiza	285279
7522	Philip Akin	298289
7523	Justin Craig	343153
7524	David Calderisi	349017
7525	Daniel Janks	421731
7526	Michel Mongeau	534005
7527	Robert Lalonde	556496
7528	James Gallanders	671206
7529	Mack Swain	15763
7530	Georgia Hale	33481
7531	Jack Adams	47891
7532	Mary Williams	47890
7533	Frank Aderias	47892
7534	Leona Aderias	47893
7535	Lillian Adrian	47894
7536	Larry Steers	181094
7537	John Wallace	195101
7538	George Young	230140
7539	Frank Rice	234595
7540	J. C. Fowler	264656
7541	Chris-Pin Martin	294990
7542	Bess Wade	427136
7543	George Holt	572554
7544	Sid Grauman	592787
7545	Peter Lorre	842
7546	Ellen Widmann	11662
7547	Inge Landgut	11591
7548	Otto Wernicke	11483
7549	Gustaf Gründgens	73877
7550	Fritz Odemar	31099
7551	Theo Lingen	20907
7552	Ernst Stahl-Nachbaur	27623
7553	Karl Platen	30780
7554	Rosa Valetti	137325
7555	Hertha von Walther	28024
7556	Heinrich Gretler	176683
7557	Lotte Loebinger	22076
7558	Paul Rehkopf	27778
7559	Rolf Wanka	6456
7560	Sigurd Lohde	236031
7561	Paul Kemp	242522
7562	Rudolf Blümner	253909
7563	Josef Dahmen	253911
7564	Karl Elzer	256620
7565	Bruno Ziener	258133
7566	Carl Balhaus	32198
7567	Hadrian Maria Netto	285746
7568	Leonard Steckel	291765
7569	Edgar Pauly	294135
7570	Ilse Fürstenberg	306175
7571	Else Ehser	308089
7572	Paul Mederow	258611
7573	Friedrich Gnaß	314479
7574	Fred Nurney	339626
7575	Neumann-Schüler	491169
7576	Günter Neumann	575735
7577	Harold Lloyd	839
7578	Mildred Davis	30903
7579	Bill Strother	61626
7580	Noah Young	32915
7581	Fred C. Newmeyer	80691
7582	Mickey Daniels	183715
7583	Marie Mosquini	283686
7584	Gus Leonard	327378
7585	Charles Stevenson	327381
7586	Earl Monah	327405
7587	Sam Lufkin	338039
7588	Helen Gilmore	375866
7589	Gösta Ekman	11299
7590	Emil Jannings	2421
7591	Camilla Horn	85929
7592	William Dieterle	4759
7593	Werner Fuetterer	28077
7594	Frida Richard	257161
7595	Eric Barclay	293526
7596	Emmy Wyda	336790
7597	Hans Brausewetter	427199
7598	Myrna Loy	843
7599	Fredric March	847
7600	Dana Andrews	4220
7601	Teresa Wright	6282
7602	Virginia Mayo	20494
7603	Hoagy Carmichael	90162
7604	Gladys George	15908
7605	Harold Russell	6273
7606	Steve Cochran	62845
7607	Roman Bohnen	575066
7608	Ray Collins	84354
7609	Victor Cutler	665894
7610	Minna Gombell	11557
7611	Don Beddoe	132786
7612	Erskine Sanford	51649
7613	Leo Penn	18787
7614	Blake Edwards	2885
7615	Joyce Compton	114302
7616	Robert Karnes	134810
7617	Earle Hodgins	134956
7618	Walter Baldwin	135180
7619	Lester Dorr	88429
7620	Tom Dugan	139786
7621	Edward Earle	153955
7622	Sidney Clute	177421
7623	William Newell	178379
7624	James Conaty	182173
7625	Billy Engle	184813
7626	Hal K. Dawson	211462
7627	Clancy Cooper	223370
7628	Stuart Holmes	281653
7629	Jack Rice	304448
7630	John Tyrrell	316911
7631	Ray Hyke	325008
7632	Jan Wiley	120008
7633	Ernesto Molinari	387772
7634	Teddy Infuhr	399271
7635	Roy Darmour	408160
7636	Amelita Ward	78696
7637	Michael Hall	594656
7638	Tennessee Ernie Ford	628329
7639	Jackie Jackson	704916
7640	Eidži Okada	8557
7641	Kjóko Kišida	8558
7642	Kódži Micui	53549
7643	Mackenzie Foy	80425
7644	Elyes Gabel	87264
7645	Topher Grace	12093
7646	Leah Cairns	38946
7647	Bill Irwin	84672
7648	Liam Dickinson	116431
7649	Timothée Chalamet	116432
7650	Collette Wolfe	54142
7651	Francis X. McCarthy	152216
7652	Jeff Hephner	91319
7653	Lena Georgas	643687
7654	Audrey Tautou	2077
7655	Mathieu Kassovitz	2273
7656	Rufus	8758
7657	Jamel Debbouze	24170
7658	Isabelle Nanty	24772
7659	Dominique Pinon	6036
7660	Yolande Moreau	18112
7661	Claire Maurier	71510
7662	Michel Robin	9762
7663	Claude Perron	24017
7664	André Dussollier	11296
7665	Dominique Bettenfeld	33130
7666	Franck-Olivier Bonnet	11233
7667	Frédéric Mitterrand	3973
7668	Lorella Cravotta	131729
7669	Urbain Cancelier	135798
7670	Armelle	137491
7671	Luc Palun	144513
7672	Thierry Gibault	145747
7673	Serge Merlin	155259
7674	Artus de Penguern	157869
7675	Christiane Bopp	165211
7676	Alain Floret	168896
7677	Jacques Thébault	185549
7678	Frankie Pain	195971
7679	Andrée Damant	192283
7680	François Viaur	196876
7681	Jean Rupert	191394
7682	Patrick Paroux	214691
7683	Valérie Labro	220695
7684	Jonathan Joss	230833
7685	Kevin Fernandes	242779
7686	Jean-Pierre Becker	246258
7687	Jean-Pol Brissart	256598
7688	Eugène Berthier	283110
7689	Katherina Mai	286904
7690	Dean Baykan	523015
7691	Rudy Galindo	591990
7692	Rosamund Pike	14326
7693	Neil Patrick Harris	2109
7694	Tyler Perry	26117
7695	Kim Dickens	13899
7696	Patrick Fugit	15537
7697	Lisa Banes	22980
7698	Emily Ratajkowski	97259
7699	Casey Wilson	66608
7700	Lola Kirke	113144
7701	Boyd Holbrook	60222
7702	Lee Norris	72447
7703	Jamie McShane	149534
7704	Leonard Kelly-Young	251740
7705	Kathleen Rose Perkins	46778
7706	Casey Ruggieri	208151
7707	Scoot McNairy	56181
7708	Kyle Durant	91686
7709	Davina Joy	97547
7710	Cole Mueller	160641
7711	Lars Slind	118515
7712	Scott Takeda	310287
7713	Cyd Strittmatter	332035
7714	Justin Nesbitt	375607
7715	Lynn Adrianna	441017
7716	Frederick Keeve	479337
7717	Lauren Glazier	494690
7718	Cooper Thornton	511784
7719	Nicolas Fagerberg	539543
7720	James M. Tweedie	557275
7721	Antonio St. James	703516
7722	Chad Lindberg	49689
7723	Billy Connolly	2393
7724	Tony Goldwyn	3381
7725	Masato Harada	25161
7726	Kojuki Kató	49226
7727	Šun Sugata	20300
7728	Šin Kojamada	60305
7729	Scott Wilson	5334
7730	Šičinosuke Nakamura	23357
7731	Hirojuki Sanada	5293
7732	Masaši Odate	145103
7733	Sósuke Ikemacu	120434
7734	John Koyama	310344
7735	Satoši Nikaidó	382800
7736	Seizó Fukumoto	413865
7737	Lloyd Bridges	362
7738	Miguel Ferrer	2339
7739	Ryan Stiles	37516
7740	Tony Edwards	19990
7741	James Lew	22896
7742	Gerald Okamura	23857
7743	Chi Moui Lo	16510
7744	Scott Reeves	14658
7745	Clyde Kusatsu	1866
7746	Jerry Haleva	194337
7747	Ben Lemon	244056
7748	Joseph V. Perry	258528
7749	Greg Michaels	301357
7750	Bob Vila	349204
7751	Larry Lindsey	545449
7752	Raye Hollitt	586517
7753	Michael Colyar	604939
7754	Charlize Theron	340
7755	Judith Ivey	6494
7756	Craig T. Nelson	5171
7757	Tamara Tunie	20579
7758	Heather Matarazzo	17699
7759	George Wyner	17444
7760	Chris Bauer	1977
7761	Leo Burmester	19917
7762	Neal Jones	13556
7763	Mark Deakins	45778
7764	Don King	20885
7765	Delroy Lindo	2363
7766	Monica Keena	13367
7767	Nikita Ager	53565
7768	Roy Jones Jr.	54853
7769	Kim Chan	61999
7770	Debra Monk	77415
7771	Paul Benedict	84208
7772	Juan Carlos Hernández	94237
7773	Vyto Ruginis	123060
7774	Novella Nelson	166185
7775	Benny Nieves	181583
7776	Tom Riis Farrell	214961
7777	Harold Surratt	257282
7778	Michael Lombard	265812
7779	James Saito	269224
7780	Omar Koury	285481
7781	Alan Manson	291076
7782	Caprice Benedetti	305400
7783	E. Katherine Kerr	312477
7784	Susan Kellermann	313838
7785	Gloria Lynne Henry	320175
7786	George Gore II	321337
7787	George Sperdakos	337629
7788	Pamela Gray	375237
7789	Socorro Santiago	391746
7790	Rony Clanton	419088
7791	Frank Licari	432171
7792	Bo Rucker	642869
7793	Kelsey Grammer	9707
7794	Carly Schroeder	33681
7795	Jodi Benson	5445
7796	John Lasseter	3469
7797	Corey Burton	5615
7798	Sheryl Bernstein	5617
7799	Jess Harnell	9157
7800	Dave Foley	17577
7801	Robert Goulet	61588
7802	Madylin Sweeten	172577
7803	Mary Kay Bergman	302512
7804	Bill Murray	450
7805	Andie MacDowell	130
7806	Chris Elliott	53559
7807	Marita Geraghty	113925
7808	Rick Overton	20943
7809	Robin Duke	25381
7810	Mason Gamble	9486
7811	Michael Shannon	37977
7812	Angela Paton	79681
7813	Tony DeGuide	87468
7814	Les Podewell	228602
7815	Hynden Walch	256089
7816	Kim Hunter	6267
7817	Maurice Evans	5507
7818	Linda Harrison	38745
7819	Robert Gunner	69268
7820	Lou Wagner	69269
7821	Jeff Burton	69270
7822	James Daly	122842
7823	Wright King	128608
7824	Paul Lambert	134024
7825	Billy Curtis	245362
7826	James Bacon	333902
7827	Jerry Maren	383856
7828	Army Archerd	705275
7829	Philip Seymour Hoffman	4519
7830	Bethany Whitmore	62104
7831	Christopher Massey	650295
7832	Julie Forsyth	651941
7833	Alf Klimek	679108
7834	Terence Hill	2060
7835	Bud Spencer	2061
7836	Patty Shepard	66968
7837	Giovanni Cianfriglia	41762
7838	Pietro Torrisi	91345
7839	Omero Capanna	111110
7840	Ada Pometti	131767
7841	Manuel de Blas	163105
7842	Deogratias Huerta	340411
7843	Luis Barbero	193487
7844	Giancarlo Bastianoni	321842
7845	Franco Moruzzi	321843
7846	Osiride Pevarello	321844
7847	Rafael Albaicín	321848
7848	Inés Morales	321849
7849	José Luis Lizalde	321852
7850	Franco Ukmar	321855
7851	Rocco Lerro	321955
7852	Emilio Laguna	327851
7853	José Yepes	332099
7854	José Panizo	454671
7855	John Sharp	543375
7856	Meg Ryan	59
7857	Kathleen Quinlan	4949
7858	Kyle MacLachlan	230
7859	Michael Wincott	298
7860	Josh Evans	1971
7861	Costas Mandylor	11390
7862	Dennis Burkley	37344
7863	John Capodice	20779
7864	Will Jordan	37271
7865	Robert LuPone	37272
7866	Billy Idol	34007
7867	Claire Stansfield	26115
7868	Josie Bissett	5910
7869	Mimi Rogers	289
7870	Jennifer Rubin	12197
7871	Karina Lombard	17183
7872	David Allen Brooks	19909
7873	Kelly Hu	31690
7874	Christina Fulton	29649
7875	Titus Welliver	37148
7876	Gretchen Becker	194491
7877	Eric Burdon	54682
7878	Andrew Lauer	58162
7879	Erik Dellums	60069
7880	Rion Hunter	73947
7881	Tay Brooks	79862
7882	Charlie Spradling	93831
7883	Christopher Lawford	101994
7884	Annie McEnroe	104308
7885	Robert F. Kennedy	20104
7886	Robby Krieger	152797
7887	John Densmore	152802
7888	Frank Military	289635
7889	Paul Williams	89305
7890	Bonnie Bramlett	413394
7891	Heidi Schooler	525394
7892	Michael Reardon	525730
7893	Brad Weston	529675
7894	Keith Reddin	204577
7895	Deborah Falconer	593227
7896	Bernard Telsey	671264
7897	Karel Höger	1570
7898	Naděžda Blažíčková	37332
7899	Gregory Walcott	86062
7900	Yanti Somer	33486
7901	Dominic Barto	5453
7902	Salvatore Baccaro	10467
7903	Riccardo Pizzuti	49160
7904	Emilio Messina	66980
7905	Mike Monty	75090
7906	Roberto Messina	110062
7907	Claudio Ruffini	122579
7908	Furio Meniconi	122985
7909	Margherita Horowitz	123279
7910	Luciano Bonanni	299295
7911	Luigi Casellato	321675
7912	Jean Louis	340419
7913	Luigi Antonio Guerra	322973
7914	Gennarino Pappagalli	323167
7915	Renzo Pevarello	326262
7916	Gaetano Scala	351714
7917	Angelo Boscariol	353190
7918	Marcello Meconizzi	353208
7919	Sergio Testori	353781
7920	Antonio Monselesan	688322
7921	Edward Fox	279
7922	Michel Auclair	52928
7923	Alan Badel	16961
7924	Cyril Cusack	8683
7925	Maurice Denham	16388
7926	Olga Georges-Picot	68903
7927	Jacques François	7231
7928	Michael Lonsdale	10686
7929	Jean Martin	8523
7930	Anton Rodgers	21857
7931	Delphine Seyrig	9372
7932	Jean Sorel	12145
7933	Philippe Léotard	15644
7934	Andréa Ferréol	13236
7935	Howard Vernon	10841
7936	Féodor Atkine	52067
7937	Maurice Teynac	66480
7938	Donald Sinden	67381
7939	Ronald Pickup	70704
7940	Eric Porter	72541
7941	Terence Alexander	72546
7942	Robert Le Béal	80389
7943	Gilberte Géniat	81554
7944	Adrien Cayla-Legrand	81646
7945	Gérard Buhr	81918
7946	Nicolas Vogel	83985
7947	Robert Favart	87708
7948	Timothy West	115207
7949	Jean Champion	117462
7950	David Swift	193699
7951	Max Faulkner	193988
7952	Colette Bergé	192563
7953	Barrie Ingham	282378
7954	Nicholas Young	283358
7955	Bernard Archard	287109
7956	Van Doude	293432
7957	Tony Britton	304776
7958	David Kernan	314073
7959	Bin Šimada	11987
7960	Iemasa Kajumi	11961
7961	Miina Tominaga	16018
7962	Robert Clotworthy	292520
7963	Čika Sakamoto	299278
7964	Jošiko Sakakibara	331723
7965	Rihoko Jošida	335252
7966	Akiko Cuboi	340224
7967	Minoru Jada	340579
7968	Džódži Janami	344362
7969	Hisako Kjóda	349927
7970	Masako Sugaja	357823
7971	Tecuo Mizutori	360194
7972	Kóhei Mijauči	360734
7973	Mugihito	362457
7974	Goró Naja	374523
7975	Takako Sasuga	375017
7976	Mahito Cudžimura	270442
7977	Candice Bergen	6358
7978	Brian Oulton	23858
7979	Trevor Howard	6669
7980	John Mills	2737
7981	Ian Charleson	7724
7982	Athol Fugard	74864
7983	Günther Maria Halmer	12096
7984	Saeed Jaffrey	33977
7985	Geraldine James	23498
7986	Amrish Puri	20958
7987	Roshan Seth	9370
7988	Rohini Hattangadi	176991
7989	John Clements	199718
7990	Nigel Hawthorne	2374
7991	Shreeram Lagoo	179632
7992	Om Puri	4431
7993	Marius Weyers	22968
7994	Ray Burdis	8625
7995	Nana Palsikar	189904
7996	John Quentin	23374
7997	Pankaj Kapur	34968
7998	Mohan Agashe	60118
7999	Supriya Pathak Kapur	60198
8000	Dominic Guard	96203
8001	Michael Hordern	110929
8002	Richard Vernon	129893
8003	Dalip Tahil	150069
8004	Sudhir Dalvi	183023
8005	Alok Nath	381885
8006	Terrence Hardiman	202683
8007	James Cossins	204243
8008	Rupert Frazer	208649
8009	Ken Hutchison	212200
8010	Suhas Palshikar	252428
8011	Amarjeet	253636
8012	Christopher Good	279056
8013	David Sibley	281590
8014	Avis Bunnage	284975
8015	Charu Bala Chokshi	290965
8016	Jon Croft	292620
8017	John Savident	292697
8018	Stanley McGeagh	292724
8019	John Tatum	293135
8020	Ernest Clark	293157
8021	Bernard Hepton	297212
8022	Geoffrey Chater	298579
8023	Harold Coyne	298597
8024	Gerald Sim	306230
8025	Richard Leech	324012
8026	Winston Ntshona	431213
8027	Neena Gupta	436359
8028	David Markham	506183
8029	Michael Bryant	551688
8030	Tom Alter	571780
8031	John Vine	595179
8032	Elizabeth Taylor	914
8033	Jack Carson	11254
8034	Judith Anderson	7498
8035	Madeleine Sherwood	77284
8036	Larry Gates	104093
8037	Hugh Corcoran	267870
8038	Robert 'Rusty' Stevens	297393
8039	Walter Merrill	343036
8040	Jeane Wood	370057
8041	Patty Ann Gerrity	446574
8042	Gene Hackman	410
8043	Frances McDormand	148
8044	Gailard Sartain	12850
8045	Park Overall	1926
8046	Ed Geldart	77332
8047	Darius McCrary	104676
8048	Rick Zieff	193071
8049	Mark Jeffrey Miller	199328
8050	Robert F. Colesberry	244245
8051	Frederick Zollo	244246
8052	Simeon Teague	263885
8053	Ralnardo Davis	263886
8054	Everett Thrall	277835
8055	Dan Desmond	310774
8056	Lou Walker	320309
8057	Geoffrey Nauffts	359004
8058	John P. Fertitta	376452
8059	Robert Glaudini	390616
8060	Tonea Stewart	522449
8061	Mert Hatfield	525817
8062	Paul Henderson	709190
8063	Shirley MacLaine	566
8064	Fred MacMurray	846
8065	Jack Kruschen	17404
8066	David Lewis	56318
8067	Hope Holiday	249031
8068	Naomi Stevens	227161
8069	Johnny Seven	300223
8070	Joyce Jameson	205018
8071	Willard Waterman	249036
8072	David White	248776
8073	Edie Adams	72946
8074	Fortune Cookie	248509
8075	Paul Picerni	123056
8076	Hal Smith	135550
8077	Franca Marzi	299285
8078	David Macklin	300225
8079	Mason Curry	399293
8080	Lynn Cartwright	405589
8081	Cliff Curtis	15482
8082	George Henare	25164
8083	Mamaengaroa Kerr-Bell	93853
8084	Riwia Brown	167500
8085	Taungaroa Emile	253870
8086	Jim Ngaata	287552
8087	Mohammad Amir Naji	7564
8088	Amir Farrokh Hashemian	7563
8089	Bahare Seddiqi	12023
8090	Fereshte Sarabandi	20543
8091	Christopher Maleki	401610
8092	Anatolij Solonicyn	16615
8093	Nikolaj Griňko	9709
8094	Bolot Bejšenalijev	21545
8095	Nikolaj Burljajev	14964
8096	Jurij Nikulin	54300
8097	Rolan Bykov	2762
8098	Dmitrij Orlovskij	7304
8099	Michail Kononov	35002
8100	Irina Tarkovskaja	161430
8101	Vladimir Guskov	31110
8102	Vasilij Cygankov	446846
8103	Nikolay Kutuzov	486986
8104	Nikolaj Grabbe	581948
8105	Júzó Kajama	222638
8106	Cutomu Jamazaki	11498
8107	Kjóko Kagawa	11581
8108	Reiko Dan	109379
8109	Mijuki Kuwano	109896
8110	Haruko Sugimura	12200
8111	Jošitaka Zuši	11501
8112	Kin Sugai	11642
8113	Čišú Rjú	7853
8114	Kinujo Tanaka	7855
8115	Akiko Kazami	65289
8116	Jutaka Sada	183360
8117	Šódži Óki	270447
8118	Mičiko Araki	297807
8119	Akemi Negiši	322416
8120	Terumi Niki	357989
8121	Šóiči Hirose	381683
8122	Noriko Honma	382130
8123	Joširo Učida	598324
8124	Tom Burlinson	11245
8125	Ron Leibman	18386
8126	Vincent Ball	10470
8127	Gia Carides	20390
8128	Judy Morris	150436
8129	Tommy Woodcock	244616
8130	Richard Terrill	447808
8131	Redmond Phillips	482154
8132	Julie Andrews	734
8133	Eleanor Parker	11882
8134	Richard Haydn	11331
8135	Peggy Wood	11898
8136	Heather Menzies-Urich	54669
8137	Nicholas Hammond	43044
8138	Angela Cartwright	72443
8139	Kym Karath	368456
8140	Anna Lee	69964
8141	Portia Nelson	317946
8142	Doris Lloyd	234833
8143	Bernard Sell	340654
8144	Gilchrist Stuart	348379
8145	Rentaró Mikuni	13569
8146	Šima Iwašita	10250
8147	Akira Išihama	13553
8148	Akidži Kobajaši	11365
8149	Kei Sató	24687
8150	Hisaši Igawa	11349
8151	Tecuró Tanba	122748
8152	Joširó Aoki	295026
8153	Nakadžiró Tomita	375537
8154	Nigel Bruce	24314
8155	Sydney Chaplin	17823
8156	Geraldine Chaplin	526
8157	Michael Chaplin	55588
8158	Oona Chaplin	55589
8159	Charles Chaplin Jr.	55590
8160	Josephine Chaplin	55609
8161	Frank Mills	135802
8162	Cyril Delevanti	95918
8163	Eric Wilton	232602
8164	Dorothy Ford	235061
8165	Florence Wix	266059
8166	Millicent Patrick	315731
8167	Leonard Mudie	341035
8168	Jack Deery	443511
8169	Paul Ravel	458244
8170	John Barton	458264
8171	Tom Ferrandini	458521
8172	Sherry Moreland	583387
8173	Václav Postránecký	1070
8174	Stanislav Fišer	13403
8175	Dalimil Klapka	20118
8176	Maria Falconetti	30196
8177	Eugene Silvain	6203
8178	André Berley	6202
8179	Maurice Schutz	6201
8180	Antonin Artaud	46474
8181	Michel Simon	23397
8182	Alexandre Mihalesco	76893
8183	Léon Larive	235519
8184	Jean Aymé	263845
8185	Gilbert Dalleu	266672
8186	Paul Jorge	279901
8187	Armand Lurville	290652
8188	Raymond Narlay	297075
8189	Louis Ravet	314571
8190	Chaim Topol	14302
8191	Norma Crane	67004
8192	Leonard Frey	14275
8193	Molly Picon	95924
8194	Paul Mann	95764
8195	Paul Michael Glaser	3422
8196	Michele Marsh	325010
8197	Neva Small	325011
8198	Ray Lovelock	10689
8199	Aharon Ipalé	20079
8200	Roger Lloyd Pack	8423
8201	Rosalind Harris	66936
8202	George Little	122497
8203	Marika Rivera	129839
8204	Louis Zorich	192619
8205	Patience Collier	289709
8206	Arnold Diamond	291095
8207	Carl Jaffe	298618
8208	Brian Coburn	298814
8209	Zvee Scooler	385332
8210	Shimen Ruskin	423439
8211	Miki Iveria	488469
8212	Jacob Kalich	489743
8213	Alfie Scopp	528539
8214	Ruth Madoc	654282
8215	Harry Ditson	666237
8216	Tacuja Mihaši	23846
8217	Susumu Fudžita	7222
8218	Kó Nišimura	24672
8219	Kazuo Kitamura	200787
8220	Masao Oda	290993
8221	Džun Hamamura	295150
8222	Kiwami Sazanka	295405
8223	Kazuo Kató	296744
8224	Kódži Kijomura	375299
8225	Dan O'Herlihy	11828
8226	Frank Overton	11429
8227	Larry Hagman	5258
8228	William Hansen	211008
8229	Russell Hardie	262290
8230	Russell Collins	134033
8231	Sorrell Booke	81668
8232	Hildy Parks	211174
8233	Dom DeLuise	5992
8234	Janet Ward	109852
8235	Fritz Weaver	54421
8236	Lino Ventura	2013
8237	Jean Carmet	6367
8238	Evelyne Bouix	61367
8239	Roger Hanin	7868
8240	Robin Renucci	12138
8241	Louis Seigner	61514
8242	Denis Lavant	15625
8243	Héléna Manson	60464
8244	Paul Pavel	14395
8245	Arlette Thomas	65684
8246	Jean-Roger Caussimon	71816
8247	Françoise Seigner	76751
8248	Nathalie Nerval	78781
8249	Max Montavon	79952
8250	Yvette Etiévant	81713
8251	Jean-Marie Proslier	83989
8252	Georges Lycan	85721
8253	Sylvain Lévignac	82868
8254	Christiane Jean	87826
8255	Mado Maurin	103815
8256	Franck Cabot-David	117938
8257	Jean-Pierre Bernard	135358
8258	Emmanuel Curtil	143688
8259	Denise Bailly	190913
8260	Madeleine Bouchez	193279
8261	Corinne Dacla	195366
8262	Luc Delhumeau	195950
8263	Pierre Negre	196587
8264	Jacques Riberolles	192569
8265	Candice Patou	192685
8266	René Morard	218331
8267	Hervé Furic	274129
8268	Christian Benedetti	577054
8269	Aras Bulut Iynemli	104357
8270	Deniz Baysal	289536
8271	Nisa Sofiya Aksongur	412482
8272	Celile Toyon Uysal	177410
8273	Ferit Kaya	337510
8274	Hayal Köseoğlu	336120
8275	Deniz Celiloğlu	369210
8276	Mesut Akusta	253078
8277	Yurdaer Okur	332499
8278	İlker Aksum	76611
8279	Cankat Aydos	377383
8280	Yıldıray Şahinler	334834
8281	Sarp Akkaya	71045
8282	Doğukan Polat	380209
8283	Emre Yetim	420101
8284	Fevzi Can Açıkgöz	496275
8285	Gülçin Kültür Şahin	496276
8286	Serhan Onat	528877
8287	Özgür Avşar	538791
8288	Serdar Akülker	538792
8289	Ertan Dönmez	578165
8290	Zafer Şahin	592072
8291	Kenan Çınar	636849
8292	Esra Gezginci	637698
8293	Kaan Mutlu	672385
8294	İskender Han Kahramanoğlu	679451
8295	Jackdersin Yeter	682756
8296	İlker Çanga	687960
8297	Kirsten Dunst	1821
8298	Ryan Whitney	45107
8299	Debbon Ayer	45108
8300	Thomas Jay Ryan	45239
8301	Jane Adams	45240
8302	Paulie Litt	48188
8303	Josh Flitter	50117
8304	David Cross	55111
8305	Deirdre O'Connell	100177
8306	Lola Daehler	677744
8307	Billy Crudup	6496
8308	Jessica Lange	17
8309	Alison Lohman	7326
8310	Matthew McGrory	16532
8311	David Denman	32973
8312	Ada Tai	32948
8313	Arlene Tai	32949
8314	Perry Walston	32781
8315	Hailey Anne Nelson	30367
8316	Zac Gardner	32969
8317	Miley Cyrus	32950
8318	Metz Duites	33051
8319	Benjamin Plaut	32782
8320	Billy Redden	55389
8321	Daniel Wallace	73025
8322	Loudon Wainwright III	325445
8323	R. Keith Harris	79270
8324	Trevor Gagnon	89435
8325	Russell Hodgkinson	147523
8326	Bevin Kaye	247691
8327	Frank Hoyt Taylor	355326
8328	Bonnie Johnson	369998
8329	Karla Droege	495494
8330	John Lowell	663660
8331	Roy Scheider	56
8332	Lorraine Gary	61
8333	Carl Gottlieb	20844
8334	Jeffrey Kramer	256689
8335	Susan Backlinie	81914
8336	Steven Spielberg	3091
8337	Jay Mello	124241
8338	Chris Rebello	124242
8339	Lee Fierro	124258
8340	Jeffrey Voorhees	124259
8341	Craig Kingsbury	124260
8342	Robert Carroll	124261
8343	Beverly Powers	219637
8344	Fritzi Jane Courtney	257516
8345	Alfred Wilde	257517
8346	Ayn Ruymen	360634
8347	Dorothy Fielding	427422
8348	Jonathan Filley	668493
8349	Danny Huston	20076
8350	Naomi Watts	257
8351	Carly Nahon	20505
8352	Clea DuVall	2255
8353	Charlotte Gainsbourg	10232
8354	Claire Pakis	20514
8355	John Rubinstein	13042
8356	Denis O'Hare	49613
8357	Annie Corley	18049
8358	Kevin Chapman	18698
8359	Lew Temple	35580
8360	Carlo Alban	45973
8361	Catherine Dent	56195
8362	Tom Irwin	64448
8363	Michael Finnell	291708
8364	Verda Davenport	472282
8365	John Boyd West	498208
8366	Leslie Nielsen	863
8367	Priscilla Presley	5313
8368	Ricardo Montalban	18406
8369	Susan Beaubian	21043
8370	Nancy Marchand	9124
8371	Tiny Ron	75308
8372	Joe Grifasi	5304
8373	John Houseman	6244
8374	Weird Al Yankovic	30382
8375	Conrad E. Palmisano	50882
8376	Brinke Stevens	52365
8377	Tom Dugan	54412
8378	Mark Holton	60407
8379	Raye Birk	81607
8380	Nicholas Worth	84693
8381	David Gale	90771
8382	Robert K. Weiss	267380
8383	Joyce Brothers	301770
8384	Dick Enberg	353544
8385	Stuart Lancaster	374381
8386	Edwina Moore	389979
8387	Lorali Hart	461473
8388	Steven Swadling	581803
8389	Angelina Jolie	556
8390	Jeffrey Donovan	36189
8391	Michael Kelly	10657
8392	Colm Feore	11950
8393	Jason Butler Harner	39512
8394	Amy Ryan	35584
8395	Geoff Pierson	55684
8396	Frank Wood	47739
8397	Reed Birney	83111
8398	Gattlin Griffith	75050
8399	Ric Sarabia	269786
8400	Debra Christofferson	17671
8401	Pamela Dunlap	168519
8402	Dale Dickey	65747
8403	Eddie Alderson	205644
8404	Michael McCafferty	14834
8405	Joshua Logan Moore	219348
8406	Zach Mills	35657
8407	Colby French	35112
8408	Peter Breitmayer	245404
8409	Phil Van Tee	101025
8410	Lily Knight	227204
8411	Gregg Binkley	84209
8412	E.J. Callahan	234154
8413	Devon Gearhart	34871
8414	Kerry Hennessy	257426
8415	Jen Lilley	123681
8416	Rob Watt	170722
8417	Michael Dempsey	289805
8418	Bruce Holman	292516
8419	Dominick Dunne	331744
8420	Julie Berlin	400178
8421	Mary Stein	437559
8422	Christopher Karl Johnson	447238
8423	Jeffrey Hutchinson	490832
8424	Pete Brown	491280
8425	J.P. Bumstead	651396
8426	Roger Hewlett	701829
8427	Will Smith	27
8428	Lisa Bonet	522
8429	Regina King	18088
8430	Loren Dean	297
8431	Ian Hart	4552
8432	Jake Busey	215
8433	Scott Caan	12964
8434	Jason Lee	2491
8435	James Le Gros	6018
8436	Jack Black	2122
8437	Bodhi Elfman	55556
8438	Anna Gunn	37297
8439	Jascha Washington	37811
8440	Arthur J. Nascarella	69090
8441	Grant Heslov	49375
8442	Carlos Gómez	30263
8443	Seth Green	6420
8444	Jade Wu	36075
8445	Steve Gonzales	45189
8446	Bobby Boriello	48171
8447	Brian Markinson	74971
8448	Rebeca Silva	224873
8449	Pete Sutton	248058
8450	Christopher Lawrence	261942
8451	Tom Quinn	390654
8452	Michael Chong	424722
8453	Eric Olson	447449
8454	Mark Byrne	466561
8455	Carl Mergenthaler	671387
8456	Paul Rudd	8237
8457	Kathy Baker	5112
8458	Erykah Badu	16671
8459	Kate Nelligan	4498
8460	K. Todd Freeman	24604
8461	Paz de la Huerta	17456
8462	Skye McCole Bartusiak	20495
8463	John Irving	72152
8464	Heavy D	559359
8465	Lonnie Farmer	691490
8466	Jamie Bell	2777
8467	Jamie Draven	34651
8468	Gary Lewis	10025
8469	Mike Elliot	144061
8470	Nicola Blackwell	177662
8471	Charlie Hardwick	14204
8472	Patrick Malahide	35315
8473	Barbara Leigh-Hunt	115344
8474	Diana Kent	218
8475	Neil North	150023
8476	Lee Williams	53061
8477	Merelina Kendall	143834
8478	Darren Jacobs	120021
8479	Jean Heywood	286261
8480	Colin Maclachlan	304733
8481	Imogen Claire	309680
8482	Tracey Wilkinson	500045
8483	Luke Fetherston	538735
8484	Sharon Percy	551929
8485	Cathy Moriarty	1928
8486	Nicholas Colasanto	18701
8487	Theresa Saldana	12770
8488	Mario Gallo	237368
8489	John Turturro	503
8490	Allen Joseph	222
8491	Martin Scorsese	3073
8492	Jimmy Williams	88820
8493	Gil Perkins	148231
8494	Kevin Breslin	102414
8495	Peter Savage	185520
8496	Gene LeBell	238028
8497	Lori Anne Flax	257500
8498	Kevin Mahon	257501
8499	Marty Denkin	257503
8500	Vincent Barbi	291328
8501	Geraldine Smith	294843
8502	McKenzie Westmore	306218
8503	Mardik Martin	93892
8504	Harvey Parry	319585
8505	Richard McMurray	448898
8506	Thomas Murphy	652945
8507	Jan Josef Liefers	8402
8508	Thierry van Werveke	69202
8509	Moritz Bleibtreu	2432
8510	Huub Stapel	5199
8511	Leonard Lansink	10451
8512	Ralph Herforth	9290
8513	Hark Bohm	11931
8514	Jürgen Becker	240190
8515	Markus Knüfken	12108
8516	Florian Fitz	7937
8517	Tyron Ricketts	18795
8518	Hannes Jaenicke	6194
8519	Christiane Paul	5316
8520	Willi Thomczyk	230802
8521	Corinna Harfouch	10244
8522	Cornelia Froboess	25392
8523	Jenny Elvers-Elbertzhagen	59877
8524	Muriel Baumeister	8403
8525	Thomas Jahn	3729
8526	Tobias Schenke	4827
8527	Bernd Eichinger	19991
8528	Xenia Seeberg	45154
8529	Sönke Wortmann	58433
8530	Clelia Sarto	105417
8531	Janine Kunze	183144
8532	Eva Mannschott	185715
8533	Wolfgang Kaven	251108
8534	Anton Rattinger	261865
8535	Corinna Flock	304683
8536	Ludwig Boettger	385187
8537	Vladimir Weigl	452031
8538	Salvatore Pascale	503694
8539	Bernd Hoffmann	670406
8540	Josef Gruss	3182
8541	Yves Barsacq	14149
8542	Patrick Préjean	25276
8543	Martin Lamotte	17927
8544	Jean-Pierre Darras	79116
8545	Pierre Semmler	125255
8546	José Luccioni	191976
8547	Thierry Ragueneau	201437
8548	Mostéfa Stiti	667751
8549	Chiara Mastroianni	8240
8550	Catherine Deneuve	535
8551	Danielle Darrieux	13363
8552	Simon Abkarian	53763
8553	Arié Elmaleh	54434
8554	Iggy Pop	20954
8555	Gena Rowlands	6457
8556	Stéphane Foenkinos	76129
8557	Mathias Mlekuz	92942
8558	François Jerosme	144214
8559	Paul Bandey	145756
8560	Sophie Arthuys	221522
8561	Barbara Scaff	236156
8562	Jennifer Aniston	515
8563	Harry Connick, Jr.	5931
8564	John Mahoney	5922
8565	Eli Marienthal	20913
8566	Oliver M. Johnston Jr.	4443
8567	Frank Thomas	4442
8568	Zack Eginton	262804
8569	Charles Howerton	358925
8570	Patti Tippo	509504
8571	Jan Waldekranz	532742
8572	Jan Kačer	1614
8573	Miroslav Macháček	1435
8574	Josef Kotapiš	29095
8575	Jana Hlaváčková	34463
8576	Antonín Pražák	40544
8577	Ludvík Volf	43278
8578	Petr Štěpánek	7263
8579	Michal Kožuch	1708
8580	Jana Hájková	43279
8581	Zdeněk Sedláček	1675
8582	Zdeněk Chlum	43280
8583	Jiří Stivín	32644
8584	Vlastimil Hašek	1610
8585	Pavel Landovský	1470
8586	Vítězslav Vejražka	22957
8587	Yeong-su Oh	15700
8588	Ki-duk Kim	3697
8589	Yeong-min Kim	15601
8590	Jae-kyeong Seo	15744
8591	Dae-han Ji	112816
8592	Jeong-yeong Kim	254830
8593	Alan Arkin	6026
8594	Efrem Zimbalist Jr.	56043
8595	Jack Weston	11485
8596	Samantha Jones	56042
8597	Robby Benson	5435
8598	Mel Ferrer	10579
8599	Jean Del Val	159762
8600	Gary Morgan	603531
8601	Eddie Redmayne	39572
8602	Alex Sharp	255396
8603	Sacha Baron Cohen	19883
8604	Yahya Abdul-Mateen II	190325
8605	Mark Rylance	4364
8606	Frank Langella	300
8607	Danny Flaherty	198310
8608	Noah Robbins	357138
8609	John Doman	59520
8610	Michael Keaton	184
8611	Kelvin Harrison Jr.	322839
8612	Caitlin Fitzgerald	56492
8613	Alice Kremelberg	426115
8614	Juliette Angelo	81676
8615	Kevin O'Donnell	58324
8616	Damian Young	57161
8617	Michelle Hurst	257243
8618	Max Adler	63216
8619	Shawn Parsons	255419
8620	C.J. Wilson	382418
8621	Marco Lama	383587
8622	Alex Henderson	598181
8623	David Fierro	208206
8624	Walter Cronkite	5215
8625	Dylan LaRay	613890
8626	Ryan O'Neal	4226
8627	Marisa Berenson	1985
8628	Patrick Magee	8296
8629	Hardy Krüger	23819
8630	Steven Berkoff	15416
8631	Diana Körner	88207
8632	Murray Melvin	57084
8633	Peter Cellier	35001
8634	Dominic Savage	24175
8635	Anthony Sharp	57258
8636	John Bindon	142029
8637	David Bonté Morley	147340
8638	Marie Kean	147341
8639	Leon Vitali	147344
8640	Leonard Rossiter	197461
8641	Harry Towb	239449
8642	Frank Middlemass	291397
8643	George Sewell	293199
8644	Roger Booth	296280
8645	Barry Jackson	296850
8646	Godfrey Quigley	304671
8647	Frederick Schiller	323681
8648	Liam Redmond	324010
8649	Gay Hamilton	347948
8650	Jonathan Cecil	481306
8651	Anthony Dawes	481880
8652	Katharina Kubrick	516335
8653	Fionnula Flanagan	14317
8654	Pat Shortt	83324
8655	David Rawle	147103
8656	Lisa Hannigan	147105
8657	Lucy O'Connell	162204
8658	Paul Young	309228
8659	Grethe Mogensen	458624
8660	Anthony Quinn	469
8661	Omar Sharif	2295
8662	José Ferrer	2289
8663	Anthony Quayle	4286
8664	Claude Rains	2460
8665	Arthur Kennedy	4489
8666	Donald Wolfit	10861
8667	I.S. Johar	185509
8668	David Lean	2973
8669	Jack Hedley	8791
8670	Ian MacNaughton	14996
8671	Jack Gwillim	82793
8672	Fernando Sancho	57540
8673	Daniel Moynihan	116227
8674	Howard Marion-Crawford	134616
8675	Rafael Hernández	194913
8676	Harry Fowler	201926
8677	Michel Ray	211461
8678	Robert Bolt	89536
8679	James Hayter	217540
8680	Robert Rietty	229641
8681	Zia Mohyeddin	270253
8682	Gamil Ratib	271492
8683	Basil Dignam	287097
8684	Stuart Saunders	292594
8685	Clive Morton	295529
8686	Ernie Rice	298832
8687	Bruce Beepy	299244
8688	Norman Rossington	302369
8689	Henry Oscar	323785
8690	Bryan Pringle	348226
8691	John Robinson	387936
8692	Noel Howlett	482159
8693	Barry Warren	482182
8694	John Ruddock	552304
8695	André Treton	64987
8696	Jacques Dufilho	15515
8697	Tsilla Chelton	53868
8698	Martin Lartigue	64985
8699	Michel Isella	64986
8700	Robert Rollis	81195
8701	Jean Richard	84467
8702	Claude Confortès	85149
8703	Pierre Trabaud	86092
8704	Christophe Bourseiller	162260
8705	Yves Peneau	191361
8706	François Lartigue	277598
8707	François Boyer	290748
8708	Michèle Méritz	496182
8709	Werner Krauss	6704
8710	Conrad Veidt	6703
8711	Friedrich Fehér	6702
8712	Lil Dagover	11536
8713	Hans Heinrich von Twardowski	32939
8714	Rudolf Lettinger	184694
8715	Helena Vondráčková	1392
8716	Zdeněk Vašek	39794
8717	Miloš Vosmanský	39747
8718	Hana Zaoralová	44615
8719	Antonín Procházka	1579
8720	Jana Tomečková	26314
8721	Jiří Juřina	44967
8722	Karel Semerád	40553
8723	Ivan Rajniak	1723
8724	Štefan Kvietik	1727
8725	Vlado Müller	1641
8726	Slavo Drozd	14556
8727	Alena Skokanová	70705
8728	Július Vašek	1724
8729	Viera Strnisková	1336
8730	Martin Hollý ml.	7651
8731	Ernest Kostelník	60290
8732	Jozef Šimonovič st.	58178
8733	Gizela Veclová	63818
8734	Terézia Hurbanová-Kronerová	27523
8735	Viera Radványiová	60394
8736	Coleen Gray	6076
8737	Vince Edwards	62794
8738	Jay C. Flippen	100123
8739	Ted de Corsia	109303
8740	Elisha Cook Jr.	34037
8741	Joe Sawyer	132828
8742	Marie Windsor	5522
8743	James Edwards	19989
8744	Richard Reeves	57541
8745	James Griffith	128156
8746	Charles Cane	132966
8747	Sol Gorss	182421
8748	Steve Mitchell	212923
8749	Jay Adler	214359
8750	Frank Richards	291342
8751	Cecil Elliott	319582
8752	Kola Kwariani	494395
8753	Pernilla Allwin	123588
8754	Bertil Guve	59175
8755	Börje Ahlstedt	70927
8756	Harriet Andersson	6546
8757	Gunnar Björnstrand	6557
8758	Allan Edwall	7767
8759	Stina Ekblad	127431
8760	Ewa Fröling	48886
8761	Erland Josephson	6550
8762	Jarl Kulle	10010
8763	Käbi Laretei	131444
8764	Mona Malm	320561
8765	Jan Malmsjö	130819
8766	Christina Schollin	216426
8767	Gunn Wållgren	198259
8768	Pernilla Wahlgren	530287
8769	Kristina Adolphson	6547
8770	Lena Olin	2299
8771	Pernilla August	6752
8772	Kerstin Tidelius	22143
8773	Heinz Hopf	17891
8774	Marie-Hélène Breillat	75010
8775	Hans Strååt	98374
8776	Axel Düberg	135887
8777	Georg Årlin	198265
8778	Daniel Bell	219782
8779	Per Mattsson	235219
8780	Inga Ålenius	318712
8781	Ernst Günther	109068
8782	Lars-Owe Carlberg	323319
8783	Henry 'Nypan' Nyberg	323326
8784	Carl Billquist	144625
8785	Majlis Granlund	108098
8786	Olle Hilding	92975
8787	Gösta Prüzelius	144627
8788	Nils Brandt	103271
8789	Marianne Karlbeck-Strååt	127457
8790	Gus Dahlström	412454
8791	Marianne Aminoff	416563
8792	Siv Ericks	419256
8793	Sune Mangs	419310
8794	Marrit Ohlsson	422752
8795	Eva von Hanno	435559
8796	Mona Andersson	459877
8797	Marianne Nielsen	474733
8798	Hugo Hasslo	475855
8799	Svea Holst	484747
8800	Nils Kyndel	486138
8801	Maud Hyttenberg	493703
8802	Åke Lagergren	502772
8803	Sven-Erik Jacobsson	525635
8804	Sonya Hedenbratt	528910
8805	Gerd Andersson	532640
8806	Emelie Werkö	549017
8807	Kristian Almgren	549018
8808	Linda Krüger	574689
8809	Krister Hell	633619
8810	Maksim Munzuk	11408
8811	Jurij Solomin	11461
8812	Svetlana Danilčenko	11537
8813	Alexandr Pjatkov	340939
8814	Daniil Nětrebin	353157
8815	Barbara Stanwyck	910
8816	Edward G. Robinson	899
8817	Porter Hall	132988
8818	Jean Heather	65818
8819	Tom Powers	285140
8820	Richard Gaines	305506
8821	Fortunio Bonanova	177604
8822	John Philliber	379542
8823	Clarence Muse	6081
8824	John Berry	15084
8825	Raymond Chandler	81361
8826	George Magrill	181875
8827	Teala Loring	182066
8828	Edmund Cobb	78649
8829	Sam McDaniel	93152
8830	Douglas Spencer	251946
8831	Dick Rush	296684
8832	Kernan Cripps	318345
8833	Eddie Hall	326179
8834	Betty Farrington	506017
8835	Lamberto Maggiorani	32743
8836	Enzo Staiola	32744
8837	Lianella Carell	32745
8838	Gino Saltamerenda	32746
8839	Vittorio Antonucci	32747
8840	Giulio Chiari	61594
8841	Carlo Jachino	61595
8842	Emma Druetti	61596
8843	Nando Bruno	9869
8844	Memmo Carotenuto	71820
8845	Giulio Battiferri	88433
8846	Eolo Capritti	221456
8847	Umberto Spadaro	298807
8848	Fausto Guerzoni	298911
8849	Elena Altieri	299448
8850	Peppino Spadaro	299513
8851	Nastassja Kinski	557
8852	Dean Stockwell	238
8853	Bernhard Wicki	7548
8854	John Lurie	9545
8855	Tom Farrell	134052
8856	Viva	150169
8857	Hunter Carson	242742
8858	Grażyna Szapołowska	20567
8859	Stefania Iwińska	385149
8860	Piotr Machalica	22518
8861	Artur Barciś	9828
8862	Jan Piechociński	138443
8863	Jean-Pierre Léaud	15643
8864	Guy Decomble	23243
8865	Albert Rémy	74281
8866	François Truffaut	75
8867	Jean-Claude Brialy	2423
8868	Georges Flamant	61855
8869	Jeanne Moreau	6499
8870	Jacques Demy	13977
8871	Jean Douchet	35542
8872	Pierre Repp	81551
8873	Claude Mansard	83292
8874	Marius Laurey	87242
8875	Louise Chevalier	229657
8876	Yvonne Claudie	264100
8877	Serge Moati	277945
8878	François Nocher	298905
8879	Humphrey Bogart	748
8880	Walter Huston	6271
8881	Tim Holt	2555
8882	Bruce Bennett	71090
8883	Barton MacLane	23326
8884	Arturo Soto Rangel	278835
8885	Manuel Dondé	275089
8886	Margarito Luna	294182
8887	Robert Blake	249
8888	Guillermo Calles	290210
8889	Roberto Cañedo	197112
8890	Jacqueline Dalya	126806
8891	Ralph Dunn	205730
8892	Martin Garralaga	308115
8893	Jack Holt	86583
8894	John Huston	2945
8895	Julian Rivero	302586
8896	Jay Silverheels	123162
8897	Ildefonso Vega	296028
8898	Ignacio Villalbazo	288065
8899	Clifton Young	143657
8900	Spencer Chan	474072
8901	Diane Cilento	14312
8902	Alberto Lupo	5488
8903	Adolfo Celi	5705
8904	Venantino Venantini	11989
8905	Alec McCowen	4813
8906	Fausto Tozzi	110850
8907	Maxine Audley	114983
8908	George O'Brien	27545
8909	Janet Gaynor	2422
8910	Margaret Livingston	115043
8911	Bodil Rosing	102215
8912	Jane Winton	389432
8913	Arthur Housman	299497
8914	Sally Eilers	4376
8915	Gibson Gowland	10603
8916	Barry Norton	24357
8917	Herman Bing	88234
8918	Sidney Bracey	226999
8919	Clarence Wilson	102274
8920	Eddie Boland	263187
8921	Thomas Jefferson	266469
8922	Bob Kortman	282118
8923	Phillips Smalley	328155
8924	Jóko Cukasa	60286
8925	Tacuo Macumura	11394
8926	Takamaru Sasaki	10789
8927	Harald Madsen	39320
8928	Carl Schenstrøm	39321
8929	O.E. Hasse	55670
8930	Hans Unterkircher	277653
8931	Maly Delschaft	284820
8932	Lin-Manuel Miranda	217233
8933	Jonathan Groff	44159
8934	Renée Elise Goldsberry	58256
8935	Daveed Diggs	255501
8936	Emmy Raver-Lampman	451874
8937	Leslie Odom Jr.	87765
8938	Anthony Ramos	324489
8939	Chris Jackson	298248
8940	Okieriete Onaodowan	378873
8941	Jasmine Cephas Jones	200105
8942	Phillipa Soo	460018
8943	Ariana DeBose	495270
8944	Ephraim Sykes	84805
8945	Mikael Almqvist	509456
8946	Lajos Őze	6636
8947	László Márkus	41767
8948	Ferenc Bencze	42696
8949	Sándor Horváth	320255
8950	István Dégi	320607
8951	Zoltán Latinovits	29586
8952	Gábor Nagy	55127
8953	György Bánffy	319268
8954	József Vándor	48576
8955	Noémi Apor	122528
8956	Ildikó Pécsi	40438
8957	Marianna Moór	320514
8958	Rita Békés	202689
8959	György Cserhalmi	10549
8960	Gábor Kiss	61871
8961	Gabriella Kiss	328138
8962	Winona Ryder	162
8963	Dianne Wiest	600
8964	Robert Oliveri	86942
8965	Caroline Aaron	24712
8966	Vincent Price	885
8967	Bryan Larkin	1972
8968	Steven Brill	9440
8969	Dick Anthony Williams	85890
8970	Nick Carter	87252
8971	Aaron Lustig	93843
8972	Alan Fudge	144251
8973	Mary Jane Heath	393710
8974	Peter Palmer	440673
8975	Biff Yeager	495335
8976	Kiefer Sutherland	500
8977	Radha Mitchell	2243
8978	Paula Jai Parker	52253
8979	Tia Texada	32874
8980	Richard T. Jones	9524
8981	Keith Nobbs	55662
8982	James MacDonald	14480
8983	Julio Oscar Mechoso	22524
8984	Dean Cochran	52327
8985	Tory Kittles	25206
8986	Ben Foster	17579
8987	Yorgo Constantine	175057
8988	Mia Cottet	355707
8989	Svetlana Efremova	544564
8990	Jane Bordeaux	605700
8991	Dean Tarrolly	702400
8992	Arian Ash	704524
8993	Magda Vášáryová	1076
8994	Zdeněk Kozák st.	1659
8995	Pavel Wuršer	31458
8996	Josef Otoupal	47784
8997	Jiří Kodeš	17401
8998	Václav Knop	33046
8999	Alexej Okuněv	45394
9000	Rudolf Stärz	32983
9001	Tomáš Töpfer	1024
9002	Ivan Rajmont	22409
9003	Rudolf Serina	47786
9004	Hana Forejtová	46231
9005	Miroslav Lahoda	46456
9006	Miko Hughes	14635
9007	Max Elliott Slade	87088
9008	Joe Spano	23402
9009	Michele Little	606367
9010	Googy Gress	8034
9011	Max Grodénchik	2137
9012	Ned Vaughn	20322
9013	Jim Meskimen	9556
9014	Austin O'Brien	12134
9015	Meadow Williams	36176
9016	Andy Milder	46432
9017	Thom Barry	49224
9018	Jeffrey Kluger	73660
9019	Jim Lovell	73659
9020	Ben Marley	87887
9021	Joseph Culp	119539
9022	Paul Mantee	154525
9023	Chauntal Lewis	210827
9024	John Short	257940
9025	Todd Hallowell	285504
9026	Gabriel Jarret	286492
9027	John Wheeler	297262
9028	Chris Moore	310281
9029	Mark Wheeler	326995
9030	John Bishop	330731
9031	Lee Anne Matusek	364427
9032	Jean Speegle Howard	371297
9033	Neil Armstrong	77146
9034	Carl Gabriel Yorke	575024
9035	Tory Christopher	595900
9036	Karen Martin	602043
9037	Frank Cavestani	695948
9038	Ben Bode	708409
9039	John Timothy Botka	709548
9040	Chris Sarandon	6359
9041	Glenn Shadix	18808
9042	Paul Reubens	12139
9043	Ken Page	10743
9044	Danny Elfman	26044
9045	Sherwood Ball	35675
9046	Edward Ivory	35679
9047	Greg Proops	37513
9048	Billie Hayes	663943
9049	Dorsey Wright	27550
9050	Don Dacus	61850
9051	Nicholas Ray	2172
9052	Charlotte Rae	10299
9053	Miles Chapin	207645
9054	Suzanna Love	11012
9055	Charlayne Woodard	14333
9056	Laird Stuart	14670
9057	Melba Moore	37875
9058	Adrienne King	10992
9059	Fern Tailer	220397
9060	Charles Denny	220398
9061	Agness Breen	220400
9062	Ellen Foley	265699
9063	Antonia Rey	287676
9064	Héctor Mercado	331200
9065	Nell Carter	93741
9066	Renn Woods	432570
9067	Chuck Patterson	485508
9068	Megan Murphy	582650
9069	France Mayotte	649228
9070	Robert Vrchota	7265
9071	Antonín Kryl	40037
9072	Martin Štěpánek	26204
9073	Kateřina Frýbová	29202
9074	Josef Engel	38333
9075	Petr Fleischer	40038
9076	Aladar Petický	40039
9077	Jiří Plachý	38342
9078	Karel Tokar	40040
9079	Ladislav Tokar	40041
9080	Jan Vítek	38176
9081	Zoltán Tokar	40042
9082	Jiří Koutný	24975
9083	Nora Krčmářová	31420
9084	Ladislav Mrnka	30503
9085	Bedřich Zelenka	32459
9086	Josef Burda	29126
9087	Karel Sekera	29354
9088	Johana Saudková	40043
9089	Jaroslava Závodská	40044
9090	Vittorio Gassman	4539
9091	Jason Patric	872
9092	Brad Renfro	9363
9093	Geoffrey Wigdor	70730
9094	Jonathan Tucker	6583
9095	William Butler	2578
9096	Eugene Byrd	17380
9097	Dash Mihok	7951
9098	John Slattery	14404
9099	James Pickens Jr.	22554
9100	Aida Turturro	5700
9101	Wendell Pierce	56574
9102	Peter McRobbie	86928
9103	Ben Hammer	196015
9104	Zachary Ansley	283389
9105	Joe Perrino	300231
9106	Michael J. Burg	308857
9107	Larry Romano	312125
9108	Tom Signorelli	320024
9109	George Vincent	320201
9110	Joe Urla	324463
9111	Mary Testa	340000
9112	Mary B. McCann	371218
9113	Billy Malone	410253
9114	Danny Mastrogiorgio	471102
9115	Brian Donahue	480991
9116	Justin Halliwell	583895
9117	Carmine Parisi	635987
9118	Ruth Maleczech	650733
9119	Klaus Maria Brandauer	2368
9120	Michael Kitchen	34743
9121	Michael Gough	14623
9122	Suzanna Hamilton	25399
9123	Rachel Kempson	58899
9124	Graham Crowden	225417
9125	Leslie Phillips	60471
9126	Donal McCann	21788
9127	Maryam d'Abo	14420
9128	Malick Bowens	9673
9129	Iman	61530
9130	Sinja Dieks	152736
9131	Stephen B. Grimes	283255
9132	Tristam Jelinek	303258
9133	Ingrid Bergman	746
9134	Paul Henreid	48347
9135	Sydney Greenstreet	14470
9136	Dooley Wilson	6655
9137	Joy Page	177602
9138	John Qualen	88314
9139	Madeleine Lebeau	67843
9140	Marcel Dalio	9918
9141	Dan Seymour	12467
9142	George J. Lewis	24346
9143	Trude Berliner	30059
9144	S.Z. Sakall	29950
9145	Paul Porcasi	85532
9146	George Meeker	87984
9147	Curt Bois	153619
9148	Alberto Morin	178621
9149	Dewey Robinson	135127
9150	Frank Puglia	200292
9151	Gregory Gaye	217773
9152	Helmut Dantine	92932
9153	Leonid Kinskey	231978
9154	Henry Rowland	231980
9155	Frank Mazzola	235598
9156	Wolfgang Zilzer	27421
9157	Leon Belasco	237347
9158	Ludwig Stössel	177880
9159	Paul Panzer	263133
9160	Olaf Hytten	264993
9161	Ellinor Vanderveer	266052
9162	Oliver Blake	302712
9163	Jacques Lory	319064
9164	Sol Murgi	320115
9165	Adrienne D'Ambricourt	329734
9166	Herbert Evans	331483
9167	Gerald Oliver Smith	333363
9168	Louis Mercier	333479
9169	Ilka Grüning	335752
9170	Dick Botiller	338443
9171	Michael Mark	338765
9172	Victor Romito	339350
9173	Louis V. Arco	392093
9174	Eugene Borden	393979
9175	Lester Sharpe	402481
9176	George Sorel	427140
9177	Jacques Vanaire	427145
9178	Georges Renavent	427157
9179	George M. Carleton	529734
9180	Enrique Acosta	572105
9181	Melie Chang	592994
9182	Charles La Torre	668634
9183	Steven Robertson	39308
9184	Romola Garai	21071
9185	Brenda Fricker	5391
9186	Tom Hickey	200418
9187	Frank McCusker	238871
9188	Michèle Forbes	359243
9189	Emmet Kirwan	381595
9190	Adam Fergus	441139
9191	Deirdre O'Kane	550500
9192	Ray McAnally	63087
9193	Aidan Quinn	468
9194	Cherie Lunghi	5168
9195	Álvaro Guerrero	9498
9196	Fred Melamed	56769
9197	Sigifredo Ismare	124233
9198	Rolf Gray	124234
9199	Asuncion Ontiveros	124235
9200	Alejandrino Moya	124236
9201	Bercelio Moya	696139
9202	Šigeru Čiba	21598
9203	Ikue Ótani	21121
9204	Tomohiro Nišimura	270278
9205	Tanie Kitabajaši	295173
9206	Hitoši Takagi	299310
9207	Naoki Tacuta	319299
9208	Noriko Hidaka	332107
9209	Čie Kódžiro	360731
9210	Aaron Murphy	34384
9211	Chris Williams	34456
9212	Craig Hall	35597
9213	Diane Ladd	241
9214	Patrick John Flueger	50951
9215	Paul Rodriguez	53805
9216	Chris Bruno	56866
9217	Campbell Cooley	59421
9218	Jessica Cauffiel	59618
9219	Alison Bruce	68027
9220	Antony Starr	87032
9221	Mark Ruka	102688
9222	Eric Pierpoint	20232
9223	Charles Halford	109044
9224	Michael Mantell	134812
9225	Wesley Dowdel	158905
9226	Saginaw Grant	209191
9227	Carlos Lacámara	223172
9228	Joe Howard	371505
9229	Daniel Sing	431744
9230	Latham Gaines	476263
9231	Kristen Marie Jensen	611536
9232	Annie Whittle	658393
9233	Todd Emerson	676238
9234	Eleanor Audley	17450
9235	June Foray	11862
9236	Betty Lou Gerson	32748
9237	William Phipps	15211
9238	Harold Berens	293276
9239	Mike Douglas	457790
9240	Bill Fraser	486481
9241	Lucille Bliss	660675
9242	Charles Boyer	749
9243	Fernand Gravey	58082
9244	Roger Tréville	77963
9245	Moustache	82713
9246	Jacques Ramade	82806
9247	Olga Valéry	208695
9248	Edward Malin	279179
9249	Hanuš Bor	32056
9250	Jan Čízek	43284
9251	Josef Stráník	43285
9252	Jan Malát	40909
9253	Stanislav Šimek	41398
9254	Josef Větrovec	1025
9255	Věra Macků	43286
9256	Josef Haukvic st.	29120
9257	Marie Brožová	1112
9258	Eva Kubešová	1239
9259	Ladislav Navrátil	29334
9260	Zdeněk Braunschläger	1606
9261	Štěpánka Řeháková	39696
9262	Táňa Blažejová	40178
9263	Willy Kuk-Znamínko	41671
9264	Štěpán Novotný	40220
9265	Jiří Svárovský	40222
9266	Ruth Gordon	2500
9267	Ellen Geer	23480
9268	Eric Christmas	236214
9269	Hal Ashby	3392
9270	G. Wood	39491
9271	Vivian Pickles	204772
9272	Ray K. Goman	326316
9273	Woody Allen	346
9274	Yves Brainville	8588
9275	Jessica Harper	4771
9276	Frank Adu	60792
9277	Luce Fabiole	74370
9278	Alfred Lutter III	78110
9279	Jacques Maury	89433
9280	Alan Tilvern	136819
9281	Aubrey Morris	70059
9282	Tony Jay	198531
9283	Anne Lonnberg	191937
9284	Jack Berard	191044
9285	Rebecca Potok	213742
9286	Lloyd Battista	215666
9287	Denise Péron	296847
9288	Sandor Elès	302805
9289	Clément Thierry	304280
9290	Despo Diamantidou	500759
9291	Oleg Meňšikov	2298
9292	Nikita Michalkov	3194
9293	Ingeborga Dapkunajtě	58257
9294	André Oumansky	32105
9295	Vjačeslav Tichonov	6046
9296	Vladimir Iljin	20864
9297	Jevgenij Mironov	8466
9298	Marat Bašarov	5165
9299	Naděžda Michalkova	60015
9300	Světlana Krjučkova	127012
9301	Georgij Dronov	146064
9302	Alla Kazanskaja	343051
9303	Ljubov Rudněva	343054
9304	Nina Archipova	347345
9305	Vladimir Bělousov	377475
9306	Oleg Feoktistov	402815
9307	Inna Uljanova	481816
9308	Avangard Leonťjev	682896
9309	Sidney Poitier	464
9310	Katharine Hepburn	812
9311	Katharine Houghton	45519
9312	Cecil Kellaway	11361
9313	Beah Richards	14527
9314	Isabel Sanford	81377
9315	Roy Glenn	223377
9316	Barbara Randolph	348608
9317	John Hudkins	348609
9318	Alexandra Hay	348625
9319	D'Urville Martin	324422
9320	Skip Martin	348629
9321	Tom Heaton	157933
9322	Jacqueline Fontaine	221340
9323	Grace Gaynor	348633
9324	Irène Jacob	2185
9325	Jean-Louis Trintignant	2292
9326	Jean-Pierre Lorit	49437
9327	Samuel Le Bihan	16499
9328	Juliette Binoche	1954
9329	Julie Delpy	2749
9330	Teco Celio	67233
9331	Marion Stalens	142199
9332	Nader Farman	195712
9333	Benoît Régent	227631
9334	Roland Carey	303663
9335	Frédérique Feder	305063
9336	Anne Theurillat	446850
9337	Jean Schlegel	634834
9338	Kirsten Sheridan	8811
9339	Eanna MacLiam	8810
9340	Ruth McCabe	9549
9341	Hugh O'Conor	21824
9342	Adrian Dunbar	57268
9343	Naomi Sheridan	452144
9344	Julie Hale	567722
9345	Isuzu Jamada	11098
9346	Hiroši Tačikawa	10822
9347	Akira Tani	382156
9348	Masahiro Motoki	10726
9349	Rjóko Hirosue	5251
9350	Kazuko Jošijuki	20599
9351	Kimiko Jo	70913
9352	Takaši Sasano	71343
9353	Tetta Sugimoto	149910
9354	Sanae Mijata	169653
9355	Jóko Imamoto	282538
9356	Tacuhito Okuda	293971
9357	Tacuo Jamada	302393
9358	Tóru Minegiši	330733
9359	Mari Hajašida	526316
9360	Louis Wolheim	88479
9361	Lew Ayres	11216
9362	John Wray	305574
9363	Arnold Lucy	305923
9364	Ben Alexander	113052
9365	Scott Kolk	204378
9366	Owen Davis Jr.	113177
9367	Walter Rogers	370666
9368	William Bakewell	96055
9369	Russell Gleason	281651
9370	Harold Goodwin	255800
9371	Slim Summerville	33007
9372	Beryl Mercer	11606
9373	Edmund Breese	103160
9374	Tom London	15154
9375	Vince Barnett	24310
9376	Fred Zinnemann	3139
9377	Wolfgang Staudte	7546
9378	Zasu Pitts	65713
9379	Joan Marsh	87819
9380	Raymond Griffith	93774
9381	Yola d'Avril	135766
9382	Frederick Kohner	218945
9383	Edwin Maxwell	267488
9384	Dorothy Vernon	198789
9385	G. Pat Collins	306238
9386	Ellen Hall	181076
9387	Arthur Gardner	329603
9388	Jack McHugh	375978
9389	Maurice Murphy	134630
9390	Glen Boles	610025
9391	Keidžu Kobajaši	222632
9392	Akira Kubo	10677
9393	Kunie Tanaka	283019
9394	Takako Irie	331376
9395	Júnosuke Itó	329129
9396	Liv Ullmann	920
9397	Bibi Andersson	6551
9398	Gunnel Lindblom	6552
9399	Barbro Hiort af Ornäs	117104
9400	Anita Wall	145643
9401	Wenche Foss	18064
9402	Bertil Norström	135897
9403	Ingmar Bergman	2824
9404	Rossana Mariano	563381
9405	Lena Bergman	563382
9406	Merna Kennedy	639062
9407	Hugh Saxon	283166
9408	George Davis	290866
9409	Jack P. Pierce	340310
9410	Joseph Cotten	195
9411	Dame May Whitty	7494
9412	Angela Lansbury	561
9413	Emil Rameau	187105
9414	Edmund Breon	19914
9415	Halliwell Hobbes	11344
9416	Tom Stevenson	268613
9417	Alec Craig	24318
9418	Terry Moore	11879
9419	Maude Fealy	82466
9420	Jakob Gimpel	143466
9421	Syd Saylor	178712
9422	Jack Kirk	183008
9423	Gary Gray	221928
9424	Morgan Wallace	262531
9425	Wilson Benge	264326
9426	Arthur Blake	272217
9427	Lillian Bronson	268553
9428	Milton Rosmer	290632
9429	Barbara Everest	299393
9430	Heather Thatcher	329729
9431	Clive Morgan	329730
9432	Charles McNaughton	329731
9433	Bobbie Hale	329732
9434	Leonard Carey	329733
9435	Jerzy Stuhr	2381
9436	Małgorzata Ząbkowska	60259
9437	Ewa Pokas	670722
9438	Stefan Czyżewski	385104
9439	Marek Litewka	144692
9440	Bogusław Sobczuk	144877
9441	Krzysztof Zanussi	3436
9442	Andrzej Jurga	670486
9443	Aleksandra Kisielewska	61583
9444	Antonina Barczewska	8517
9445	Krzysztof Wierzbicki	92463
9446	Tadeusz Sobolewski	662653
9447	Roman Stankiewicz	675051
9448	Alicja Bienicewicz	371814
9449	Tadeusz Rzepka	681450
9450	Włodzimierz Maciudziński	468537
9451	Feliks Szajnert	448936
9452	Jolanta Brzezińska	664412
9453	Teresa Szmigielówna	136451
9454	Jacek Turalik	681451
9455	Andrzej Warchal	48126
9456	Danuta Wiercińska	681452
9457	Zofia Framer	681453
9458	Marian Osuch	681454
9459	Jean Arthur	735
9460	Edward Arnold	11209
9461	Guy Kibbee	72614
9462	Eugene Pallette	51598
9463	Harry Carey	14460
9464	Astrid Allwyn	198865
9465	Ruth Donnelly	94850
9466	Grant Mitchell	90350
9467	William Demarest	15498
9468	Maurice Costello	18332
9469	Russell Simpson	11458
9470	Ann Doran	5288
9471	Dorothy Comingore	51648
9472	Evalyn Knapp	66404
9473	Lorna Gray	72766
9474	Craig Stevens	81403
9475	John Russell	85044
9476	Dave Willock	132403
9477	Robert Sterling	131641
9478	Byron Foulger	132417
9479	Walter Sande	134031
9480	Mary Gordon	127747
9481	George Chandler	90248
9482	Lafe McKee	78660
9483	Pierre Watkin	139784
9484	William Worthington	154051
9485	Harry Hayden	154861
9486	James Millican	176790
9487	Ferris Taylor	178629
9488	Louis Jean Heydt	180723
9489	Harry C. Bradley	181889
9490	Lynton Brent	183143
9491	Wade Boteler	184149
9492	Neal Dodd	184316
9493	Arthur Loft	133288
9494	Robert Middlemass	186009
9495	Emma Tansey	194379
9496	Joe Devlin	201743
9497	Jack Gardner	206857
9498	Frances Gifford	216435
9499	Arthur Thalasso	217904
9500	George McKay	216354
9501	Allan Cavan	251332
9502	John Dilson	251941
9503	Eddy Chandler	252110
9504	Margaret Mann	268073
9505	Fred Toones	272027
9506	Anne Cornwall	272226
9507	Helen Jerome Eddy	273613
9508	George Cooper	281963
9509	Ralph McCullough	283157
9510	Wyndham Standing	250286
9511	Dickie Jones	299333
9512	Walter Soderling	299316
9513	Vera Lewis	239055
9514	Maurice Cass	304310
9515	Jack Cooper	316895
9516	Jack Richardson	318890
9517	Harlan Briggs	319562
9518	Howard M. Mitchell	319844
9519	Tommy Bupp	320127
9520	Georgia Caine	320129
9521	Joe King	309365
9522	Nick Copeland	326678
9523	Carl Stockdale	327292
9524	Henry Herbert	328070
9525	Mary MacLaren	329967
9526	George Lloyd	330749
9527	Robert Emmett Keane	330763
9528	Charles R. Moore	333089
9529	Jesse Graves	334338
9530	Lloyd Whitlock	335379
9531	Delmar Watson	335391
9532	June Gittelson	336975
9533	Eric Mayne	337009
9534	Matt McHugh	339911
9535	Davison Clark	357202
9536	Gene Morgan	375985
9537	Erville Alderson	55792
9538	Douglas Evans	406390
9539	Count Stefenelli	432631
9540	Billy Lechner	432640
9541	Frank Jaquet	133443
9542	Dora Clement	452504
9543	Cliff Hall	474301
9544	Beatrice Curtis	568447
9545	Frank Austin	572443
9546	Frank M. Thomas	575071
9547	Edwin August	640709
9548	Vernon Dent	647919
9549	Mitchell Ingraham	682130
9550	Frank Otto	684536
9551	Shohreh Aghdashloo	13595
9552	Mozhan Marnò	104090
9553	Navid Negahban	107599
9554	Parviz Sayyad	252663
9555	Prasanna Puwanarajah	336547
9556	Noor Taher	672521
9557	Jerzy Radziwiłowicz	15720
9558	Krystyna Janda	18878
9559	Tadeusz Łomnicki	52683
9560	Jacek Łomnicki	118452
9561	Michał Tarkowski	44519
9562	Piotr Cieślak	568152
9563	Wiesław Wójcik	144469
9564	Krystyna Zachwatowicz	232709
9565	Magda Teresa Wójcik	146583
9566	Leonard Zajączkowski	568153
9567	Jacek Domański	141115
9568	Zdzisław Kozień	141264
9569	Irena Laskowska	61473
9570	Wiesław Drzewicz	134173
9571	Kazimierz Kaczor	134095
9572	Ewa Ziętek	134001
9573	Elżbieta Borkowska-Szukszta	568154
9574	Andrzej Grąziewicz	139893
9575	Krzysztof Kiersznowski	132987
9576	Dorota Stalińska	134082
9577	Zdzisław Szymborski	139930
9578	Stanisław Frąckowiak	383526
9579	Edmund Karwański	568155
9580	Stefania Kornacka	568156
9581	Henryk Łapiński	547736
9582	Jerzy Moniak	146599
9583	Irena Oberska	568158
9584	Zbigniew Płoszaj	437882
9585	Juliusz Roland	568159
9586	Maciej Rayzacher	369354
9587	Grzegorz Skurski	453121
9588	Mariusz Świgoń	568160
9589	Krystyna Wolańska	481794
9590	Andrzej Wykrętowicz	568161
9591	Feliks Falk	11121
9592	Witold Holtz	441921
9593	Ilona Łepkowska	136197
9594	Stanisław Michalik	568162
9595	Ray Romano	7334
9596	Denis Leary	2285
9597	Goran Višnjič	2022
9598	Cedric the Entertainer	12970
9599	Diedrich Bader	18676
9600	Alan Tudyk	18000
9601	Jane Krakowski	6013
9602	Chris Wedge	5090
9603	Lorri Bagley	42467
9604	Rafael Mukajev	121902
9605	Jegor Pazenko	123201
9606	Alexandr Karpilovskij	93241
9607	Vladimir Koševoj	135807
9608	Vladimir Zajcev	139067
9609	Alexandr Semčev	144519
9610	Mitzi McCall	237673
9611	Sergej Treběsov	332642
9612	Holmes Osborne	18413
9613	Daveigh Chase	5430
9614	James Duval	19985
9615	Patrick Swayze	137
9616	Seth Rogen	31866
9617	Noah Wyle	5896
9618	Drew Barrymore	90
9619	Jolene Purdy	99509
9620	Lisa K. Wyatt	36151
9621	Ashley Tisdale	35603
9622	Jerry Trainor	74703
9623	Fran Kranz	51918
9624	Gary Lundy	66366
9625	Rachel Winfree	77227
9626	Stuart Stone	87171
9627	Lee Weaver	135561
9628	Tiler Peck	160175
9629	Patience Cleveland	247455
9630	Nancy Juvonen	285809
9631	Alex Greenwald	334871
9632	Dee Austin Robertson	338364
9633	Arthur Taxier	403659
9634	Marina Malota Darling	672887
9635	Ginnifer Goodwin	35245
9636	Jason Bateman	15082
9637	Jenny Slate	64402
9638	Nate Torrence	45144
9639	Tommy Chong	17556
9640	Shakira	34277
9641	Raymond S. Persi	296582
9642	Kristen Bell	15843
9643	Katie Lowes	77208
9644	John DiMaggio	53214
9645	Jeremy Milton	237555
9646	Fabienne Rawley	237556
9647	Jesse Corti	291890
9648	Fuschia!	407620
9649	Kath Soucie	601572
9650	Della Saba	674429
9651	Gita Reddy	681425
9652	Marek Brodský	17379
9653	Veronika Jeníková	16275
9654	Valérie Zawadská	1432
9655	Alena Karešová	1032
9656	Radúz Chmelík	24998
9657	Miloslav Kopečný	42294
9658	Milena Glogarová	81177
9659	Miloslava Kykalová-Ebrová	68261
9660	Libuše Matějová	30970
9661	Jan Semotán	1052
9662	Břetislav Slováček	29374
9663	Vítězslav Sutr	46416
9664	Petr Šícha	3300
9665	Jaroslav Večeřa	32953
9666	Julian Doyle	37293
9667	Connie Booth	32134
9668	Sandy Johnson	151365
9669	Rita Davies	153673
9670	Bee Duffell	291069
9671	Roy Forge Smith	300117
9672	Maggie Weston	628444
9673	Kris Kristofferson	2288
9674	Freddy Rodríguez	8108
9675	Manu Tupou	213176
9676	Robert Kurcz	245325
9677	Júiči Hibi	300744
9678	Marc Vann	341378
9679	David Dunard	356331
9680	Alex Skuby	382169
9681	James Deuter	476075
9682	Robert Kim	537571
9683	Jeff Imada	650370
9684	Karel Černý	1636
9685	Jan Pivec	4791
9686	Jaroslav Orlický	28615
9687	Viktor Socha	28719
9688	Vladimír Štros	28621
9689	Josef Dvorský	28616
9690	Olga Augustová	27318
9691	Ada Karlovský	27172
9692	Emanuel Hříbal	27273
9693	Jaroslav Malina	29750
9694	Inka Zemánková	29852
9695	František Haller	28584
9696	Ladislav Janeček	28493
9697	František V. Kučera	27292
9698	Paige O'Hara	576
9699	Jerry Orbach	5305
9700	David Ogden Stiers	4612
9701	Bradley Pierce	11434
9702	Rex Everhart	99958
9703	Kimmy Robertson	61302
9704	Dennis Dun	70381
9705	Carolin Walter	157890
9706	Jo Anne Worley	391025
9707	Liz Callaway	431655
9708	Vanna Bonta	693771
9709	Kim Novak	193
9710	Barbara Bel Geddes	5978
9711	Tom Helmore	7535
9712	Konstantin Shayne	317064
9713	Lee Patrick	32290
9714	June Jocelyn	113491
9715	Raymond Bailey	134112
9716	Steve Conte	250154
9717	Molly Dodd	348341
9718	Nina Shipman	361882
9719	Sara Taft	400397
9720	Ezelle Poule	474504
9721	Peter Sellers	485
9722	George C. Scott	905
9723	Slim Pickens	50346
9724	Peter Bull	11769
9725	Tracy Reed	109220
9726	Frank Berry	61478
9727	Roy Stephens	61479
9728	Paul Tamarin	61480
9729	Jack Creley	220196
9730	Victor Harrington	289996
9731	Glenn Beck	297333
9732	Laurence Herder	297343
9733	Hal Galili	298827
9734	Roland Brand	486502
9735	Bengt Ekerot	6558
9736	Nils Poppe	20236
9737	Inga Gill	20435
9738	Maud Hansson	20447
9739	Lars Lind	21772
9740	Åke Fridell	131638
9741	Anders Ek	167203
9742	Gunnar Olsson	395713
9743	Inga Landgré	195035
9744	Tor Borong	202207
9745	Bertil Anderberg	202623
9746	Ulf Johanson	188801
9747	Sten Ardenstam	419235
9748	Georg Skarstedt	419286
9749	Nils Whiten	494084
9750	Uno Larsson	499374
9751	Lennart Lilja	501430
9752	Ragnar Sörman	501698
9753	Erik Strandmark	501939
9754	Monica Lindman	520185
9755	Gunlög Hagberg	522360
9756	Gordon Löwenadler	522390
9757	Bengt Gillberg	529979
9758	Lennart Tollén	548583
9759	Harry Asklund	565060
9760	Josef Norman	588248
9761	Catherine Berg	629749
9762	Rosie Perez	580
9763	Richard Boes	9431
9764	Isaach De Bankolé	22447
9765	Béatrice Dalle	4386
9766	Stéphane Boucher	19903
9767	Paolo Bonacelli	6137
9768	Matti Pellonpää	2198
9769	Kari Väänänen	2242
9770	Sakari Kuosmanen	12742
9771	Emile Abossolo M'bo	202424
9772	Lisanne Falk	237430
9773	Grigorij Melikbekjan	362741
9774	Tomi Salmela	128615
9775	Max Schreck	6707
9776	Gustav von Wangenheim	6705
9777	Greta Schröder	11068
9778	Georg H. Schnell	43083
9779	Ruth Landshoff	43082
9780	John Gottowt	9956
9781	Gustav Botz	43076
9782	Max Nemetz	43072
9783	Wolfgang Heinz	43066
9784	Albert Venohr	43092
9785	Eric van Viele	43065
9786	Alexander Granach	6706
9787	Karl Etlinger	327410
9788	Guido Herzfeld	335746
9789	Loni Nest	494022
9790	Emily Watson	1992
9791	Katrin Cartlidge	42560
9792	Jean-Marc Barr	740
9793	Udo Kier	2567
9794	Mikkel Gaup	56305
9795	Sandra Voe	175320
9796	Phil McCall	175321
9797	David Bateson	283336
9798	Charles Kearney	317686
9799	Roef Ragas	436728
9800	Gavin Mitchell	491505
9801	Dorte Rømer	634183
9802	James Nesbitt	4398
9803	Allan Gildea	4399
9804	Gerard Crossan	13401
9805	Tim Pigott-Smith	51097
9806	Nicholas Farrell	15527
9807	Christopher Villiers	20323
9808	Darren Healy	23280
9809	Eva Birthistle	17665
9810	David Clayton Rogers	56851
9811	David Pearse	177951
9812	Mary Moulds	205563
9813	Kathy Kiera Clarke	436023
9814	Radek Holub	1059
9815	Viktorie Knotková	1218
9816	Antonín Molčík	9056
9817	Roman Slovák	49262
9818	Bohumír Starý	49291
9819	Zdeněk Dušek	1653
9820	Václav Helšus	26349
9821	Milena Šajdková	43656
9822	Jindřich Khain	42866
9823	Dimo Lipitkovský	57086
9824	Arnošt Janeček	43780
9825	František Stupka	48315
9826	Peter Weller	509
9827	Ariel Winter	39017
9828	Michael McKean	5117
9829	David Selby	6360
9830	James Patrick Stuart	197403
9831	Danny Jacobs	498968
9832	Greg Eagles	665826
9833	Michael Emerson	29653
9834	Mark Valley	37798
9835	Carlos Alazraqui	16287
9836	Dee Bradley Baker	19877
9837	Paget Brewster	4503
9838	Maria Canals-Barrera	18847
9839	Townsend Coleman	7395
9840	Grey Griffin	24726
9841	Yuri Lowenthal	70288
9842	Tress MacNeille	11599
9843	Conan O'Brien	59869
9844	Rob Paulsen	7396
9845	Tara Strong	69424
9846	Bruce Timm	8785
9847	Gary Anthony Williams	37922
9848	Gwendoline Yeo	37964
9849	Andy Richter	47844
9850	Romy Schneider	4197
9851	Jean Bouise	10495
9852	Joachim Hansen	25160
9853	Karl Michael Vogler	20324
9854	Madeleine Ozeray	58544
9855	Antoine Saint-John	30862
9856	Marie-Blanche Vergnes	68898
9857	Robert Hoffmann	74454
9858	Gérard Dauzat	223724
9859	Catherine Delaporte	406094
9860	Ha-kyun Shin	17638
9861	Jae-yeong Jeong	24209
9862	Hye-jeong Kang	15930
9863	Steve Taschler	371778
9864	Ha-ryong Im	242646
9865	Deok-hwan Ryoo	33492
9866	Jae-jin Jeong	381993
9867	Deok-hyeon Jo	106569
9868	Yeong-gi Jeong	109274
9869	Seung-mok Yoo	120126
9870	Hyeon-joong Kang	129384
9871	Mi-nam Jeong	182239
9872	David Anselmo	287407
9873	Leif Gantvoort	310694
9874	Oh-min Kwon	382658
9875	Ran-hee Lee	655113
9876	Ryeo-won Jeong	36477
9877	Nam-yeol Jang	114469
9878	Kyeong-jin Min	147030
9879	So-yeon Jang	174890
9880	Sang-hoon Lee	209769
9881	Yeong-seo Park	252312
9882	Gyo-hwan Koo	294266
9883	Mi-kyeong Yang	371299
9884	Kyu-hyung Lee	379448
9885	Hee-chang Kim	677316
9886	Yoo Gong	22892
9887	Yoo-mi Jeong	50229
9888	Gwang Jang	105214
9889	Hyo-seop Eom	108506
9890	Gook-hwan Jeon	24193
9891	Ji-yeong Kim	115130
9892	Hyeon-seong Lim	127298
9893	Myeong-ryeol Nam	130728
9894	Jin-ho Choi	180080
9895	Hyeon-soo Kim	193609
9896	Seung-hwan Baek	193645
9897	Ji-yeong Kim	29828
9898	Ji-seong Eom	211146
9899	Joo-ryeong Kim	28048
9900	Jae-ho Heo	381256
9901	Hyung-suk Jung	336338
9902	Jang-yoo Lee	676307
9903	Faith Brook	8578
9904	Geoffrey Bayldon	42073
9905	Judy Geeson	64454
9906	Ann Bell	53000
9907	Michael Des Barres	19971
9908	Patricia Routledge	32872
9909	Stephen Whittaker	51493
9910	Suzy Kendall	59125
9911	Fred Griffiths	69958
9912	Marianne Stone	201362
9913	Lulu	266140
9914	Adrienne Posta	281781
9915	Chris Chittell	283368
9916	Edward Burnham	291929
9917	Rita Webb	291937
9918	Fiona Duncan	291944
9919	Howard Knight	313472
9920	Chitra Neogy	350194
9921	Mona Bruce	481876
9922	Eric Stewart	706234
9923	Jane Fonda	785
9924	Doug McKeon	67313
9925	Troy Garity	20022
9926	Christian Pereira	132266
9927	Christopher Rydell	338605
9928	William Lanteau	412147
9929	Julie LeBreton	66241
9930	Rémy Girard	11318
9931	Stephen McHattie	17944
9932	Larry Day	15491
9933	Albert Kwan	39479
9934	Sebastien Roberts	49367
9935	Serge Houde	72919
9936	Paul Doucet	127163
9937	Benoît Girard	156306
9938	John MacLaren	220331
9939	Tedd Dillon	280018
9940	Diane Lavallée	296099
9941	Patrice Robitaille	296154
9942	Normand Chouinard	296166
9943	Pierre-François Legendre	296177
9944	Tony Calabretta	298900
9945	Luc Proulx	460019
9946	Mario Jean	520412
9947	Michel Barrette	524458
9948	Sean Avery	573630
9949	Howard Rosenstein	631936
9950	Marc Gourdeau	631938
9951	René Gagnon	648518
9952	Tyler Hall	651716
9953	Pier Angeli	62864
9954	Everett Sloane	65813
9955	Eileen Heckart	6247
9956	Sal Mineo	8015
9957	Harold J. Stone	72444
9958	Joseph Buloff	268740
9959	Sammy White	185856
9960	Theodore Newton	320121
9961	Dean Jones	61575
9962	Jinx Falkenburg	86035
9963	John Eldredge	87478
9964	Ray Danton	97420
9965	William Boyett	132261
9966	Eddie Ryder	134805
9967	Sam Gilman	138994
9968	John Breen	146715
9969	Robin Morse	156736
9970	Robert Easton	156843
9971	Leon Alton	180292
9972	Kit Guard	188128
9973	Russ Conway	201197
9974	Michael Dante	210996
9975	Joe McGuinn	221576
9976	Don Haggerty	176608
9977	Benny Rubin	207196
9978	George Cisar	223369
9979	Judson Pratt	225069
9980	Ray Stricklyn	95936
9981	Dick Rich	251867
9982	Bart Braverman	309377
9983	Renata Vanni	312175
9984	Russ Clark	318266
9985	Gene Coogan	320118
9986	Jack Kenney	320122
9987	Jess Kirkpatrick	320123
9988	Willard Sage	320124
9989	David Leonard	320126
9990	Jack Shea	325285
9991	Frank Campanella	332710
9992	Richard LaMarr	342294
9993	Tyler McVey	343037
9994	Michael Ross	347157
9995	Buster Slaven	375989
9996	Sid Raymond	375996
9997	Jack Orrison	376011
9998	Jimmy Murphy	388217
9999	Bern Hoffman	420926
10000	Byron Kane	449647
10001	Don Shelton	474475
10002	James Todd	496037
10003	Margot Gabilondo	527781
10004	Philippe Torreton	13703
10005	Wladimir Yordanoff	77331
10006	Noémie Lvovsky	18896
10007	Raphaël Ferret	77458
10008	Michelle Goddet	54894
10009	Farida Ouchani	123927
10010	Sarah Lecarpentier	139016
10011	Christophe Rossignon	130299
10012	Alexandre Carrière	142422
10013	Franck Andrieux	142423
10014	Alain Cerrer	166491
10015	Carine Bouquillon	172489
10016	Tahidir Ouazine	195142
10017	François Godart	201483
10018	Vincent Nemeth	208028
10019	Juliette Navis	231046
10020	Stéphanie Fatout	245791
10021	Olivier Claverie	247711
10022	Michel Masiero	247713
10023	Christian Van Tomme	303276
10024	Marie-Céline Tuvache	621584
10025	Serge Flamenbaum	634704
10026	Frédéric Trin	634973
10027	Eric Paul	635004
10028	Serpentine Teyssier	668074
10029	Annie Girardot	2425
10030	Bernard Fresson	16410
10031	Edith Scob	5561
10032	Roger Miremont	7589
10033	Florence Giorgetti	58998
10034	Marthe Villalonga	22153
10035	François Perrot	81731
10036	Claudine Berg	82749
10037	Dominique Briand	164790
10038	Alain Chevallier	195770
10039	Leila Fréchet	196517
10040	Léo Peltier	196872
10041	Stéphane Hillel	215048
10042	Jacques Bouanich	216961
10043	Liza Braconnier	216996
10044	Paul Rieger	216998
10045	Jean-Paul Tribout	235673
10046	Françoise Bonneau	271037
10047	François Timmerman	292420
10048	Astrid Frank	319273
10049	Sylvia Sidney	7488
10050	Walter Abel	7533
10051	Bruce Cabot	5463
10052	Edward Ellis	143907
10053	Walter Brennan	6284
10054	George Walcott	244313
10055	Arthur Stone	293950
10056	Howard C. Hickman	277877
10057	Jonathan Hale	23277
10058	Leila Bennett	304330
10059	Esther Dale	237071
10060	Eddie Quillan	17422
10061	Raymond Hatton	96411
10062	Dennis O'Keefe	7534
10063	Bert Roach	62733
10064	Minerva Urecal	100434
10065	Harry Harvey	133396
10066	Dick Wessel	147269
10067	Robert Homans	154848
10068	Gwen Lee	141006
10069	Sherry Hall	178619
10070	Arthur Hoyt	180748
10071	Oliver Eckhardt	184786
10072	William Tannen	201388
10073	Clarence Kolb	205569
10074	Edgar Edwards	219861
10075	Frank Sully	222049
10076	King Mojave	222157
10077	Fay Helm	229738
10078	Nora Cecil	266577
10079	Christian Rub	275659
10080	Ruth Renick	277087
10081	Raymond Brown	279206
10082	Si Jenks	302576
10083	Ed Brady	298753
10084	Pat McKee	181075
10085	Jack Grey	319581
10086	Guy Usher	326007
10087	Robert Milasch	327419
10088	Will Stanton	332625
10089	Ernie Alexander	333369
10090	Harry Bowen	336948
10091	George Offerman Jr.	369877
10092	Paul McAllister	371906
10093	Gertrude Sutton	375991
10094	Sidney De Gray	571781
10095	Esther Muir	667558
10096	Majo Suzukaze	16011
10097	Hirotaka Suzuoki	15762
10098	Nozomu Sasaki	11985
10099	Šúiči Ikeda	15578
10100	Tomokazu Seki	9599
10101	Wataru Takagi	34898
10102	Rjúsei Nakao	333635
10103	Micuaki Hošino	341241
10104	Tecuja Iwanaga	342534
10105	Satoši Curuoka	352487
10106	Noriko Namiki	355790
10107	Akari Hibino	356195
10108	Džunko Iwao	384901
10109	Rikija Kojama	429031
10110	Makoto Ueki	708369
10111	Azusa Nakao	708641
10112	Ivan Jandl	14284
10113	Jarmila Novotná	28413
10114	Ewart G. Morrison	126842
10115	Aline MacMahon	15959
10116	Mihály Víg	60392
10117	János Derzsi	68181
10118	Miklós Székely B.	60687
10119	Erika Bók	60438
10120	Peter Berling	10480
10121	György Barkó	11756
10122	Péter Dobai	54927
10123	Frigyes Hollósi	122944
10124	Zoltán Kamondi	248627
10125	Richard E. Grant	7923
10126	Joanna Lumley	15032
10127	Tracey Ullman	2429
10128	Jane Horrocks	14035
10129	Lisa Kay	345908
10130	Stephen Ballantyne	661958
10131	Barkhad Abdi	98777
10132	Barkhad Abdirahman	98779
10133	Faysal Ahmed	98778
10134	Mahat M. Ali	98780
10135	Michael Chernus	84680
10136	Mohamed Ali	98775
10137	Issak Farah Samatar	98776
10138	John Magaro	55123
10139	San Shella	77406
10140	John Patrick Barry	111043
10141	Riann Steele	119206
10142	Kevin Resnick	242111
10143	David Webber	272230
10144	Louis Mahoney	311145
10145	Peter Landi	327428
10146	Mark H. Semos	388590
10147	John Randolph	20245
10148	Biff McGuire	65890
10149	Barbara Eda-Young	56451
10150	Cornelia Sharpe	56450
10151	Tony Roberts	476
10152	John Medici	212300
10153	Allan Rich	152473
10154	Norman Ornellas	56452
10155	Edward Grover	212301
10156	Albert Henderson	212303
10157	Alan North	34241
10158	Tony Lo Bianco	5672
10159	John Stewart	50932
10160	Mary Louise Weller	98774
10161	Mildred Clinton	143962
10162	Gus Fleming	212689
10163	Lewis J. Stadlen	213381
10164	John McQuade	217178
10165	René Enríquez	235531
10166	Stephen Pearlman	261089
10167	Tim Pelt	265256
10168	Bernard Barrow	287859
10169	Sam Coppola	291808
10170	Hank Garrett	297293
10171	John Lehne	312290
10172	Richard Kuss	320970
10173	Ben Slack	324947
10174	Ed Crowley	370575
10175	Raleigh Bond	389983
10176	George Loros	400673
10177	Joseph Bova	410502
10178	Sal Carollo	446004
10179	Don Billett	561104
10180	Trey Parker	4626
10181	Matt Stone	4781
10182	Kyle McCulloch	62088
10183	Adrien Beard	302774
10184	April Stewart	303480
10185	Mačiko Kjó	10259
10186	Masajuki Mori	20192
10187	Paul Anka	55891
10188	Arletty	31400
10189	Jean-Louis Barrault	8597
10190	Richard Beymer	61200
10191	Hans Christian Blech	16331
10192	Richard Burton	752
10193	Wolfgang Büttner	230251
10194	Red Buttons	5764
10195	Pauline Carton	77552
10196	Irina Demick	35630
10197	Fabian	71514
10198	Steve Forrest	63722
10199	Gert Fröbe	11790
10200	Leo Genn	14468
10201	John Gregson	68383
10202	Paul Hartmann	30796
10203	Peter Helm	297762
10204	Werner Hinz	21703
10205	Donald Houston	89553
10206	Jeffrey Hunter	13333
10207	Karl John	225592
10208	Curd Jürgens	5377
10209	Alexander Knox	14642
10210	Peter Lawford	29821
10211	Dewey Martin	47993
10212	Michael Medwin	298991
10213	Robert Mitchum	858
10214	Kenneth More	4350
10215	Richard Münch	20197
10216	Edmond O'Brien	4242
10217	Wolfgang Preiss	98799
10218	Ron Randell	5501
10219	Madeleine Renaud	71858
10220	Georges Rivière	4806
10221	Robert Ryan	15193
10222	Tommy Sands	94525
10223	George Segal	483
10224	Jean Servais	9602
10225	Rod Steiger	136
10226	Richard Todd	15219
10227	Tom Tryon	4462
10228	Peter van Eyck	52590
10229	Richard Wattis	174030
10230	Stuart Whitman	15012
10231	Georges Wilson	22604
10232	John Wayne	507
10233	Daniel Gélin	30270
10234	Françoise Rosay	15274
10235	Patrick Barr	204480
10236	Michael Beint	292221
10237	Lyndon Brook	302188
10238	Lucien Camiret	304457
10239	Bryan Coleman	278778
10240	Gary Collins	67343
10241	Armin Dahlen	246739
10242	Mark Damon	8593
10243	Richard Dawson	77434
10244	Eugene Deckers	299039
10245	Gil Delamare	70525
10246	Michel Duchaussoy	63284
10247	Walter Gotell	11320
10248	Clément Harari	84668
10249	Ruth Hausmeister	288064
10250	Michael Hinz	55923
10251	Walter Horsbrugh	295961
10252	Patrick Jordan	127594
10253	Simon Lack	287219
10254	Wolfgang Lukschy	82268
10255	Victor Maddern	10696
10256	Neil MacCallum	289707
10257	Edward Meeks	83595
10258	John Meillon	102890
10259	Kurt Meisel	20918
10260	Tony Mordente	217049
10261	Bill Nagy	292618
10262	Rainer Penkert	21840
10263	Siân Phillips	5143
10264	Maurice Poli	76675
10265	Hartmut Reck	206133
10266	Trevor Reid	303169
10267	Paul Edwin Roth	247724
10268	Ernst Schröder	247851
10269	Dietmar Schönherr	16603
10270	Heinz Spitzner	306115
10271	Hans Söhnker	23408
10272	Alice Tissot	29924
10273	Michel Tureau	82602
10274	Roland Urban	221488
10275	Vicco von Bülow	22962
10276	Bob Steele	78607
10277	Jurij Medveděv	340962
10278	John Phillips	381204
10279	Arnold Gelderman	412859
10280	Malte Petzel	559943
10281	Henry Grace	578150
10282	Lutz Gabor	615085
10283	Aleksandra Konieczna	246427
10284	Eliza Rycembel	122860
10285	Tomasz Ziętek	362964
10286	Barbara Kurzaj	368875
10287	Leszek Lichota	135412
10288	Zdzisław Wardejn	135009
10289	Łukasz Simlat	101369
10290	Anna Biernacik	398201
10291	Lidia Bogaczówna	95328
10292	Malwina Brych	469987
10293	Bogdan Brzyski	476484
10294	Juliusz Chrząstowski	318024
10295	Radosław Ciucias	497564
10296	Mateusz Czwartosz	442864
10297	Lidia Duda	87961
10298	Andrzej Franczyk	73651
10299	Jan Hrynkiewicz	451659
10300	Lubomir Kempka	497566
10301	Krystian Kostow	467930
10302	Józef Kostycz	497567
10303	Alicja Majdosz	497569
10304	Janusz Mazurkiewicz	497570
10305	Bogusław Michałek	497572
10306	Helena Norowicz	375252
10307	Tobiasz Nowakowski	497574
10308	Katarzyna Ostrowska	497575
10309	Grzegorz Palkowski	246448
10310	Piotr Pawlak	247094
10311	Janusz Poborczyk	497576
10312	Jolanta Rychłowska	497577
10313	Jakub Sierenberg	497578
10314	Jarosław Soroko	497579
10315	Dariusz Starczewski	367738
10316	Sebastian Szałaj	497581
10317	Aleksander Talkowski	497582
10318	Marta Waldera	246432
10319	Leszek Wiśniewski	437472
10320	Tomasz Włosok	421155
10321	Wojciech Ziętek	497583
10322	Konstanty Szemraj	497585
10323	Aoi Mijazaki	4438
10324	Haru Kuroki	108622
10325	Jukito Nišii	82130
10326	Kumiko Asó	5475
10327	Micuki Tanimura	67308
10328	Tamio Óki	11995
10329	Šóta Sometani	88081
10330	Amon Kabe	158717
10331	Takuma Hiraoka	266578
10332	Masahiro Usui	280923
10333	Kanau Tanaka	290978
10334	Tomie Kataoka	374650
10335	Kóhei Ikeue	488369
10336	Jóhei Tadano	659454
10337	Eiičiró Tokumoto	671052
10338	Cuda Eizó	678972
10339	Asuka Minamori	694748
10340	Michel Constantin	11265
10341	Jean Keraudy	60926
10342	Philippe Leroy	6070
10343	Marc Michel	13994
10344	Raymond Meunier	89505
10345	Catherine Spaak	58999
10346	Philippe Dumat	71781
10347	Jean Luisi	101833
10348	Raymond Bour	298110
10349	Jean-Paul Coquelin	304455
10350	André Bervil	304456
10351	Margaret Sullavan	14744
10352	Frank Morgan	11818
10353	Joseph Schildkraut	6288
10354	Sara Haden	86280
10355	Felix Bressart	84709
10356	William Tracy	86268
10357	Inez Courtney	100738
10358	Charles Arnt	265521
10359	Mabel Colcord	294627
10360	Joan Blair	379546
10361	Mary Carr	472948
10362	Mandy Moore	2214
10363	Zachary Levi	35308
10364	Donna Murphy	31009
10365	Ron Perlman	458
10366	Jeffrey Tambor	7234
10367	Paul F. Tompkins	52617
10368	Richard Kiel	10665
10369	Byron Howard	49169
10370	Nicholas Guest	20851
10371	Russell Yuen	208755
10372	Kari Wahlgren	224603
10373	Michael Bell	321530
10374	Roy Conli	349673
10375	Paul Pape	357767
10376	Philip Le Maistre	651046
10377	Susanne Blakeslee	668262
10378	Milan Lasica	980
10379	Hasso Steube	218793
10380	Paul Jaster	218794
10381	Wolfgang Emmrich	218795
10382	Jaroslav Páleník	218796
10383	Evelyna Steimarová	1329
10384	Augustín Kubán	13291
10385	Samuel Adamčík	5810
10386	Bára Štěpánová	1034
10387	Gabriela Beňačková	26894
10388	Jaimz Woolvett	10863
10389	Saul Rubinek	7795
10390	Anna Levine	7401
10391	Rob Campbell	1979
10392	Anthony James	94499
10393	Lochlyn Munro	9345
10394	Jeremy Ratchford	52080
10395	John Pyper-Ferguson	64438
10396	Shane Meier	97492
10397	Aline Levasseur	153719
10398	Beverley Elliott	226564
10399	Ron White	239451
10400	Frank Charles Turner	289307
10401	Ben Cardinal	325057
10402	Tara Frederick	337025
10403	David Mucci	343897
10404	Philip Maurice Hayes	517458
10405	Liisa Repo-Martell	593776
10406	Ming-Na Wen	5894
10407	Soon-tek Oh	11977
10408	Harvey Fierstein	8975
10409	James Hong	7180
10410	Pat Morita	2063
10411	George Takei	2128
10412	Gedde Watanabe	25329
10413	Cosma Shiva Hagen	8375
10414	Conan Lee	48234
10415	Jack Gilpin	54373
10416	Chris Sanders	5082
10417	Lea Salonga	176813
10418	Donny Osmond	210182
10419	Dana Lee	224182
10420	Freda Foh Shen	244268
10421	Beth Fowler	257278
10422	Matthew Labyorteaux	291318
10423	Haunani Minn	592660
10424	Claudette Wells	655047
10425	Seung-yeon Lee	18520
10426	Hee Jae	18510
10427	Jong-soo Lee	114856
10428	Jin-mo Joo	163540
10429	Dong-gun Jang	8443
10430	Bin Won	26732
10431	Eun-joo Lee	18890
10432	Hyeong-jin Kong	20892
10433	Min-ho Jang	188170
10434	Jae-hyeong Jeon	28572
10435	Kil-kang Ahn	111465
10436	Yoon-hee Jo	38720
10437	Yoon-min Jeong	106757
10438	Taek-ha Hwang	188171
10439	Dong-bin Park	127733
10440	Da-yeong Joo	165291
10441	Yeong-ran Lee	169999
10442	Jin Jeong	177560
10443	Soo-ro Kim	16479
10444	Min-sik Choi	15458
10445	Doo-hong Jeong	28575
10446	Ho-bin Jeong	109719
10447	Hae-gon Kim	27870
10448	Jae-gon Son	27825
10449	Gil-soo Park	150516
10450	Ji-hyeok Min	308778
10451	Kil-yong Yang	595668
10452	Woon Jo	595669
10453	Young-jin Jang	595675
10454	Chan-yeong Lee	627720
10455	Thierry Lhermitte	6055
10456	Régine	404651
10457	Grace De Capitani	235642
10458	Claude Brosset	60344
10459	Pierre Baton	293470
10460	François Cadet	82761
10461	Jocelyn Canoen	191397
10462	Kamel Cherif	110126
10463	Jacques Ciron	135374
10464	Gérard Couderc	292428
10465	Michel Crémadès	143300
10466	Michel Duchezeau	190401
10467	Pierre Frag	84054
10468	Jacques Frantz	181885
10469	Olivier Granier	195704
10470	Nicholas Hawtrey	310828
10471	Hélène Hily	12411
10472	Guy Kerner	191761
10473	Jean Lanier	193812
10474	Simon Michaël	138705
10475	Pascal Pistacio	223857
10476	Francis Roussef	194258
10477	Jacques Santi	10787
10478	Marius Yelolo	145779
10479	Abbes Zahmani	51092
10480	Albert Simono	680572
10481	Melvyn Douglas	771
10482	Richard Basehart	58342
10483	Fran Brill	22985
10484	Sam Weisman	8093
10485	Elya Baskin	5352
10486	Sandy Ward	21011
10487	Melendy Britt	45030
10488	Basil Hoffman	154870
10489	Richard Venture	165749
10490	Arthur Rosenberg	181044
10491	Jerome Hellman	228377
10492	Maurice Copeland	235823
10493	Hanna Hertelendy	291134
10494	Denise DuBarry	294137
10495	Alice Hirson	311184
10496	James Noble	311188
10497	Than Wyenn	176601
10498	John Harkins	317785
10499	Richard McKenzie	343555
10500	Terrence Currier	390660
10501	Danna Hansen	396904
10502	Paul Marin	473947
10503	Ruth Attaway	486669
10504	Richard Seff	595214
10505	Katherine De Hetre	639370
10506	Ned Wilson	645776
10507	Sandy Dennis	6251
10508	Eva Poláková	13115
10509	Ezard Haußmann	24620
10510	Oľga Adamčíková	1079
10511	Wanda Spinka	42236
10512	Valtr Taub	1620
10513	Ervín Zolar	36541
10514	Karel Fořt	29956
10515	Norbert Chotaš	41451
10516	Emil Rohan	29124
10517	Josef Stehlík	29192
10518	Karel Vavřík	29128
10519	Karel Bezděk	32292
10520	Jiří Hurych	42726
10521	Giulietta Masina	2404
10522	Marcella Rovere	61604
10523	Livia Venturini	61605
10524	Gustavo Giorgi	61606
10525	Yami Kamadeva	61607
10526	Anna Primula	61608
10527	Goffredo Unger	58483
10528	Mario Passante	299193
10529	Pietro Ceccarelli	122970
10530	Dick York	87618
10531	Donna Anderson	89816
10532	Harry Morgan	4609
10533	Claude Akins	4555
10534	Elliott Reid	174090
10535	Paul Hartman	234206
10536	Jimmy Boyd	304828
10537	Noah Beery Jr.	72655
10538	Florence Eldridge	85079
10539	Will Wright	132375
10540	Charles Wagenheim	142940
10541	Joe Ploski	148241
10542	Ralph Bucko	177216
10543	Robert Robinson	177232
10544	Robert Osterloh	180310
10545	Hope Summers	218121
10546	David Fresco	261172
10547	Renee Godfrey	264838
10548	Wendell Holmes	291239
10549	Gordon Polk	304830
10550	Oliver Cross	341990
10551	Tex Holden	342354
10552	Joseph Hamilton	351285
10553	George Tracy	419315
10554	Donald Elson	497016
10555	Jay Jackson	134198
10556	Oliver Hardy	2795
10557	Stan Laurel	2794
10558	Edna Murphy	173705
10559	Charley Chase	31548
10560	James Finlayson	71298
10561	Edgar Kennedy	33000
10562	Dell Henderson	33010
10563	Glenn Tryon	215079
10564	Spec O'Donnell	269481
10565	Anders Randolf	234521
10566	Vivien Oakland	281936
10567	Josephine Crowell	334789
10568	Anita Garvin	336834
10569	Dorothy Coburn	375862
10570	Pavle Vujišič	18457
10571	Dragan Nikolič	35233
10572	Danilo 'Bata' Stojkovič	18446
10573	Aleksandar Berček	16323
10574	Neda Arnerič	6754
10575	Taško Načič	10050
10576	Slavko Štimac	16623
10577	Bora Todorovič	9393
10578	Slobodan Aligrudič	21521
10579	Milivoje 'Miča' Tomič	458561
10580	Petar Lupa	460629
10581	Ljubomir Čipranič	461042
10582	Nina Šubina	212206
10583	Olga Oniščenko	22103
10584	Anna Ovsjannikova	132473
10585	Sergej Anufrijev	21524
10586	Vladimir Kulakov	21758
10587	Pavel Děrevjanko	59298
10588	Jurij Ovsjanko	212207
10589	Galina Bokaševskaja	304583
10590	Sergej Gamov	354508
10591	Vladimir Baranov	383152
10592	Ljudmila Motornaja	398895
10593	Hossein Mahjoub	20170
10594	Mohsen Ramezani	20243
10595	Salime Feizi	20424
10596	Farahnaz Safari	20539
10597	Elham Sharifi	20551
10598	Sergej Bondarčuk	6048
10599	Ljudmila Saveljeva	5569
10600	Viktor Stanicyn	21889
10601	Anatolij Ktorov	22893
10602	Boris Smirnov	22574
10603	Pjotr Savin	16599
10604	Sergej Nikoněnko	58865
10605	Irina Gubanova	78291
10606	Vladislav Strželčik	29575
10607	Nikolaj Smorčkov	161438
10608	Serge Postigo	37114
10609	Catherine Faucher	63233
10610	Marianne Fortier	65650
10611	Sarah-Jeanne Labrosse	74622
10612	Stéphanie Lapointe	91773
10613	Yves Jacques	132775
10614	Luc Senay	163095
10615	Monique Spaziani	178651
10616	Justin Laramée	185991
10617	Michel Forget	186162
10618	Catherine Trudeau	253815
10619	Pierre Collin	439300
10620	Albert Millaire	525347
10621	Alice Morel-Michaud	525408
10622	Jean Marchand	530337
10623	Hélène Bourgeois Leclerc	536069
10624	Noémie Yelle	579799
10625	Muriel Dutil	581710
10626	Laurent-Christophe de Ruelle	597389
10627	Johanne Fontaine	626036
10628	Noel Burton	637963
10629	Reynald Bouchard	644933
10630	David Alexandre Després	652233
10631	Guillaume Gauthier	654724
10632	Marie-Ève Beauregard	656317
10633	Veronika Leclerc Strickland	694182
10634	Taraji P. Henson	48627
10635	Julia Ormond	577
10636	Phyllis Somerville	45386
10637	Tilda Swinton	8889
10638	Faune Chambers Watkins	38914
10639	Danny Vinson	57489
10640	David Jensen	52996
10641	Johanna Roxanne	96069
10642	Peter Donald Badalamenti II	100705
10643	Elle Fanning	18059
10644	Ted Manson	56340
10645	Madisen Beaty	81557
10646	Joshua DesRoches	60585
10647	Ilia Volok	15224
10648	Myrton Running Wolf	20264
10649	Stephen Monroe Taylor	243036
10650	Wilbur Fitzgerald	188162
10651	Louis Herthum	67737
10652	Rus Blackwell	87034
10653	Deneen Tyler	201019
10654	Spencer Daniels	113496
10655	Chandler Canterbury	53950
10656	Katherine Crockett	112262
10657	Leslie Augustine	116762
10658	Aliane Baquerot	49243
10659	Megan Brown	48570
10660	Emma Degerstedt	62771
10661	Walter Delmar	193950
10662	Tiffany Forest	201015
10663	Grant James	34129
10664	Shiloh Jolie-Pitt	129790
10665	Antonia Putiloff	93505
10666	Simone-Élise Girard	283024
10667	Robert W. Savina	284223
10668	Danny Nelson	307305
10669	Edith Ivey	364471
10670	Robert Towers	426768
10671	Devyn A. Tyler	454391
10672	Autumn Withers	480332
10673	Charles Henry Wyson	484511
10674	Malerie Grady	486152
10675	Sonya Leslie	572227
10676	Marian Filali	610119
10677	David Ross Paterson	648357
10678	Milla Jovovich	152
10679	Chris Tucker	2041
10680	Luke Perry	2371
10681	Brion James	4909
10682	Marie Guillard	20443
10683	Lee Evans	5662
10684	Charlie Creed-Miles	18705
10685	Tricky	82092
10686	John Neville	20205
10687	John Bluthal	7674
10688	Michael Culkin	87291
10689	Hon Ping Tang	88443
10690	Kevin Brewerton	88709
10691	Julie T. Wallace	122816
10692	Mia Frye	175316
10693	Jean-Luc Caron	195955
10694	Christopher Fairbank	209372
10695	Christopher Adamson	217800
10696	Sean Buckley	225287
10697	François Guillaume	251111
10698	Alan Ruscoe	251735
10699	Vincenzo Pellegrino	303279
10700	Tim McMullan	314146
10701	Cecil Cheng	490810
10702	Richard Ashton	515057
10703	Renee Montemayor	580943
10704	Stacey McKenzie	705672
10705	Claire Danes	2051
10706	Ricky Gervais	29791
10707	Kate Magowan	40324
10708	Nathaniel Parker	5360
10709	Sienna Miller	20500
10710	Ben Barnes	40095
10711	Rupert Everett	2461
10712	Sarah Alexander	34011
10713	Jake Curran	35278
10714	Mark Strong	37725
10715	Henry Cavill	48927
10716	David Kelly	4379
10717	Adam Buxton	56694
10718	Rab Affleck	70471
10719	Mark Heap	7392
10720	Geoff Bell	73549
10721	Melanie Hill	17460
10722	Joanna Scanlan	11067
10723	Mark Burns	97219
10724	Struan Rodger	115678
10725	Olivia Grant	296384
10726	George Innes	306430
10727	Arnold Vosloo	301
10728	Basil Wallace	53122
10729	David Harewood	64412
10730	Jimi Mistry	16538
10731	Michael Sheen	8141
10732	Stephen Collins	6467
10733	Ntare Guma Mbaho Mwine	48173
10734	Nick Reding	9587
10735	Adetokumboh M'Cormack	36408
10736	David S. Lee	17929
10737	Nigel Harman	230571
10738	Jonathan Pienaar	256943
10739	Tyrone Keogh	326428
10740	Grant Swanby	331030
10741	Vanessa Haywood	402629
10742	Keithian Santos-Sammons	670160
10743	Jeremy Renner	17970
10744	Julia Jones	49673
10745	Gil Birmingham	49178
10746	Kelsey Asbille	62842
10747	Apesanahkwat	338812
10748	Martin Sensmeier	273608
10749	Hugh Dillon	51818
10750	Eric Lange	60277
10751	Mason D. Davis	206332
10752	Blake Robbins	120862
10753	Matthew Del Negro	175038
10754	Tara Karsian	47196
10755	James Jordan	297418
10756	Devin Hansen	325892
10757	Teo Briones	338811
10758	Austin R. Grant	370783
10759	Althea Sam	469209
10760	Gabe Casdorph	495610
10761	Fjodor Šaljapin ml.	128690
10762	Volker Prechtel	230722
10763	Helmut Qualtinger	33724
10764	Valentina Vargas	16816
10765	Christian Slater	154
10766	Michael Habeck	173370
10767	Urs Althaus	230724
10768	Donald O'Brien	122541
10769	Andrew Birkin	9848
10770	Dwight Weist	357939
10771	Aristide Caporale	351729
10772	Luigi Leoni	321682
10773	Francesco Scali	351748
10774	Francesco Maselli	101026
10775	Kim Rossi Stuart	13039
10776	Franco Diogene	189308
10777	Gianni Rizzo	53292
10778	Franco Marino	63416
10779	Hans Schödel	345106
10780	Giordano Falzoni	446005
10781	Franco Pistoni	511949
10782	Mark Bellinghaus	537286
10783	Peter Clös	589791
10784	Jacques Villeret	7552
10785	Francis Huster	25175
10786	Daniel Prévost	7376
10787	Alexandra Vandernoot	15286
10788	Catherine Frot	16726
10789	Edgar Givry	15120
10790	Philippe Brigaud	82374
10791	Daniel Russo	105075
10792	Jacques Bleu	152025
10793	Daniel Martin	196764
10794	Pierre-Arnaud Juin	214756
10795	Rémy Roubakha	243527
10796	Laurent Gendron	285107
10797	Michel Caccia	623824
10798	Patrick Bauchau	16315
10799	Curtis Armstrong	6043
10800	David Krumholtz	2286
10801	Clifton Powell	10764
10802	Usher	12459
10803	Kurt Fuller	20017
10804	Harry Lennix	20154
10805	Rick Gomez	6178
10806	Ray Charles	39018
10807	Alex Van	77147
10808	Tequan Richmond	32201
10809	Tobi Gadison	101160
10810	Larry Gamell Jr.	156228
10811	Don Yesso	183623
10812	Carlos Rivero	196495
10813	Curt Sobel	213287
10814	Vernel Bagneris	302898
10815	Mike Pniewski	306513
10816	Rutherford Cravens	310852
10817	Chris Thomas King	310944
10818	Thomas Jefferson Byrd	351027
10819	Elizabeth Omilami	429110
10820	Trae Ireland	430376
10821	Travis Willingham	707310
10822	Ondřej Pavelka	7275
10823	Markéta Hrubešová	1191
10824	Deana Horváthová-Jakubisková	1189
10825	Viliam Polónyi	1722
10826	Stanislav Štepka	13050
10827	Zita Furková	1158
10828	Andy Hryc	988
10829	Juliana Mrvová	58500
10830	Nora Kuželová	47940
10831	Štefan Mišovic	13017
10832	Ľudovít Ozábal	26254
10833	Lotár Radványi	13031
10834	Marta Rašlová	1287
10835	Ľudovít Reiter	29667
10836	Michal Monček	1757
10837	Judita Ďurdiaková	1415
10838	Ján Melkovič	13016
10839	Ján Kroner ml.	1564
10840	Adela Gáborová	1174
10841	Jozef Skala	80401
10842	Milada Ondrašíková	63903
10843	Stanislav Hodoš	152621
10844	Vilhelm Perháč	215310
10845	Ivan Drozdy	63905
10846	Ján Mildner	13501
10847	František Desset	1718
10848	Erik Jamrich	69007
10849	Ulrich Thomsen	7812
10850	Henning Moritzen	7813
10851	Paprika Steen	8061
10852	Birthe Neumann	165418
10853	Trine Dyrholm	42332
10854	Helle Dolleris	305081
10855	Gbatokai Dakinah	285364
10856	Lars Brygmann	18690
10857	John Boas	285365
10858	Erna Boas	285366
10859	Lasse Lunderskov	328914
10860	Linda Laursen	389149
10861	Klaus Bondam	427162
10862	Therese Glahn	651770
10863	Sigrid Aalbæk Jensen	665045
10864	Lene Laub Oksen	689784
10865	Birgitte Simonsen	690446
10866	Mario Casas	68210
10867	Ana Wagener	69149
10868	José Coronado	15471
10869	Bárbara Lennie	7796
10870	Francesc Orella	89452
10871	Paco Tous	80475
10872	David Selvas	7642
10873	Manel Dueso	170117
10874	Ahmed Adel	528863
10875	Annick Weerts	544526
10876	Pere Brasó	589585
10877	Laia Alberch	646107
10878	Vladimír Huber	22873
10879	Luděk Nešleha	20204
10880	Vladimír Kudla	42278
10881	Libuše Holečková	21330
10882	Vladimír Foukal	36581
10883	Bohuslav Ličman	32855
10884	Pavel Navara	40033
10885	Eva Vlachová	23154
10886	Marie Štrampachová	38177
10887	Jan Víšek	29111
10888	Jan Vyčítal	37138
10889	Victor Sjöström	6556
10890	Ingrid Thulin	6549
10891	Per Sjöstrand	17425
10892	Gertrud Fridh	202621
10893	Gio Petré	324516
10894	Naima Wifstrand	202622
10895	Sif Ruud	202637
10896	Gunnel Broström	279328
10897	Gunnar Sjöberg	325797
10898	Jullan Kindahl	486335
10899	Göran Lundqvist	502665
10900	Yngve Nordwall	503167
10901	Björn Bjelfvenstam	527118
10902	Eva Möller	574223
10903	Olivia Colman	63053
10904	Imogen Poots	36844
10905	Rufus Sewell	2385
10906	Mark Gatiss	20836
10907	Ayesha Dharker	11858
10908	Roman Zeller	626755
10909	Scott Mullin	555643
10910	Ray Burnet	626757
10911	Charles McGraw	70060
10912	Lon Chaney Jr.	4370
10913	Cara Williams	14535
10914	Boyd 'Red' Morgan	189778
10915	Harold Jacob Smith	89748
10916	Nedrick Young	89747
10917	Kevin Coughlin	302686
10918	Carroll O'Connor	13206
10919	Clem Fuller	393954
10920	Kóiči Jamadera	10158
10921	Takeši Aono	9822
10922	Norio Wakamoto	53229
10923	Júsaku Jara	319001
10924	Daisuke Góri	319689
10925	Osamu Saka	321265
10926	Gara Takašima	325500
10927	Emi Šinohara	333481
10928	Kacudži Mori	343325
10929	Kacumi Suzuki	346303
10930	Džun'iči Sugawara	348030
10931	Akimasa Ómori	350452
10932	Masako Kacuki	360542
10933	Rjúzaburó Ótomo	390970
10934	Šúičiró Morijama	427264
10935	Růžena Nasková	1266
10936	Václav Vydra st.	1004
10937	Li Gong	5642
10938	Caifei He	13084
10939	Jingwu Ma	13009
10940	Cuifen Cao	305496
10941	Lin Kong	350003
10942	Baotian Li	15629
10943	Shuyuan Jin	350004
10944	Leopolda Dostalová	1135
10945	Alena Vránová	1395
10946	Eduard Hrubeš	36436
10947	Jan Sterling	12473
10948	Robert Arthur	157069
10949	Gene Evans	5510
10950	Iron Eyes Cody	70530
10951	William Fawcett	176990
10952	Ralph Moody	178622
10953	Edith Evanson	212744
10954	Lewis Martin	223192
10955	Richard Benedict	290527
10956	John Berkes	334145
10957	Dawid Ogrodnik	95326
10958	Katarzyna Zawadzka	68307
10959	Anna Karczmarczyk	133981
10960	Bożena Stryjkówna	23055
10961	Kamil Tkacz	117988
10962	Anna Nehrebecka	134725
10963	Dorota Kolak	134848
10964	Helena Sujecka	132179
10965	Marek Kalita	141856
10966	Witold Wieliński	142387
10967	Klaudia Kąca	167805
10968	Julia Balsewicz	232944
10969	Mikołaj Roznerski	252120
10970	Piotr Żurawski	315897
10971	Małgorzata Moskalewicz	316534
10972	Mirosław Kotowicz	369275
10973	Igor Wilewski-Sobczyk	370979
10974	Tymoteusz Marciniak	370980
10975	Monika Chomicka-Szymaniak	636986
10976	Estela Inda	18877
10977	Miguel Inclán	180029
10978	Alfonso Mejía	180033
10979	Roberto Cobo	180040
10980	Francisco Jambrina	197406
10981	Victorio Blanco	267425
10982	Charles Rooner	268763
10983	Diana Ochoa	269651
10984	José López	277348
10985	Alma Delia Fuentes	278214
10986	Enedina Díaz de León	279701
10987	Lupe Carriles	281036
10988	Salvador Quiroz	281057
10989	Ramón Sánchez	281456
10990	Miguel Funes hijo	283705
10991	José Loza	284944
10992	Ignacio Solorzano	285597
10993	Inés Murillo	286930
10994	Ángel Merino	288250
10995	Antonio Martínez	288605
10996	Héctor López Portillo	297511
10997	Jesús García	299180
10998	Francisco Muller	320422
10999	Antulio Jiménez Pons	422030
11000	Ernesto Alonso	197352
11001	You Ge	57769
11002	Wu Jiang	9521
11003	Dahong Ni	66082
11004	Tao Guo	100049
11005	Yan Su	51909
11006	Cong Xiao	205740
11007	Tianchi Liu	521606
11008	Lifan Dong	521955
11009	Oleg Tabakov	6049
11010	Gennadij Ivanov	49032
11011	Irina Skobceva	78292
11012	Džemma Firsova	72293
11013	Alexej Gorbunov	77811
11014	Anastasija Vertinskaja	4840
11015	Georgij Milljar	18773
11016	Nonna Mordjukova	2761
11017	Jurij Grigorjev	9960
11018	Oleg Jefremov	88381
11019	Alexandr Borisov	92554
11020	Jean-Claude Balard	211325
11021	Alexandr Komissarov	314860
11022	Zoja Rupasova	324306
11023	Julia Dioši	432567
11024	Alexej Glazyrin	554424
11025	Jitka Schneiderová	1306
11026	Saša Rašilov nejml.	1050
11027	Labina Mitevska	11031
11028	Ivan Trojan	1439
11029	Jiří Macháček	1253
11030	Mikuláš Křen	1434
11031	Dana Sedláková	49257
11032	Hana Maciuchová	1251
11033	Tatiana Dyková	1386
11034	Zdeněk Suchý	1001
11035	David Matásek	1021
11036	Jana Gýrová	1173
11037	Robert Vlček	1441
11038	Jan P. Muchow	1437
11039	Kryštof Michal	1436
11040	Jan Nemejovský	24965
11041	Helena Brabcová	41860
11042	Jaroslav Růžička	48742
11043	Petr Janiš	57957
11044	Zdeněk Dvořáček	65571
11045	Pavla Drtinová	98358
11046	Petr Kasnar	101245
11047	Ota Filip	184749
11048	Jakub Kohák	30183
11049	Cary Elwes	395
11050	Jon Cryer	14091
11051	Kristy Swanson	2115
11052	Heidi Swedberg	11644
11053	Bruce A. Young	10172
11054	Pat Proft	7947
11055	Cylk Cozart	23236
11056	Charles Barkley	19881
11057	Christopher Doyle	9249
11058	Dave Oliver	9573
11059	Marc Shaiman	63500
11060	William O'Leary	79157
11061	Sean Kanan	101951
11062	Steven Chester Prince	170011
11063	Jimmy Lennon Jr.	185673
11064	Annie O'Donnell	291744
11065	Rino Thunder	380757
11066	Tony Lorea	466348
11067	Malcolm McDowell	131
11068	Warren Clarke	11940
11069	Adrienne Corri	13231
11070	Margaret Tyzack	52141
11071	Gillian Hills	59361
11072	Michael Bates	316965
11073	Carol Drinkwater	75571
11074	Madge Ryan	116092
11075	Barrie Cookson	127209
11076	Carl Duering	174032
11077	Alec Wallis	278594
11078	Miriam Karlin	282134
11079	Virginia Wetherell	286765
11080	Clive Francis	288913
11081	Paul Farrell	289854
11082	Neil Wilson	295900
11083	Maurice Bush	298789
11084	Winifred Sabine	316891
11085	Sheila Raynor	481313
11086	Fred Hugh	482160
11087	Harry Hutchinson	489907
11088	Michael Gover	542544
11089	Lindsay Campbell	552083
11090	John Clive	580997
11091	Billy Russell	617539
11092	James Marcus	619345
11093	Katya Wyeth	671500
11094	William H. Macy	442
11095	Melissa Peterman	54360
11096	Warren Keith	4457
11097	Kristin Rudrüd	339696
11098	J. Todd Anderson	12361
11099	Bix Skahill	9609
11100	Bruce Campbell	48
11101	Tony Denman	74046
11102	Michelle Hutchison	195240
11103	Bruce Bohne	339697
11104	James Gaulke	339698
11105	Gary Houston	339702
11106	Sally Wingert	339703
11107	Sharon Anderson	465095
11108	Carol Kane	7233
11109	Janet Margolin	56033
11110	Colleen Dewhurst	4345
11111	William Callaway	13523
11112	Truman Capote	9086
11113	Shelley Hack	14029
11114	Laurie Bird	68228
11115	Walter Bernstein	80323
11116	Paul Simon	80659
11117	John Dennis Johnston	154974
11118	Rashel Novikoff	209571
11119	Lucy Lee Flippin	250633
11120	Johnny Haymer	287660
11121	Paula Trueman	304507
11122	Mary Boylan	311786
11123	Mark Lenard	324488
11124	Russell Horton	324967
11125	Hy Anzell	341033
11126	Donald Symington	370333
11127	Roger Newman	389899
11128	Humphrey Davis	442392
11129	Gary Allen	503169
11130	John Hillerman	38837
11131	Perry Lopez	123120
11132	Bruce Glover	20838
11133	Joe Mantell	11391
11134	Roy Jenson	123670
11135	Darrell Zwerling	228404
11136	Roman Polanski	2000
11137	Richard Bakalyan	228407
11138	Roy Roberts	133464
11139	Lee de Broux	212170
11140	Belinda Palmer	279422
11141	Paul Jenkins	291071
11142	Beulah Quo	291837
11143	Nandu Hinds	291839
11144	George Justin	300889
11145	Jerry Fujikawa	354071
11146	Fritzi Burr	381106
11147	Bob Golden	420273
11148	Juliet Mills	48785
11149	Edward Andrews	98905
11150	Pippo Franco	9940
11151	Gianfranco Barra	50304
11152	María Rosa Sclauzero	59128
11153	Ty Hardin	62870
11154	Janet Agren	64287
11155	Giacomo Rizzo	151050
11156	Franco Angrisano	213208
11157	Lella Cattaneo	326198
11158	Ettore Geri	326209
11159	Anna Maria Perego	326252
11160	Giuseppe Terranova	331322
11161	Aldo Rendine	352324
11162	Pupita Lea Scuderoni	353181
11163	Nestore Cavaricci	353716
11164	Alba Maiolini	353720
11165	Giuseppe Marrocco	353721
11166	Bruno Alias	355345
11167	Harry Ray	431455
11168	Jana Krupičková	39592
11169	Lubomír Tlalka	39593
11170	Zdeněk Mátl	39594
11171	Alžběta Frejková	39595
11172	Josef Němeček	29283
11173	Vlasta Petříková	39596
11174	Ray Milland	2499
11175	Robert Cummings	7503
11176	Anthony Dawson	7524
11177	Leo Britt	7525
11178	Patrick Allen	68211
11179	Robin Hughes	302852
11180	Martin Milner	22529
11181	Guy Doleman	84256
11182	Jack Cunningham	322696
11183	Charles Vanel	7529
11184	Antonio Centa	9896
11185	Véra Clouzot	2788
11186	Folco Lulli	42814
11187	Darío Moreno	71487
11188	Grégoire Gromoff	190283
11189	Darling Légitimus	106524
11190	François Valorbe	233621
11191	William Tubbs	291264
11192	Aki Tojosaki	59319
11193	Nobujuki Kacube	120569
11194	Júki Kadži	237032
11195	Kazuki Jao	304802
11196	Takahiro Sakurai	309345
11197	Minako Kotobuki	312500
11198	Kenta Mijake	324738
11199	Hiroaki Iwanaga	330504
11200	Takajuki Sugó	337754
11201	Chris Jai Alex	412354
11202	Čieko Mijazaki	611544
11203	Joširó Macumoto	637589
11204	Toa Jukinari	639029
11205	Takahiro Fudžiwara	661466
11206	Marie Ói	671100
11207	Džun Inoue	677330
11208	Rei Sakai	683926
11209	Rjóta Igaraši	695817
11210	Takumi Watanabe	696854
11211	Jasunobu Iwata	700001
11212	Masajuki Tanaka	700669
11213	Rjóko Šimizu	709005
11214	Józef Kondrat	28668
11215	Manfred Krug	48607
11216	Edwin Marian	139182
11217	Ján Kováčik	28640
11218	Jan Bobek	32341
11219	Štefan Winkler	8289
11220	Teodor Piovarči	1764
11221	Leopold Haverl	7660
11222	Dušan Lenci	24904
11223	Edmund Ogrodziński	670928
11224	Maju Macuoka	153238
11225	Tošijuki Tojonaga	301744
11226	Sacuki Jukino	332543
11227	Ikuko Tani	342584
11228	Saori Hajami	342969
11229	Akiko Hiramacu	352895
11230	Kenšó Ono	375041
11231	Hana Takeda	380430
11232	Rjó Nišitani	381409
11233	Jui Išikawa	384887
11234	Sačiko Kodžima	598151
11235	Júki Kaneko	600533
11236	Rjúnosuke Watanuki	682120
11237	Takuja Masumoto	689885
11238	Ajano Hamaguči	700549
11239	Dian Bachar	19873
11240	Isaac Hayes	22869
11241	Eric Stough	139972
11242	Inga Swenson	11645
11243	Andrew Prine	11437
11244	Kathleen Comegys	11532
11245	Patty Duke	5323
11246	Petula Clark	17165
11247	George Baker	23191
11248	Jack May	8774
11249	Elspet Gray	35549
11250	Jenny Runacre	218075
11251	Jeremy Lloyd	249689
11252	Barbara Couper	278685
11253	Ronnie Stevens	280702
11254	Nicholas Frankau	281165
11255	Alison Leggatt	284954
11256	Elspeth March	285960
11257	Clinton Greyn	287036
11258	Sheila Steafel	297529
11259	Royston Tickner	313473
11260	Mario Maranzana	342178
11261	Tom Owen	709377
11262	Holly Hunter	554
11263	Elizabeth Peña	5776
11264	Sarah Vowell	276531
11265	Bud Luckey	18390
11266	Stephen Schaffer	384751
11267	John Walker	396288
11268	Ted Mathot	436291
11269	Ivica Vidović	496309
11270	Louis Gonzales	707674
11271	Zachary Quinto	33417
11272	Leonard Nimoy	453
11273	Simon Pegg	17418
11274	Anton Yelchin	21026
11275	Ben Cross	5298
11276	Rachel Nichols	35161
11277	Faran Tahir	38915
11278	Clifton Collins Jr.	9454
11279	Jason Brooks	7324
11280	Kelvin Yu	40418
11281	Marta Martin	475213
11282	Billy Brown	16225
11283	Jimmy Bennett	15414
11284	Greg Grunberg	32143
11285	Jacob Kogan	68233
11286	Cody Klop	47683
11287	Akiva Goldsman	55664
11288	Douglas Tait	81342
11289	Jason Matthew Smith	320303
11290	Darlene Tejeiro	35848
11291	Jonathan Dixon	86984
11292	Margot Farley	37768
11293	Paul McGillion	44918
11294	Lisa Vidal	12204
11295	Alex Nevil	403669
11296	Sufe Bradshaw	134312
11297	Jeff Chase	68558
11298	Nana Hill	192831
11299	Oz Perkins	53635
11300	Amanda Foreman	94924
11301	Michael Berry Jr.	435574
11302	Pasha D. Lychnikoff	36221
11303	Marlene Forte	40500
11304	Leonard O. Turner	82390
11305	Mark Bramhall	339838
11306	Scottie Thompson	60801
11307	Majel Barrett	2129
11308	Brad William Henke	31714
11309	Elizabeth Ingalls	49865
11310	Daniel D. Lee	55006
11311	Wil Wheaton	2148
11312	T.J. Storm	75452
11313	Damion Poitier	79581
11314	Sarah Klaren	88566
11315	Anne Leighton	89203
11316	Johnny Baca	103797
11317	Katie Soo	115782
11318	Rahvaunia	119373
11319	Ravi Valleti	148899
11320	Lorenzo James Henrie	238585
11321	Jolene Kay	265798
11322	Ian Fisher	342254
11323	Rico E. Anderson	364021
11324	Christopher Doohan	407910
11325	Mark Phelan	458179
11326	Ken Edling	491281
11327	Matthew McGregor	607792
11328	Gerald W. Abrams	612354
11329	James Cawley	643371
11330	Kang-ho Song	13216
11331	Seon-gyoon Lee	36455
11332	Yeo-jeong Jo	128591
11333	Hye-jin Jang	371269
11334	Woo-shik Choi	108651
11335	So-dam Park	183244
11336	Seung-min Hyeon	174894
11337	Hyun-jun Jung	517549
11338	Myeong-hoon Park	382117
11339	Keun-rok Park	380180
11340	Seo-joon Park	109046
11341	Jeong-eun Lee	46382
11342	Hye-ri Yoon	507546
11343	Yi-seo Jung	603015
11344	Ji-so Jung	658223
11345	Vallo Kirs	35857
11346	Pärt Uusberg	35858
11347	Lauri Pedaja	35859
11348	Paula Solvak	35856
11349	Mikk Mägi	35860
11350	Riina Reis	35861
11351	Joonas Paas	35862
11352	Triin Tenso	35863
11353	Kadi Metsla	35864
11354	Virgo Ernits	35865
11355	Karl Sakrits	35866
11356	Laine Mägi	96359
11357	Kaie Mihkelson	116478
11358	Erik Põllumaa	162732
11359	Margus Prangel	189042
11360	Doris Tislar	196708
11361	Gerda Kordemets	230939
11362	Margus Karu	240594
11363	Saara Kadak	243177
11364	Oya Akar	387222
11365	İmer Özgün	369640
11366	Shirley Eaton	60208
11367	Harold Sakata	39225
11368	Tania Mallet	83278
11369	Bernard Lee	2739
11370	Martin Benson	11759
11371	Cec Linder	11382
11372	Austin Willis	296347
11373	Lois Maxwell	14126
11374	Burt Kwouk	2264
11375	Desmond Llewelyn	4925
11376	Garry Marshall	3003
11377	Margaret Nolan	62559
11378	Michael G. Wilson	208462
11379	Gerry Duggan	216809
11380	Nadja Regin	266061
11381	Bob Simmons	267437
11382	Maggie Wright	289833
11383	Raymond Young	292699
11384	Lionel Murton	298809
11385	Carmen Dane	298828
11386	Marian Collins	298835
11387	Bill Brandon	303197
11388	Caron Gardner	304803
11389	Victor Brooks	313169
11390	Peter Brace	319839
11391	George Leech	322315
11392	Terence Brook	481869
11393	John McLaren	504834
11394	Denis Cowles	618289
11395	Karel Chromík	29272
11396	Jana Plichtová	24924
11397	Karel Černoch	28805
11398	Stanislav Remunda	29330
11399	Jan Schánilec	30280
11400	Josef Červinka	21313
11401	Václav Vondráček	46996
11402	Petra Kodýmová	33258
11403	Jaroslava Bauerová	42707
11404	Jaroslav Blažek	27052
11405	Marie Černá	47664
11406	Zdeněk Grygárek	40152
11407	Margit Harníčková	32701
11408	Jan Herodes	43317
11409	Josef Hrbek	38185
11410	Vincenc Koblitz	38237
11411	Josef Kočí	43783
11412	Ladislav Kouklík	45431
11413	Robert Kühnel	42608
11414	Ladislav Mrázek	40995
11415	Otto Ohnesorg	32504
11416	Aleš Plhoň	43315
11417	Olga Przygrodská	46997
11418	Gabriela Ryzcová ml.	47666
11419	Gabriela Ryzcová st.	47667
11420	Věra Ševčíková	38419
11421	Jaroslav Šmatlák	38319
11422	Magdalena Šmídová	46566
11423	Dušan Urgošík	43314
11424	Ladislava Veselá	47001
11425	Josef Vlček	39792
11426	Františka Zemanová	48619
11427	Vladimír Zoubek	29379
11428	Mary Badham	11509
11429	Phillip Alford	11202
11430	Rosemary Murphy	11613
11431	Ruth White	11897
11432	Brock Peters	20949
11433	Paul Fix	11306
11434	Collin Wilcox Paxton	98364
11435	William Windom	20346
11436	Kim Stanley	14741
11437	Hugh Sanders	57424
11438	Kim Hamilton	99775
11439	Estelle Evans	122509
11440	Dan White	139050
11441	Crahan Denton	146044
11442	R.L. Armstrong	146217
11443	Jess Cavin	146719
11444	Steve Condit	147058
11445	David Crawford	147059
11446	Jamie Forster	147061
11447	Jester Hairston	147068
11448	Kim Hector	147280
11449	Michael Jeffers	147290
11450	Dick Johnstone	147337
11451	Nancy Marshall	148228
11452	Barry Seltzer	148758
11453	Jay Sullivan	148759
11454	Kelly Thordsen	148760
11455	Bill Walker	149384
11456	Guy Wilkerson	150975
11457	Ethan Laidlaw	178840
11458	George Sowards	201198
11459	Ray Spiker	251945
11460	Sailor Vincent	269701
11461	Charles Morton	180176
11462	Charles Perry	342295
11463	Chester Jones	405837
11464	Tom Courtenay	14272
11465	Ralph Richardson	897
11466	Rita Tushingham	4360
11467	Geoffrey Keen	5949
11468	Jack MacGowran	20168
11469	José María Caffarel	8555
11470	Ingrid Pitt	5953
11471	Lili Muráti	85087
11472	Noel Willman	144264
11473	Pilar Gómez Ferrer	194539
11474	Peter Madden	224889
11475	Bernard Kay	225436
11476	Gwen Nelson	286017
11477	Erik Chitty	287274
11478	Luana Alcañiz	297053
11479	Emilio Carrer	297188
11480	María Martín	298988
11481	Roger Maxwell	302452
11482	Mark Eden	312271
11483	Inigo Jackson	314959
11484	María Vico	319587
11485	Wolf Frees	323485
11486	Siobhan McKenna	324004
11487	Gérard Tichy	326270
11488	Virgilio Teixeira	327591
11489	José Nieto	373412
11490	Jake Macapagal	110761
11491	John Arcilla	145979
11492	Althea Vega	122092
11493	Erin Panlilio	145984
11494	Mailes Kanapi	145986
11495	Moises Magisa	105760
11496	Quark Henares	261354
11497	Valentina Cortese	13603
11498	Alexandra Stewart	25476
11499	Jean-Pierre Aumont	6751
11500	Jean-François Stévenin	13583
11501	Georges Delerue	62984
11502	Pierre Zucca	101432
11503	Bernard Menez	133101
11504	Graham Greene	108323
11505	Maurice Seveno	193883
11506	Ernest Menzer	213685
11507	Dani	221028
11508	Martine Barraqué	255532
11509	Yann Dedet	262916
11510	Walter Bal	280559
11511	Marc Boyle	469267
11512	Nike Arrighi	228857
11513	David Ramsey	4832
11514	Shareeka Epps	30626
11515	Gloria Garayua	47034
11516	Carla Gallo	17677
11517	Tatyana Ali	8787
11518	Marc Blucas	8912
11519	Britt Robertson	51959
11520	Cherry Jones	11580
11521	LaTanya Richardson Jackson	21127
11522	Eileen Ryan	96991
11523	Michael Warren	11848
11524	Susan Bay Nimoy	356973
11525	Acuko Tanaka	12024
11526	Teššó Genda	11952
11527	Júdži Ueda	15784
11528	Maaja Sakamoto	58160
11529	Kósuke Meguro	315663
11530	Hiroki Tóči	339001
11531	Óki Sugijama	349022
11532	Takaši Macujama	352868
11533	Masato Jamanouči	375653
11534	Kazuhiro Jamadži	381041
11535	Šin'iči Himori	11338
11536	Haruo Tanaka	11468
11537	Nobuo Kaneko	22880
11538	Eiko Mijoši	279134
11539	Kumeko Urabe	291004
11540	Carl Möhner	95575
11541	Robert Manuel	75905
11542	Jules Dassin	11275
11543	Magali Noël	10284
11544	Marie Sabouret	65273
11545	Jacques Besnard	4165
11546	Teddy Bilis	9215
11547	Marcelle Hainia	61874
11548	Janine Darcey	80551
11549	Pierre Grasset	81812
11550	Alain Bouvette	82389
11551	Claude Sylvain	87630
11552	Dominique Maurin	103819
11553	Maryse Paillet	196777
11554	Daniel Mendaille	217799
11555	Marcel Lupovici	290505
11556	René Hell	86883
11557	Lita Recio	296372
11558	Jacques David	296373
11559	Jasna Đuričić	69716
11560	Johan Heldenbergh	41847
11561	Raymond Thiry	93516
11562	Boris Isakovič	8049
11563	Emir Hadžihafizbegovič	35188
11564	Joes Brauers	400437
11565	Reinout Bussemaker	202425
11566	Teun Luijkx	228675
11567	Izudin Bajrovic	157140
11568	Alban Ukaj	255855
11569	Juda Goslinga	402353
11570	Ermin Bravo	176133
11571	Sanne den Hartogh	427662
11572	Micha Hulshof	402356
11573	Boris Ler	360727
11574	Sol Vinken	408282
11575	Emina Muftic	67733
11576	Dražen Pavlović	475341
11577	Jack Davenport	13402
11578	Kevin McNally	50288
11579	Jonathan Pryce	465
11580	Lee Arenberg	33539
11581	Mackenzie Crook	33818
11582	Trevor Goddard	72713
11583	Isaac C. Singleton Jr.	227823
11584	Brye Cooper	435615
11585	Vince Lozano	24480
11586	Guy Siner	29571
11587	Paul Gagné	25090
11588	Dylan Smith	39385
11589	Martin Klebba	44164
11590	Vanessa Branch	54786
11591	Joe Grisaffi	80790
11592	Lucinda Dryzek	185250
11593	Ralph P. Martin	210346
11594	Lauren Maher	276433
11595	Damian O'Hare	306390
11596	Christopher S. Capp	329378
11597	Paul Keith	428708
11598	Dustin Seavey	551413
11599	Jean-Pierre Malo	13684
11600	Richard Berry	9844
11601	Leonor Varela	11653
11602	Laurent Gamelon	103542
11603	Aurélien Recoing	17969
11604	Michel Aumont	15076
11605	Armelle Deutsch	18858
11606	Johan Libéreau	55295
11607	Vincent Moscato	92787
11608	Valentin Merlet	109244
11609	Jean-Michel Noirey	136773
11610	Ludovic Berthillot	139318
11611	Thierry Nenez	151698
11612	Antoine Blanquefort	195710
11613	Luq Hamet	196493
11614	Jean Dell	199742
11615	Alain Fourès	218115
11616	Dominique Parent	241376
11617	Patrick Médioni	245806
11618	Gilles Conseil	249711
11619	Adrien Saint-Joré	260995
11620	François Gamard	261079
11621	Julien Cafaro	353735
11622	Woody Harrelson	414
11623	Lucas Hedges	119402
11624	Abbie Cornish	15881
11625	Darrell Britt-Gibson	228764
11626	Amanda Warren	121548
11627	Kathryn Newton	62942
11628	Samara Weaving	89851
11629	Sandy Martin	318315
11630	Michael Aaron Milligan	96112
11631	William J. Harrison	97311
11632	Malaya Rivera Drew	209184
11633	Jerry Winsett	354420
11634	Marcus Lyle Brown	333941
11635	Maho Honda	354423
11636	Lawrence Turner	486396
11637	Riya May Atwood	686472
11638	T.J. Lowther	20165
11639	Paul Hewitt	337646
11640	Elizabeth Ruscio	22662
11641	Linda Hart	23981
11642	Brandon Smith	1941
11643	Greg Stechman	35371
11644	John M. Jackson	65656
11645	Kevin Jamal Woods	102494
11646	Marietta Marich	102903
11647	Margaret Bowman	271557
11648	Rodger Boyce	307391
11649	Wayne Dehart	311299
11650	Jennifer Griffin	246180
11651	Tony Frank	372939
11652	Jimmy Ray Pickens	378297
11653	Dennis Letts	381824
11654	Woody Watson	660258
11655	Chris O'Donnell	179
11656	Gabrielle Anwar	516
11657	Rochelle Oliver	344214
11658	Nicholas Sadler	201694
11659	June Squibb	103610
11660	Michael Santoro	47878
11661	Anh Duong	151622
11662	Francie Swift	151488
11663	William Beckwith	96171
11664	David Lansbury	272575
11665	Sally Murphy	313989
11666	Leonard Gaines	333995
11667	Mansoor Najee-ullah	392116
11668	Piter Marek	415887
11669	Hiroši Janaka	317336
11670	Ginzó Macuo	336038
11671	Micuru Mijamoto	339003
11672	Jutaka Nakano	363817
11673	Hugo Haas	802
11674	Karla Oličová	28929
11675	Rudolf Deyl st.	23244
11676	Helena Friedlová	1154
11677	Vítězslav Boček	21560
11678	Otto Rubík	23386
11679	Eduard Blažek	27313
11680	Frank Rose-Růžička	27329
11681	Vladimír Smíchovský	27253
11682	Karel Jelínek	22879
11683	Emil Dlesk	27085
11684	Fráňa Vajner	28497
11685	Marie Holanová	27436
11686	Maria Bibikov	28936
11687	Erna Ženíšková	29177
11688	Jan Šebor	29952
11689	Julius Baťha	28926
11690	Anči Pírková	27260
11691	Jindřich Adolf	29015
11692	Karolína Vávrová	527435
11693	Viktor Dintr	29426
11694	Bohumil Langer	28496
11695	Antonín Šolc	28583
11696	Jiřina Vávrová	32366
11697	David Keith	430
11698	Tim McIntire	156565
11699	Richard Ward	226680
11700	Linda Haynes	10976
11701	Everett McGill	232
11702	Albert Salmi	80756
11703	Lee Richardson	15189
11704	Harry Groener	15556
11705	John McMartin	97253
11706	Brent Jennings	102930
11707	Jon Van Ness	141539
11708	Vic Polizos	203588
11709	Ron Frazier	226682
11710	David Harris	226686
11711	Roy Poole	226799
11712	John Chappell	226807
11713	William Newman	226811
11714	Jack O'Leary	226814
11715	J.C. Quinn	226818
11716	Rob Garrison	226824
11717	Ritch Brinkley	226825
11718	Nick Baldasare	319281
11719	Alex Brown	420671
11720	Sam Riley	37723
11721	Samantha Morton	2748
11722	Joe Anderson	34705
11723	James Anthony Pearson	66542
11724	Harry Treadaway	50268
11725	Craig Parkinson	76227
11726	Toby Kebbell	23809
11727	Matthew McNulty	50358
11728	Richard Bremmer	83499
11729	George Newton	88481
11730	Eliot Otis Brown Walters	150689
11731	Tanya Myers	232567
11732	Margaret Jackman	253725
11733	Andrew Sheridan	578259
11734	Robert Shelly	578260
11735	Martha Myers Lowe	578261
11736	David Whittington	578262
11737	Mary Jo Randle	578263
11738	Ben Naylor	578266
11739	James Fortune	578269
11740	Angus Addenbrooke	578271
11741	Nicola Harrison	578272
11742	June Alliss	578276
11743	Mark Jardine	578277
11744	Paul Arlington	578280
11745	Joanna Swain	578283
11746	Joseph Marshall	578284
11747	Laura Chambers	578286
11748	Monica Axelsson	578287
11749	Lotti Closs	578288
11750	Eady Williams	578289
11751	Nigel Harris	578290
11752	John Cooper Clarke	578267
11753	Nikolaj Lie Kaas	8265
11754	Andrea Heick Gadeberg	541446
11755	Nicolas Bro	10502
11756	Gustav Lindh	143922
11757	Roland Møller	59791
11758	Anne Birgitte Lind	45326
11759	Omar Shargawi	42124
11760	Jacob Hauberg Lohmann	156676
11761	Henrik Noél Olesen	219742
11762	Gustav Dyekjær Giese	95357
11763	Klaus Hjuler	279965
11764	Peder Holm Johansen	216069
11765	Rikke Louise Andersson	109371
11766	Jesper Ole Feit Andersen	541662
11767	Morten Suurballe	142447
11768	Stine Schrøder Jensen	330876
11769	Jesper Groth	470208
11770	Natali Vallespir	670696
11771	Rigmor Ranthe	470247
11772	Anders Nyborg	163343
11773	Johanne Dal-Lewkovitch	393930
11774	Kaspar Velberg	247986
11775	Raivo Trass	77902
11776	Kenny Duerlund	670695
11777	Anne Fletting	624787
11778	Jakob Candy Kolborg	374490
11779	Ghita Lehrmann	338175
11780	Alice Bier Zanden	686691
11781	Mikkel Aarestrup	696186
11782	Carl Anderson	6390
11783	Yvonne Elliman	6389
11784	Josh Mostel	20195
11785	Paul Thomas	20313
11786	Marcia McBroom	142491
11787	Leeyan Granger	183839
11788	Larry Marshall	658605
11789	Adam Driver	94719
11790	Jodie Comer	161031
11791	Harriet Walter	32102
11792	Alex Lawther	97271
11793	Sam Hazeldine	78044
11794	Michael McElhatton	93715
11795	Clive Russell	78987
11796	Caoimhe O'Malley	373514
11797	Zoé Bruneau	131932
11798	Brian F. Mulvey	629791
11799	Simone Collins	629792
11800	Corinne Delacour	629793
11801	William Houston	74945
11802	Julian Firth	100325
11803	Serena Kennedy	475055
11804	Adam Nagaitis	201246
11805	Will Geer	9946
11806	Delle Bolton	124343
11807	Josh Albee	325214
11808	Joaquín Martínez	96210
11809	Allyn Ann McLerie	132858
11810	Stefan Gierasch	154751
11811	Jack Colvin	212401
11812	Tanya Tucker	215488
11813	Dwight Yoakam	4347
11814	J. T. Walsh	1944
11815	John Ritter	5714
11816	Lucas Black	26391
11817	Natalie Canerday	297402
11818	James Hampton	78278
11819	Bruce Hampton	318640
11820	Vic Chesnutt	71754
11821	Mickey Jones	17904
11822	Jim Jarmusch	2950
11823	Gary Don Fletcher	405578
11824	Misa Uehara	229470
11825	Jerzy Bińczycki	9847
11826	Anna Dymna	9692
11827	Tomasz Stockinger	133658
11828	Bernard Ładysz	219772
11829	Piotr Grabowski	135726
11830	Bożena Dykiel	133640
11831	Igor Śmiałowski	135129
11832	Jerzy Trela	60560
11833	Irena Burawska	143006
11834	Jerzy Block	21558
11835	Andrzej Krasicki	139694
11836	Bogusław Sochnacki	135072
11837	Andrzej Szalawski	141263
11838	Włodzimierz Adamski	138400
11839	Jerzy Braszka	142350
11840	Barbara Dzido-Lelińska	143022
11841	Maria Klejdysz	135136
11842	Eugeniusz Korczarowski	141679
11843	Juliusz Lubicz-Lisowski	139717
11844	Tadeusz Teodorczyk	139293
11845	Wojciech Zagórski	144919
11846	Jerzy Czupryniak	644998
11847	Marian Harasimowicz	664519
11848	Barbara Korczarowska	664556
11849	Jerzy Rogowski	664609
11850	Dobrosław Mater	665429
11851	Józef Zbiróg	667539
11852	Henryk Dudziński	668321
11853	Tadeusz Kożusznik	668423
11854	Janusz Dąbrowski	668625
11855	Danuta Cwynarówna	670845
11856	Maria Homerska	675060
11857	Sabina Mielczarek-Taborska	675448
11858	Tadeusz Stankiewicz	675840
11859	Genowefa Korska	677151
11860	Vladimir Selezňov	366571
11861	Gustav Diessl	86080
11862	Leni Riefenstahl	6212
11863	Ernst Petersen	86258
11864	Ernst Udet	107925
11865	Mizzi Götzel	86406
11866	Kurt Gerron	31569
11867	Teresa Stratas	48007
11868	Plácido Domingo	18341
11869	Renato Cestiè	24453
11870	Axelle Gall	225799
11871	Vladimir Vasilev	251344
11872	Pina Cei	532847
11873	Asa Butterfield	51639
11874	Jack Scanlon	63834
11875	Rupert Friend	18351
11876	Richard Johnson	5505
11877	Sheila Hancock	13451
11878	Cara Horgan	63835
11879	Amber Beattie	63836
11880	David Hayman	78958
11881	Béla Fesztbaum	275958
11882	Julia Papp	397478
11883	Reese Witherspoon	603
11884	Dallas Roberts	52563
11885	Dan John Miller	312286
11886	Larry Bagby	16962
11887	Shelby Lynne	312293
11888	Tyler Hilton	65428
11889	Waylon Payne	312318
11890	Shooter Jennings	312324
11891	Ridge Canipe	40958
11892	Kerris Dorsey	33814
11893	Rhoda Griffis	39015
11894	Tim Ware	50590
11895	James Keach	5351
11896	Clare Grant	55655
11897	Amy Lavere	75067
11898	Marc Farley	132255
11899	Brit Shaw	196636
11900	Aaron Covington	212618
11901	Ben Taylor	278241
11902	Tracee Mae Miller	296038
11903	Clay Steakley	312280
11904	McGhee Monteith	644807
11905	John Holiday	699787
11906	Freddie Highmore	17888
11907	Joe Prospero	82013
11908	Toby Jones	28780
11909	Eileen Essell	52807
11910	Tobias Menzies	55226
11911	Kate Maberly	66694
11912	Nicholas Pritchard	128096
11913	Murray McArthur	196617
11914	Kali Peacock	223042
11915	Greg Bennett	226047
11916	Richard Braine	284705
11917	Jane Booker	344498
11918	Matt Green	643401
11919	Emilio Echevarría	9473
11920	Goya Toledo	9625
11921	Vanessa Bauche	9422
11922	Humberto Busto	55418
11923	Rosa María Bianchi	12865
11924	Adriana Barraza	30636
11925	Gustavo Sánchez Parra	45185
11926	Jorge Salinas	57074
11927	Dagoberto Gama	209622
11928	José Sefami	261326
11929	Rodrigo Murray	262520
11930	Patricio Castillo	308316
11931	Dunia Saldívar	310963
11932	Marco Pérez	476337
11933	Quique Mendoza	484082
11934	Ernesto Bog	484980
11935	José Luis Barraza	488297
11936	Carlos Samperio	488918
11937	Gerardo Campbell	531850
11938	Hilda González	569216
11939	Bajram Severdžan	9371
11940	Zabit Memedov	307551
11941	Branka Katič	9298
11942	Srdjan Todorovič	9394
11943	Florijan Ajdini	307547
11944	Sabri Sulejmani	307553
11945	Ljubica Adžović	9196
11946	Jašar Destani	307561
11947	Stojan Sotirov	307563
11948	Predrag 'Miki' Manojlovič	9325
11949	Predrag 'Pepi' Lakovič	458606
11950	Dejan Sparavalo	68364
11951	Salija Ibraimova	307673
11952	Marianne Koch	75473
11953	Antonio Prieto	276181
11954	José Calvo	22432
11955	Daniel Martín	154376
11956	Bruno Carotenuto	290775
11957	Raf Baldassarre	122749
11958	Luis Barboo	331544
11959	Juan Cortés	314536
11960	Álvaro de Luna	322377
11961	Nino Del Arco	330888
11962	Antonio Moreno	327772
11963	José Orjas	319633
11964	Antonio Pica	321841
11965	Nosher Powell	289478
11966	Julio Pérez Tabernero	10765
11967	José Riesgo	194543
11968	Fernando Sánchez Polack	151046
11969	Antonio Vico	319403
11970	Lesley-Anne Down	5977
11971	Colin Blakely	60623
11972	Dudley Sutton	8442
11973	Jerry Stovin	20296
11974	Jackie Cooper	11267
11975	Robert Beatty	129182
11976	Bob Sherman	153675
11977	Terence Plummer	188547
11978	Liz Smith	213333
11979	Dick Crockett	236298
11980	Damaris Hayman	256976
11981	Marne Maitland	270252
11982	Briony McRoberts	285013
11983	Vanda Godsell	286768
11984	Norman Mitchell	289496
11985	Tony Sympson	289737
11986	André Maranne	291090
11987	Dinny Powell	296910
11988	Michael Robbins	298062
11989	Graham Stark	302565
11990	Fred Haggerty	322318
11991	Howard K. Smith	438271
11992	Murray Kash	453215
11993	Gordon Rollings	481293
11994	James Warrior	542762
11995	Cecilia Roth	8168
11996	Antonia San Juan	14734
11997	Penélope Cruz	24
11998	Fernando Fernán Gómez	15529
11999	Carmen Balagué	53058
12000	Pedro Almodóvar	2798
12001	Cayetana Guillén Cuervo	11561
12002	Candela Peña	29775
12003	Eloy Azorín	73915
12004	Fernando Guillén	146181
12005	Fito Páez	160880
12006	Carme Fortuny	194148
12007	José Luis Torrijo	194427
12008	Rosa Maria Sardà	253794
12009	Agustín Almodóvar	298708
12010	Esther García	298717
12011	Juan José Otegui	332848
12012	Patxi Freytez	421512
12013	Lee Remick	894
12014	Marie-Christine Barrault	14869
12015	Robert Flemyng	4807
12016	Gordon Honeycombe	12412
12017	Robert Lang	55605
12018	Jennifer Jayne	224886
12019	Frances Tomelty	225045
12020	Shaw Taylor	280518
12021	Victor Windig	283228
12022	Avril Elgar	284737
12023	Brook Williams	307583
12024	Colin Rix	315740
12025	Christopher Burgess	348145
12026	Wendy Gifford	592272
12027	Maurice O'Connell	617582
12028	Minami Takajama	291407
12029	Mika Doi	13234
12030	Keiko Toda	150148
12031	Jošiko Kamei	299952
12032	Kappei Jamaguči	304658
12033	Šinpači Cudži	312072
12034	Rei Sakuma	312525
12035	Juriko Fučizaki	326424
12036	Júko Kobajaši	329903
12037	Takaja Haši	333235
12038	Kikuko Inoue	350754
12039	Mičihiro Ikemizu	361804
12040	Mieko Nobusawa	419817
12041	Takaši Taguči	670195
12042	Clark Gable	791
12043	Vivien Leigh	835
12044	Barbara O'Neil	14720
12045	Evelyn Keyes	47925
12046	Olivia de Havilland	768
12047	Hattie McDaniel	5718
12048	Leslie Howard	14474
12049	Harry Davenport	89186
12050	Jane Darwell	6285
12051	Ann Rutherford	63101
12052	Laura Hope Crews	86235
12053	Ona Munson	87263
12054	Paul Hurst	113054
12055	Isabel Jewell	87970
12056	Cammie King Conlon	307731
12057	Rand Brooks	87308
12058	Yakima Canutt	8196
12059	Jackie Moran	113425
12060	Mary Anderson	7507
12061	George Reeves	47608
12062	Roscoe Ates	11213
12063	Marjorie Reynolds	69084
12064	Eric Linden	88316
12065	Butterfly McQueen	88446
12066	Alicia Rhett	105099
12067	Tom Tyler	78648
12068	Mickey Kuhn	128908
12069	Irving Bacon	132130
12070	Eddie 'Rochester' Anderson	134647
12071	Charles Middleton	154243
12072	Adrian Morris	167817
12073	Frank Coghlan Jr.	109002
12074	Ralph Brooks	176811
12075	Trevor Bardette	130191
12076	E. Alyn Warren	183616
12077	William Stack	213189
12078	Carroll Nye	222965
12079	James Bush	132803
12080	Olin Howland	224749
12081	Tommy Kelly	227908
12082	Eric Alden	258619
12083	Lee Phelps	271075
12084	Wallis Clark	119198
12085	J.M. Kerrigan	138877
12086	David Newell	225734
12087	Everett Brown	70007
12088	Louise Carter	244307
12089	Horace B. Carpenter	319656
12090	Blue Washington	327721
12091	Emmett King	328083
12092	Claire James	350652
12093	Oscar Polk	356473
12094	Patrick Curtis	435101
12095	Ernest Whitman	461343
12096	Leona Roberts	589129
12097	William Stelling	180180
12098	Caren Marsh	638213
12099	Douglas Booth	63544
12100	Holly Earl	83919
12101	Chris O'Dowd	32232
12102	John Sessions	16605
12103	Helen McCrory	13105
12104	Eleanor Tomlinson	65469
12105	Aidan Turner	61747
12106	Saoirse Ronan	34239
12107	Jerome Flynn	66030
12108	Cezary Łukaszewicz	132181
12109	Richard Banks	289564
12110	Shaun Newnham	253499
12111	Ivan Dobronravov	12723
12112	Vladimir Garin	43028
12113	Konstantin Lavroněnko	12745
12114	Natalija Vdovina	12779
12115	Juan Palomino	335171
12116	Jelizaveta Alexandrova	388796
12117	Galina Popova	506389
12118	Alfredo Vasco	523612
12119	James Cagney	753
12120	Pamela Tiffin	60339
12121	Arlene Francis	384364
12122	Howard St. John	326750
12123	Hubert von Meyerinck	29055
12124	Liselotte Pulver	2338
12125	Friedrich Hollaender	67592
12126	Sig Ruman	71093
12127	Helmut Schmid	106813
12128	Leon Askin	133917
12129	John Banner	152806
12130	Karl Lieffen	173763
12131	Gernot Duda	189745
12132	Hanns Lothar	201965
12133	Henning Schlüter	217684
12134	Rose Renée Roth	248887
12135	Werner Hessenland	276781
12136	Karl Ludwig Lindt	307061
12137	Werner Buttler	449347
12138	Otto Friebel	537424
12139	Jaspar von Oertzen	564893
12140	Ildikó Bánsági	8448
12141	Péter Andorai	6759
12142	Karin Boyd	81862
12143	Christine Harbort	24739
12144	Tamás Major	40259
12145	Christian Grashof	22868
12146	Géza Kovács	17919
12147	Judit Hernádi	55817
12148	Martin Hellberg	21696
12149	Teri Tordai	40717
12150	Irén Bordán	41812
12151	János Xantus	67739
12152	Hédi Temessy	60380
12153	Oszkár Gáti	122934
12154	Katalin Sólyom	130841
12155	István Szabó	3695
12156	Vilmos Kun	202691
12157	János Dömölky	251334
12158	Mónika Bognár	441782
12159	Ildikó Kishonti	347609
12160	Mária Bisztrai	466889
12161	Sándor Lukács	320562
12162	Ágnes Bánfalvy	324359
12163	Ida Versényi	370631
12164	István Komlós	344992
12165	Zdzisław Mrożewski	42234
12166	Stanislava Strobachová	29862
12167	Károly Ujlaky	349696
12168	Tamás Balikó	323022
12169	Ödön Rubold	324222
12170	István Palotai	349722
12171	Bertalan Papp	392234
12172	Katalin Fráter	348141
12173	Mária Fekete	468834
12174	Tamás Fésűs	348333
12175	Oszkárné Gombik	392229
12176	Magda Kalmár	362639
12177	István Karsai	345680
12178	Bazsa Kiss	357586
12179	Géza Laczkovich	343694
12180	György Lencz	348149
12181	József Lukácsi	331973
12182	Lajos Mezey	347869
12183	Fruzsina Pregitzer	342503
12184	Gizella Ramshorn	380073
12185	András Sebestyén	365020
12186	Mihály Szacsky	339972
12187	Erzsi Sándor	344673
12188	Péter Tihanyi	354101
12189	Tamás Tóth	331986
12190	Katalin Varga	336025
12191	Imre Zvoronics	382741
12192	Hilda Borgström	56958
12193	Tore Svennberg	56951
12194	Astrid Holm	56952
12195	Concordia Selander	56954
12196	Lisa Lundholm	56955
12197	Tor Weijden	56956
12198	Olof Ås	56957
12199	Signe Wirff	184937
12200	John Ekman	202167
12201	Mona Geijer-Falkner	203704
12202	Nils Arehn	242030
12203	Erik Bergman	163902
12204	Elof Ahrle	403354
12205	Fridolf Rhudin	408182
12206	Julia Cæsar	412437
12207	Helga Brofeldt	416478
12208	Einar Axelsson	417436
12209	Anna-Lisa Baude	420342
12210	Josua Bengtson	474737
12211	Emmy Albiin	490661
12212	Simon Lindstrand	499684
12213	Carl-Harald	545172
12214	Arthur Natorp	579057
12215	Björn "Nalle" Halldén	591317
12216	Frida Dahlskog	620444
12217	Algot Gunnarsson	622157
12218	Tarusuke Šingaki	237601
12219	Masuo Amada	270383
12220	Eidži Sekiguči	270632
12221	Tóru Nara	319896
12222	Sakiko Tamagawa	333462
12223	Tóru Ókawa	237599
12224	Mantaró Iwao	382080
12225	Taimei Suzuki	385714
12226	Makoto Išii	487321
12227	Taró Jamaguči	647817
12228	Masahiro Ogata	676674
12229	Ken Uo	677598
12230	Eidži Marujama	697165
12231	Keisuke Išida	703862
12232	Tomomi Watanabe	705141
12233	Seung-woo Jo	18699
12234	Mi-sook Kim	22058
12235	Seon-jae Kim	36535
12236	Seong-hyeon Baek	47340
12237	Nae-sang Ahn	59768
12238	Sung-min Lee	111824
12239	Jae-rok Kim	85031
12240	Do-young Kim	198550
12241	Gi-yeong Lee	371357
12242	Bong-hak Maeng	382378
12243	Joo-hyeok Kim	29763
12244	In-pyo Cha	18695
12245	In-gi Jeong	107919
12246	Bok-in Yoon	112824
12247	Oh-jin Kwon	113049
12248	Yong-goo Do	115006
12249	Young-hwa Seo	28045
12250	Jae-ryong Jo	278851
12251	Bae-soo Jeon	300696
12252	Jeong-pal Kim	371259
12253	Jin-yeong Park	371541
12254	Kyeong-ran Kim	379565
12255	Yong-joon Jo	381520
12256	Tom Rowlands	314351
12257	Jüri Järvet	55478
12258	Oleg Dal	72400
12259	Valentina Šendrikova	48541
12260	Juozas Budraitis	10505
12261	Alexej Petrenko	20230
12262	Donatas Banionis	21538
12263	Elza Radziņa	77896
12264	Kārlis Sebris	77908
12265	Leonhard Merzin	105937
12266	Emmanuil Vitorgan	125950
12267	Galina Volček	127602
12268	Sergej Ivanov	352206
12269	Alexandr Orlov	384763
12270	John Amos	2044
12271	Dennis Franz	400
12272	Art Evans	23252
12273	Fred Dalton Thompson	38738
12274	Tom Bower	59477
12275	Sheila McCarthy	10271
12276	Tom Verica	17649
12277	Jeanne Bates	223
12278	Paul Abascal	16282
12279	Robert Costanzo	11778
12280	Karla Tamburrelli	58708
12281	Rande Scott	73734
12282	Peter Nelson	74723
12283	Richard Domeier	90429
12284	Tony Ganios	95776
12285	Felicity Waterman	99769
12286	Dale Jacoby	100084
12287	Robert Sacchi	175322
12288	Robert Lipton	180163
12289	James Wellington	181066
12290	Stephen Gregory Foster	234380
12291	Julian Reyes	301696
12292	Sherry Bilsing	305425
12293	Stafford Morgan	350185
12294	Lauren Letherer	353882
12295	John Costelloe	361819
12296	Charles Lanyer	390194
12297	Danial Donai	443167
12298	Jason Ross-Azikiwe	456596
12299	Vance Valencia	654212
12300	Tom Finnegan	672057
12301	Nick Angotti	652520
12302	Patrick Stewart	2052
12303	Dafne Keen	298329
12304	Stephen Merchant	29792
12305	Eriq La Salle	5890
12306	Elise Neal	11038
12307	Elizabeth Rodriguez	40090
12308	Doris Morgado	113741
12309	Reynaldo Gallegos	36315
12310	Dave Davis	80064
12311	Lauren Gros	115342
12312	Mark Ashworth	157258
12313	James Moses Black	268038
12314	Han Soto	99579
12315	Toby Holguin	311190
12316	Alison Fernandez	347508
12317	Phi Vu	359848
12318	Damon Carney	361672
12319	Jason Genao	371090
12320	Quincy Fouse	427930
12321	Frank Gallegos	446948
12322	Robert Wu	634360
12323	Al Coronel	709185
12324	Gary Farmer	2417
12325	Mili Avital	5141
12326	Michelle Thrush	40261
12327	Mark Bringelson	321420
12328	Todd Pfeiffer	372030
12329	Susan Sarandon	135
12330	Geena Davis	292
12331	Timothy Carhart	13969
12332	Sonny Carl Davis	334472
12333	Shelly Desai	368032
12334	Ken Swofford	20301
12335	Carol Mansell	327467
12336	Stephen Polk	338644
12337	Marco St. John	22576
12338	Jack Lindine	262805
12339	Mamie Jean Calvert	324636
12340	Gregory J. Barnett	552021
12341	Julian Sands	479
12342	Steven Weber	2758
12343	Carey Lowell	14210
12344	Vincent Ward	3727
12345	French Stewart	15756
12346	Ed Lauter	5379
12347	Mike Figgis	2894
12348	Mariska Hargitay	9287
12349	Paul Quinn	64975
12350	Shawnee Smith	29966
12351	Bob Rafelson	3527
12352	Michael A. Goorjian	31772
12353	Emily Procter	34372
12354	Richard Lewis	55124
12355	Jeremy Jordan	62609
12356	Gordon Michaels	65337
12357	Davidlee Willson	211006
12358	Anne Lange	214910
12359	Susan Barnes	242638
12360	Waldemar Kalinowski	278933
12361	Lou Rawls	326894
12362	Julian Lennon	151375
12363	Ladislav Jakim	26033
12364	Pavla Novotná	26034
12365	Vladimír Pucholt	2380
12366	Pavel Sedláček	26039
12367	Zdeněk Kulhánek	1661
12368	František Kosina	39966
12369	Božena Matušková	26037
12370	Antonín Pokorný	1545
12371	Jaroslav Kladrubský	39784
12372	Františka Skálová	39967
12373	Jaroslava Rážová	39968
12374	Majka Gillarová	39969
12375	Zuzana Opršalová	39946
12376	Jaroslav Bendl	39970
12377	František Pražák	39971
12378	Dana Urbánková	39972
12379	Ladislav Jandoš	41174
12380	Zdeněk Jarolímek	1658
12381	Ivo Niederle	7256
12382	Jiří Žák	703651
12383	Klaus-Peter Thiele	38439
12384	Ulrich Thein	10132
12385	Mirai Šida	70189
12386	Luke Allen-Gale	128481
12387	Kirin Kiki	11587
12388	Tacuja Fudžiwara	5214
12389	Šinobu Ótake	171519
12390	Tomokazu Miura	204713
12391	Keiko Takešita	278348
12392	Šin'iči Hatori	299274
12393	Lazar Ristovski	9366
12394	Mirjana Jokovič	8048
12395	Ernst Stötzner	105087
12396	Mirjana Karanovič	35312
12397	Milena Pavlovič	129903
12398	Davor Dujmovic	9252
12399	Branislav Lečič	56163
12400	Emir Kusturica	2969
12401	Albena Stavreva	38979
12402	Josif Tatič	82938
12403	princ Philip, vévoda z Edinburghu	119337
12404	Nele Karajlić	239924
12405	Pierre Spengler	286666
12406	Predrag Milinkovič	393381
12407	Rick Dano	403554
12408	Kurt Waldheim	412865
12409	Nicolae Ceauşescu	54662
12410	Ljiljana Jovanovič	458158
12411	Branko Petkovič	460621
12412	Željko Mitrovič	447507
12413	Erol Kadic	496254
12414	Elizabeta Djorevska	507739
12415	Helmut Schmidt	288082
12416	Kristýna Kohoutová	57411
12417	Goldie Hawn	66
12418	Rick Lenz	11379
12419	Irene Hervey	103376
12420	Tani Guthrie	22024
12421	Eve Bruce	337088
12422	Jean-Marie Juan	195001
12423	Christian Bouillette	195029
12424	Lucy Saroyan	314111
12425	Lee Harris	603373
12426	Frédéric Imberty	618629
12427	Liza Minnelli	857
12428	Helmut Griem	7354
12429	Joel Grey	6246
12430	Fritz Wepper	10850
12431	Helen Vita	156784
12432	Ellen Umlauf	220985
12433	Pierre Franckh	281196
12434	Elisabeth Neumann-Viertel	287726
12435	Gerd Vespermann	306942
12436	Gitta Schmidt	559637
12437	Oliver Collignon	639792
12438	Georg Hartmann	680848
12439	Ladislav Kazda	29298
12440	Dagmar Kofroňová	32807
12441	Zlatomír Vacek	27592
12442	František Nechyba	40141
12443	Jiří Bělohoubek	36985
12444	Antonín Novotný	26157
12445	Monika Indingerová	32699
12446	Pavla Plášková	40142
12447	V. Bakalářová	37912
12448	Holohlavská	40143
12449	J. Skružný	40144
12450	Byeong-heon Lee	17601
12451	Tae-woo Kim	21747
12452	Yeong-ae Lee	17692
12453	Joo-bong Ki	42333
12454	Tae-hyeon Jin	57838
12455	Han-wi Lee	105225
12456	Myeong-soo Kim	25200
12457	So-young Ko	20478
12458	Herbert Ulrich	203393
12459	Christoph Hofrichter	206448
12460	Birgitta Valberg	6554
12461	Birgitta Pettersson	6555
12462	Tor Isedal	135886
12463	Ove Porath	142942
12464	Axel Slangus	90900
12465	Gudrun Brost	135888
12466	Oscar Ljung	135890
12467	Rie Mijazawa	13620
12468	Nendži Kobajaši	13562
12469	Ren Ósugi	13572
12470	Micuru Fukikoši	69957
12471	Tošinori Omi	13999
12472	Min Tanaka	13584
12473	Keiko Kiši	130035
12474	Baidžaku Nakamura	192792
12475	Hiroši Kanbe	283078
12476	Kanako Fukaura	294123
12477	Masajasu Kitajama	378422
12478	Senri Sakurai	366746
12479	Reiko Kusamura	571003
12480	Rachel Griffiths	2221
12481	James Frain	44603
12482	David Morrissey	23354
12483	Charles Dance	261
12484	Celia Imrie	16740
12485	Rupert Penry-Jones	16563
12486	Bill Paterson	64977
12487	Nyree Dawn Porter	72542
12488	Jon Rumney	193984
12489	Stella Maris	192064
12490	Carla Mendonça	285224
12491	Kika Mirylees	309687
12492	Heather Weeks	438830
12493	Dana Medřická	2040
12494	Libuše Havelková	1179
12495	Zdeněk Týle	1647
12496	Carole Lombard	840
12497	Jack Benny	51255
12498	Robert Stack	11462
12499	Lionel Atwill	4371
12500	Stanley Ridges	132879
12501	Miles Mander	7438
12502	Frank Reicher	5464
12503	John Kellogg	157073
12504	Henry Victor	225635
12505	Leslie Denison	262623
12506	Gene Rizzi	362080
12507	Adolf E. Licho	694745
12508	Brie Larson	56344
12509	Evangeline Lilly	26840
12510	Tessa Thompson	37983
12511	Rene Russo	328
12512	Hayley Atwell	30538
12513	Taika Waititi	31629
12514	Angela Bassett	2186
12515	James D'Arcy	11942
12516	Lexi Rabe	470192
12517	Joe Russo	3916
12518	Emma Fuhrmann	84390
12519	Cade Woodward	365086
12520	Yvette Nicole Brown	41615
12521	Callan Mulvey	16546
12522	Ken Jeong	53794
12523	Ty Simpkins	66657
12524	Jackson A. Dunn	462023
12525	Faith Logan	421520
12526	Maria Z. Wilson	432022
12527	Joy McAvoy	548084
12528	Sam Hargrave	564896
12529	Kiersten Dolbec	574983
12530	Eric Word	574984
12531	Ava Russo	629507
12532	Roe Dunkley	683939
12533	Maurice P. Kerry	707114
12534	Ben Sakamoto	707796
12535	Nicole Kidman	23
12536	Jim Broadbent	1836
12537	Richard Roxburgh	1837
12538	Garry McDonald	104699
12539	Jacek Koman	17402
12540	Matthew Whittet	313299
12541	Kerry Walker	320374
12542	Caroline O'Connor	229747
12543	Christine Anu	320375
12544	Natalie Jackson Mendoza	23986
12545	Lara Mulcahy	320376
12546	Kylie Minogue	16764
12547	Tara Morice	18533
12548	Ozzy Osbourne	33659
12549	Kiruna Stamell	98570
12550	Tim Elliott	109163
12551	Deobia Oparei	173641
12552	Arthur Dignam	261092
12553	Peter Collingwood	298535
12554	Linal Haft	309824
12555	Liliya May	339438
12556	Neeraj Singh	602193
12557	Kip Gamblin	603346
12558	Shaun Parker	697817
12559	Jude Law	53
12560	Eileen Atkins	14307
12561	Jack White	20337
12562	Taryn Manning	16759
12563	Emily Deschanel	18857
12564	William Boyer	39199
12565	Erik Smith	33877
12566	Chet Dixon	75257
12567	Jay Tavare	78429
12568	Hank Stone	232208
12569	Tom Aldredge	292731
12570	Alex Hassell	343409
12571	Dean Whitworth	393746
12572	James Marsden	2347
12573	Amy Jo Johnson	14425
12574	Ann-Margret	5169
12575	Wayne Robson	84820
12576	Rebecca Jenkins	6304
12577	Matthew Edison	51629
12578	John Bourgeois	11237
12579	Tyler Kyte	20134
12580	Phillip MacKenzie	59859
12581	Leah Renee	95940
12582	Deborah Odell	10285
12583	Mark Lutz	73547
12584	Angela Asher	105583
12585	Duane Murray	160997
12586	John Watson	224237
12587	Ken Kramer	226795
12588	Kedar Brown	269469
12589	Jane Moffat	298367
12590	Jonathan Whittaker	298458
12591	Ted Ludzik	298583
12592	James Downing	304410
12593	Billy Otis	328172
12594	Michael Rhoades	329938
12595	Melyssa Ade	348056
12596	Ho Chow	488105
12597	Katherine Trowell	551833
12598	Frances Sternhagen	14227
12599	Lauren Bacall	737
12600	Graham Jarvis	9519
12601	Rob Reiner	3046
12602	Jerry Potter	234200
12603	Alexandr Kajdanovskij	27089
12604	Alisa Frejndlich	34526
12605	Nataša Abramova	50972
12606	Faime Jurno	50973
12607	Je. Kostin	50974
12608	R. Rendi	50975
12609	Sergej Jakovlev	187095
12610	Mary Murray	517318
12611	Billie Whitelaw	4815
12612	Harvey Stephens	53540
12613	Patrick Troughton	10834
12614	John Stride	13884
12615	Freda Dowie	122553
12616	Leo McKern	2436
12617	Ya'ackov Banai	124521
12618	Tommy Duggan	154235
12619	Roy Boyd	188521
12620	Harvey Bernhard	235013
12621	Ronald Leigh-Hunt	282124
12622	Juba Kennerley	290051
12623	Betty McDowall	304649
12624	Guglielmo Spoletini	326269
12625	Patrick McAlinney	489943
12626	Anthony Nicholls	581047
12627	Armie Hammer	61409
12628	Dev Patel	34972
12629	Nazanin Boniadi	38879
12630	Tilda Cobham-Hervey	124014
12631	Anupam Kher	6542
12632	Natasha Liu Bordizzo	232204
12633	Angus McLaren	80433
12634	Vipin Sharma	278578
12635	Carmen Duncan	200138
12636	Rodney Afif	266350
12637	Nagesh Bhonsle	292553
12638	Carmel Johnson	202779
12639	Vitthal Kale	616483
12640	Alex Pinder	643923
12641	Mia Farrow	778
12642	Maureen O'Sullivan	4782
12643	Lloyd Nolan	4477
12644	Lewis Black	21557
12645	Julia Louis-Dreyfus	37853
12646	Richard Jenkins	8109
12647	Paul Bates	18313
12648	Sam Waterston	2279
12649	Joanna Gleason	60513
12650	Ira Wheeler	214951
12651	Soon-Yi Previn	587986
12652	Richard Boone	4571
12653	Cameron Mitchell	5555
12654	Barbara Rush	11062
12655	Peter Lazer	433479
12656	Margaret Blye	37547
12657	Skip Ward	311785
12658	Frank Silvera	8082
12659	David Canary	37365
12660	Larry Ward	433482
12661	James Fox	2520
12662	Christopher Reeve	45
12663	Peter Vaughan	12151
12664	Ben Chaplin	2233
12665	Lena Headey	13613
12666	Patrick Godfrey	108774
12667	Christopher Brown	127237
12668	Tony Aitken	127279
12669	Paul Copley	105163
12670	Paula Jacobs	236400
12671	Jestyn Phillips	245843
12672	Peter Eyre	314708
12673	Jeffry Wickham	441007
12674	Jo Kendall	651625
12675	Julie Harris	7750
12676	James Dean	767
12677	Raymond Massey	13011
12678	Albert Dekker	4318
12679	Harold Gordon	352038
12680	Lonny Chapman	10526
12681	Carolyn Jones	15250
12682	Nick Dennis	128606
12683	Charles Sherlock	178109
12684	Barbara Baxley	246105
12685	Harry Cording	188153
12686	John Halloran	295013
12687	Ken Miller	317642
12688	Wheaton Chambers	318300
12689	Jonathan Haze	330825
12690	Charles Anthony Hughes	338226
12691	Jack Carr	341334
12692	Rose Plumer	343324
12693	Ramsay Hill	350218
12694	Mario Siletti	355460
12695	William 'Bill' Phillips	384346
12696	Joe Brooks	408154
12697	Abdullah Abbas	558676
12698	Margaretha Krook	50961
12699	Jörgen Lindström	199325
12700	Jerry Lacy	34960
12701	Susan Anspach	72971
12702	Jennifer Salt	75432
12703	Mark Goddard	134907
12704	Michael Greene	249728
12705	Joy Bang	271387
12706	Susanne Zenor	405599
12707	Marco Hofschneider	50813
12708	René Hofschneider	50856
12709	André Wilms	68154
12710	Andrzej Mastalerz	40015
12711	Hanns Zischler	10163
12712	Norbert Schwarz	24691
12713	Halina Łabonarska	9732
12714	Zbigniew Bielski	10483
12715	Bohdan Ejmont	22458
12716	Marcin Latallo	43118
12717	Włodzimierz Press	55406
12718	Anna Seniuk	134035
12719	Włodzimierz Musiał	135460
12720	Ryszard Pietruski	136279
12721	Grzegorz Wons	137775
12722	Cezary Morawski	138106
12723	Aleksander Bednarz	138402
12724	Alfred Freudenheim	144480
12725	Alexej Maslov	164985
12726	Nicolas Lormeau	194859
12727	Holger Kunkel	202484
12728	Martin Maria Blau	251099
12729	Bogusława Schubert	284594
12730	Erich Schwarz	324150
12731	Marbo Becker	603728
12732	Marek Brand	620812
12733	Dariusz Buchowiecki	668626
12734	Ashley Wanninger	671350
12735	Penelope Milford	9337
12736	Robert Ginty	5183
12737	Jonathan Banks	16312
12738	Charles Cyphers	36127
12739	Olivia Cole	51838
12740	Pat Corley	110930
12741	Bruce French	209468
12742	Stacey Pickren	222872
12743	Beeson Carroll	232303
12744	Mary Jackson	42084
12745	Richard Lawson	77250
12746	Luis Contreras	261851
12747	Rita Taggart	310212
12748	Tresa Hughes	312574
12749	Sally Frei	380891
12750	Ned Van Zandt	385605
12751	Gwen Van Dam	402388
12752	Mary Gregory	407137
12753	Bill Hale	452122
12754	John Forsythe	2441
12755	Paul Stewart	98179
12756	Gerald S. O'Loughlin	249500
12757	John Gallaudet	227788
12758	James Flavin	133293
12759	Rhonda Fultz	13450
12760	Stan Levitt	49893
12761	Sheldon Allman	211327
12762	Nick Dimitri	227156
12763	Roosevelt Grier	241487
12764	Paul Carr	306438
12765	Richard Kelton	324479
12766	Al Christy	368994
12767	Ted Eccles	410772
12768	Mary Linda Rapelye	475906
12769	John C. Flinn III	492770
12770	Gerry Okuneff	648816
12771	Sophia Loren	841
12772	Marcello Mastroianni	850
12773	John Vernon	57318
12774	Alessandra Mussolini	54118
12775	Benito Mussolini	22535
12776	Françoise Berd	638377
12777	Daniel Olbrychski	2521
12778	Wojciech Pszoniak	50969
12779	Kalina Jędrusik	135662
12780	Stanisław Igar	389835
12781	Franciszek Pieczka	8323
12782	Kazimierz Opaliński	28672
12783	Andrzej Łapicki	28606
12784	Wojciech Siemion	37132
12785	Tadeusz Białoszczyński	232708
12786	Zbigniew Zapasiewicz	24495
12787	Piotr Fronczewski	8541
12788	Jerzy Zelnik	9787
12789	Maciej Góraj	142362
12790	Grażyna Michalska	116171
12791	Włodzimierz Boruński	45081
12792	Danuta Wodyńska	588309
12793	Jadwiga Andrzejewska	588198
12794	Aleksander Dzwonkowski	588311
12795	Kazimierz Wichniarz	28701
12796	Zdzisław Kuźniar	35566
12797	Halina Gryglaszewska	588312
12798	Jerzy Obłamski	586671
12799	Marek Walczewski	136319
12800	Lidia Korsakówna	141857
12801	Emilia Krakowska	23026
12802	Bohdana Majda	138072
12803	Teodor Gendera	141089
12804	Jerzy Przybylski	588200
12805	Mieczysław Waśkowski	46780
12806	Jan Paweł Kruk	137752
12807	Alicja Sobieraj	588314
12808	Krzysztof Majchrzak	8315
12809	Janina Grzegorczyk	588315
12810	Janina Tur-Kiryłow	588316
12811	Ryszard Bromowicz	588317
12812	Witold Dederko	144905
12813	Tomasz Lengren	390264
12814	Antoni Byszewski	588318
12815	Mariola Kukuła	496186
12816	Jerzy Stasiuk	588319
12817	Lena Wilczyńska	588320
12818	Zofia Wilczyńska	245371
12819	Andrzej Wohl	588322
12820	Pelle Hvenegaard	10640
12821	Erik Paaske	10742
12822	Morten Jørgensen	10652
12823	Lars Simonsen	147560
12824	Astrid Villaume	158263
12825	Axel Strøbye	266446
12826	Kristina Törnqvist	315295
12827	Knut Schultheiß	376439
12828	Nis Bank-Mikkelsen	405632
12829	Maria Grazia Di Meo	447343
12830	John Wittig	455140
12831	Lena-Pia Bernhardsson	458127
12832	Karen Wegener	634069
12833	Jytte Strandberg	703052
12834	David Huddleston	113844
12835	Tara Reid	1877
12836	Mark Pellegrino	34408
12837	Mike Gomez	49499
12838	Leon Russom	36642
12839	Ben Gazzara	7807
12840	Asia Carrera	18040
12841	Lu Elrod	45706
12842	Marshall Manesh	49845
12843	Richard Gant	67393
12844	Torsten Voges	74189
12845	Carlos Leon	100640
12846	Luis Colina	271509
12847	Kiva Dawson	309412
12848	Dom Irrera	382166
12849	Christopher Eccleston	4837
12850	Alakina Mann	29817
12851	James Bentley	67316
12852	Eric Sykes	60425
12853	Elaine Cassidy	5339
12854	Renée Asherson	131699
12855	Michelle Fairley	68576
12856	Gordon Reid	696011
12857	Sam Worthington	12156
12858	Luke Bracey	113921
12859	Teresa Palmer	35611
12860	Milo Gibson	282611
12861	Nathaniel Buzolic	91398
12862	Ryan Corr	115558
12863	Matt Nable	98797
12864	Firass Dirani	55874
12865	James Mackay	116757
12866	Ori Pfeffer	152840
12867	Nico Cortez	68566
12868	Damien Thomlinson	282477
12869	Ben O'Toole	385430
12870	Benedict Hardie	413260
12871	Raphael Dubois	441938
12872	Harry Greenwood	494710
12873	Ben Mingay	597891
12874	James Lugton	608122
12875	Laurence Brewer	629675
12876	Luke Pegler	645542
12877	Jacob Warner	651847
12878	Jeremy Blackman	54337
12879	Melinda Dillon	4603
12880	Henry Gibson	20027
12881	Felicity Huffman	13904
12882	Orlando Jones	1991
12883	Michael Murphy	24665
12884	Thomas Jane	2229
12885	Veronica Hart	13612
12886	Cleo King	69219
12887	Neil Pepe	18788
12888	Meagen Fay	18862
12889	Natalie Marston	48261
12890	Matt Gerald	54418
12891	Mary Lynn Rajskub	17708
12892	Jim Beaver	52998
12893	Robert Downey Sr.	12390
12894	William Mapother	14173
12895	Scott Alan Smith	52309
12896	Pat Healy	34830
12897	Patricia Scanlon	81244
12898	Kevin Breznahan	107216
12899	Brad Hunt	137386
12900	Lillian Adams	177240
12901	Art Frankel	201601
12902	Rod McLachlan	339370
12903	Patrick Warren	358414
12904	Danny Wells	380904
12905	John Pritchett	648454
12906	Patricia Forte	659238
12907	Jason Andrews	668393
12908	Cory Buck	671272
12909	Emmanuel Johnson	691829
12910	Sergio Castellitto	17047
12911	Griffin Dunne	2881
12912	Eric Do	60330
12913	Luc Besson	2821
12914	Kimberly Beck	117217
12915	Geoffrey Carey	144461
12916	Marc Duret	145230
12917	Sheila McLaughlin	163113
12918	Claude Robin	192027
12919	Jan Rouiller	195413
12920	Andréas Voutsinas	370179
12921	John Erdman	550240
12922	Christian Gazio	635009
12923	Stanley Donen	2876
12924	Raoul Delfosse	79011
12925	Peter Stone	22779
12926	Roger Trapp	82808
12927	Marcel Bernier	84990
12928	Lucien Desagneaux	84991
12929	Jacques Préboist	133989
12930	Chantal Goya	202638
12931	André Tomasi	191067
12932	Louis Viret	293363
12933	Anne Brochet	15864
12934	Vincent Perez	874
12935	Jacques Weber	2528
12936	Roland Bertin	10482
12937	Josiane Stoléru	18139
12938	Ludivine Sagnier	7677
12939	Jean-Marie Winling	13594
12940	Pierre Maguelon	80394
12941	Sandrine Kiberlain	8261
12942	Michel Vuillermoz	52092
12943	Michel Fau	72210
12944	Stéphane Slima	82180
12945	Maurice Sarfati	102848
12946	Philippe Morier-Genoud	129222
12947	Isabelle Gruault	131719
12948	Pierre Aussedat	133804
12949	Jacques Pater	141537
12950	Jean-Damien Barbin	141543
12951	Lucien Pascal	153748
12952	Eric Bernard	159074
12953	Vincent Winterhalter	194947
12954	Quentin Ogier	195642
12955	Hervé Pauchon	195941
12956	Nicole Chomo	196607
12957	François Marié	190953
12958	Alain Rimoux	214654
12959	Philippe Volter	227022
12960	Yves Aubert	230609
12961	Louise Vincent	284357
12962	Eric Picou	286945
12963	Catherine Ferran	287879
12964	Christian Loustau	301750
12965	Philippe Girard	320478
12966	Laurent Vivier	338221
12967	Nicole Félix	637240
12968	Matthew Ford	666238
12969	Mirosław Baka	76744
12970	Krzysztof Globisz	20837
12971	Jan Tesarz	82718
12972	Olgierd Łukaszewicz	22900
12973	Krzysztof Stelmaszyk	132636
12974	Małgorzata Pieczyńska	133049
12975	Zdzisław Rychter	136714
12976	Maciej Szary	140288
12977	Leonard Andrzejewski	140941
12978	Helena Kowalczykowa	140944
12979	Jerzy Zass	141113
12980	Andrzej Gawroński	141121
12981	Maciej Maciejewski	143243
12982	Borys Marynowski	144484
12983	Marzena Manteska	385120
12984	Iwona Głębicka	629242
12985	Zbigniew Plato	675131
12986	Zdzisław Tobiasz	675213
12987	Henryk Guzek	676767
12988	Cezary Świtkowski	677470
12989	Lech Pietrasz	679852
12990	Bogusław Hubicki	680767
12991	Lena Nyman	66243
12992	Halvar Björk	107676
12993	Georg Løkkeberg	467753
12994	Mimi Pollak	122186
12995	Arne Bang-Hansen	553102
12996	Linn Ullmann	553103
12997	Knut Wigert	553104
12998	Yaël Abecassis	15821
12999	Roschdy Zem	8894
13000	Roni Hadar	89982
13001	Shimon Mimran	145080
13002	Pierre-Jean Chérer	164883
13003	Joy Rieger	177838
13004	Shmil Ben Ari	240251
13005	Patrick Descamps	163007
13006	Shlomo Vishinsky	272290
13007	Moshe Agazai	274610
13008	Lana Ettinger	457958
13009	Avi Hadash	485209
13010	Abraham Celektar	699329
13011	Hyo-joo Han	49754
13012	Seung-ryong Ryoo	69045
13013	Joon-hyeok Lee	27971
13014	Eun-kyeong Shim	104736
13015	Myeong-gon Kim	21744
13016	El Lee	147804
13017	Soon-woong Yoo	147926
13018	Jong-goo Kim	165770
13019	Min-soo Song	179035
13020	Sung-tae Heo	183265
13021	Gil-dong Kim	114468
13022	Seong-yong Han	251078
13023	Seong-chan Son	352573
13024	Eun-soo Kwon	367977
13025	Gook-hyang Jeon	376025
13026	Bong-ryeon Lee	381484
13027	Seung-hun Kim	557331
13028	Hye-hwa Kim	686627
13029	Woon-Seop Shin	655116
13030	Martha Raye	67454
13031	William Frawley	90247
13032	Robert Lewis	584946
13033	Arthur Hohl	141153
13034	Fritz Leiber	11376
13035	Vera Marshe	268734
13036	Richard Abbott	14353
13037	Addison Richards	133283
13038	Herb Vigran	134966
13039	Lester Matthews	138856
13040	Virginia Brissac	36668
13041	John Harmon	221430
13042	William Self	242436
13043	Warren Ashe	268647
13044	Paul Newlan	318296
13045	C. Montague Shaw	332219
13046	Elspeth Dudgeon	338327
13047	Bernard Nedell	353529
13048	Ruth Lee	357160
13049	Helene Heigh	376045
13050	Boyd Irwin	427233
13051	Ella Ethridge	474074
13052	Ber LeBaron	480782
13053	Leslie Cheung	7327
13054	Fengyi Zhang	23436
13055	Qing Xu	83599
13056	Wenli Jiang	129969
13057	David Wu	199094
13058	Dan Li	551941
13059	Pu Zhou	604249
13060	Vanessa Redgrave	892
13061	Brenda Blethyn	2080
13062	Patrick Kennedy	66365
13063	Peter Wight	32101
13064	Daniel Mays	47024
13065	Nonso Anozie	50170
13066	Gina McKee	20497
13067	Jérémie Renier	23380
13068	Alfie Allen	78777
13069	Lionel Abelanski	57614
13070	Jamie Beamish	151464
13071	Johnny Harris	84588
13072	Neil Maskell	17941
13073	Alice Orr-Ewing	120284
13074	Angel Witney	119113
13075	Anthony Minghella	3462
13076	Elliott Francis	78478
13077	Ailidh Mackay	251761
13078	Kelly Scott	257015
13079	Tilly Vosburgh	286544
13080	Georgia Oakley	311585
13081	Ian Bonar	199124
13082	Oliver Gilbert	490665
13083	Wendy Nottingham	418384
13084	Rebecca Ferguson	97778
13085	Jason Momoa	37288
13086	Javier Bardem	4780
13087	Sharon Duncan-Brewster	251672
13088	Charlotte Rampling	7676
13089	Chen Chang	39052
13090	Stephen McKinley Henderson	37372
13091	Babs Olusanmokun	397072
13092	Golda Rosheuvel	628410
13093	Neil Bell	279758
13094	Tachia Newall	706752
13095	Oliver Ryan	130628
13096	Charlie Rawes	386530
13097	Gloria Obianyo	279267
13098	Jimmy Walker	446955
13099	Paul Bullion	551290
13100	János Timkó	353290
13101	Björn Freiberg	227891
13102	Michael Nardone	278845
13103	Ferenc Iván Szabó	691336
13104	Jacob Tremblay	153920
13105	Julia Roberts	4
13106	Owen Wilson	151
13107	Mandy Patinkin	455
13108	Ali Liebert	55749
13109	Izabela Vidovic	82113
13110	Emma Tremblay	101954
13111	Danielle Rose Russell	192972
13112	Bryce Gheisar	281304
13113	Kyle Breitkopf	175232
13114	Rachel Hayward	11868
13115	William Dickinson	150565
13116	Benjamin Ratner	62436
13117	Cameron Roberts	319214
13118	Rukiya Bernard	284065
13119	Sônia Braga	6480
13120	Nicole Oliver	65757
13121	Steve Bacic	13514
13122	Crystal Lowe	29620
13123	Gidget	346626
13124	Ty Consiglio	276878
13125	James A Hughes	348675
13126	Elle McKinnon	348677
13127	Millie Davis	348678
13128	Nadji Jeter	348694
13129	Erika McKitrick	348700
13130	Lidya Jewett	371685
13131	Jason McKinnon	428987
13132	Andre Robinson	450097
13133	Jason Tremblay	481098
13134	Sylvia Miles	14895
13135	John McGiver	58737
13136	Brenda Vaccaro	2278
13137	Barnard Hughes	21712
13138	Bob Balaban	13515
13139	Paul Morrissey	3016
13140	Taylor Mead	53162
13141	Ultra Violet	58542
13142	Philip Bruns	86859
13143	Sandy Duncan	94500
13144	Marlene Clark	108656
13145	Paul Benjamin	128273
13146	Georgann Johnson	139789
13147	International Velvet	150167
13148	Anthony Holland	218889
13149	Randall Carver	253399
13150	Paul Rossilli	263417
13151	Richard Clarke	453219
13152	Joan Murphy	589457
13153	Paul Jabara	89314
13154	Verna Bloom	70131
13155	Gary Basaraba	8039
13156	Barry Miller	86184
13157	Paul Greco	371074
13158	Irvin Kershner	2964
13159	Victor Argo	18673
13160	Alan Rosenberg	9151
13161	Juliette Caton	16698
13162	Steve Shill	34374
13163	Peggy Gormley	83436
13164	Andre Gregory	85037
13165	Michael Been	123936
13166	Ted Rusoff	218583
13167	Leo Damian	218633
13168	Leo Marks	259070
13169	Rod Dana	313676
13170	Penny Brown	387641
13171	Domenico Fiore	532929
13172	Dale Wyatt	606459
13173	Debra Winger	602
13174	Jeff Daniels	386
13175	Lisa Hart Carroll	60029
13176	Sharisse Baker-Bernard	9204
13177	Huckleberry Fox	319302
13178	Mary Kay Place	8778
13179	F. William Parker	262798
13180	Norman Bennett	370180
13181	Virginia McKenna	9331
13182	Bill Travers	9396
13183	Peter Lukoye	9318
13184	Robert S. Young	497739
13185	Claudette Colbert	759
13186	Walter Connolly	11264
13187	Roscoe Karns	117660
13188	Jameson Thomas	7456
13189	Alan Hale	4241
13190	Blanche Friderici	177712
13191	Jessie Arnold	181103
13192	Dolores Fuller	23478
13193	William Bailey	181293
13194	James Burke	182886
13195	Edmund Burns	182948
13196	Harry Schultz	10791
13197	George P. Breakston	25638
13198	Ken Carson	182970
13199	Charles A. Browne	134631
13200	Claire McDowell	117669
13201	Frank Yaconelli	118590
13202	Ray Cooke	182971
13203	Ray Creighton	183095
13204	Jack Curtis	183096
13205	Eva Dennison	184315
13206	Jack Evans	182999
13207	Allen Fox	186847
13208	Joaquin Garay	186848
13209	Carlton Griffin	188127
13210	Arthur Richard Haysel	188130
13211	Frank Holliday	188699
13212	Harry Hume	189285
13213	Sam Josephson	190572
13214	Mimi Lindell	190761
13215	Marvin Loback	190762
13216	Rose May	191354
13217	William McCall	191355
13218	Kate Morgan	192195
13219	Patsy O'Byrne	192196
13220	Earl Pingree	192197
13221	Hal Price	192213
13222	Margaret Reid	192947
13223	Ky Robinson	192948
13224	Blanche Rose	192949
13225	Rita Ross	192950
13226	Matty Roubert	193107
13227	Marvin Schecter	193204
13228	Bert Scott	193205
13229	S.S. Simon	193642
13230	Linda Lee Solomon	193643
13231	Bert Starkey	193644
13232	Ethel Sykes	193646
13233	Jane Talent	194378
13234	Harry Todd	194490
13235	Maidel Turner	195010
13236	William Wagner	195014
13237	Fred Walton	195103
13238	Dave Wengren	195232
13239	Billy West	195237
13240	Alec Cawthorne	56702
13241	John Matthews	56703
13242	Eve Channing	56704
13243	Teddy Martin	56705
13244	Don Taylor	3095
13245	Otto Preminger	3040
13246	Robert Strauss	71766
13247	Harvey Lembeck	127014
13248	Richard Erdman	135334
13249	Peter Graves	13984
13250	Neville Brand	10500
13251	Michael Moore	692249
13252	Peter Baldwin	69370
13253	Tommy Cook	131394
13254	Peter Leeds	181023
13255	Harald Maresch	250047
13256	Max Willenz	338326
13257	Bill McLean	367781
13258	Robert R. Stephenson	449649
13259	A. Gerald Singer	470414
13260	Gil Stratton	474297
13261	François Leterrier	8780
13262	Charles Le Clainche	8779
13263	Maurice Beerblock	8777
13264	Roger Planchon	4135
13265	Jacques Ertaud	152844
13266	Jean Paul Delhumeau	193510
13267	Roger Treherne	193511
13268	Jean Philippe Delamarre	193512
13269	César Gattegno	190131
13270	Lars Rudolph	71400
13271	Peter Fitz	12982
13272	Hanna Schygulla	2377
13273	Džoko Rosič	16591
13274	Ferenc Kállai	6634
13275	Attila Kaszás	9727
13276	Mátyás Dráfi	60470
13277	Mihály Kormos	68182
13278	Tamás Wichmann	122935
13279	József Szántó	397487
13280	Darek Vostřel	1706
13281	František Dibarbora	4595
13282	Branislav Koreň	31132
13283	Ondriš Jariabek	5802
13284	Jozef Kuchár	38432
13285	Jan Pixa st.	29323
13286	Antonín Klimeš	31929
13287	Viktor Riebauer	41119
13288	František Fontén	25029
13289	Jiří Štancl	42541
13290	Karel Šlajs	32435
13291	Milan Jonáš	37863
13292	František Šeba	32548
13293	Milan Klásek	26305
13294	Zdeněk Plaček	38247
13295	Luďa Marešová	24923
13296	Blažena Vernerová	31330
13297	Beda Lak	31053
13298	Jaroslav Horký	40653
13299	Václav Štádler	41246
13300	František Vlček st.	28955
13301	George Dzundza	393
13302	Jeanne Tripplehorn	596
13303	Dennis Arndt	86995
13304	Leilani Sarelle	22125
13305	Dorothy Malone	6262
13306	Mitch Pileggi	2765
13307	Mary Pat Gleason	17679
13308	Kayla Blake	67419
13309	David Wells	195286
13310	Bradford English	224882
13311	Stephen Rowe	265258
13312	Michael David Lally	312876
13313	Adilah Barnes	408793
13314	Jeanne Basone	639112
13315	Kathleen Turner	597
13316	Marianne Sägebrecht	4593
13317	Heather Fairfield	218833
13318	Dan Castellaneta	11255
13319	Gloria Cromwell	370186
13320	Lisa Howard	9510
13321	Peter Hansen	10620
13322	Shirley Mitchell	162028
13323	Roy Brocksmith	205285
13324	Ellen Crawford	370184
13325	Vickilyn Reynolds	370187
13326	Danitra Vance	392038
13327	Mary Fogarty	484990
13328	Susan Isaacs	497058
13329	Jayne Brook	1923
13330	Blair Underwood	9632
13331	Ernest Borgnine	2391
13332	Tony Shalhoub	2390
13333	Ken Marino	38891
13334	Lindsey Ginter	222736
13335	Gore Vidal	305535
13336	Gabrielle Reece	486320
13337	Chad Christ	525830
13338	Cynthia Martells	617307
13339	Jim Sturgess	35417
13340	Sylvia Hoeks	64802
13341	Philip Jackson	9988
13342	Gen Seto	187199
13343	Jim Conway	226115
13344	Brigitte Christensen	13075
13345	Maximilian Dirr	229181
13346	Jun Ichikawa	53964
13347	Douglas Dean	258119
13348	Katie McGovern	308826
13349	Caterina Capodilista	510785
13350	Klaus Tauber	398388
13351	Laurence Belgrave	520925
13352	Sean Buchanan	520926
13353	Miles Richardson	451291
13354	Jacqueline Hopkins	520927
13355	Amanda Walker	381252
13356	Sylvia De Fanti	520928
13357	Anita Eberwein-Newrkla	520930
13358	Ami Veevers Chorlton	504247
13359	Victoria Chapman	520871
13360	Wolfram Kremer	520931
13361	Gerry Shanahan	510942
13362	Katherine Wilson	520932
13363	David Kevin Fells	520933
13364	Jay Natelle	520847
13365	Luke Charles	520934
13366	Alison Adam	520935
13367	Melanie Gerren	510939
13368	Marcus J. Cotterell	520936
13369	Adrian McCourt	520937
13370	Patricia Meglio	520938
13371	Elizabeth Kalton	520950
13372	Diana Hobel	506617
13373	Julian Curry	520939
13374	Stefano Scherini	134332
13375	Andrew Ross Phillips	520941
13376	Merlin Ramml	520942
13377	Elizabeth Anne Kaye	520943
13378	Gerhard Haller	520944
13379	Lynn Swanson	516283
13380	Helen Hutchison	520945
13381	Margherita Pettarin	520946
13382	Diana Pegan	520947
13383	Shelagh Gallivan	508688
13384	Tara Elise Schlener	520948
13385	Alexander Antonitsch	450497
13386	Karel Mika	520949
13387	Simone Spinazze	508919
13388	Rajeev Badhan	520951
13389	Erand Hoxha	512013
13390	Franco Moscon	504412
13391	Ivan Kheil	37535
13392	Jiří Hrubý	41359
13393	Marie Salačová	41360
13394	Jarka Crkalová	41361
13395	Zdenka Lorencová	40836
13396	Táňa Zelinková	41362
13397	Slavoj Banzet	41363
13398	Ota Heinitz	41364
13399	Otto Sattler	30046
13400	Antonín Keyř	41365
13401	Jindřich Heidelberg	36974
13402	Dana Valtová	41366
13403	Jana Nováková	180079
13404	Hana Pazeltová	490975
13405	Chloë Sevigny	2304
13406	Peter Sarsgaard	11984
13407	Alicia Goranson	12008
13408	Natalie Zea	69864
13409	Caitlin Wehrle	81804
13410	Lou Perryman	92811
13411	Robert Prentiss	96658
13412	Josh Ridgway	244818
13413	Jerry Haynes	251200
13414	Gabriel Horn	301272
13415	Cheyenne Rushing	378523
13416	Jeannetta Arnette	539630
13417	Ali Kazim	376218
13418	Ole Thestrup	222199
13419	Gyrd Løfquist	634302
13420	Peter Reichhardt	72818
13421	Tomas Villum Jensen	17901
13422	Peter Lambert	278477
13423	Hidejuki Tanaka	16628
13424	Unšó Išizuka	9980
13425	Keidži Fudžiwara	124201
13426	Akiko Jadžima	228822
13427	Bibari Maeda	292899
13428	Čikao Ócuka	300999
13429	John Hostetter	311943
13430	Matt McKenzie	314088
13431	Rintaró Niši	348556
13432	Jóko Sómi	349999
13433	Branko Djurič	26411
13434	René Bitorajac	63309
13435	Filip Šovagović	63330
13436	Georges Siatidis	39767
13437	Serge-Henri Valcke	77183
13438	Bogdan Diklič	15508
13439	Primoz Petkovsek	4918
13440	Sasa Petrovic	15708
13441	Alain Eloy	139790
13442	Mustafa Nadarevic	146728
13443	Radovan Karadžič	156470
13444	Uroš Fürst	165587
13445	François Mitterrand	180241
13446	Marinko Prga	355623
13447	Tanja Ribič	698387
13448	Florence Marly	32688
13449	Nataša Tanská	17194
13450	Eduard Linkers	17933
13451	Vlasta Fabianová	1141
13452	Jiřina Petrovická	25752
13453	Jaroslav Zrotal	22614
13454	Ann Sortreed	32689
13455	Margarette Previtali	32690
13456	Stojanka Mustafova	32691
13457	Tsiao Jeh	32692
13458	Margaret Amakof	32693
13459	Čebeh Čančinov	32694
13460	Filip Balek-Brodský	27083
13461	Ema Kreutzerová	29871
13462	Ema Hrubá	29427
13463	Bruno Ganz	7344
13464	Solveig Dommartin	25377
13465	Peter Falk	789
13466	Hans-Martin Stier	18445
13467	Laurent Petitgand	203886
13468	Jürgen Heinrich	6439
13469	Nick Cave	14802
13470	Blixa Bargeld	17805
13471	Lajos Kovács	46180
13472	Teresa Harder	49092
13473	Sigurd Rachman	60102
13474	Annelinde Gerstl	124710
13475	Thierry Noir	155743
13476	Bernard Eisenschitz	199520
13477	Johanna Penski	217517
13478	Erika Rabau	217642
13479	Chick Ortega	226971
13480	Hans Marquardt	275080
13481	Ulrike Schirm	275083
13482	Mick Harvey	296492
13483	Beatrice Manowski	349437
13484	Patrick Kreuzer	427493
13485	Jerry Barrish	687791
13486	Alexej Kravčenko	24259
13487	Olga Mironova	24288
13488	Ljubomiras Laucevičius	42641
13489	Vladas Bagdonas	86671
13490	Jüri Lumiste	78103
13491	Vasilij Domračev	52841
13492	Viktor Lorenc	398756
13493	Svetlana Zelenkovskaja	427929
13494	Anatolij Slivnikov	490317
13495	Armando Brancia	9863
13496	Ciccio Ingrassia	9978
13497	Nando Orfei	10054
13498	Maria Antonietta Beluzzi	60336
13499	Nella Gambini	128416
13500	John Karlsen	205326
13501	Paolo Baroni	220787
13502	Lewis E. Ciannelli	298831
13503	Anthony La Penna	298986
13504	Bruno Bertocci	313391
13505	Carolyn De Fonseca	326254
13506	Alvaro Vitali	331750
13507	Cicely Browne	355337
13508	Bruno Zanin	409098
13509	Lino Patruno	533338
13510	Tom Waits	7786
13511	Ellen Barkin	518
13512	Joy N. Houck Jr.	134494
13513	Rockets Redglare	221291
13514	Alan Kleinberg	301669
13515	Billie Neal	302899
13516	Carrie Lindsoe	302900
13517	Eliott Keener	709361
13518	Naoto Takenaka	49702
13519	Hiroaki Hirata	304387
13520	Fumihiko Tačiki	315580
13521	Juzuru Fudžimoto	334660
13522	Jú Sugimoto	337776
13523	Rjúdži Nakagi	339764
13524	Minoru Hirano	348565
13525	Kacunosuke Hori	350413
13526	Masaki Terasoma	352905
13527	Ken'iči Močizuki	381781
13528	Hirojuki Kinošita	595159
13529	Masao Harada	688875
13530	Eriko Kigawa	689092
13531	Sumi Mutó	693541
13532	Warren Oates	23361
13533	Lee Grant	6242
13534	James Patterson	104091
13535	Kermit Murdock	319360
13536	Fred Stewart	319362
13537	Quentin Dean	95902
13538	Peter Masterson	11812
13539	Peter Whitney	135352
13540	Arthur Malet	135559
13541	William Watson	290510
13542	Eldon Quick	319363
13543	Nikita Knatz	344339
13544	Clegg Hoyt	423143
13545	Dermot Mulroney	449
13546	Danielle von Zerneck	76986
13547	Robert Wightman	7732
13548	Hilary Gilford	168387
13549	Tom Jarmusch	263194
13550	Rica Martens	353273
13551	Lori Tan Chinn	353361
13552	Michael Griffiths	668409
13553	Lia Amanda	84997
13554	Daniel Ivernel	80984
13555	Claude Génia	71526
13556	Julien Bertheau	71762
13557	Gualtiero Tumiati	77934
13558	France Asselin	85039
13559	Roger Pigaut	70529
13560	Jean Témerson	84998
13561	Jean-Pierre Mocky	20929
13562	Jacques Castelot	9893
13563	Noël Roquevert	62508
13564	Paul Azaïs	71793
13565	Simone Paris	78904
13566	Paul Barge	82385
13567	Marcel Journet	84996
13568	André Brunot	85036
13569	Jacques Couturier	190696
13570	Franck Maurice	208739
13571	Roger Vincent	261134
13572	Fernand Gilbert	264185
13573	Lucien Blondeau	264268
13574	Marcel Delaître	267759
13575	Made Siamé	281431
13576	Janine Zorelli	290766
13577	Pierre Morin	293287
13578	Marcel Loche	293300
13579	Cristina Grado	293357
13580	Léon Berton	293483
13581	André Var	297467
13582	Raymond Girard	298068
13583	Evelyne Didi	75114
13584	Christine Murillo	141298
13585	Carlos Salgado	146739
13586	Alexis Nitzer	146740
13587	Sylvie Van den Elsen	51641
13588	Gilles Charmant	146465
13589	Laika	66598
13590	Dominique Marcas	83037
13591	Samuel Fuller	4283
13592	Jean-Paul Wenzel	146741
13593	Louis Malle	2996
13594	Maximilien Regiani	146742
13595	Daniel Dublet	146743
13596	Philippe Dormoy	126459
13597	Louis Delamotte	146744
13598	Joëlle Jacquet	146746
13599	Michel Jacquet	146745
13600	Helene Brousse	146747
13601	Antonio Olivares	146748
13602	Sanna Fransman	108276
13603	Jacques Cheuiche	146463
13604	Simon Murray	142372
13605	Monique Goury	146749
13606	Mark Lavis	142371
13607	Irmeli Debarle	146468
13608	Veikko Nieminen	146388
13609	Jacques Leobold	146754
13610	Jean-Bernard Mateu	146753
13611	Jean-Luc Abel	146755
13612	Christian Ehrhart	146752
13613	Jacques Ehrhart	146751
13614	Gilles Sacuto	146756
13615	Konsta Väänänen	110138
13616	Alain Sakhnowsky	146757
13617	Teresa Saraiva	146758
13618	Andrée Saldo	146760
13619	Karine Arsène	146759
13620	Jean-Pierre Abodi	146764
13621	Remi Adam	146763
13622	Lalouani Areski	146762
13623	Francois Aver	146761
13624	Marc Barbé	50379
13625	Francis Boespflug	146765
13626	Lydia Braun	146766
13627	Noël Bureau	146767
13628	Natalia Cheuiche	146768
13629	André Le Coq	146782
13630	Gilbert Delmas	146769
13631	Daniel Dudon	146770
13632	Bernard Dupont	146771
13633	Albert Godard	146773
13634	Sylvia Folcarelly	146772
13635	Didier Heidet	146776
13636	Henri Gondalle	146774
13637	Claude Guillemard	146775
13638	Alain Impellizzieri	146777
13639	Othman Karoui	146778
13640	Jean Koralewski	146779
13641	Georges Lacour	146780
13642	Louis Latarrige	146781
13643	Deddy Lemardeley	146783
13644	Ange Melet	146784
13645	Michel Michelis	146785
13646	Felix Mpudi	146797
13647	Ruger Murer	146796
13648	Paula Oinonen	131557
13649	Mohand Ouatah	146795
13650	Raymond Pichert	146794
13651	Piitu	146793
13652	Claude Pinalie	146792
13653	Louis Pinquier	146791
13654	Isabelle Rivaud	146790
13655	Pietro Romanach	146789
13656	Simone Roy-Daniel	146788
13657	Laurent Thavonekhayl	146787
13658	Anssi Tikanmäki	105067
13659	Jacques Viard	146786
13660	Fabienne Vonier	146798
13661	Wolfgang Kluge	135959
13662	John Ebden	146464
13663	Timo Salminen	97131
13664	Outi Eranti	146799
13665	Jan Prokeš	32889
13666	Michaela Lišková	32400
13667	Jindřich Fairaizl	21400
13668	Bohumil Vild	32427
13669	Oldřich Macháček	37460
13670	Josef Steigl	27643
13671	Gustav Schönbach	37461
13672	Merab Ninidze	5095
13673	Avtandil Macharadze	89402
13674	Rezo Esadze	98566
13675	Kachi Kavsadze	217580
13676	Ija Ninidze	222455
13677	Amiran Amiranašvili	275605
13678	Leo Antadze	303964
13679	Veriko Anjaparidze	308754
13680	David Giorgobiani	13330
13681	Jim Jefferies	79403
13682	Helena Patočková	57894
13683	Jaromír Sobota	57893
13684	Bukenya Charles	582221
13685	Kakule William	688729
13686	Sserunya Ernest	709698
13687	Bill Burr	95637
13688	Margot Robbie	74887
13689	Kyle Chandler	25095
13690	Jean Dujardin	17849
13691	Cristin Milioti	93166
13692	Katarina Cas	83325
13693	Kenneth Choi	143160
13694	Brian Sacca	466622
13695	Henry Zebrowski	149227
13696	Aya Cash	60219
13697	Rizwan Manji	201464
13698	Stephanie Kurtzuba	318331
13699	Ashlie Atkinson	88011
13700	Thomas Middleditch	159833
13701	Stephen Kunken	145544
13702	Edward Herrmann	14165
13703	Jordan Belfort	87064
13704	Ted Griffin	75529
13705	Robert Clohessy	37652
13706	Natasha Newman-Thomas	541800
13707	Sandra Nelson	2225
13708	Ashley Blankenship	127798
13709	Madison McKinley	132892
13710	Michael Nathanson	46949
13711	Dan Bittner	54372
13712	Bret Shuford	62191
13713	Steven Boyer	369855
13714	Danny A. Abeckaser	179008
13715	Matthew Rauch	97574
13716	Michael Izquierdo	257915
13717	Donnie Keshawarz	134221
13718	Johnathan Tchaikovsky	314727
13719	Sebastian Tillinger	606572
13720	Chris Riggi	72442
13721	José Ramón Rosario	229764
13722	Dan Daily	52387
13723	Ben Van Bergen	146269
13724	Michael Devine	512728
13725	Jeremy Bobb	206620
13726	Sharon Jones	261078
13727	Emily Tremaine	237374
13728	Giselle Eisenberg	212385
13729	Ashley Springer	326841
13730	Remy Bennett	138573
13731	Catherine Curtin	257247
13732	Paul Urcioli	513544
13733	Michael Bryan French	285915
13734	Peter Youngblood Hills	82224
13735	Brendan Griffin	510969
13736	Victor Verhaeghe	405557
13737	Bekah Mulberg	257343
13738	Ari Barkan	597228
13739	Julian Brand	149407
13740	Bryan Burton	454043
13741	Kelsey Deanne	423967
13742	Maria Di Angelis	192621
13743	Rosemary Howard	109681
13744	Marisa Hunter	493265
13745	Chris Kerson	388069
13746	Nicole Rutigliano	117941
13747	Sibyl Santiago	591102
13748	Madeleine Wade	402565
13749	David Wenzel	257993
13750	Darren Whitfield	288398
13751	Joe Zaso	91024
13752	Alex Van Zeelandt	619899
13753	Fran Lebowitz	628557
13754	Barry Rothbart	686681
13755	Davram Stiefler	700987
13756	Eva Trejtnarová-Hudečková	1364
13757	Miroslav Masopust	7266
13758	Dáša Neblechová	37205
13759	Milena Steinmasslová	1331
13760	Lucie Žulová	41433
13761	Adolf Filip	9103
13762	Petr Hanus	44032
13763	Gustav Bubník	26889
13764	Jiří Vašků	44674
13765	Jan Janků	38238
13766	Rudolf Růžička	25886
13767	Jiří Suchánek	46270
13768	Antonín Filípek	46271
13769	Pavel Kužela	46272
13770	František Horek	42630
13771	Jaromír Laštovka	46274
13772	Karel Schumpeter	46273
13773	Jaroslav Sus	42631
13774	Bert Schneider	38175
13775	Eva Hnátková	43330
13776	Jitka Nováková	42074
13777	Max Kulhavý	41092
13778	Miroslav Čermák	106784
13779	John Ashton	4594
13780	Amy Madigan	13456
13781	Michael Kenneth Williams	20340
13782	Madeline O'Brien	55355
13783	Slaine	61375
13784	Richard Snee	53028
13785	Michele Proude	239478
13786	Elizabeth Duff	314833
13787	Brian Scannell	389797
13788	Celeste Oliva	430526
13789	Michael Nyqvist	17956
13790	Noomi Rapace	56697
13791	Lena Endre	8218
13792	Annika Hallin	24283
13793	Michalis Koutsogiannakis	50116
13794	Peter Andersson	60570
13795	Peter Haber	60571
13796	Sven-Bertil Taube	60572
13797	Ingvar Hirdwall	20861
13798	Tomas Köhler	60573
13799	Sofia Ledarp	60569
13800	Tehilla Blad	66207
13801	Kalled Mustonen	81073
13802	Darri Ingolfsson	100326
13803	Leo Bill	116435
13804	Reuben Sallmander	122313
13805	Emil Almén	147658
13806	Jacob Ericksson	157447
13807	Mikael Rahm	158896
13808	Marika Lagercrantz	125585
13809	Willie Andréason	183393
13810	Jan Mybrand	183430
13811	Julia Sporre	192776
13812	Nina Norén	206124
13813	Stefan Sauk	206105
13814	Margareta Stone	206713
13815	Henrik Kvarnlöt	222603
13816	Linn Björlund	225712
13817	Barbro Enberg	187921
13818	Louise Ryme	266150
13819	Daniel Abreu	365225
13820	Pale Olofsson	365781
13821	Henrik Knutsson	378443
13822	Mika-Christer Mäenpää	400996
13823	Sofia Brattwall	430126
13824	Alexandra Hummingson	430127
13825	Carl Oscar Törnros	460342
13826	Sovi Rydén	521812
13827	Fredrik Ohlsson	532368
13828	Geoffrey Lewis	6478
13829	Paul L. Smith	6397
13830	Denver Pyle	97395
13831	John Fogerty	46349
13832	Clint Black	16329
13833	Max Perlich	21841
13834	Corey Feldman	2479
13835	William Smith	5514
13836	Margot Kidder	7806
13837	Reba McEntire	7236
13838	Linda Hunt	1924
13839	William Marshall	21783
13840	Vilmos Zsigmond	55331
13841	Doug McClure	63641
13842	Art LaFleur	67528
13843	Robert Fuller	67664
13844	Will Hutchins	81682
13845	James Drury	89803
13846	Bert Remsen	112155
13847	Dennis Fimple	123062
13848	Henry Darrow	132756
13849	Leo Gordon	133725
13850	Paul Brinegar	133827
13851	Bill Henderson	209144
13852	Lauren Shuler Donner	251372
13853	Chris M. Allport	263120
13854	John Otrin	325171
13855	Jean De Baer	391742
13856	Jack Garner	406386
13857	Patrick Fullerton	547287
13858	Waylon Jennings	589953
13859	Kimberly Cullum	557988
13860	Rik Battaglia	5580
13861	Carl Lange	20143
13862	Miha Baloh	19879
13863	Dušan Antonijević	326739
13864	Sophie Hardy	20448
13865	Renato Baldini	19878
13866	Dragomir Felba	150006
13867	Dušan Vujisič	52077
13868	Shirley Stoler	112826
13869	Chuck Aspegren	112828
13870	Rutanya Alda	71156
13871	Paul D'Amato	5303
13872	Amy Wright	83146
13873	Eva León	331761
13874	Blanca Estrada	331877
13875	Carmen de Lirio	358839
13876	Cliff Robertson	1827
13877	Addison Powell	196296
13878	Walter McGinn	97255
13879	Tina Chen	72474
13880	Robert Phalen	20231
13881	Russell Johnson	5495
13882	Ernest Harden Jr.	149396
13883	Carlin Glynn	184707
13884	Michael Kane	224785
13885	Michael Miller	370285
13886	Arthur French	391750
13887	Patrick Gorman	393955
13888	Helen Stenborg	442398
13889	Michael Prince	539656
13890	David Bowman	651922
13891	Anna Paquin	870
13892	Geneviève Lemon	196634
13893	Jon Brazier	59506
13894	Stephen Papps	68007
13895	Hori Ahipene	68009
13896	Rose McIver	23523
13897	Tamati Rice	394095
13898	Eddie Campbell	643991
13899	Jonathan Frakes	2053
13900	Brent Spiner	2147
13901	LeVar Burton	2146
13902	Gates McFadden	2143
13903	Marina Sirtis	2145
13904	Alice Krige	18516
13905	Neal McDonough	2350
13906	Robert Picardo	2163
13907	Dwight Schultz	2165
13908	Adam Scott	33625
13909	Robert Zachar	73974
13910	Ethan Phillips	2162
13911	Brannon Braga	89599
13912	Ronald D. Moore	89600
13913	Victor Bevine	120752
13914	Eric Steinberg	128860
13915	Michael Braveheart	235065
13916	Patti Yasutake	236549
13917	Michael Zaslow	471653
13918	C.J. Bau	671270
13919	Marnie McPhail	671691
13920	Jon David Casey	701863
13921	Wagner Moura	41934
13922	Irandhir Santos	179122
13923	André Ramiro	83528
13924	Milhem Cortaz	83529
13925	Maria Ribeiro	42273
13926	Sandro Rocha	170611
13927	Tainá Müller	178737
13928	Juliana Schalch	136530
13929	Luciano Vidigal	138959
13930	Fabrício Boliveira	148671
13931	Adriano Garib	151149
13932	André Mattos	151167
13933	Luca Bianchi	160899
13934	Emílio Orciollo Netto	160904
13935	Thogun Teixeira	162191
13936	Rodrigo Candelot	576396
13937	Emil Horváth ml.	1751
13938	Steva Maršálek	34196
13939	Zdena Bronislavská	28848
13940	Pavel Libovický	41658
13941	Jaroslav Klouda	41659
13942	Jaroslava Vošmiková	3329
13943	Václav Kaňkovský	29193
13944	František Doleček	41660
13945	Zdeněk Formánek	41661
13946	Jiří Paclík	41662
13947	Dmitrij Turčaninov	41663
13948	Ivan Chrz	25014
13949	Teresia Elad	41664
13950	Jean Lifendi	41665
13951	M. L. Lukongo	41666
13952	Stanislav Junek	36644
13953	Michael Kodais	41667
13954	Antoine Massouh	41668
13955	Josef Matar	41669
13956	Mušrik Rahbány	41670
13957	Lolka Šoupalová	41672
13958	Taťána Unkurovová	41673
13959	B. K. Sarap	41674
13960	Duggirala Visweswaram	41675
13961	Jana Drbohlavová	1137
13962	Ivana Valešová	26970
13963	Eva Jakoubková	1198
13964	Pavol Mikulík	1502
13965	Štefan Šafárik	58881
13966	Svatopluk Mohapl	289026
13967	Peter Kočiš	14561
13968	Róbert Laurinec	151159
13969	Peter Maťo	61455
13970	Natália Hasprová	56131
13971	Václav Baur	47407
13972	Milan Kišš	1503
13973	Igor Čillík	5795
13974	Miki Kučera	217417
13975	Jana Janovská	43370
13976	Katarína Synková	217418
13977	Štefan Figura	26259
13978	František Kovár	2119
13979	Marek Motloch	289027
13980	Žaneta Jakubisková	59907
13981	Branislav Uherek	66985
13982	Zuzana Bydžovská	1420
13983	Jana Dolanská	1421
13984	Vladimír Kostovič	1753
13985	Vlado Černý	1629
13986	Hana Gregorová	1169
13987	Emil Horváth st.	6316
13988	Štefan Kožka	1755
13989	Jozef Mokoš	24542
13990	Jozef Husár	25632
13991	Hugo Kaminský	38417
13992	Arnošt Goldflam	950
13993	Jiří Klepl	54288
13994	Pavla Severinová	24992
13995	Michal Dlouhý	1474
13996	Ivan Rumanovský	53529
13997	Václav Šimice	60803
13998	Daniel Vychopeň	63139
13999	Hana Lančíková	73190
14000	Béla Várady	216035
14001	Vladimír Kittler	90553
14002	Jozef Belan	305604
14003	Edita Gallová	336661
14004	Alexander Bada	152503
14005	Miluše Šplechtová	1326
14006	Anna Javorková	1201
14007	Zlatica Gillová	26914
14008	Jackie Chan	37
14009	Siu Tien Yuen	52755
14010	Jang Lee Hwang	5630
14011	Dean Shek	96121
14012	Sin San	176373
14013	Tino Wong Cheung	223773
14014	Kwai Shan	213102
14015	Hsu Hsia	254841
14016	Jing Tang	288343
14017	Brandy Yuen	46521
14018	Hau-keung Lo	177589
14019	Linda Lin	228340
14020	Woo-ping Yuen	3134
14021	Max Lee Chiu-Jun	257699
14022	Paul Tylak	109106
14023	Fabian Erlinghauser	564277
14024	Juraj Kukura	1555
14025	Gustáv Valach	5804
14026	Robert Lischke	48399
14027	Jiří Bartoška	1793
14028	Michal Ladižinský	46719
14029	Ľudovít Kroner	13002
14030	Milan Šulc	42600
14031	Andrea Kratochvílová	44066
14032	Jana Hliňáková	21491
14033	Marie Logojdová	13099
14034	Václav Kovařík	41460
14035	Oldřich Mach	48400
14036	Dagmar Hachová	44049
14037	Jana Postlerová	45293
14038	Peter Kršák	45299
14039	Tony Leung Chiu-wai	5633
14040	Takeši Kaneširo	11357
14041	Šidó Nakamura	23358
14042	Vicki Zhao	8504
14043	Chiling Lin	56464
14044	Kou Shixun	77028
14045	Yongzhi You	176270
14046	Ning Wang	402301
14047	Chao Guo	498885
14048	Jingjing Ma	522782
14049	Shan Zhang	531802
14050	Yong Hou	567749
14051	Jinsheng Zang	627089
14052	Gang Xie	646828
14053	Yin He	652190
14054	Xiaoguang Hu	687813
14055	Bette Davis	764
14056	Anne Baxter	6274
14057	George Sanders	5506
14058	Celeste Holm	5739
14059	Gary Merrill	31167
14060	Hugh Marlowe	4429
14061	Gregory Ratoff	15725
14062	Barbara Bates	87022
14063	Walter Hampden	127514
14064	Craig Hill	41690
14065	Steven Geray	154786
14066	Jack Chefe	154998
14067	Randy Stuart	189946
14068	Mathew McCue	343384
14069	Paul Power	443691
14070	Claude Stroud	496042
14071	Helen Mowery	496064
14072	Tatum O'Neal	6245
14073	Madeline Kahn	6475
14074	Randy Quaid	467
14075	Art Ellison	49869
14076	Jessie Lee Fulton	398630
14077	Desmond Dhooge	488317
14078	Kolbjörn Knudsen	192974
14079	Olof Thunberg	192976
14080	Elsa Ebbesen	192978
14081	Bertha Sånnell	502726
14082	Rudolf Pellar	1696
14083	Richard Burton	60781
14084	Stephen Moore	120408
14085	Georgine Anderson	290255
14086	Donald Eccles	304431
14087	Stephanie Bidmead	348162
14088	Cyril Luckham	349429
14089	Darina Laščiaková	432158
14090	Marius Goring	98563
14091	Moira Shearer	6729
14092	Anton Walbrook	30785
14093	Austin Trevor	28834
14094	Esmond Knight	7480
14095	Irene Browne	205407
14096	Ludmila Tchérina	69277
14097	Albert Bassermann	14457
14098	Hay Petrie	7496
14099	Emeric Pressburger	17114
14100	Jean Hébey	86093
14101	Robert Helpmann	109170
14102	Robert Dorning	140940
14103	Charles Lisner	251008
14104	Bill Shine	278750
14105	George Woodbridge	299379
14106	Eric Berry	528082
14107	Peter Bayliss	542768
14108	Jane Fischer	666596
14109	Anthony Kemp	138102
14110	Mari Törőcsik	5159
14111	Sándor Pécsi	20961
14112	László Kozák	138077
14113	William Burleigh	138103
14114	John Moulder-Brown	68183
14115	Robert Efford	138104
14116	Mark Colleano	138105
14117	Gary O'Brien	489786
14118	Martin Beaumont	489787
14119	Paul Bartleft	489788
14120	Earl Younger	489789
14121	György Vizi	376107
14122	Julien Holdaway	489790
14123	Péter Delmár	489791
14124	Nyika Jancsó	247543
14125	Attila Némethy	323406
14126	Imre Ebergényi	489792
14127	Sándor Kentner	489793
14128	László Paál	357810
14129	Árpád Téry	349676
14130	András Avar	489794
14131	János Pách	489795
14132	István Seri	489796
14133	Orsolya Zeitler	349007
14134	Evanna Lynch	33079
14135	Natalia Tena	33082
14136	Domhnall Gleeson	63217
14137	Ciarán Hinds	11797
14138	Clémence Poésy	20525
14139	Jessie Cave	46358
14140	Sean Biggerstaff	14152
14141	Katie Leung	33080
14142	Gemma Jones	18080
14143	Scarlett Hefner	46359
14144	Anna Shaffer	46354
14145	Isabella Laughland	46356
14146	Louis Cordice	46357
14147	Ryan Turner	63947
14148	Afshan Azad	64352
14149	Guy Henry	64573
14150	Georgina Leonidas	46355
14151	Freddie Stroma	46360
14152	Robbie Jarvis	33081
14153	Emil Hostina	38367
14154	William Melling	69079
14155	Arthur Bowen	69076
14156	Daphne de Beistegui	69077
14157	Helena Barlow	69078
14158	Grace Meurisse Francis	78479
14159	Jamie Campbell Bower	36310
14160	Bertie Gilbert	128577
14161	Ralph Ineson	189233
14162	David Heyman	223743
14163	David Barron	223744
14164	Maxwell Laird	225442
14165	Valerie Dane	230633
14166	Jade Gordon	260034
14167	Jon Campling	261705
14168	Graham Duff	281113
14169	Ian Peck	313330
14170	Ninette Finch	318386
14171	Hebe Beardsall	377204
14172	Sha'ori Morris	428521
14173	Benn Northover	438921
14174	Jon Key	545748
14175	Joe Kallis	545749
14176	Craig Garner	548100
14177	Marianne Chase	621186
14178	Leigh Whannell	18824
14179	Monica Potter	6493
14180	Ken Leung	18759
14181	Makenzie Vega	21160
14182	Dina Meyer	1899
14183	Oren Koules	260194
14184	Paul Gutrecht	276035
14185	Alexandra Bokyun Chun	276562
14186	Henry Thomas	88
14187	Dee Wallace	2462
14188	Peter Coyote	89
14189	Robert MacNaughton	2224
14190	C. Thomas Howell	5170
14191	Erika Eleniak	539
14192	K.C. Martel	194718
14193	Sean Frye	194720
14194	David M. O'Dell	194721
14195	Richard Swingler	194722
14196	Frank Toth	194723
14197	Robert Barton	194724
14198	Michael Darrell	194726
14199	David Berkson	194727
14200	David Carlberg	194728
14201	Milt Kogan	194729
14202	Alexander Lampone	194730
14203	Rhoda Makoff	194731
14204	Robert Murphy	194732
14205	Richard Pesavento	194733
14206	Tom Sherry	194734
14207	Susan Cameron	194735
14208	Will Fowler Jr.	194736
14209	Barbara Hartnett	194737
14210	Diane Lampone	194738
14211	Marysia Stein	194739
14212	Mitch Suskin	194740
14213	Jean-Paul Hellendall	361275
14214	John Tormey	9628
14215	Cliff Gorman	9492
14216	Dennis Liu	9542
14217	Tricia Vessey	11656
14218	Henry Silva	15749
14219	Gano Grills	22475
14220	Tracy Howe	22871
14221	Sharon Angela	47946
14222	Jamie Hector	48172
14223	Scott Bryce	87200
14224	Camille Winbush	223166
14225	Damon Whitaker	243930
14226	Paul Diomede	384125
14227	Giuseppe Battiston	11222
14228	Anna Foglietta	119168
14229	Marco Giallini	70144
14230	Edoardo Leo	97349
14231	Valerio Mastandrea	8474
14232	Alba Rohrwacher	42640
14233	Kasia Smutniak	55999
14234	Benedetta Porcaroli	309773
14235	Elisabetta De Palo	507956
14236	Tommaso Tatafiore	509078
14237	Noemi Pagotto	509080
14238	Adam Sandler	904
14239	Jada Pinkett Smith	2407
14240	Robert Klein	52570
14241	Mike Binder	17041
14242	Ted Raimi	1826
14243	M.D. Walton	51019
14244	Lela Loren	80906
14245	Arick Salmea	70990
14246	Imani Hakim	169535
14247	Tommy Nohilly	287517
14248	Anthony Chisholm	332911
14249	Rae Allen	363177
14250	Robert Harvey	365608
14251	Paul Butler	452964
14252	Nick Taylor	616936
14253	Nick Vlassopoulos	622417
14254	Joseph A. Carpenter	256
14255	Kevin P. Farley	46506
14256	Tracey Maloney	102250
14257	Donald Wiegert	124574
14258	Anastasia Webb	124575
14259	Jim Haun	124576
14260	Cedric Cirotteau	187615
14261	John Farley	310507
14262	Jack Walsh	349615
14263	Lana Schwab	377058
14264	Wiley Harker	385186
14265	Barbara Kingsley	386133
14266	James Cada	454811
14267	Dan Flannery	708948
14268	Lída Chválová	1120
14269	Karel Hašler	3186
14270	Alexandr Antonov	24307
14271	Grigorij Alexandrov	21496
14272	Ivan Bobrov	30577
14273	Sergej M. Ejzenštejn	3447
14274	Vladimir Uralskij	30612
14275	Andrej Fajt	41237
14276	Aleksanteri Ahola-Valo	182285
14277	Roman Širman	364757
14278	Akemi Okamura	304285
14279	Jú Šimaka	708887
14280	Cunehiko Kamidžó	367904
14281	Daisuke Inoue	329871
14282	Nobuo Tanaka	344783
14283	Tacujuki Džinnai	372513
14284	Michael Sarrazin	35604
14285	Susannah York	50991
14286	Felice Orlandi	37551
14287	Art Metrano	20923
14288	Tim Herbert	57492
14289	Marilyn Hassett	13715
14290	Severn Darden	154787
14291	Al Lewis	65833
14292	Cynthia Myers	142490
14293	Robert Fields	205526
14294	Jacquelyn Hyde	268370
14295	Bobby Hutcherson	270141
14296	Michael Conrad	288654
14297	Beverlee McKinsey	322350
14298	Hadley Caliman	368074
14299	Tom McFadden	529609
14300	Alan Alda	732
14301	Ivan Bonar	102099
14302	Bernie Kuby	306744
14303	Sonia Todd	10320
14304	Googie Withers	123680
14305	Marc Warren	14862
14306	Lynn Redgrave	4351
14307	Grant Doyle	18343
14308	Sandy Gardiner	36470
14309	Chris Haywood	71963
14310	Richard Hansell	225528
14311	Nicholas Bell	335625
14312	David King	551810
14313	Takahiro Nišidžima	55816
14314	Hikari Micušima	55815
14315	Sakura Andó	55841
14316	Makiko Watanabe	55876
14317	Acuró Watabe	117618
14318	Jutaka Šimizu	231474
14319	Hirojuki Onoue	231469
14320	Tasuku Nagaoka	231486
14321	Só Hirosawa	231488
14322	Júko Genkaku	231466
14323	Mami Nakamura	231471
14324	Nanami Hinata	125825
14325	Gó Ajano	101475
14326	Icudži Itao	38956
14327	Motoki Fukami	231480
14328	Usamaru Furuja	202545
14329	Keisuke Horibe	231462
14330	Júka Arai	198675
14331	Só Ikeno	238150
14332	Joriko Dóguči	265214
14333	Rjó Iwamacu	271830
14334	Umi Jamano	280872
14335	Rjúta Furuja	281912
14336	Kóiči Košimura	284388
14337	Nobuhiro Nišihara	292962
14338	Arata Jamanaka	311540
14339	Kunihiro Suda	447681
14340	William Harrigan	224053
14341	Forrester Harvey	107112
14342	Holmes Herbert	11335
14343	E.E. Clive	267458
14344	Dudley Digges	312785
14345	Merle Tottenham	108925
14346	Dwight Frye	30279
14347	John Carradine	4369
14348	Monte Montague	222195
14349	Bob Reeves	223163
14350	Tom Ricketts	284460
14351	Crauford Kent	281637
14352	Ted Billings	334136
14353	D'Arcy Corrigan	427227
14354	Kathryn Sheldon	432723
14355	John Merivale	475203
14356	Jet Li	837
14357	Šinobu Nakajama	284832
14358	Siu-hou Chin	6696
14359	Billy Chow	5627
14360	Jasuaki Kurata	22510
14361	Ada Choi	53615
14362	Cheung-Yan Yuen	255152
14363	Gary Wing-Lun Mak	110290
14364	Wah-wo Wong	166489
14365	Bill Man-Biu Lee	483919
14366	Siu-ming Lui	204043
14367	Ernest Mauser	205638
14368	Tai-wo Tang	205642
14369	Tin-hung Yee	207030
14370	Kwok-kit Lam	207052
14371	Chi-hung Ling	227612
14372	Kwok-ping Choi	231799
14373	Marco Lo	306147
14374	Yuk-Wah Cheung	370003
14375	Wai-Yin Lam	424547
14376	Kwok-leung Ching	483007
14377	Jackson Lau	537580
14378	Kendži Tanigaki	567865
14379	Siu-Wah Chan	567929
14380	Tat-Chiu Lee	589043
14381	Sam Kai-Sen Huang	589134
14382	Joan Crawford	762
14383	Victor Buono	14360
14384	Wesley Addy	112648
14385	Julie Allred	89850
14386	Anne Barton	359201
14387	Robert Cornthwaite	17837
14388	Maidie Norman	99732
14389	James Seay	131871
14390	Jack Tornek	177191
14391	Mike Ragan	201201
14392	Jon Shepodd	220457
14393	Maxine Cooper	290848
14394	Murray Alper	294084
14395	Michael Fox	316107
14396	John Shay	370000
14397	Gina Gillespie	386268
14398	Barbara Merrill	386891
14399	William Aldrich	386894
14400	Peter Virgo	392298
14401	Stefan Denolyubov	182020
14402	Margita Gosheva	182019
14403	Decho Taralezhkov	305033
14404	Milko Lazarov	89676
14405	Ivan Savov	232354
14406	Georgi Stamenov	365498
14407	Hristofor Nedkov	486977
14408	Alexandra Angelova	491783
14409	Poli Angelova	491784
14410	Raitsa Assenova	491786
14411	Georgi Bratoev	491787
14412	Ana Bratoeva	491788
14413	Nadejda Bratoeva	491789
14414	Georgi Damianov	491790
14415	Filip Denolyubov	491791
14416	Nikola Dodov	491792
14417	Boyan Doychinov	491796
14418	Stanislav Ganchev	491797
14419	Petar Genkov	491991
14420	Alexey Hristov	491992
14421	Mira Iskarova	491993
14422	Nedyalko Karanikolov	491995
14423	Gergana Karisheva	491996
14424	Stanisav Kaschiiski	491997
14425	Kamen Kolarov	491998
14426	Diana Koleva	491999
14427	Ventzislav Konstantinov	263595
14428	Martin Kotev	492000
14429	Stefan Kutsarov	492001
14430	Yana Lozeva	492002
14431	Aneliya Mangarova	318246
14432	Georgi Marinov	492004
14433	Valentina Mencheva	492006
14434	Alexandrina Moncheva	492007
14435	Yana Mosholova	492008
14436	Nikolay Nikolov	492009
14437	Dmitrii Novgorodtsev	492010
14438	Yavor Petrov	492011
14439	Ralitza Petrova	263586
14440	Dimitar Sardzhev	492013
14441	Tanya Shahova	492014
14442	Stiliyana Sredovska	492016
14443	Deyan Statulov	492017
14444	Stanislav Stoyanov	492018
14445	Sofia Stoycheva	492019
14446	Nikola Stoynov	492020
14447	Kitodar Todorov	492021
14448	Nikolay Todorov	183300
14449	Stefan Todorov	492024
14450	Katya Trichkova	313075
14451	Geneviève Bujold	523
14452	Irene Papas	9169
14453	John Colicos	104420
14454	Valerie Gearon	244325
14455	T.P. McKenna	8460
14456	Joseph O'Conor	72547
14457	Gary Bond	87550
14458	Kate Burton	96056
14459	Nora Swinburne	161657
14460	Nicola Pagett	244449
14461	Peter Jeffrey	277813
14462	William Squire	284070
14463	Katharine Blake	289841
14464	Jerold Wells	289986
14465	Anne Tirard	289993
14466	Michael Johnson	290429
14467	Aileen Lewis	291135
14468	Charlotte Selwyn	304758
14469	Terence Mountain	324867
14470	June Ellis	458737
14471	James Mellor	529969
14472	Kynaston Reeves	543367
14473	Júko Takeuči	29548
14474	Júta Hiraoka	25169
14475	Čihiro Ócuka	60061
14476	Jukiko Ehara	70786
14477	Suzuki Macuo	60899
14478	Kacuo Nakamura	80074
14479	Jósuke Asari	141417
14480	Fumijo Kohinata	154411
14481	Kazuaki Hankai	260015
14482	Karen Mijama	272199
14483	Akaši Takei	282217
14484	Tokimasa Tanabe	282224
14485	Mikako Ičikawa	18074
14486	Kei Tanaka	102742
14487	Juki Umoto	286697
14488	Priscilla Lane	7502
14489	Jeffrey Lynn	88444
14490	Frank McHugh	87986
14491	Paul Kelly	113739
14492	Elisabeth Risdon	212404
14493	John Hamilton	122562
14494	Abner Biberman	129648
14495	John Ridgely	18796
14496	John Harron	10624
14497	Eddie Acuff	96893
14498	Emory Parnell	132253
14499	Ben Welden	135026
14500	Franklin D. Roosevelt	99209
14501	Herbert Hoover	98288
14502	Bill Elliott	126858
14503	Amzie Strickland	206825
14504	George Humbert	233685
14505	Pat O'Malley	183771
14506	Oscar O'Shea	277141
14507	Paul Phillips	290473
14508	Ann Codee	330442
14509	Charles Marsh	330486
14510	Nat Carr	332263
14511	Lottie Williams	339918
14512	Al Hill	341627
14513	James Blaine	343900
14514	Elliott Sullivan	357941
14515	Hector V. Sarno	387664
14516	Cliff Saum	427137
14517	Lew Harvey	432601
14518	Alfred Linder	488447
14519	Carl Harbaugh	546842
14520	David Oliver	559938
14521	Ximena Ayala	6489
14522	Nancy Gutiérrez	6449
14523	Arcelia Ramírez	6490
14524	Clarissa Malheiros	15963
14525	Gabino Rodríguez	66040
14526	Luis Fernando Peña	182195
14527	María Rojo	265449
14528	Eligio Meléndez	292803
14529	Rosario Zúñiga	355895
14530	Servando Gajá	484371
14531	Carlos García	532948
14532	Kate Capshaw	291
14533	Jonathan Ke Quan	67016
14534	Philip Tan	23908
14535	Dan Aykroyd	78
14536	D.R. Nanayakkara	78072
14537	Roy Chiao	168441
14538	Anthony Powell	260701
14539	David Yip	287264
14540	Michael Yama	307605
14541	Sidney Ganis	318830
14542	Raj Singh	321771
14543	Iranganee Serasinghe	398867
14544	Frank Olegario	580695
14545	Alex Klaus	638703
14546	Rachel McAdams	8129
14547	Ryan Gosling	4960
14548	Kevin Connolly	25110
14549	Paul Johansson	21724
14550	Traci Dinwiddie	47455
14551	Nancy De Mayo	54386
14552	Heather Wahlquist	55822
14553	Cullen Moss	59866
14554	Leslea Fisher	59872
14555	David Thornton	70695
14556	Jamie Anne Allman	74969
14557	Robert Fraisse	80311
14558	Matthew Barry	104800
14559	Starletta DuPois	322451
14560	Sandra Elise Williams	121038
14561	Elizabeth Bond	138833
14562	Mark Johnson	162985
14563	Michael D. Fuller	276048
14564	Mark Garner	319567
14565	Rebecca Koon	322549
14566	Ed Grady	204507
14567	Cameron Thrower	379773
14568	Deborah Hobart	451667
14569	Sylvia Jefferies	476483
14570	Albert Dagnant	81017
14571	Olivier de Funès	7270
14572	Florence Blot	78630
14573	Jean Michaud	196784
14574	Eric Vasberg	129525
14575	Antoine Baud	132035
14576	Arturo Dominici	76991
14577	Bob Morel	154511
14578	Antoine Marin	81208
14579	Jitka Bendová	42068
14580	Vladimír Valenta	40542
14581	Václav Fišer	29108
14582	Pavla Maršálková	13102
14583	Dagmar Zikánová	22162
14584	Emil Iserle	40911
14585	Ivan Sova	42069
14586	Milan Frkal	40599
14587	František Golyšev	39717
14588	Zuzana Minichová	42071
14589	Vlasta Kahavcová	42072
14590	Mahulena Kulendíková	40574
14591	František Novák	28268
14592	Vratislav Blažek	32512
14593	Zdeňka Tichá	41452
14594	Nora Tvrzská	39692
14595	Miloň Novotný	41578
14596	Bogusław Linda	2056
14597	Agnieszka Sitek	23557
14598	Ľudovít Cittel	57397
14599	Martin Sitta	1461
14600	Gustav Nezval	22916
14601	Anton Šulík st.	13052
14602	Petra Lustigová	22646
14603	Josef Bulík	32578
14604	Miloslav Mejzlík	40266
14605	Jan Šťastný	1486
14606	Dana Černá	28795
14607	Robert Sklenář	86771
14608	Caio Junqueira	42272
14609	Fernanda Machado	83532
14610	Paulo Vilela	134524
14611	Fernanda de Freitas	83550
14612	Fábio Lago	83549
14613	Otto Jr.	76806
14614	Juliano Cazarré	83833
14615	Augusto Madeira	151172
14616	Suzana Pires	153877
14617	Nathalia Dill	160898
14618	Marcelo Valle	183936
14619	André Di Mauro	446818
14620	Saulo Rodrigues	576394
14621	Allan Guilherme	669635
14622	Blair Brown	9093
14623	Thom Hoffman	32753
14624	Jan Coster	67784
14625	Erich Silva	28885
14626	Ingvar Örner	253471
14627	László Hágó	253486
14628	Shauna Shim	336580
14629	Ove Wolf	382125
14630	Sonny Johnson	574144
14631	Hans Karlsson	600555
14632	Mickey Rourke	478
14633	Virginia Madsen	231
14634	Andrew Shue	5904
14635	Johnny Whitworth	18825
14636	Randy Travis	13587
14637	Michael Keys Hall	15124
14638	Red West	55538
14639	Adrian Roberts	390639
14640	Alan Woolf	390644
14641	Nate Bynum	535203
14642	Trula M. Marcus	619919
14643	Orson Welles	194
14644	Agnes Moorehead	196
14645	Ruth Warrick	20588
14646	Alan Ladd	829
14647	Arthur O'Connell	14486
14648	Richard Wilson	20344
14649	Nat 'King' Cole	78173
14650	Gregg Toland	81506
14651	Frances E. Neal	135720
14652	Roland Winters	143754
14653	George DeNormand	180036
14654	Harry Shannon	16661
14655	Jack Raymond	248423
14656	Philip Van Zandt	251864
14657	William Alland	254350
14658	John McCormack	275003
14659	Mickey Martin	294615
14660	John Northpole	296513
14661	Paddy O'Flynn	299526
14662	Art Dupuis	318291
14663	Jack Gargan	318673
14664	Sally Corner	319655
14665	Herman J. Mankiewicz	90535
14666	James T. Mack	329978
14667	Francis Sayles	333364
14668	Tom Steele	343551
14669	Olin Francis	457577
14670	Irving Mitchell	458218
14671	Glen Turnbull	466292
14672	Louise Currie	468478
14673	Meda Valentová	1377
14674	Soňa Červená	23456
14675	Dagmar Frýbortová	1156
14676	Oldřich Slaný	36650
14677	Jaroslav Seník	21419
14678	Erik Zámiš	31502
14679	František Stach	36994
14680	Valja Petrová	36649
14681	Olga Příhodová	36995
14682	Václav Landa	36996
14683	Josef Chvalina	7260
14684	Jindra Hermanová	1182
14685	Bohumil Paris	37001
14686	Rudolf Hrušínský nejst.	963
14687	František Pozner	37002
14688	Ji-hyeon Jeon	16743
14689	Tae-hyeon Cha	16349
14690	In-moon Kim	15599
14691	Jae-yong Kwak	16493
14692	Jin-hee Han	16441
14693	Moo-yeong Lee	25224
14694	Jeong-hak Lee	105709
14695	Ok-sook Song	109280
14696	Soon-cheol Yoo	124092
14697	Ho Im	150261
14698	Min-jae Kim	113823
14699	Geum-seok Yang	309364
14700	Nozomu Iwao	591631
14701	Kyung-hoon Jo	641558
14702	Payman Maadi	67900
14703	Leila Hatami	24241
14704	Sareh Bayat	67899
14705	Shahab Hosseini	56754
14706	Sarina Farhadi	72169
14707	Merila Zare'i	72168
14708	Bábak Karímí	145011
14709	Ali-Asghar Shahbazi	204203
14710	Shirin Yazdanbakhsh	204205
14711	Débora Bloch	236556
14712	Ali Nazari	395226
14713	Louis Hofmann	145774
14714	Joel Basman	61977
14715	Mikkel Boe Følsgaard	77139
14716	Laura Bro	95561
14717	Zoe Zandvliet	257999
14718	Mads Riisom	314570
14719	Oskar Bökelmann	203126
14720	Emil Belton	257997
14721	Oskar Belton	257998
14722	Leon Seidel	105385
14723	Karl Alexander Seidel	93155
14724	Maximilian Beck	211245
14725	August Carter	258000
14726	Tim Bülow	211451
14727	Alexander Rasch	258001
14728	Julius Kochinke	258002
14729	Aaron Koszuta	258003
14730	Levin Henning	206526
14731	Michael Asmussen	301451
14732	Magnus Bruun	232185
14733	Mette Lysdahl	306205
14734	Johnny Melville	68711
14735	Anthony Straeger	221084
14736	Kim Winther	130556
14737	Martin Roskowetz	634720
14738	John Dall	4211
14739	Farley Granger	4303
14740	Douglas Dick	312820
14741	Joan Chandler	50318
14742	Cedric Hardwicke	7517
14743	Constance Collier	7518
14744	Dick Hogan	89060
14745	Haing S. Ngor	2530
14746	Spalding Gray	79684
14747	Mark Long	33658
14748	Joanna Merlin	207567
14749	Jay Barney	341887
14750	George Clooney	31
14751	Carl Reiner	2539
14752	Bernie Mac	17609
14753	Eddie Jemison	54198
14754	Shaobo Qin	33935
14755	Angie Dickinson	7597
14756	Wayne Newton	23359
14757	Joshua Jackson	2516
14758	Steven Soderbergh	3088
14759	Holly Marie Combs	5847
14760	Barry Watson	6466
14761	Shane West	10851
14762	Jerry Weintraub	34780
14763	Scott L. Schwartz	70951
14764	Lennox Lewis	72720
14765	Laurence R. Griffin	87978
14766	Robin Sachs	88212
14767	Vincent M. Ward	88958
14768	Brad Martin	93830
14769	Jeremy Dunn	99046
14770	Wladimir Klitschko	73807
14771	David Leitch	155342
14772	Jim Lampley	185684
14773	Jeffrey Kurland	214977
14774	Mark Gantt	256052
14775	Christopher Mann	264402
14776	Michael DeLano	275771
14777	Gustavo Perez	319458
14778	Rusty Meyers	322076
14779	Jaime Gallagher	484053
14780	J.P. Manoux	488181
14781	Yann Toderi	525007
14782	Tim Snay	554648
14783	Joss Gomez	646516
14784	Christina Ricci	584
14785	Miranda Richardson	585
14786	Casper Van Dien	1898
14787	Marc Pickering	36047
14788	Lisa Marie	2553
14789	Claire Skinner	71594
14790	Orlando Seale	20975
14791	Gabrielle Lloyd	53477
14792	Jamie Foreman	18718
14793	Layla Alexander	41820
14794	Ray Park	10059
14795	Kevin Hudson	119114
14796	Sean Cronin	205409
14797	Peter Guinness	209377
14798	Jessica Oyelowo	219357
14799	Michael Feast	255469
14800	Philip Martin Brown	336572
14801	Tony Maudsey	455559
14802	Rick Moranis	448
14803	Ernie Hudson	7801
14804	Slavitza Jovan	56665
14805	Casey Kasem	22883
14806	Jordan Charney	132854
14807	Ivan Reitman	3363
14808	Deborah Gibson	70192
14809	Steven Tash	76118
14810	Christopher Wynkoop	96543
14811	Wendy Goldman	116611
14812	Jennifer Runyon	173938
14813	David Margulies	222693
14814	Joe Medjuck	244472
14815	Frantz Turner	364242
14816	Paddi Edwards	369249
14817	Eda Reiss Merin	370160
14818	Norman Matlock	486403
14819	Joe Cirillo	571668
14820	Eldo Ray Estes	665383
14821	Jordi Mollà	5782
14822	Tony Amendola	25051
14823	Bobcat Goldthwait	6042
14824	Monet Mazur	17700
14825	Emma Roberts	20533
14826	Jaime King	5109
14827	Ted Demme	3493
14828	Richard LaGravenese	9535
14829	Nick Cassavetes	2571
14830	Lola Glaudini	35883
14831	Michael Tucci	73180
14832	Miguel Ángel Fuentes	84531
14833	Melissa Reneé Martin	96619
14834	Twyla Banks	96924
14835	Mauricio Mendoza	118656
14836	Julia Vera	186023
14837	Bobby Reed	216221
14838	Michael Ralph	262351
14839	Crafty St. James	322143
14840	Dan Ferro	339502
14841	Daniel Escobar	340071
14842	Charles Noland	352486
14843	Bert Rosario	370673
14844	Dale Snowberger	399835
14845	Jorge Jimenez	534674
14846	Piño Moreau	610495
14847	Jodie Mann	650401
14848	Nick Chinlund	19938
14849	Alan Scarfe	22568
14850	Miguel A. Núńez Jr.	9570
14851	Paul Hipp	12989
14852	Stephen Kay	12107
14853	Jan de Bont	3430
14854	Paul Ganus	76372
14855	Jason Rainwater	213173
14856	Vince Howard	435465
14857	Pete Antico	533596
14858	Veronica Alicino	597102
14859	Delores Hall	653758
14860	Harry Hamlin	413
14861	Ursula Andress	2741
14862	Susan Fleetwood	82786
14863	Judi Bowker	34426
14864	Flora Robson	14730
14865	Harry Jones	135521
14866	Freda Jackson	282299
14867	Frank Bough	442699
14868	Autumn Reeser	36745
14869	Jamey Sheridan	11837
14870	Jerry Ferrara	25136
14871	Sam Huntington	14822
14872	Wayne Bastrup	218465
14873	Valerie Mahaffey	4492
14874	Jeff Kober	75832
14875	Mike O'Malley	20940
14876	Gary Weeks	73001
14877	Jeremy Luke	207419
14878	Patch Darragh	82572
14879	Ann Cusack	69267
14880	Michael Rapaport	888
14881	Jeffrey Nordling	7596
14882	Chesley Sullenberger	237859
14883	Shane P. Allen	294686
14884	Pascal Yen-Pfister	323653
14885	Clayton Landey	364737
14886	Ashley Austin Morris	365409
14887	Christopher Curry	400495
14888	Graham Sibley	412244
14889	Tracee Chimo Pallero	447678
14890	Lynn Marocola	477338
14891	Purva Bedi	557730
14892	Venus Dana	574581
14893	Peter Sallis	18803
14894	John Thomson	11470
14895	Geraldine McEwan	8809
14896	Peter Kay	181471
14897	Edward Kelsey	304748
14898	Nicholas Smith	431124
14899	James Mather	596793
14900	Matt Frewer	4491
14901	Jane Leeves	5752
14902	Patricia Quinn	40961
14903	Eric Francis	349005
14904	René Goscinny	35106
14905	Jacques Balutin	78848
14906	Micheline Dax	82671
14907	Hans Hessling	270304
14908	Edgar Ott	314394
14909	Walter Bluhm	315191
14910	Otto Czarski	315233
14911	Martin Hirthe	327477
14912	Xiaoming Huang	59513
14913	Sammo Hung	5632
14914	Kent Cheng	88240
14915	Darren Shahlavi	56012
14916	Terry Fan Siu-Wong	25298
14917	Meng Lo	35322
14918	Hak-on Fung	121071
14919	Cindy Yuan	594241
14920	Ashton Chen	600205
14921	Stefan Morawietz	656889
14922	Fernando Rey	5581
14923	Marcel Bozzuffi	8587
14924	Bill Hickman	20064
14925	Frédéric de Pasquale	192649
14926	Harold Gary	338099
14927	Eddie Egan	338101
14928	Benny Marino	124227
14929	William Coke	124228
14930	Irving Abrahams	124230
14931	André Ernotte	196009
14932	Gilda Albertoni	220702
14933	Arlene Farber	299577
14934	Al Fann	302801
14935	Robert Weil	307820
14936	Patrick McDermott	338103
14937	Alan Weeks	338105
14938	Sarina C. Grant	338108
14939	Charles McGregor	338111
14940	The Three Degrees	399430
14941	Dirk Bogarde	747
14942	Peter Faber	92476
14943	Frank Grimes	364975
14944	Jeremy Kemp	53343
14945	Donald Douglas	364978
14946	Keith Drinkel	364979
14947	Colin Farrell	364980
14948	Richard Kane	292041
14949	Walter Kohut	364981
14950	Paul Maxwell	364982
14951	Donald Pickering	291083
14952	Mary Smithuysen	364987
14953	Erik van 't Wout	364995
14954	Marlies van Alcmaer	364996
14955	David Auker	322314
14956	Michael Bangerter	295956
14957	Hartmut Becker	101852
14958	Siem Vroom	364994
14959	Hans von Borsody	66552
14960	Michael Graham Cox	364997
14961	Hans Croiset	364998
14962	Lex van Delden	365002
14963	Geoffrey Hinsliff	365004
14964	John Judd	365005
14965	Stanley Lebor	365006
14966	Barry McCarthy	365007
14967	Anthony Milner	365008
14968	Anthony Pullen Shaw	18436
14969	John Salthouse	293102
14970	Peter Settelen	122023
14971	Chris Williams	365009
14972	Fred Williams	81130
14973	Sean Mathias	34602
14974	Hilary Minster	66071
14975	Arthur Hill	100200
14976	Stewart Guidotti	198770
14977	Norman Gregory	151550
14978	Winston Churchill	99960
14979	Erwin Rommel	99983
14980	Charles de Gaulle	151687
14981	Dwight D. Eisenhower	31712
14982	Alfred Jodl	23799
14983	Brian Gwaspari	278745
14984	Jack Galloway	297595
14985	Brian Hawksley	303327
14986	George S. Patton	349322
14987	Johan te Slaa	365091
14988	Georgette Reyevski	365092
14989	Ray Jewers	389562
14990	Stephen Churchett	395458
14991	Adriënne Kleiweg	409119
14992	Tim Beekman	409218
14993	Dick Rienstra	414101
14994	Tom van Beek	431209
14995	Henny Alma	432809
14996	Frank Jarvis	553719
14997	Paul McCartney	5366
14998	Ringo Starr	5367
14999	Wilfrid Brambell	57366
15000	Phil Collins	8334
15001	Victor Spinetti	60436
15002	Rosemarie Frankland	98850
15003	Anna Quayle	111983
15004	David Janson	116390
15005	Pattie Boyd	151388
15006	Kenneth Haigh	260491
15007	Derek Nimmo	278156
15008	Edina Ronay	285916
15009	David Langton	287207
15010	Hedger Wallace	291132
15011	Andre Charisse	291547
15012	Pauline Chamberlain	293219
15013	Roger Avon	296244
15014	Maxwell Craig	298590
15015	Julian Holloway	298841
15016	Noel Trevarthen	304656
15017	Jim O'Brady	349119
15018	John Junkin	466319
15019	Mal Evans	508533
15020	Lionel Blair	542824
15021	Deryck Guyler	542869
15022	The Beatles	388307
15023	Ric Hutton	543396
15024	Brian Epstein	74321
15025	Charlie Bird	600418
15026	Riisa Naka	55095
15027	Takuja Išida	70276
15028	Sačie Hara	158805
15029	Acuko Juja	688383
15030	Christine Lahti	560
15031	Sam Levene	89170
15032	Victor Arnold	131631
15033	Vincent Beck	359134
15034	J.G. Hertzler	87506
15035	Connie Sawyer	152386
15036	Robert Christian	235819
15037	Keith Andes	112655
15038	Larry Bryggman	271367
15039	Beverly Sanders	324459
15040	Michael Gorrin	324680
15041	Charles Siebert	359143
15042	Carl Pistilli	448438
15043	Lewis Alexander	290478
15044	Rosy Varte	65256
15045	André Le Gall	77539
15046	Nicole Croisille	218097
15047	Guðrún Gísladóttir	243294
15048	Sven Wollter	18012
15049	Valérie Mairesse	14430
15050	Filippa Franzén	243406
15051	Tommy Kjellqvist	243412
15052	Per Källman	243415
15053	Tommy Nordahl	243416
15054	Tintin Anderzon	127455
15055	Birgit Carlstén	243420
15056	Jane Friedmann	243424
15057	Jan-Olof Strandberg	469809
15058	Helena Brodin	470738
15059	Martin Lindström	519579
15060	Sigge Fürst	417440
15061	Hans Alfredson	7768
15062	Ingvar Kjellson	469810
15063	Frank Sundström	416686
15064	Vilgot Sjöman	17987
15065	Bengt Eklund	7771
15066	Willy Peters	325731
15067	Agda Helin	202626
15068	Ellika Mann	470654
15069	Rune Lindström	399292
15070	Frej Lindqvist	108245
15071	Lars Amble	173647
15072	Karl-Axel Forssberg	466740
15073	Brita Öberg	91484
15074	Pelle Berglund	72827
15075	Gregor Dahlman	485172
15076	Brian Wikström	552698
15077	Monica Lindberg	517474
15078	Lillian Carlson	571936
15079	Börje Lundh	420341
15080	Eivor Kullberg	547299
15081	Karl-Arne Bergman	490345
15082	Björn Thambert	614707
15083	Åke Jörnfalk	614708
15084	Nils Fogeby	614710
15085	Stig Lindberg	614711
15086	Philippe Caubère	80958
15087	Nathalie Roussel	163930
15088	Thérèse Liotard	146924
15089	Julien Ciamaca	163934
15090	Victorien Delmare	163931
15091	Joris Molinas	163938
15092	Julie Timmerman	163942
15093	Paul Crauchet	66290
15094	Philippe Uchan	17150
15095	Jean Rochefort	2319
15096	André Chaumeau	196801
15097	Raoul Curet	191047
15098	Alain Ganas	130614
15099	Louis Lalanne	298526
15100	Elisabeth Macocco	129923
15101	Mel Blanc	11761
15102	Mel Tormé	222787
15103	Julie Bennett	343032
15104	Mark Kausler	593559
15105	Lou Ferrigno	5681
15106	Jenny Agutter	5713
15107	Enver Gjokaj	51811
15108	Walter Perez	76145
15109	Alexis Denisof	34555
15110	Powers Boothe	5929
15111	Jerzy Skolimowski	21508
15112	Romy Rosemont	93306
15113	Jillian Morgese	100781
15114	Jesse Garcia	229650
15115	Robert Dean	254594
15116	Martin Palmer	91596
15117	Ricardo Andres	311438
15118	Josh Cowdery	330247
15119	Tina Benko	318363
15120	Donald Li	392665
15121	Alicia Sixtos	447580
15122	Layla Cushman	524995
15123	Alex DeCourville	567177
15124	Shane Thompson	590477
15125	William Christopher Stephens	645352
15126	Debbie Scaletta	662253
15127	Kelley Robins	670968
15128	Mayank Bhatter	706244
15129	Kate Mara	25438
15130	Aksel Hennie	8511
15131	Mackenzie Davis	109323
15132	Donald Glover	62611
15133	Eddy Ko	204020
15134	Naomi Scott	64704
15135	Jonathan Aris	51387
15136	Brian Caspe	24899
15137	Gruffudd Glyn	185878
15138	Matt Devere	113153
15139	Lili Bordán	43824
15140	Charlie Gardner	127899
15141	Sam Spruell	78854
15142	Nick Mohammed	296444
15143	Mark O'Neal	317342
15144	Zalán Takács	338070
15145	Shu Chen	436979
15146	Waleska Latorre	592076
15147	James Fleet	17860
15148	Greg Wise	5128
15149	Imelda Staunton	9615
15150	Imogen Stubbs	17719
15151	Hugh Laurie	13005
15152	Richard Lumsden	38859
15153	Elizabeth Spriggs	52606
15154	Emilie François	240683
15155	Lindsay Doran	279166
15156	Isabelle Amyes	290248
15157	Allan Mitchell	314666
15158	Alberto de Mendoza	7691
15159	Karin Schubert	69926
15160	Fernando Bilbao	5452
15161	Ángel Álvarez	8572
15162	Antonio Iranzo	16458
15163	Eduardo Fajardo	122558
15164	Jesús Tordesillas	203372
15165	Fernando Hilbeck	326308
15166	Xan das Bolas	327846
15167	Fabián Conde	331507
15168	Don Jaime de Mora y Aragón	358656
15169	Joaquín Solís	449832
15170	Václav Voska	2028
15171	Josef Vošalík	24494
15172	Zdeněk Najman	9063
15173	Ilona Kubásková	25753
15174	Jaroslav Heyduk	1611
15175	Jaroslav Pasterňak	39780
15176	J. Daněk	39781
15177	J. Vystrčil	39782
15178	Robert Krásný	1644
15179	Michal Prokop	39785
15180	Lopatová	39786
15181	Mojmír Ticháček	39788
15182	J. Pešek	39789
15183	Vladimír Cabalka	370170
15184	Mariel Hemingway	5387
15185	Tisa Farrow	5503
15186	Gary Weis	2182
15187	David Rasche	4390
15188	Mark Linn-Baker	63569
15189	Raymond Serra	15200
15190	Kenny Vance	302008
15191	Helen Hanft	391741
15192	Brad Davis	16383
15193	Irene Miracle	16766
15194	Bo Hopkins	14819
15195	Mike Kellin	13558
15196	Gigi Ballista	221453
15197	Joe Zammit Cordina	340061
15198	Yashaw Adem	322320
15199	Raad Rawi	228864
15200	Zannino	501932
15201	Mihalis Giannatos	570298
15202	Anjelica Huston	127
15203	Jerry Zaks	3402
15204	Nora Ephron	2887
15205	Mercedes Ruehl	2373
15206	Daryl Hannah	285
15207	Myla Pitt	46950
15208	Rebecca Schull	196302
15209	Thomas Bolster	214924
15210	Sylvia Kauders	306576
15211	Anna Berger	466919
15212	Dolores Sutton	484361
15213	Maggie Wagner	514406
15214	Dylan O'Sullivan Farrow	642398
15215	Avner Eisenberg	686586
15216	Kenneth Branagh	147
15217	Brian Blessed	1948
15218	Judi Dench	25
15219	Reece Dinsdale	24589
15220	Rosemary Harris	1829
15221	Sarah Lam	20481
15222	Rowena King	47440
15223	Perdita Weeks	68824
15224	Simon Russell Beale	73365
15225	Ian McElhinney	89565
15226	Ray Fearon	96708
15227	Richard Briers	113779
15228	Ravil Isjanov	132948
15229	Michael Maloney	183394
15230	Angela Douglas	221110
15231	Don Warrington	296749
15232	Andrew Schofield	307520
15233	Jimmy Yuill	518441
15234	Riz Abbasi	626422
15235	Joanna Miles	23032
15236	Iain Glen	2532
15237	Donald Sumpter	53929
15238	Ian Richardson	2456
15239	Ljubo Zecevic	381091
15240	Carmelo Gómez	22477
15241	Emma Suárez	7189
15242	Karra Elejalde	7199
15243	Silke	63286
15244	Nancho Novo	11419
15245	Pepe Viyuela	8966
15246	Miguel Palenzuela	63184
15247	Vicente Haro	193486
15248	Txema Blasco	603423
15249	Ana Torrent	5152
15250	Mónica Randall	85257
15251	Florinda Chico	232313
15252	Conchita Pérez	232310
15253	Mayte Sanchez	232309
15254	Josefina Díaz	232311
15255	Héctor Alterio	7193
15256	Germán Cobos	193993
15257	Mirta Miller	331472
15258	A-Ping On	9799
15259	Jian Fang	9697
15260	Kang Chin	124526
15261	Hua Yan	567877
15262	Luigi Ornaghi	8767
15263	Francesca Moriggi	8768
15264	Omar Brignoli	124088
15265	Felice Cervi	124085
15266	Antonio Ferrari	124089
15267	Teresa Brescianini	124090
15268	Giuseppe Brignoli	124094
15269	Carlo Rota	124095
15270	Pasqualina Brolis	124098
15271	Massimo Fratus	124099
15272	Francesca Villa	124100
15273	Maria Grazia Caroli	124101
15274	Battista Trevaini	124102
15275	Giuseppina Langalelli	124103
15276	Lorenzo Pedroni	124104
15277	Pierangelo Bertoli	124105
15278	Brunella Migliaccio	124106
15279	Giacomo Cavalleri	124107
15280	Lorenza Frigeni	124108
15281	Lucia Pezzoli	124109
15282	Franco Pilenga	124110
15283	Guglielmo Badoni	124111
15284	Laura Lecatelli	124112
15285	Carmelo Silva	124113
15286	Mario Brignoli	124114
15287	Emilio Pedroni	124115
15288	Vittorio Capelli	124116
15289	Francesca Bassurini	124117
15290	Lina Ricci	124118
15291	Vladimír Javorský	1516
15292	Zdeněk Podhůrský	1519
15293	Milan Gunár	66615
15294	Milan Šimáček	997
15295	Jiří Fero Burda	35450
15296	Alice Chrtková	1027
15297	Štěpánka Lisá	58265
15298	Tyler Hoechlin	2776
15299	Daniel Craig	2775
15300	Stanley Tucci	2227
15301	Jennifer Jason Leigh	142
15302	Liam Aiken	8924
15303	Kevin Chamberlin	13526
15304	Lara Phillips	8838
15305	Kurt Naebig	121002
15306	James Greene	138972
15307	Ian Barford	194301
15308	Doug Spinuzza	368814
15309	Michael Sassone	369671
15310	Maureen Gallagher	630256
15311	Ana de Armas	141284
15312	Jamie Lee Curtis	119
15313	Lakeith Stanfield	105945
15314	Katherine Langford	298262
15315	Jaeden Martell	146326
15316	Edi Patterson	14899
15317	K Callan	11527
15318	Noah Segan	83598
15319	Raúl Castillo	152425
15320	Shyrley Rodriguez	384765
15321	Octavia Chavez-Richmond	707325
15322	Jacqueline Brookes	87005
15323	Gail Neely	11617
15324	Zsa Zsa Gabor	4348
15325	David Zucker	3141
15326	Peter Van Norden	78766
15327	Lloyd Bochner	93789
15328	Peter Mark Richman	128080
15329	William Woodson	223373
15330	Kelly C. Ryan	248188
15331	Tim O'Connor	253099
15332	Lee Terri	254579
15333	Alexander Folk	390985
15334	Don Pugsley	402383
15335	Ken Kerman	437547
15336	Raynor Scheine	451666
15337	Gokul	477828
15338	Cliff Bemis	496961
15339	D.D. Howard	649083
15340	Coluche	2445
15341	Ann Zacharias	78423
15342	Claude Gensac	6373
15343	Georges Chamarat	75271
15344	Raymond Bussières	13522
15345	Daniel Langlet	81012
15346	Marie-Anne Chazel	60561
15347	Robert Lombard	80652
15348	Mac Ronay	80971
15349	Dominique Davray	71531
15350	Dyanik Zurakowska	73702
15351	Albert Michel	81098
15352	Philippe Bouvard	82626
15353	Pierre Decazes	84165
15354	Fernand Guiot	84398
15355	Yves Afonso	87626
15356	Gérard Victor	208274
15357	Gérard Boucaron	218119
15358	Gérard Lorin	420992
15359	Sarah Jessica Parker	579
15360	Patricia Arquette	247
15361	Max Casella	83332
15362	George 'The Animal' Steele	63130
15363	Juliet Landau	34559
15364	Conrad Brooks	23219
15365	Vasek Simek	15205
15366	Mickey Cottrell	19957
15367	Carmen Filpi	221747
15368	Reid Cruickshanks	222873
15369	Bobby Slayton	223433
15370	Charles C. Stevenson Jr.	262806
15371	Tommy Bertelsen	299221
15372	Stanley DeSantis	324511
15373	Ben Ryan Ganger	337967
15374	Don Hood	352055
15375	Clive Rosengren	390621
15376	Vinny Argiro	416986
15377	Catherine Butterfield	452854
15378	Joseph R. Gannascoli	473039
15379	Mike Breyer	499045
15380	Charlie Holliday	644524
15381	Johnny Meyer	705793
15382	Jacob Vargas	22589
15383	Dennis Quaid	466
15384	Catherine Zeta-Jones	606
15385	Emilio Rivera	20257
15386	Erika Christensen	2508
15387	Ben Scott	13045
15388	Rena Sofer	35538
15389	Salma Hayek	1917
15390	Amy Irving	4826
15391	Peter Riegert	18797
15392	Jsu Garcia	7618
15393	Majandra Delfino	34625
15394	Michael O'Neill	46912
15395	Jose Yenque	50712
15396	Russell Solberg	56604
15397	Stacey Travis	65396
15398	Jim Cody Williams	74697
15399	Eddie Velez	95620
15400	Vitalij Kravčenko	161409
15401	Valerie Lynn Hanna	240921
15402	Barbara Boxer	269519
15403	Michael Showers	311079
15404	Cecile Cinco	312609
15405	Tucker Smallwood	316947
15406	Vonte Sweet	362379
15407	Kymberly Newberry	389032
15408	Rene Pereyra	371093
15409	Daniella Kuhn	709767
15410	Gilbert Gottfried	18723
15411	Charles Adler	13512
15412	Russi Taylor	11650
15413	Scott Weinger	176597
15414	Jerry Houser	202181
15415	Candi Milo	382276
15416	Chris Edgerly	631132
15417	Vera Lockwood	701973
15418	Kate Hudson	2003
15419	Zooey Deschanel	2002
15420	Michael Angarano	12689
15421	John Fedevich	79155
15422	Mark Kozelek	68275
15423	Liz Stauber	38921
15424	Jimmy Fallon	16398
15425	Bijou Phillips	23039
15426	Mark Pellington	3035
15427	Rainn Wilson	34575
15428	Pauley Perrette	30254
15429	Zack Ward	31846
15430	Eric Stonestreet	60135
15431	Kyle Gass	29729
15432	Nick Swardson	49268
15433	Mark Cirillo	65268
15434	Terry Chen	71234
15435	Sybil Temtchine	73056
15436	Peter Frampton	76221
15437	Kevin Sussman	80247
15438	Ronnie Wood	94026
15439	Elizabeth Friedman	116034
15440	Mitch Hedberg	122195
15441	Gary Kohn	221250
15442	Philippe Lelièvre	233280
15443	Erwan Marinopoulos	233295
15444	Charles Walker	297685
15445	Susan Yeagley	368480
15446	Reathel Bean	395896
15447	Holly Maples	404934
15448	Jesse Caron	495190
15449	Ray Porter	598311
15450	Paul Rhys	14000
15451	John Thaw	18449
15452	Kevin Kline	28
15453	Diane Lane	2237
15454	Nancy Travis	595
15455	Deborah Moore	12431
15456	Maria Pitillo	2116
15457	Howard Lew Lewis	6735
15458	David Duchovny	153
15459	Philip Waley	33487
15460	Andrée Bernard	35892
15461	Sacha Bennett	53294
15462	Tim Chaplin	55599
15463	Sean O'Bryan	77955
15464	Benjamin Whitrow	78984
15465	Michael Villani	89205
15466	Malcolm Terris	117318
15467	Lance Patrick	135763
15468	Laurel Whitsett	211165
15469	Renata Scott	237127
15470	Mary Healey	292914
15471	John Howard Lawson	312104
15472	Raymond Lynch	348437
15473	Karen Salt	351342
15474	Jayson Kane	368209
15475	Francesca Buller	370642
15476	Julius Schaub	398271
15477	David Mooney	405611
15478	Ralph Votrian	407095
15479	William Dennis Hunt	425664
15480	Vicki Frederick	459967
15481	Alan Charof	610198
15482	Jacqueline Leonard	629472
15483	Hardie Albright	103001
15484	Sterling Holloway	23788
15485	Ann Gillis	261287
15486	Sam Edwards	370059
15487	Donnie Dunagan	402477
15488	Stockard Channing	2228
15489	Stephen Gevedon	67524
15490	Malik Yoba	20356
15491	Harold Perrineau	34222
15492	Clarice Taylor	95851
15493	Erica Gimpel	95872
15494	José Zúñiga	109225
15495	Mary B. Ward	668227
15496	Mildred Natwick	7526
15497	Herb Edelman	85582
15498	Doris Roberts	7335
15499	Patsy Kelly	81712
15500	Fritz Feld	134228
15501	Paul E. Burns	135166
15502	Ted Hartley	248701
15503	Mabel Albertson	263367
15504	James Stone	474493
15505	Edward Brophy	11244
15506	Gérard Jugnot	5321
15507	François Berléand	10481
15508	Jean-Baptiste Maunier	15654
15509	Kad Merad	22527
15510	Marie Bunel	56867
15511	Maxence Perrin	51849
15512	Jean-Paul Bonnaire	113234
15513	Thomas Blumenthal	126426
15514	Grégory Gatignol	141773
15515	Monique Ditisheim	163056
15516	Paul Chariéras	194957
15517	Philippe du Janerand	196169
15518	Erick Desmarestz	214651
15519	Armen Godel	280580
15520	Simon Fargeot	323796
15521	Cyril Bernicot	323798
15522	Carole Weiss	323799
15523	Alan Webb	218898
15524	Mark Dignam	295526
15525	Bice Valori	377092
15526	Giancarlo Cobelli	377094
15527	Ken Parry	299562
15528	Anthony Gardner	305993
15529	Natasha Pyne	202121
15530	Alberto Bonucci	299435
15531	Milena Vukotic	4344
15532	Alfredo Bianchini	340817
15533	Valentino Macchi	304594
15534	Lino Capolicchio	67053
15535	Nicoletta Machiavelli	68778
15536	Paolo Giusti	131605
15537	Giampiero Albertini	62795
15538	Ibrahim Seck	81102
15539	Philippe Vallauris	81275
15540	Carlo Nell	81376
15541	Chantal Nobel	84703
15542	Umberto Raho	84950
15543	Renato Romano	86286
15544	Marcel Gassouk	87250
15545	Stéphane Bouy	88365
15546	Jean Valmence	89613
15547	Fulbert Janin	95464
15548	Yvan Tanguy	128039
15549	André Lawrence	663993
15550	Roland Malet	178874
15551	Léon Zitrone	193884
15552	Michel Dacquin	194222
15553	Maurice Travail	194259
15554	El Kebir	195137
15555	Jean-Yves Gautier	195848
15556	Lorenzo Piani	196072
15557	Denyse Roland	190095
15558	Ugo Fangareggi	189307
15559	Pauline Larrieu	220325
15560	Jacques Dhéry	220489
15561	Danielle Durou	332243
15562	Robert Morley	11819
15563	Richard Marner	59017
15564	Errol John	232043
15565	Peter Swanwick	293070
15566	Eleonora Brown	32016
15567	Vincenzo Musolino	10049
15568	Renato Salvatori	10086
15569	Carlo Ninchi	71473
15570	Emma Baron	83482
15571	Luciano Pigozzi	86238
15572	Mario Frera	298982
15573	Franco Balducci	299286
15574	Curt Lowens	317647
15575	Antonella Della Porta	326256
15576	Thomas Bangalter	28879
15577	Mijuki Sawaširo	104852
15578	Ajana Taketacu	287649
15579	Ajako Takeuči	373061
15580	Tomohiro Sató	689637
15581	Rupert Davies	149203
15582	Philippe Forquet	291934
15583	Gianni Garko	53259
15584	Ivo Garrani	167643
15585	Ian Ogilvy	8295
15586	Michael Wilding	7519
15587	Charles Millot	48274
15588	Jevgenij Samojlov	24686
15589	Oleg Vidov	5570
15590	Charles Borromel	6221
15591	Richard Heffer	304549
15592	Orazio Orlando	352322
15593	Adrian Brine	58350
15594	Paul Butkevič	78104
15595	Aldo Cecconi	191922
15596	Igor Jasulovič	79424
15597	Vasilij Livanov	39464
15598	Rostislav Jankovskij	141771
15599	Friedrich Schoenfelder	229164
15600	Oleg Michajlov	381650
15601	Susan Wood	408099
15602	Alexandr Parchomenko	419931
15603	Andrej Jureněv	438659
15604	Armando Bottin	641752
15605	Zain Alrafeea	377191
15606	Yordanos Shifera	377192
15607	Boluwatife Treasure Bankole	379965
15608	Kawthar Al Haddad	379966
15609	Fadi Kamel Youssef	379967
15610	Haita Izam	379968
15611	Alaa Chouchnieh	379969
15612	Nadine Labaki	36144
15613	Alan Devlin	21625
15614	Stuart Graham	173063
15615	John Travers	42481
15616	Chris Newman	215898
15617	Andrew Simpson	33100
15618	Robert Sheehan	48897
15619	Claus Bue	13855
15620	Danny Sapani	92556
15621	Juan José Ballesta	57337
15622	John McDonnell	262345
15623	John Hand	272743
15624	Simone Bendix	689983
15625	Katina Paxinou	6280
15626	Alessandra Panaro	7301
15627	Spiros Focás	13674
15628	Max Cartier	247401
15629	Corrado Pani	21833
15630	Adriana Asti	15829
15631	Nino Castelnuovo	13970
15632	Suzy Delair	20411
15633	Franca Valeri	71733
15634	Biagio Gambini	128419
15635	Renato Terra	136928
15636	Rosario Borelli	353761
15637	Claudia Mori	626752
15638	Margaret Wycherly	14536
15639	John Archer	122563
15640	Wally Cassell	130223
15641	Claudia Barrett	6131
15642	Harry Lauter	132600
15643	Sid Melton	143761
15644	Milton Parsons	159148
15645	Ray Bennett	176801
15646	Nolan Leary	178385
15647	John Pickard	178612
15648	Ray Montgomery	180541
15649	Ford Rainey	198745
15650	Clarence Hennecke	217848
15651	Grandon Rhodes	222212
15652	Paul Guilfoyle	251551
15653	Herschel Daugherty	277384
15654	Eddie Phillips	315732
15655	Perry Ivins	324872
15656	Larry McGrath	324877
15657	George Spaulding	324880
15658	Joey Ray	325284
15659	Fred Coby	332621
15660	Buddy Gorman	338338
15661	John Rice	342310
15662	Marshall Bradford	343031
15663	John Butler	357533
15664	John McGuire	423340
15665	Charles Ferguson	443519
15666	Jack Henderson	458554
15667	Jim Thorpe	494534
15668	Tomisaburó Wakajama	11481
15669	Reiko Kasahara	34984
15670	Júko Hama	290826
15671	Saburó Date	295122
15672	Masaru Šiga	585532
15673	Chuck McCann	65898
15674	Sondra Locke	14893
15675	Peter Mamakos	180544
15676	John O'Leary	236019
15677	Percy Rodrigues	65885
15678	Stephen Lang	13416
15679	Michelle Rodriguez	2234
15680	Joel David Moore	36385
15681	CCH Pounder	5885
15682	Laz Alonso	24711
15683	James Pitt	54416
15684	Peter Mensah	41738
15685	Scott Lawrence	100741
15686	Kevin Dorman	109079
15687	Anthony Ingruber	174152
15688	Gareth Ruck	199303
15689	Alicia Vela-Bailey	216664
15690	Debra Wilson	222355
15691	Allan Henry	233132
15692	Jessica J. Stowes	281551
15693	Sean Patrick Murphy	352886
15694	Luke Hawker	477437
15695	Rowan Bettjeman	662340
15696	Jon Curry	697453
15697	Jennifer Saunders	6717
15698	Kelly Asbury	5083
15699	Joan Rivers	24782
15700	Larry King	50578
15701	Simon Cowell	19959
15702	Erika Thomas	333371
15703	Aron Warner	88664
15704	Saurabh Shukla	99299
15705	Freida Pinto	49983
15706	Anil Kapoor	33169
15707	Rajendranath Zutshi	36355
15708	Irrfan Khan	24477
15709	Azharuddin Mohammed Ismail	50124
15710	Ayush Mahesh Khedekar	50083
15711	Mahesh Manjrekar	35085
15712	Rubina Ali	50126
15713	Tanay Chheda	50128
15714	Ashutosh Lobo Gajiwala	50125
15715	Tanvi Ganesh Lonkar	50127
15716	Madhur Mittal	50123
15717	Anand Tiwari	42472
15718	Arfi Lamba	103962
15719	Mamta Sharma	106973
15720	Ankur Tewari	125175
15721	Faezeh Jalali	131118
15722	Anupam Shyam	283021
15723	Imran Hasnee	558006
15724	Sarfaraz Khan	565972
15725	Sharib Hashmi	569758
15726	Kinder Singh	571451
15727	Anjum Sharma	576152
15728	Shruti Seth	584169
15729	David Gilliam	709021
15730	Brigitte Nielsen	2369
15731	Michael Pataki	10751
15732	Dolph Lundgren	36
15733	Al Bandiero	151356
15734	James Brown	31114
15735	Sylvia Meals	216422
15736	Gabriel Campisi	220258
15737	Dan Bradford	306308
15738	Gerald Berns	362169
15739	Howard Maurer	423809
15740	Ned Beatty	79
15741	Kristen Schaal	49683
15742	Timothy Dalton	1912
15743	Blake Clark	60788
15744	Richard Kind	14478
15745	Bea Miller	325522
15746	Emily Hahn	401372
15747	John Cassavetes	755
15748	Sidney Blackmer	103209
15749	Ralph Bellamy	11224
15750	Victoria Vetri	38748
15751	Charles Grodin	408
15752	William Castle	2844
15753	Emmaline Henry	324421
15754	Floyd Mutrux	49077
15755	Natalie Masters	56482
15756	Wende Wagner	88039
15757	Roy Barcroft	182235
15758	George Savalas	207496
15759	Craig Littler	218674
15760	Mona Knox	228756
15761	Marianne Gordon	320590
15762	Phil Leeds	60521
15763	Clay Tanner	348514
15764	Ernest Harada	353670
15765	Irene Kelly	377014
15766	Jean Inness	381902
15767	Carol Brewster	419215
15768	Timothy Balme	205
15769	Diana Peñalver	206
15770	Ian Watkin	208
15771	Stuart Devenie	10558
15772	Brenda Kendall	209
15773	Forrest J. Ackerman	90680
15774	Fran Walsh	72205
15775	Silvio Famularo	101827
15776	královna Alžběta II.	97577
15777	Jamie Selkirk	252393
15778	Sarah Scott Davis	320177
15779	Angela Robinson Witherspoon	337066
15780	Murray Keane	356613
15781	James Grant	552243
15782	James Gandolfini	2774
15783	Katherine Borowitz	14417
15784	Adam Alexi-Malle	25046
15785	Ted Rooney	45051
15786	Abraham Benrubi	5889
15787	Kenneth Hughes	10639
15788	John Michael Higgins	50164
15789	Max Thayer	71669
15790	Christopher Kriesa	72991
15791	Don Calfa	74990
15792	Don Donati	161669
15793	Booth Colman	181024
15794	Rick Scarry	351271
15795	George Ives	394044
15796	Robert Loftin	419516
15797	Gérard Lanvin	16497
15798	Olivier Gourmet	23274
15799	Mathieu Amalric	31945
15800	Anne Consigny	51009
15801	Myriam Boyer	22983
15802	Laure Marsac	58260
15803	Arsène Mosca	60586
15804	Olivier Barthelemy	62437
15805	Elena Anaya	7187
15806	Clémence Thioly	82464
15807	Eric Boucher	130302
15808	Françoise Le Plénier	133336
15809	Pascal Elso	145404
15810	Bernard Rosselli	98399
15811	Nicolas Woirion	164544
15812	Luc Thuillier	186968
15813	Pascal Liger	195953
15814	Christophe Vandevelde	200832
15815	Jérôme Boyer	212810
15816	Alain Fromager	215754
15817	Xavier Letourneur	224011
15818	Rachel Suissa	232859
15819	Vincent Jouan	233198
15820	Isabelle Vitari	233346
15821	Alexandre Picot	250218
15822	Michaël Vander-Meiren	270881
15823	Yan Brian	297477
15824	Fanny Sidney	386663
15825	Philippe Le Dem	389793
15826	Olivier Pajot	642089
15827	Caroline Mathieu	659520
15828	Serge Biavan	695200
15829	Mary Ure	15041
15830	Anton Diffring	8682
15831	Derren Nesbitt	7699
15832	Olga Lowe	54762
15833	Derek Newark	289791
15834	Nigel Lambert	291549
15835	Victor Beaumont	291679
15836	Guy Deghy	292152
15837	Ivor Dean	292692
15838	Patrick Wymark	293175
15839	Jim Tyson	303259
15840	Ernst Walder	313459
15841	John G. Heller	323240
15842	Peter Barkworth	580645
15843	Richard Beale	580682
15844	Tenzin Thuthob Tsarong	7654
15845	Gyurme Tethong	7653
15846	Tulku Jamyang Kunga Tenzin	124669
15847	Tenzin Yeshi Paichang	124670
15848	Tencho Gyalpo	124671
15849	Tenzin Topjar	124672
15850	Tsewang Migyur Khangsar	124673
15851	Tenzin Lodoe	124674
15852	Geshi Yeshi Gyatso	124675
15853	Losang Gyatso	124676
15854	Sonam Phuntsok	124677
15855	Gyatso Lukhang	124678
15856	Lobsang Samten	124679
15857	Jigme Tsarong	124680
15858	Tenzin Trinley	124681
15859	Namgay Dorjee	124682
15860	Phintso Thonden	124683
15861	Chewang Tsering Ngokhang	124684
15862	Jamyang Tenzin	124685
15863	Tashi Dhondup	124686
15864	Jampa Lungtok	124687
15865	Hanna Zetterberg	50389
15866	Dan Håfström	490887
15867	Per Oscarsson	24261
15868	Med Reventberg	486895
15869	Rune Andersson	198280
15870	Tommy Körberg	25212
15871	Henry Ottenby	127449
15872	Philip Zandén	14684
15873	Björn Isfält	198344
15874	Louise Ræder	354393
15875	Georg Adelly	523265
15876	Lennart Aspegren	541582
15877	Lillemor Ohlson	561139
15878	Claes Janson	574620
15879	Ulf Isenborg	574621
15880	Björn Wallde	574623
15881	Werner Hemmingsen	574624
15882	Arne Liljenberg	574625
15883	Saeed Hooshidar	574627
15884	Anders Albén	574628
15885	Viveka Anderberg	574630
15886	Torkel Henriksson	574686
15887	Lars Peltoniemi	574687
15888	Ingemar Fraim	574688
15889	Petr Fiala	52523
15890	Christopher Clarke	54276
15891	Martin Schulz	55962
15892	Marek Vašut	1769
15893	Petr Zelenka	3338
15894	Eva Turnová	28063
15895	Hana Křížková	37089
15896	Ivan Král	62243
15897	Zdeněk Troška	3313
15898	Karel Zich	37330
15899	Olga Dabrowská	37990
15900	Richard Toth	62524
15901	Alexej Guha	26891
15902	Michal Malátný	34210
15903	Petr Hradil	24936
15904	Petr Hošek	105132
15905	Jiří Černý	92711
15906	Jan Foll	70347
15907	Mirka Spáčilová	540560
15908	Ruth Roman	4296
15909	Robert Walker	4297
15910	Kasey Rogers	7521
15911	Robert Gist	66518
15912	John Doucette	131626
15913	David McMahon	161487
15914	John Daheim	198551
15915	Roy Engel	201396
15916	Odette Myrtil	309430
15917	Charles Meredith	312666
15918	Mary Alan Hokanson	325664
15919	Paul McGuire	388206
15920	Lída Roubíková	1296
15921	Božena Böhmová	1116
15922	Václav Bouška	29284
15923	Jaroslav Rajzík	40326
15924	Paul Muni	862
15925	Ann Dvorak	57754
15926	Karen Morley	11612
15927	Osgood Perkins	123557
15928	C. Henry Gordon	213192
15929	Purnell Pratt	177711
15930	Tully Marshall	138732
15931	Howard Hawks	2928
15932	Brandon Hurst	85998
15933	Henry Armetta	131872
15934	William B. Davidson	139801
15935	Eugenie Besserer	178377
15936	John Lee Mahin	89914
15937	Maurice Black	203630
15938	John Kelly	263709
15939	Douglas Walton	267495
15940	William Burress	319563
15941	Nick Thompson	326006
15942	Warner Richmond	326855
15943	Pedro Regas	357168
15944	James Durkin	494545
15945	In-seong Jo	21723
15946	Ki-woo Lee	25223
15947	Yeong-hee Seo	27981
15948	Byeong-ok Kim	43214
15949	Jeong-tae Kim	105118
15950	Seo Lee	215849
15951	Dong-hyeon Geum	376007
15952	Kwang-in Kim	382377
15953	Benoît Martin	163932
15954	Jean Rougerie	100202
15955	Victor Garrivier	155257
15956	Masatoši Nagase	22538
15957	Takako Macu	22647
15958	Hidetaka Jošioka	22609
15959	Jukijoši Ozawa	22547
15960	Tomoko Tabata	157477
15961	Ken Ogata	33218
15962	Reiko Takašima	169002
15963	Tošiki Ajata	217891
15964	Kóen Kondó	277782
15965	Sačiko Micumoto	280632
15966	Aja Hirano	51470
15967	Minori Čihara	56101
15968	Juki Macuoka	18528
15969	Tomokazu Sugita	240369
15970	Júko Gotó	312744
15971	Eidži Janagisawa	325143
15972	Joriko Nagata	341386
15973	Megumi Macumoto	349836
15974	Maju Iino	351511
15975	Nacuko Kuwatani	352321
15976	Mai Aizawa	362137
15977	Rjóta Asari	374555
15978	Sajaka Aoki	381765
15979	Daisuke Ono	383480
15980	Naoko Sugiura	388236
15981	Minoru Širaiši	388787
15982	Hitomi Harada	395773
15983	Noriko Obata	619572
15984	Takuto Jošinaga	685514
15985	Kendži Takahaši	699057
15986	Hitoši Janai	699595
15987	Tomo Adači	699689
15988	Tomojuki Higuči	699717
15989	Eri Taruta	699931
15990	Kajo Macuo	11604
15991	Minoru Óki	11426
15992	Ičiró Jamamoto	251454
15993	Eva Green	12178
15994	Jeffrey Wright	2284
15995	Giancarlo Giannini	10597
15996	Caterina Murino	29647
15997	Jesper Christensen	17829
15998	Claudio Santamaria	8895
15999	Sebastien Foucan	26986
16000	Miroslav Šimůnek	1562
16001	Vladimír Kulhavý	34348
16002	Urbano Barberini	70188
16003	Jürgen Tarrach	20306
16004	Gunther von Hagens	37466
16005	Vlastina Svátková	37989
16006	Regina Gabajová	37991
16007	Christina Cole	39035
16008	Ivan G'Vera	52777
16009	Michaela Ochotská	52810
16010	Carlos Leal	57037
16011	Clemens Schick	67109
16012	Alessandra Ambrosio	67690
16013	Simona Brhlíková	69830
16014	Tara Cardinal	70718
16015	Phil Meheux	77876
16016	Tsai Chin	96075
16017	Veruschka von Lehndorff	96863
16018	Darwin Shaw	104059
16019	Crispin Bonham-Carter	115031
16020	Félicité Du Jeu	122740
16021	Tom Chadbon	122832
16022	Martin Campbell	3523
16023	Joseph Millson	141529
16024	Richard Branson	142862
16025	Tom So	226199
16026	Jan Loukota	299981
16027	Valarie Trapp	339653
16028	Filip Bradáč	363475
16029	Robert G. Slade	528305
16030	John Chancer	560672
16031	Rebecca Gethings	561746
16032	Jan Friedman	494353
16033	Emmanuel Avena	612385
16034	Larry The Cable Guy	26860
16035	Jenifer Lewis	16754
16036	Paul Dooley	14093
16037	George Carlin	22434
16038	Katherine Helmond	13085
16039	Bob Costas	19955
16040	Michael Schumacher	27544
16041	Jay Leno	32784
16042	Jeremy Clarkson	55059
16043	Dan Scanlon	67408
16044	Sheryl Crow	50922
16045	Ken Schretzmann	260364
16046	Edie McClurg	272010
16047	Mario Andretti	351197
16048	Susan Blu	318391
16049	Jeroen van Inkel	432692
16050	Zarko Potocnjak	556581
16051	Růžena Štěpánová	32338
16052	Bohumil Švarc st.	7827
16053	Viola Zinková	21489
16054	Irena Juřičková	25773
16055	Marie Kautská	29113
16056	Magda Maděrová	29129
16057	Josef Čermák	32339
16058	Michael Dáňa	32340
16059	Josef Langmiler	9051
16060	Oleg Reif	25911
16061	Anne Heche	1854
16062	Robert Miano	9557
16063	Gretchen Mol	2364
16064	Tim Blake Nelson	3951
16065	Andrew Parks	13693
16066	Tony Ray Rossi	48063
16067	Elle Alexander	56045
16068	Elaine del Valle	142092
16069	Madison Arnold	228502
16070	Sal Jenco	355420
16071	Denise Faye	389903
16072	Ronnie Farer	451003
16073	Katie Sagona	546073
16074	Laura Cahill	669590
16075	Igor Chmela	29720
16076	Roman Luknár	2253
16077	David Novotný	1454
16078	Martin Myšička	27024
16079	Lenka Krobotová	18517
16080	Pavel Šimčík	33777
16081	Michaela Badinková	26655
16082	Lucie Žáčková	24053
16083	Jan Kolařík	62835
16084	Klára Lidová	82941
16085	Semjon Štejnberg	427412
16086	Alexandr Laptij	460857
16087	Joel Gretsch	29997
16088	J. Michael Moncrief	65737
16089	Lane Smith	492
16090	Carrie Preston	53883
16091	Andrea Powell	48949
16092	Todd Soley	41912
16093	E. Roger Mitchell	188157
16094	Jim Keisler	206600
16095	J. Don Ferguson	307308
16096	Jonathan Ignatius Green	365081
16097	Elliott Street	425511
16098	George Green	463333
16099	Leon Lamar	555188
16100	Anita Mui	5637
16101	Lung Ti	9127
16102	Felix Wong	228607
16103	Lau Kar Leung	15153
16104	Bill Tung	86676
16105	Andy Lau	5626
16106	Ken Lo	5631
16107	Lau Ga-Yung	254585
16108	Tai Bo	171550
16109	Mars	87399
16110	Miu Yuen	207108
16111	Alan Kwok-kuen Chan	20782
16112	Siu-Ming Lau	79470
16113	Louis Roth	92502
16114	Ho-Sung Pak	118525
16115	Nicky Li	106373
16116	Wah Cheung	208242
16117	Yi-Sheng Han	211355
16118	Max Alexander	284111
16119	Ram Chiang	327855
16120	Ka-lok Chin	106360
16121	Suki Kwan	426317
16122	Anthony Carpio	441352
16123	Mark Houghton	481094
16124	Rocky Lai	483141
16125	Ying Cao	537721
16126	Yvonne Yung	634085
16127	Johanna Wokalek	46913
16128	Nadja Uhl	13630
16129	Stipe Erceg	15524
16130	Niels Bruno Schmidt	17125
16131	Vinzenz Kiefer	70519
16132	Simon Licht	14290
16133	Daniel Lommatzsch	120893
16134	Sebastian Blomberg	73710
16135	Heino Ferch	20827
16136	Hannah Herzsprung	46914
16137	Tom Schilling	14403
16138	Hans-Werner Meyer	22528
16139	Katharina Wackernagel	17199
16140	Anna Thalbach	15283
16141	Volker Bruch	53845
16142	Jasmin Tabatabai	7838
16143	Susanne Bormann	97789
16144	Michael Gwisdek	8386
16145	Hubert Mulzer	128169
16146	Bernd Stegemann	23404
16147	Annika Kuhl	86458
16148	Patrick von Blume	185732
16149	Sandra Borgmann	14310
16150	Michael Schenk	20276
16151	Hannes Wegener	85617
16152	Johannes Suhm	146298
16153	Christian Schmidt	167647
16154	Stephan Möller-Titel	207613
16155	Andreas Tobias	97944
16156	Jona Mues	165588
16157	Elisabeth Schwarz	155703
16158	Britta Hammelstein	174996
16159	Christian Blümel	50394
16160	Peter Schneider	104484
16161	Jakob Diehl	258463
16162	Wolfgang Pregler	229379
16163	Leopold Hornung	173474
16164	Christian Näthe	20210
16165	Hassam Ghancy	127611
16166	Martin Glade	183913
16167	Andreas Schröders	142924
16168	Nina Eichinger	183460
16169	Sunnyi Melles	11026
16170	Rainer Reiners	202565
16171	Ralf Tempel	219978
16172	Kirsten Block	23446
16173	Andreas Borcherding	149001
16174	Leonie Brandis	161455
16175	Willy Brandt	244571
16176	Ben Braun	81049
16177	Frank Engster	246803
16178	Samir Fuchs	181351
16179	Aaron Hildebrand	50401
16180	Christian Hoening	173454
16181	Norbert Hülm	237553
16182	Christian Kerepeszki	251203
16183	Ralph Kretschmar	146270
16184	Karl-Heinz Köpcke	239606
16185	Robert Lehmann	146805
16186	Carlo Ljubek	86165
16187	Bettina Lohmeyer	262207
16188	Jim McKay	30457
16189	Smaïl Mekki	138876
16190	Esther Seibt	167117
16191	Muhammad Rezá Pahlaví	115147
16192	Leon Palamarciuc	275023
16193	Sebastian Rüger	250832
16194	Frank-Otto Schenk	262104
16195	Tesie Tellmann	248013
16196	Henrike von Kuick	143946
16197	Martin Walch	231211
16198	Farah Pahlaví	314495
16199	Cyrill Berndt	395547
16200	Andreas Haslinger	397832
16201	Kim Frank	403795
16202	Joachim Schweizer	443769
16203	Adam Jaskolka	551799
16204	Paul Schlase	571172
16205	Julia Stenke	571213
16206	Stephan Meyer-Kohlhoff	587582
16207	Nicolas Walier	598513
16208	Katja Zinsmeister	619294
16209	Oliver Walser	642991
16210	Emmanuelle Seigner	2766
16211	Marie-Josée Croze	6114
16212	Patrick Chesnais	4528
16213	Niels Arestrup	6756
16214	Jean-Pierre Cassel	9891
16215	Marina Hands	54854
16216	Emma de Caunes	32988
16217	Jean-Philippe Écoffey	9693
16218	Zinedine Soualem	10119
16219	Agathe de La Fontaine	2760
16220	Laure de Clermont-Tonnerre	58348
16221	Lenny Kravitz	14644
16222	Hiam Abbass	25339
16223	Jean-Baptiste Mondino	60460
16224	Nicolas Le Riche	121227
16225	Françoise Lebrun	129206
16226	François Delaive	129369
16227	Elvis Polanski	250688
16228	Fiorella Campanella	279640
16229	Azzedine Alaïa	451077
16230	Florence Pernel	15985
16231	Charlotte Véry	215039
16232	Hélène Vincent	88758
16233	Claude Duneton	223861
16234	Hugues Quester	85729
16235	Emmanuelle Riva	14904
16236	Florence Vignon	160206
16237	Julie Gayet	12175
16238	Yann Trégouët	58581
16239	Arno Chevrier	130192
16240	Idit Cebula	141338
16241	Isabelle Sadoyan	187744
16242	Jacques Disses	193700
16243	Philippe Manesse	216631
16244	Alain Decaux	228092
16245	Jacek Ostaszewski	250225
16246	Stanislas Nordey	409356
16247	Rolf Lassgård	33278
16248	Sidse Babett Knudsen	32628
16249	Henrik Larsen	234496
16250	Julie R. Ølgaard	49192
16251	Christian Tafdrup	32480
16252	Neel Rønholt	49191
16253	Stine Fischer Christensen	32482
16254	Ida Dwinger	32473
16255	Jonatan Spang	136983
16256	Rita Angela	226689
16257	Troels Munk	216409
16258	Claus Flygare	329350
16259	Marie-Louise Coninck	330874
16260	Henning Jensen	347973
16261	Niels Anders Thorn	355101
16262	David Petersen	427216
16263	Erni Arneson	441042
16264	Suhita Thatte	564228
16265	Thomas Voss	609217
16266	Samir Di Johansson	690457
16267	Taťjana Samojlova	22123
16268	Alexej Batalov	34666
16269	Vasilij Merkurjev	33898
16270	Alexandr Švorin	352088
16271	Valentina Vladimirova	5822
16272	Valentin Zubkov	32843
16273	Světlana Charitonova	79425
16274	Alevtina Rumjanceva	29681
16275	Jevgenij Stěblov	130219
16276	Antonina Bogdanova	352105
16277	Konstantin Kadočnikov	353163
16278	Galina Stěpanova	353166
16279	Boris Kokovkin	353168
16280	Georgij Kulikov	353169
16281	Valentina Ananina	353170
16282	Olga Dzisko	353171
16283	Anna Zaržitskaja	353709
16284	Valentina Běrezuckaja	354325
16285	Maja Bulgakova	67433
16286	Nobuko Otowa	7784
16287	Džicuko Jošimura	7785
16288	Taidži Tonojama	54021
16289	Grant Williams	11853
16290	April Kent	173835
16291	Paul Langton	135757
16292	Diana Darrin	355043
16293	Luce Potter	356858
16294	Regis Parton	450078
16295	Čieko Higašijama	12181
16296	Secuko Hara	12180
16297	Só Jamamura	12157
16298	Kuniko Mijake	12189
16299	Tóru Abe	52660
16300	Mucuko Sakura	284269
16301	Tojo Takahaši	336577
16302	Magali Rosenzweig	621363
16303	Bernard Larmande	666417
16304	Kódži Curuta	10835
16305	Mariko Okada	22102
16306	Micuko Mito	109826
16307	Kaoru Jačigusa	278934
16308	Kuróemon Onoe	279122
16309	Mičijo Kogure	325220
16310	Chi McBride	1891
16311	Shia LaBeouf	13336
16312	Aaron Douglas	33406
16313	Simon Baker	37446
16314	Tiffany Lyndall-Knight	59548
16315	Emily Tennant	68292
16316	Peter Shinkoda	96013
16317	Sharon Wilkins	123717
16318	Jerry Wasserman	127794
16319	Darren Moore	200067
16320	Angela Moore	225757
16321	Scott Heindl	226777
16322	Victor Formosa	226887
16323	Craig March	238078
16324	Adrian Ricard	327108
16325	Bobby Stewart	615424
16326	Patrick Kilpatrick	7551
16327	Jessica Capshaw	23960
16328	Anna Maria Horsford	24396
16329	Arye Gross	16433
16330	Stephen Ramsey	15723
16331	Cameron Crowe	3373
16332	Katy Boyer	13444
16333	Meredith Monroe	11034
16334	Scott Frank	30909
16335	Paul Wesley	37878
16336	Caroline Lagerfelt	46781
16337	Ashley Crow	47895
16338	Tyler Patrick Jones	48068
16339	Anne Judson-Yager	48271
16340	Dominic Scott Kay	49807
16341	Daniel London	54346
16342	Victor Raider-Wexler	58743
16343	Blake Bashoff	59397
16344	Jason Antoon	66010
16345	Kirk B.R. Woller	67311
16346	Bonnie Morgan	74663
16347	Jim Rash	75979
16348	Rebecca Ritz	78040
16349	Riley Schmidt	119616
16350	Gina Gallego	128437
16351	David Hornsby	167153
16352	Diane Robin	184136
16353	Richard Coca	199675
16354	Karina Logue	218062
16355	Keith Flippen	244027
16356	Eugene Osment	244069
16357	Keith Campbell	247230
16358	Jay Shindell	288354
16359	Ann Ryerson	315195
16360	Andrew Sandler	320904
16361	Jorge-Luis Pallo	330936
16362	Tom Choi	350488
16363	Klea Scott	362934
16364	Christian Taylor	371504
16365	Nina Kaczorowski	437443
16366	Nancy Linehan Charles	512750
16367	Kurt Sinclair	594909
16368	Sumalee Montano	629206
16369	Daniel Browning Smith	648051
16370	Nicholas Edwin Barb	663514
16371	Steven Hack	708976
16372	Alan Cumming	5734
16373	Bruce Davison	2110
16374	Aaron Stanford	18443
16375	Katie Stuart	47014
16376	Chiara Zanni	40976
16377	Brad Loree	17935
16378	David Kaye	12740
16379	Newton Thomas Sigel	15204
16380	Shawn Ashmore	30425
16381	Daniel Cudmore	35182
16382	Nolan Gerard Funk	51032
16383	Peter Wingfield	53440
16384	Ty Olsson	54132
16385	Layke Anderson	55144
16386	Roger Cross	55688
16387	James Kirk	59315
16388	Emily Hirst	62745
16389	Valerie Tian	67875
16390	Aaron Pearl	74617
16391	Jade Ramsey	77487
16392	Brian Peck	79214
16393	Colin Lawrence	83845
16394	Cotter Smith	32207
16395	Devin Douglas Drewitz	105792
16396	Jill Teed	182417
16397	Nikita Ramsey	205717
16398	Michael Soltis	226979
16399	Blake Mawson	280206
16400	Michasha Armstrong	301441
16401	Kurt Max Runte	420422
16402	Michael David Simms	429432
16403	Shauna Kain	496905
16404	Greg Rikaart	513002
16405	Alfonso Quijada	625407
16406	Bingbing Fan	56051
16407	Booboo Stewart	64320
16408	Evan Peters	22921
16409	Adan Canto	105109
16410	Evan Jonigkeit	109579
16411	Jaa Smith-Johnson	109580
16412	Amelia Giovanni	109581
16413	Gregg Lowe	109582
16414	Josh Helman	109584
16415	Thai-Hoa Le	109585
16416	Jason Deline	109710
16417	Robert Crooks	109712
16418	Susanna Fournier	122624
16419	Karine Vanasse	64705
16420	Stephan Parent	141217
16421	Zabryna Guevara	152156
16422	Mike Dopud	18342
16423	Neil Napier	80221
16424	Nathaly Thibault	193952
16425	Kyle Gatehouse	220313
16426	Mark Camacho	280011
16427	Matt Cooke	306579
16428	Andreas Apergis	319321
16429	Alex Ivanovici	336774
16430	Arthur Holden	336780
16431	Harry Standjofski	337949
16432	Tim Post	338733
16433	Lance Kinsey	20887
16434	Miya Shelton-Contreras	467441
16435	Robert Montcalm	582658
16436	Francesco Giannini	600023
16437	Serge Martineau	631942
16438	Steve Barry	631944
16439	Christian Jadah	636462
16440	Freddy Bessa	654711
16441	Pierre Leblanc	654718
16442	Len Wein	699030
16443	Joseph Fiennes	5105
16444	Rachel Weisz	1882
16445	Eva Mattes	40562
16446	Gabriel Thomson	52994
16447	Matthias Habich	41512
16448	Sophie Rois	66485
16449	Robert Stadlober	14406
16450	Marc Bischoff	30886
16451	Birol Ünel	15820
16452	Valentin Platareanu	42809
16453	Markus Majowski	102515
16454	Gennadij Věngerov	132237
16455	Anna Böttcher	135157
16456	Gotthard Lange	151859
16457	Holger Handtke	152639
16458	Lenn Kudrjawizki	177049
16459	Hendrik Arnst	180206
16460	André Kaminski	200759
16461	Mark Zak	224096
16462	Axel Neumann	231079
16463	Claudius Freyer	234398
16464	Jürgen G.H. Hoppmann	240808
16465	Dana Cebulla	282546
16466	Mario Bandi	308757
16467	Michail Matvejev	308758
16468	Dmitrij Alexandrov	364003
16469	Piotr Papierz	451931
16470	Dietmar Nieder	598475
16471	Matthew Goode	25150
16472	Rory Kinnear	39485
16473	Matthew Beard	12064
16474	Tuppence Middleton	81390
16475	Tom Goodman-Hill	112090
16476	Victoria Wicks	121512
16477	Peter Brown	228778
16478	Charlie Manton	235198
16479	Mark Underwood	247559
16480	Nicola-Jayne Wells	327404
16481	Adam Nowell	417254
16482	Josh Wichard	417262
16483	Jack Bannon	424923
16484	Laurence Kennedy	483045
16485	Grace Calder	545228
16486	James G. Nunn	547966
16487	James Northcote	557848
16488	Luděk Kopřiva	1694
16489	Oldřich Celerýn	37630
16490	Gabriela Bártlová-Buddeusová	27438
16491	Pavel Fiala	41896
16492	František Horáček	42089
16493	František Kovář	42091
16494	Michal Dohányos	42092
16495	Milan Muchna	3242
16496	Bohumil Rod	42093
16497	Pavel Zradička	42094
16498	Věra Petáková	29380
16499	Alena Procházková	1283
16500	Jiří Růžička st.	29277
16501	Stanislav Juna	37392
16502	Jürgen Vogel	13591
16503	Frederick Lau	49042
16504	Max Riemelt	16261
16505	Jennifer Ulrich	49550
16506	Elyas M'Barek	36381
16507	Jacob Matschenz	24654
16508	Max Mauff	42331
16509	Cristina do Rego	50815
16510	Ferdinand Schmidt-Modrow	50817
16511	Amelie Kiefer	50818
16512	Odine Johne	50820
16513	Tim Oliver Schultz	50821
16514	Fabian Preger	49093
16515	Maximilian Vollmar	51494
16516	Maren Kroymann	49083
16517	Tino Mewes	49041
16518	Lennard Bertzbach	62587
16519	Lucas Hardt	49085
16520	Johanna Gastdorf	49089
16521	Dennis Gansel	3736
16522	Liv Lisa Fries	49090
16523	Jaime Ferkic	49091
16524	Karoline Teska	84827
16525	Marco Bretscher-Coschignano	150603
16526	Friederike Wagner	186993
16527	Joseph M'Barek	187217
16528	Natascha Paulick	215170
16529	Thommy Schwimmer	217514
16530	Todd Graff	8152
16531	Ken Jenkins	38831
16532	Michael Beach	13391
16533	Michael Chapman	13971
16534	J. Kenneth Campbell	154529
16535	Phillip Darlington	208401
16536	Joseph C. Nemec III	283244
16537	Adam Nelson	306247
16538	Emily Yancy	335101
16539	Tom Isbell	371201
16540	Thomas F. Duffy	338606
16541	Christopher Murphy	481621
16542	Cybill Shepherd	2272
16543	Peter Boyle	359
16544	Leonard Harris	123586
16545	Steven Prince	123582
16546	Brenda Dickson	51196
16547	Ralph S. Singleton	7899
16548	Diahnne Abbott	94498
16549	Gene Palma	123585
16550	Debbi Morgan	13459
16551	Harlan Cary Poe	523678
16552	Nicholas Shields	648818
16553	Isabella Rossellini	235
16554	Hope Lange	5311
16555	George Dickerson	105364
16556	Priscilla Pointer	5362
16557	Jack Nance	220
16558	Angelo Badalamenti	16304
16559	Frances Bay	33427
16560	Fred Pickler	412033
16561	J. Michael Hunter	412034
16562	Hedy Burress	7787
16563	Terrence 'T.C.' Carson	5331
16564	Tom Kenny	12996
16565	Olivia d'Abo	21059
16566	Allison Smith	21145
16567	Melinda Clarke	7756
16568	Pamela Adlon	49029
16569	James Arnold Taylor	53514
16570	Alex Fernandez	55720
16571	Jack Fletcher	61953
16572	Bette Ford	222798
16573	Kevin Michael Richardson	224344
16574	John DeMita	264925
16575	Jill Talley	315885
16576	Victor Williams	319902
16577	John Wesley	325168
16578	Eric Aten	574746
16579	Rodney Saulsberry	650404
16580	Clayton Watson	669884
16581	Magali Vendeuil	74681
16582	Marcelle Ranson-Hervé	133510
16583	Erik Colin	81924
16584	Robert Lamoureux	3794
16585	Jean-Claude Houdinière	190952
16586	Corinne Lahaye	110774
16587	Gino Da Ronch	213700
16588	Tereza Brodská	1418
16589	Braňo Holiček	31592
16590	Ladislav Chudík	1729
16591	Martin Zbrožek	28923
16592	Tereza Bebarová	32106
16593	Grażyna Wolszczak	37324
16594	Andrzej Deskur	47023
16595	Michaela Kuklová	1241
16596	Oldřich Navrátil	989
16597	Lucia Cúlková	55125
16598	Rupert Graves	4248
16599	Rostislav Kuba	1020
16600	Jaroslava Rytychová	90704
16601	Krzysztof Kolberger	76083
16602	Hanna Dunowska	144456
16603	Meredith Baxter	9152
16604	Penny Fuller	81221
16605	Bryan Clark	22440
16606	Nicolas Coster	13400
16607	Lindsay Crouse	2376
16608	Gene Dynarski	11297
16609	Polly Holliday	14701
16610	Frank Latimore	20148
16611	James Karen	57635
16612	Frank Wills	62674
16613	Robert Walden	81013
16614	Richard Herd	121894
16615	Jamie Smith-Jackson	144259
16616	Neva Patterson	161642
16617	John Furlong	217631
16618	James Murtaugh	228383
16619	Penny Peyser	304849
16620	Valerie Curtin	89291
16621	Doug Llewelyn	315575
16622	Christopher Murray	319004
16623	David Arkin	319114
16624	Nate Esformes	320511
16625	Louis Quinn	348521
16626	Shawn Shea	351690
16627	Joshua Shelley	357940
16628	Ron Hale	370020
16629	Jeff MacKay	457529
16630	Anthony Mannino	487180
16631	Spiro Agnew	689077
16632	Yun-Fat Chow	38
16633	Danny Lee	11807
16634	Sally Yeh	11899
16635	Paul Chu	11259
16636	Kenneth Tsang	11475
16637	Fui-On Shing	11455
16638	Kwong Leung Wong	11491
16639	Teddy Wing-Cho Yip	167819
16640	Chi-wai Wong	176377
16641	Barry Wong	196274
16642	Parkman Wong	205293
16643	Chung Lam	209165
16644	James Ha	231791
16645	Seung-lam Wan	231793
16646	Candy Hau	231794
16647	Kwok-keung Choi	231800
16648	Wai-cheung Mak	231920
16649	Wai-fai Wong	106359
16650	Paul Lo	420636
16651	Ankle Leung	435552
16652	Bruce Law	439324
16653	Shung-fung Lau	447204
16654	John Chan-sang Cheung	498859
16655	Dion Lam	499403
16656	Yiu-ging Lee	589149
16657	Jackson Ng	689571
16658	Derek Kwok	695372
16659	Ricky Yi	695884
16660	Folker Bohnet	55888
16661	Frank Glaubrecht	81802
16662	Karl Michael Balzer	55889
16663	Volker Lechtenbrink	56121
16664	Günther Hoffmann	55890
16665	Cordula Trantow	14911
16666	Horst Bergmann	10479
16667	Maks Furijan	147798
16668	Heini Göbel	216465
16669	Trude Breitschopf	274168
16670	Arno Paulsen	284447
16671	Alexander Hunzinger	298094
16672	Günter Pfitzmann	57483
16673	Siegfried Schürenberg	67006
16674	Edeltraut Elsner	192674
16675	Georg Lehn	276222
16676	Ira Lewis	172739
16677	Wolfgang Stumpf	306114
16678	Eva Vaitl	306117
16679	Edith Schultze-Westrum	306118
16680	Hans Elwenspoek	306122
16681	Johannes Buzalski	306124
16682	Maureen O'Hara	866
16683	John Payne	4227
16684	Edmund Gwenn	6272
16685	Gene Lockhart	14385
16686	Natalie Wood	927
16687	Jerome Cowan	111200
16688	Jack Albertson	6249
16689	Richard Irving	13678
16690	Mae Marsh	53357
16691	Dorothy Christy	133457
16692	Stephen Roberts	177419
16693	Mary Field	206840
16694	William Forrest	180298
16695	Theresa Harris	264011
16696	Lela Bliss	264533
16697	Harry Antrim	267282
16698	Clark Howat	292324
16699	Herbert Heyes	123549
16700	Anne O'Neal	361868
16701	Alvin Hammer	362616
16702	Dick Cogan	452108
16703	David Bradley	31894
16704	Laurence Bould	175352
16705	Agnes Drumgoon	175353
16706	Frank Norton	175359
16707	Martin Harley	175362
16708	Leslie Stringer	175364
16709	Brian Glover	209369
16710	Colin Welland	89157
16711	Lynne Perrie	243699
16712	Freddie Fletcher	243703
16713	Bob Bowes	243706
16714	Bill Dean	280189
16715	Ted Carroll	304009
16716	Miriam Hopkins	11569
16717	Vanessa Brown	95594
16718	Mona Freeman	81440
16719	Betty Linley	267281
16720	Selena Royle	6130
16721	Louise Lorimer	313448
16722	David Thursby	334473
16723	Nan Boardman	474463
16724	Georges Poujouly	8301
16725	Amédée	83881
16726	Laurence Badie	83883
16727	Denise Péronne	83263
16728	Suzanne Courtal	290750
16729	Lucien Hubert	290753
16730	Louis Saintève	290757
16731	Marcel Mérovée	290760
16732	Georges Sauval	290764
16733	John Laurie	131697
16734	Niall MacGinnis	16519
16735	Russell Thorndike	59334
16736	Basil Sydney	112803
16737	Eileen Herlie	211396
16738	Norman Wooland	199720
16739	Felix Aylmer	124588
16740	Terence Morgan	211402
16741	Anthony Bushell	222656
16742	Walter Janssen	29402
16743	Bernhard Goetzke	53963
16744	Lydia Potěchina	28457
16745	Eduard von Winterstein	22595
16746	Louis Brody	21574
16747	Károly Huszár	293642
16748	Wilhelm Diegelmann	255143
16749	Hermann Picha	283801
16750	Ernst Rückert	286158
16751	Hans Sternberg	289505
16752	Hermann Vallentin	335733
16753	Paul Biensfeldt	184629
16754	Mahiro Takasugi	132167
16755	Šin'ičiró Miki	60975
16756	Džun Fukušima	313966
16757	Jukijo Fudžii	317328
16758	Emi Wakui	156669
16759	Júma Učida	349020
16760	Lynn	349019
16761	Saja Mikami	563231
16762	Reió Cučida	604401
16763	Nene Hieda	604633
16764	Jurina Amami	672229
16765	Shatrughan Sinha	150772
16766	Taketoši Naitó	10728
16767	Hideko Takamine	11648
16768	Mičijo Aratama	52866
16769	Tacuja Išiguro	248158
16770	Tamao Nakamura	260436
16771	Júsuke Kawazu	307560
16772	Hiroši Nihon'janagi	316174
16773	Masahiko Naruse	489066
16774	James Franco	1822
16775	Tyler Labine	17925
16776	Sonja Bennett	5107
16777	Chelah Horsdal	40880
16778	David Hewlett	6165
16779	Timothy Webber	17438
16780	Tracy Spiridakos	81597
16781	Lauren Watson	87260
16782	Jeb Beach	87520
16783	Leah Gibson	87538
16784	Robin Nielsen	95716
16785	Michael Kopsa	122861
16786	Elizabeth Weinstein	134493
16787	Adrian Hough	177445
16788	Evans Johnson	225789
16789	Jesse Reid	225878
16790	Chris Shields	226788
16791	Ki Yurij	226933
16792	Ryan Jefferson Booth	227154
16793	Sean Tyson	237821
16794	James Pizzinato	240579
16795	Kevin O'Grady	251493
16796	BJ Harrison	389744
16797	Peter Bundic	462938
16798	Linda Watters	493135
16799	Tom Franco	512983
16800	Ivan Wanis-Ruiz	664536
16801	Devyn Dalton	699091
16802	Jay Caputo	702259
16803	Luc Roderique	703037
16804	Darío Grandinetti	8349
16805	María Marull	132513
16806	Mónica Villa	149553
16807	Rita Cortese	10205
16808	Julieta Zylberberg	66117
16809	César Bordón	68639
16810	Leonardo Sbaraglia	4797
16811	Walter Donado	23758
16812	Ricardo Darín	4330
16813	Nancy Dupláa	132504
16814	Oscar Martínez	132509
16815	María Onetto	66126
16816	Osmar Núñez	66121
16817	Germán de Silva	76440
16818	Erica Rivas	59697
16819	Diego Gentile	132507
16820	Alan Daicz	140978
16821	Martín Gervasoni	183604
16822	Luis Mazzeo	150163
16823	Horacio Nin Uría	149559
16824	Marcelo Pozzi	149705
16825	Diego Velázquez	149744
16826	Pablo Moseinco	149581
16827	Camila Sofía Casas	149709
16828	Héctor Drachtman	430704
16829	Paula Grinszpan	445042
16830	Diego Starosta	581833
16831	Lucrecia Gelardi	607510
16832	Federico Liss	696229
16833	Abigail Breslin	11523
16834	Sofia Vassilieva	52232
16835	Evan Ellingson	59470
16836	Thomas Dekker	44281
16837	Elizabeth Daily	20404
16838	Nicole Marie Lenz	53305
16839	Lin Shaye	15279
16840	Mary Jo Deschanel	51234
16841	Chris Kinkade	126913
16842	Rico Simonini	126928
16843	Brennan Bailey	139259
16844	Paul Butler	209187
16845	Jonah Johnson	254248
16846	Lynn Clayton	297504
16847	Marcos A. Ferraez	351138
16848	Michael Chow	376788
16849	Rob Giles	458228
16850	Roy Allen III	468985
16851	Retson Ross	491278
16852	Frank Peluso	525008
16853	Ellia English	614121
16854	Brian d'Arcy James	195523
16855	Doug Murray	232504
16856	Neal Huff	61357
16857	Michael Countryman	228830
16858	Brad Borbridge	215490
16859	Don Allison	224238
16860	Laurie Heineman	11564
16861	Elena Juatco	123036
16862	Nancy Villone	230173
16863	Siobhan Murphy	183702
16864	Tim Progosh	86909
16865	Janet Pinnick	226986
16866	Laurie Murdoch	302282
16867	Chris De Christopher	306321
16868	Cyndy Day	309863
16869	Jami Tennille	348955
16870	Krista Morin	359214
16871	Robert B. Kennedy	378355
16872	Zarrin Darnell-Martin	425958
16873	Stefanie Drummond	429138
16874	David Afflick	444934
16875	Michael Cyril Creighton	507189
16876	Darrin Baker	525363
16877	Lana Antonova	665823
16878	Elena Khan	693486
16879	Betty Sun	60154
16880	Collin Chou	25103
16881	Nathan Jones	27530
16882	Jon T. Benn	288265
16883	Anthony De Longis	38564
16884	John Paisley	64654
16885	Nina Paw	105998
16886	Samantha Buck	237433
16887	Jacky Heung	248707
16888	Sophie Zhang	583036
16889	Yong Dong	618020
16890	Daws Butler	11771
16891	James Darren	63646
16892	Margaret Avery	21037
16893	Oprah Winfrey	21166
16894	Willard E. Pugh	20957
16895	Akosua Busia	21052
16896	Adolph Caesar	14269
16897	Rae Dawn Chong	1937
16898	Leonard Jackson	20868
16899	Leon Rippy	17630
16900	April Myers	124164
16901	Marcus Covington	124165
16902	Marcus Liles	124166
16903	Juliet Poe	124167
16904	Katie Simon	124168
16905	Maria Howell	178703
16906	Jeris Poindexter	411759
16907	Bennet Guillory	450354
16908	Drew Bundini Brown	472804
16909	Najwa Nimri	6338
16910	Fele Martínez	10702
16911	Maru Valdivielso	5572
16912	Ángela Castilla	31057
16913	Pep Munné	40442
16914	Joost Siedhoff	166913
16915	Beate Jensen	230799
16916	Jaroslaw Bielski	478972
16917	María Isasi	541328
16918	Elena Lombao	567762
16919	Jun Hu	8353
16920	Jia Song	46874
16921	Dawei Tong	79366
16922	Chun Sun	248508
16923	Sen Ba	582687
16924	Tong Jiang	625408
16925	Júiči Nakamura	676786
16926	Kento Fudžinuma	318276
16927	Hiroši Arikawa	381777
16928	Kendó Kobajaši	488733
16929	Eidži Takeuči	597991
16930	Masaši Nogawa	610395
16931	Keniči Hagiwara	11324
16932	Kaori Momoi	24009
16933	Micuko Baišó	131615
16934	Daisuke Rjú	198238
16935	Hideo Murota	219413
16936	Hidedži Ótaki	265378
16937	Džinpači Nezu	283109
16938	Šú Nakadžima	333314
16939	Kai Ató	340394
16940	Kódži Šimizu	340445
16941	Esben Smed	15584
16942	Anders W. Berthelsen	5244
16943	Sofie Torp	376241
16944	Christiane Gjellerup Koch	461421
16945	Ellaha Lack	489285
16946	Charlie Carrick	128351
16947	Sara Hjort Ditlevsen	70444
16948	Amir El-Masry	305850
16949	Fady Elsayed	238770
16950	Ardalan Esmaili	269707
16951	Rasmus Bjerg	333188
16952	Rafael Pettersson	97058
16953	Thomas Biehl	393705
16954	Elizabeth Moynihan	320488
16955	Ben Roberts	495831
16956	Henrik Birch	157804
16957	Susan A. Olsen	259667
16958	Jonas Jörgensen	456163
16959	Lars Lohmann	266205
16960	Margareta Olsson	409107
16961	Peter Sejer Winther	421461
16962	Rodrigo Pozo Vizcarra	259364
16963	Hanna Holmqvist	362602
16964	Thomas Hou Mandsfeldt	503026
16965	Yvonne Andersen	541214
16966	Nadeem Srouji	560886
16967	Samuel Brafman-Moutier	567875
16968	Eddie Hallgren	586981
16969	Jimmi Holm Andersen	609218
16970	Daniel Ceccaldi	18329
16971	Xavier Depraz	10556
16972	Jacques Fabbri	71803
16973	Jacques Legras	80097
16974	Jean-Marc Thibault	88213
16975	Bernard Haller	136170
16976	Éric Kristy	223854
16977	Carlo Battisti	23198
16978	Maria-Pia Casilio	23454
16979	Lina Gennari	23481
16980	Ileana Simova	23556
16981	Sumiko Sakamoto	20540
16982	Norihei Miki	7230
16983	Ben Hiura	169773
16984	Šóiči Ozawa	200802
16985	Nidžiko Kijokawa	313041
16986	Vasilij Lanovoj	28631
16987	Nikolaj Alexejev	178748
16988	Jelena Ťjapkina	355668
16989	Ivan Solovjov	496606
16990	Fred Henderson	288062
16991	Alison Matthews	302315
16992	Andrew Kavadas	302785
16993	Cathy Weseluck	303256
16994	Micuru Ogata	362926
16995	Šigenori Sója	698704
16996	Joe Roberts	39444
16997	Francis X. Bushman Jr.	302342
16998	Monte Collins	694739
16999	Craig Ward	694740
17000	Natalie Talmadge	694741
17001	Alan Hewitt	495259
17002	Lynn Borden	51850
17003	Charlene Holt	93432
17004	Jack Riley	102876
17005	Charles Watts	201216
17006	Russ Bender	223189
17007	Maxine Stuart	231288
17008	Russell Custer	330753
17009	Katherine Squire	368983
17010	Myrna Ross	395714
17011	Tom Palmer	415167
17012	James Lanphier	425963
17013	John Truax	458578
17014	Sharlto Copley	53789
17015	Jason Cope	53791
17016	David James	53790
17017	Mandla Gaduka	402627
17018	Kenneth Nkosi	56722
17019	Eugene Khumbanyiwa	305401
17020	Louis Minnaar	99254
17021	William Allen Young	186960
17022	Robert Hobbs	55459
17023	Nathalie Boltt	53896
17024	Mike Huff	118063
17025	Nick Boraine	179139
17026	John Sumner	221612
17027	Brandon Auret	237926
17028	Johnny Selema	237927
17029	John Jacob	265860
17030	Anthony Fridjhon	291727
17031	Bongo Mbutuma	343279
17032	Sylvaine Strike	402648
17033	Nick Blake	402649
17034	Craig Jackson	454918
17035	Daniel Hadebe	609606
17036	David Dukas	628627
17037	Peter Muyzers	633548
17038	Zdena Studenková	1072
17039	Zuzana Githeisová	69849
17040	Marta Buchtíková	69850
17041	Václav Korda	69851
17042	Cyril Křupala	69852
17043	Lukáš Pelánek	69853
17044	Marek Dvořák	69854
17045	Jan Faltýnek	6344
17046	Garret Dillahunt	37593
17047	Tess Harper	7921
17048	Barry Corbin	8072
17049	Ana Reeder	269433
17050	Gene Jones	122627
17051	Myk Watford	214843
17052	Boots Southerland	273105
17053	Kathy Lamkin	35581
17054	Jason Douglas	209522
17055	Doris Hargrave	381967
17056	Matthew Posey	351275
17057	Mathew Greer	301275
17058	Luce Rains	55549
17059	Chris Warner	402273
17060	Roland Uribe	406327
17061	Richard Jackson	498242
17062	Angelo Martinez	310466
17063	Olivia Newton-John	1995
17064	Jeff Conaway	2151
17065	Barry Pearl	188703
17066	Jamie Donnelly	68366
17067	Eve Arden	11504
17068	Dinah Manoff	87114
17069	Joan Blondell	14504
17070	Edd Byrnes	19922
17071	Sid Caesar	29534
17072	Lorenzo Lamas	5359
17073	Eddie Deezen	8905
17074	Ellen Travolta	25482
17075	Antonia Franceschi	10957
17076	Andy Tennant	3098
17077	Didi Conn	73441
17078	Dennis Cleveland Stewart	79663
17079	Sean Moran	87485
17080	Fannie Flagg	88909
17081	Mimi Lieber	210332
17082	Dody Goodman	244367
17083	John Michael Graham	258931
17084	Kelly Ward	400154
17085	Annette Charles	400219
17086	Greg Bradford	423764
17087	Carol Culver	649418
17088	Steve Zahn	7242
17089	Kevin Rankin	40815
17090	Philippe Radelet	86245
17091	Juliet Reeves	94576
17092	Craig Borten	103378
17093	Robert Segari	214338
17094	Kenneth Kynt Bryan	214331
17095	Bob Walker	219706
17096	Heather Ashley Boyd	221429
17097	Douglas M. Griffin	221441
17098	Tre Tureaud	222210
17099	Ian Casselberry	236286
17100	Sean Boyd	254658
17101	Chris Angerdina	261329
17102	Jaden Smith	30710
17103	David Fine	47526
17104	George Cheung	77310
17105	Amir Talai	79838
17106	Phil Austin	85023
17107	Molly Celaschi	97538
17108	Phil Talsky	119303
17109	Peaches Hutchinson	167395
17110	Yeena Fisher	230673
17111	Scott Klace	271240
17112	Esther Scott	300215
17113	Joe Nunez	315875
17114	Darryl Fong	56616
17115	Geoff Callan	358772
17116	Karen Kahn	373443
17117	Peter Fitzsimmons	405546
17118	Kevin West	426133
17119	Maurice Sherbanee	452928
17120	Austin Scott	524817
17121	Stu Klitsner	603392
17122	Ben Fritz	611572
17123	Ji-tae Yoo	15812
17124	Dal-soo Oh	28274
17125	Seung-shin Lee	509421
17126	Yeon-seok Yoo	104876
17127	Jin-seo Yoon	36489
17128	Su-hyeon Kim	18380
17129	Myeong-shin Park	23529
17130	Dae-yeon Lee	23319
17131	Tae-kyeong Oh	18412
17132	Mi-mi Lee	509416
17133	Lee Seung-jin	584416
17134	Sang-gyeong Jo	635381
17135	Bill Pullman	19
17136	Mink Stole	16009
17137	Balthazar Getty	248
17138	Natasha Gregson Wagner	15911
17139	Richard Pryor	250
17140	Lisa Boyle	13445
17141	Leslie Bega	55623
17142	Marilyn Manson	16525
17143	David Lynch	2993
17144	Bill McAdams Jr.	60591
17145	Heather Stephens	70252
17146	Greg Travis	207410
17147	Gene Ross	221743
17148	Amanda Anka	233624
17149	David Byrd	302274
17150	John Solari	370545
17151	Ivory Ocean	390926
17152	Lucy Butler	390998
17153	Al Garrett	391001
17154	Jennifer Syme	524980
17155	Ari Graynor	36979
17156	Scout Taylor-Compton	14909
17157	Carlie Westerman	31716
17158	Michael Welch	38769
17159	Brian Geraghty	48205
17160	Jeremy Sumpter	26431
17161	Hayley McFarland	50648
17162	Hannah Leigh	141337
17163	Kuma	195530
17164	Amy Ferguson	400519
17165	Patricia Place	525392
17166	Michelle Benes	607073
17167	Edward James Gage	707725
17168	Peter Ustinov	4756
17169	Nina Foch	11552
17170	John Ireland	2315
17171	Joanna Barnes	95965
17172	John Hoyt	13332
17173	Carey Loftin	20163
17174	Gordon Mitchell	56303
17175	Aron Kincaid	64035
17176	Brad Harris	10623
17177	Julian Vergov	101324
17178	Frederick Worlock	134026
17179	Jack Perkins	154784
17180	Bob Hoy	161514
17181	Betty Harford	177238
17182	Charles Horvath	180888
17183	Dayton Lummis	181028
17184	Anthony Jochim	223752
17185	Seamon Glass	228871
17186	Ken Terrell	255441
17187	Wayne Heffley	266414
17188	Evelyn Rudie	291650
17189	Terence de Marney	296175
17190	Shari Lee Bernath	297658
17191	Chuck Courtney	301686
17192	Arthur Batanides	305677
17193	Leonard Penn	306738
17194	Harry Harvey Jr.	306762
17195	Michael Masters	323711
17196	Wally Rose	339344
17197	George Robotham	340804
17198	Paul Keast	346050
17199	Kay Stewart	348753
17200	Jack Grinnage	352034
17201	Logan Field	352386
17202	Craig Duncan	356415
17203	Joe Haworth	388099
17204	Vinton Hayworth	391509
17205	Will J. White	394015
17206	Larry Thor	400343
17207	Pete Kellett	438628
17208	Jack Williams	440638
17209	Paul Baxley	449981
17210	Tony Dante	458514
17211	Aaron Saxon	470139
17212	Hallene Hill	474401
17213	Jil Jarmyn	496054
17214	Bob Herron	529676
17215	Louie Elias	529677
17216	Robert Stevenson	572630
17217	Autumn Russell	690230
17218	Pierre Richard	2010
17219	Jean Benguigui	76160
17220	Michel Blanc	7808
17221	Isabelle Renauld	49474
17222	Jean Veber	59437
17223	Anaïs Bret	85264
17224	Jacqueline Noëlle	135380
17225	Daniel Dhubert	192661
17226	Michel Berto	195728
17227	Philippe Jourde	195782
17228	Jacky Pratoussy	195849
17229	André Julien	190226
17230	Roland Blanche	191938
17231	Pierre Belot	220128
17232	Yveline Ailhaud	220601
17233	Guy Louret	223726
17234	Marc Adjadj	240882
17235	Yves Elliot	284598
17236	Patrick Massieu	285032
17237	Daniel Villattes	301804
17238	Pierre Berriau	303046
17239	Eric Averlant	332266
17240	Hana Vítová	1399
17241	Lili Hodačová	31301
17242	Anna Letenská	24507
17243	Míla Spazierová-Hezká	29446
17244	Josef Hořánek	21706
17245	Arnošt Mirský	29006
17246	Josef Cikán	29418
17247	Shahrukh Khan	15597
17248	Kajol	33067
17249	Katie A. Keane	108140
17250	Kenton Duty	97079
17251	Jimmy Sheirgill	33538
17252	Parvin Dabas	33058
17253	Beth Bemis	67795
17254	Kathleen M. Darcy	69548
17255	Harmony Blossom	74191
17256	Zarina Wahab	70018
17257	Tonya Lee Williams	84336
17258	Mike Howard	85602
17259	Anne Marie Scottlin	89882
17260	Vinay Pathak	101975
17261	Navneet Nishan	175065
17262	Arjun Mathur	102746
17263	Pallavi Sharda	103152
17264	Sugandha Garg	104126
17265	Shane Harper	129807
17266	Christopher Damm	148904
17267	Kari Wishingrad	149794
17268	Aubrey K. Miller	157275
17269	Jacqueline Buda	206867
17270	Jesse Muick	228605
17271	A'Ali de Sousa	234765
17272	Mackenzie Firgens	36175
17273	Arif Zakaria	282847
17274	Sumeet Raghvan	294876
17275	Mike Stahl	321089
17276	Adarsh Gourav	339851
17277	Julie McKinnon	355197
17278	Kavin Dave	357891
17279	Faisal Simon	388941
17280	Mel Fair	391075
17281	Peggy Sandow	419240
17282	Carl Marino	510648
17283	Kerry Leigh Michaels	607069
17284	Will James Johnson	617189
17285	Natasha Marc	622392
17286	Christopher B. Duncan	624267
17287	Jenne Kang	645168
17288	Rod Britt	662219
17289	Adrian Kali Turner	688324
17290	Anni-Kristiina Juuso	10253
17291	Ville Haapasalo	9966
17292	Viktor Byčkov	9872
17293	Alexej Kašnikov	9997
17294	Michail Korobočkin	10005
17295	Michail Pšeničnyj	198723
17296	Taťjana Stěblovskaja	269238
17297	Sergej Antonov	318270
17298	Alexandr Mělnikov	164082
17299	Gérard Barray	2444
17300	Georges Descrières	8615
17301	Bernard Woringer	37251
17302	Jacques Toja	37240
17303	Guy Delorme	31803
17304	Daniel Sorano	37294
17305	Jacques Berthier	81456
17306	Henri Nassiet	83629
17307	Léna Skerla	18554
17308	Perrette Pradier	33134
17309	Jacques Seiler	56082
17310	Françoise Christophe	64456
17311	Guy Tréjan	67238
17312	Serge Marquand	71883
17313	Jacques Hilling	74780
17314	Anne Tonietti	82211
17315	Hubert de Lapparent	82686
17316	Philippe March	83142
17317	Henri Cogan	96568
17318	Alida Valli	2552
17319	Siegfried Breuer	22429
17320	Carol Reed	3987
17321	Karel Štěpánek	30013
17322	Ernst Deutsch	53507
17323	Annie Rosar	30714
17324	Paul Hörbiger	29437
17325	Paul Birch	155240
17326	Erich Ponto	258045
17327	Martin Boddey	288058
17328	Eric Pohlmann	290536
17329	Peter Fontaine	290964
17330	Vernon Greeves	298616
17331	Paul Carpenter	299033
17332	Lily Kann	299220
17333	Martin Miller	302077
17334	Moira Redmond	303240
17335	Thomas Gallagher	313668
17336	Alexis Chesnakov	322679
17337	Ernest Sarracino	345258
17338	Michael Godfrey	348164
17339	Harold Ayer	416939
17340	Reed De Rouen	453224
17341	Frederick Schrecker	481831
17342	Ray Browne	488445
17343	Hedwig Bleibtreu	489672
17344	Jorga Kotrbová	1228
17345	Věra Kubánková	26306
17346	Alfred Strejček	39573
17347	Jean Valmont	89023
17348	Eric Baugin	191722
17349	Claude Joseph	301659
17350	William Coryn	650756
17351	Vincent Gardenia	14098
17352	David Wayne	11850
17353	Allen Garfield	14277
17354	Martin Gabel	7538
17355	Cliff Osmond	112644
17356	Dick O'Neill	102849
17357	Lou Frizzell	11309
17358	Leonard Bremen	57974
17359	Carol Burnett	12868
17360	Allen Jenkins	97198
17361	Biff Elliot	154989
17362	Doro Merande	369926
17363	Jon Korkes	369927
17364	Silvia Pinal	9358
17365	Francisco Rabal	7714
17366	Victoria Zinny	22675
17367	José Manuel Martín	149954
17368	María Isbert	193714
17369	Joaquín Roa	319379
17370	Rosita Yarza	327642
17371	Lola Gaos	327866
17372	José María Lado	327872
17373	Narciso Ojeda	374636
17374	Luis Heredia	374670
17375	Jacqueline Andere	9199
17376	José Baviera	9209
17377	Rita Macedo	18897
17378	Augusto Benedico	197176
17379	Antonio Bravo	197399
17380	Enrique García Álvarez	202106
17381	Eric del Castillo	71137
17382	Enrique Rambal	266897
17383	Ofelia Montesco	268786
17384	Arturo Cobo	268911
17385	Luis Beristáin	269317
17386	Guillermo Álvarez Bianchi	269620
17387	Chel López	271126
17388	Lucy Gallardo	275087
17389	Jesús Gómez	275971
17390	Daniel Arroyo	277137
17391	Elodia Hernández	278216
17392	Rosa Elena Durgel	278239
17393	Tito Junco	279242
17394	Roberto Meyer	281395
17395	Ángel Di Stefani	281420
17396	César del Campo	282397
17397	Florencio Castelló	282421
17398	Rubén Márquez	286603
17399	Fernando Yapur	286608
17400	Nadia Haro Oliva	286841
17401	David Hayat	286909
17402	Bertha Moss	288234
17403	Patricia Morán	288859
17404	Xavier Loyá	290048
17405	Luis Lomelí	290133
17406	Janet Alcoriza	291159
17407	Enrique del Castillo	291612
17408	Patricia de Morelos	297236
17409	Ofelia Guilmáin	298631
17410	Juan Antonio Edwards	309267
17411	Brahim Hadjadj	24474
17412	Yacef Saadi	8524
17413	Mohamed Ben Kassen	478774
17414	Fusia El Kader	478776
17415	Glenda Farrell	69383
17416	Helen Vinson	70009
17417	Noel Francis	62560
17418	Preston Foster	65609
17419	Berton Churchill	199972
17420	Hale Hamilton	33005
17421	Sally Blane	70010
17422	Willard Robertson	182117
17423	Robert Warwick	133455
17424	Douglass Dumbrille	11294
17425	Walter Long	94918
17426	Sheila Terry	112601
17427	Harry Woods	78658
17428	Jack La Rue	118548
17429	Charles Sellon	114817
17430	James Bell	129653
17431	William H. Strauss	224195
17432	Lew Kelly	281964
17433	Charles McAvoy	282630
17434	William Le Maire	472977
17435	J. Frank Glendon	494546
17436	Nan Martin	20492
17437	Timothy Stack	20989
17438	Jay Acovone	11199
17439	Chris Noth	14485
17440	Derick Alexander	45184
17441	Lauren Birkell	51083
17442	Lari White	86254
17443	Yelena Popovic	102069
17444	Valerie Wildman	155618
17445	Michael Forest	220316
17446	Viveka Davis	222815
17447	Alyssa Gainer	223423
17448	Vsevolod Boldin	288184
17449	Tommy Cresswell	370659
17450	Anne Bellamy	385692
17451	Steve Monroe	414243
17452	John Duerler	417496
17453	Vince Martin	456867
17454	Skye McKenzie	498472
17455	Joe Conley	572637
17456	Lee Pace	26480
17457	Glenn Close	529
17458	Laura Haddock	71868
17459	Peter Serafinowicz	52664
17460	Tom Proctor	73171
17461	Sharif Atkins	102911
17462	Alexis Rodney	65640
17463	Enzo Cilenti	17832
17464	Richard Katz	123048
17465	Ophelia Lovibond	62972
17466	Marama Corlett	95617
17467	Rob Zombie	6388
17468	John Brotherton	99778
17469	James Gunn	25155
17470	Raed Abbas	130665
17471	Nicole Alexandra Shipley	148820
17472	David Yarovesky	151969
17473	Emmett J. Scanlan	162741
17474	Deborah Rosan	164042
17475	Naomi Ryan	173596
17476	Melia Kreiling	175308
17477	Alison Lintott	226028
17478	Paul Warren	226137
17479	Clem So	226182
17480	Wyatt Oleff	227065
17481	Rosie Jones	228826
17482	Tyler Bates	63436
17483	Mikaela Hoover	267292
17484	Enoch Frost	272430
17485	Keeley Forsyth	279322
17486	Laura Ortiz	293614
17487	Marianna Dean	303686
17488	Graham Shiels	321666
17489	Matthew David McCarthy	315671
17490	Simon Hatt	356290
17491	Gordon Round	417257
17492	Miriam Lucia	434462
17493	Carice van Houten	28895
17494	Terence Stamp	496
17495	Eddie Izzard	5297
17496	Jamie Parker	53685
17497	Kenneth Cranham	2570
17498	Halina Reijn	70865
17499	Harvey Friedman	207046
17500	Matthias Schweighöfer	8997
17501	Waldemar Kobus	51041
17502	Florian Panzner	89373
17503	Ian McNeice	4961
17504	Danny Webb	81166
17505	Chris Larkin	11963
17506	Matthew Burton	350807
17507	Philipp von Schulthess	174925
17508	Wotan Wilke Möhring	18826
17509	Christian Oliver	33298
17510	Julian Morris	23353
17511	Justus Kammerer	85979
17512	Annika Becker	272973
17513	Katharine Mehrling	282865
17514	Andy Gätjen	178947
17515	Achim Buch	188967
17516	Anton Algrang	177981
17517	Matthias Freihof	8385
17518	Gerhard Haase-Hindenberg	211052
17519	Matthias Ziesing	172192
17520	Anna Holmes	344139
17521	Michael Fritz Schumacher	184522
17522	Max Urlacher	111502
17523	Karsten Antonio Mielke	187986
17524	Vincent Kastner	214126
17525	Tyrell van Boog	220883
17526	Carsten Voigt	485815
17527	Marie Becker	558308
17528	Mike Dunn	574750
17529	Niklas Bardeli	615323
17530	Joel Bryant	654654
17531	Travis Andrade	678059
17532	Wolfgang Grossmann	698620
17533	Teri Garr	77
17534	Sydney Pollack	108
17535	George Gaynes	6034
17536	Lynne Thigpen	20572
17537	Pamela Lincoln	274144
17538	Estelle Getty	545
17539	Phillip Borsos	13314
17540	Andy Warhol	3700
17541	Tom Mardirosian	37909
17542	John Kapelos	80683
17543	Marjorie Lovett	201603
17544	Ronald L. Schwary	253407
17545	Bernie Pollack	253938
17546	Murray Schisgal	89150
17547	Doris Belack	265698
17548	Jim Jansen	343256
17549	Lois De Banzie	383875
17550	Susan Merson	385191
17551	Annie Korzen	556516
17552	Rhona Mitra	12017
17553	Melissa McCarthy	33418
17554	Julio Cedillo	38860
17555	Alan Parker	3031
17556	Ken Edwards	96531
17557	Katherine Willis	121852
17558	Keith Poulson	200406
17559	Michael Crabtree	212735
17560	Starla Christian	274948
17561	Kirk Sisco	405851
17562	Robin Simmons	669765
17563	Pilar Ferreiro	688738
17564	Jiří Dréman	27540
17565	Alexander Třebovský	27258
17566	Karel Schleichert	27177
17567	Viktor Nejedlý st.	28005
17568	Robert Ford	27369
17569	Josef Kytka	27294
17570	Antonín Frič	27291
17571	Luigi Hofman	27167
17572	Josef Klapuch	28596
17573	Jindřich Edl	27223
17574	Jan Richter	27257
17575	František Říha	28528
17576	Eduard Šlégl	27221
17577	Josef Sládek	27293
17578	Antonín Volný	28997
17579	Marie Oliaková	28247
17580	Josef Prček	29895
17581	Andrea Eckert	9471
17582	Erni Mangold	21103
17583	Hans Weingartner	15797
17584	Peter Ily Huemer	9511
17585	Richard Linklater	3596
17586	Paul Poet	70627
17587	John Sloss	124628
17588	Hanno Pöschl	174751
17589	Tex Rubinowitz	237078
17590	Christian Ankowitsch	257950
17591	Wolfgang Staribacher	407462
17592	Branko Andric	474920
17593	Otto Reiter	475079
17594	Liese Lyon	480607
17595	Dominik Castell	489624
17596	Karl Bruckschwaiger	592623
17597	Naďa Hejná	12883
17598	František Velecký	1714
17599	Martin Mrázek	1710
17600	Pavla Polášková	41458
17601	Alena Pavlíková	41459
17602	Zdeněk Lipovčan	1663
17603	Vlastimil Harapes	1707
17604	Ladislav Považay	39907
17605	Václav Antoš	35919
17606	František Hlinovský	41461
17607	Majka-Čech	41462
17608	Josef Bradáč	41463
17609	Čestmír Čivrný	40011
17610	Antonín Hardt	26330
17611	Luděk Drábek	41464
17612	Zbyšek Šrůta	40019
17613	Gabriela Vránová	7366
17614	Marie Tomášová	1363
17615	Gérard Rinaldi	4897
17616	Jean Sarrus	4898
17617	Gérard Filippelli	4899
17618	Jean-Guy Fechner	4901
17619	Michel Serrault	7302
17620	Nicole Dubois	190947
17621	Gib Grossac	191026
17622	Pierre Gualdi	293313
17623	Jacques Van Dooren	196861
17624	Claude Boisson	190853
17625	Manu Pluton	193098
17626	Gordon Liu	17606
17627	Norman Chu	15096
17628	John Cheung	15095
17629	Billy Chan	6700
17630	Peter Lung Chan	6699
17631	Hou Hsiao	53538
17632	Yu Wong	16656
17633	Lo Lieh	104854
17634	Alan Chung-San Chui	177612
17635	Austin Wai	178673
17636	Nan Chiang	206778
17637	Kwok Choi Hon	206779
17638	Hoi Sang Lee	206780
17639	Lau Kar-Wing	53578
17640	San Tai	209635
17641	Yuet Sang Chin	213235
17642	Wilson Tong	224184
17643	Li Jen Ho	449783
17644	Mélanie Thierry	33247
17645	Bill Nunn	1824
17646	Niall O'Brien	488797
17647	Gabriele Lavia	128554
17648	Alberto Vazquez	386267
17649	Eamon Geoghegan	25146
17650	Heathcote Williams	6314
17651	Pierluigi Coppola	229555
17652	Femi Elufowoju Jr.	282906
17653	Anita Zagaria	319743
17654	Dmitrij Saranskov	475999
17655	Emanuele Gullotto	508826
17656	John Armstead	681226
17657	Alan Young	2266
17658	Rip Taylor	5983
17659	Terence McGovern	11398
17660	Anthony Wong	22969
17661	Phillip Kwok	35317
17662	Stephen Tung	6698
17663	John Woo	3128
17664	Pai Wei	34603
17665	Džun Kunimura	113282
17666	Philip Chan	163579
17667	Teresa Mo	172802
17668	Pui-chung Tong	177570
17669	Fat-yuen Lee	177595
17670	Hoi-San Kwan	196270
17671	Raymond Tsang	205281
17672	Kei-hei Leung	206465
17673	Shui-ting Ng	231790
17674	Jameson Wa-Fan Lam	431534
17675	Ying Lung	447203
17676	Kenny Wong	498487
17677	Bowie Lam	602084
17678	Arthur Hunnicutt	14636
17679	Michele Carey	45714
17680	Christopher George	64693
17681	Marina Ghane	291596
17682	Adam Roarke	72451
17683	Jim Davis	24321
17684	Robert 'Buzz' Henry	22870
17685	William Henry	127512
17686	Johnny Crawford	242702
17687	John Gabriel	251546
17688	Don Collier	290970
17689	Robert Rothwell	320528
17690	Riley Hill	333926
17691	Linda Dangcil	401354
17692	Rosa Turich	459581
17693	Dean Smith	473065
17694	Izabella Scorupco	9598
17695	Alexandr Domogarov	59019
17696	Krzysztof Kowalewski	15610
17697	Bogdan Stupka	21894
17698	Wojciech Malajkat	23329
17699	Marek Kondrat	12109
17700	Gustaw Holoubek	22488
17701	Krystyna Feldman	22629
17702	Andrzej Grabowski	20041
17703	Bartosz Obuchowicz	20212
17704	Robert Więckiewicz	50084
17705	Jacek Rozenek	60557
17706	Adam Ferency	80810
17707	Leszek Teleszyński	81879
17708	Jerzy Bończak	133659
17709	Wiktor Zborowski	134034
17710	Ewa Wiśniewska	134107
17711	Krzysztof Łukaszewicz	71233
17712	Anna Majcher	134709
17713	Marek Frąckowiak	136214
17714	Rafał Cieszyński	136376
17715	Stefan Szmidt	137132
17716	Jerzy Cnota	138227
17717	Krzysztof Kołbasiuk	138249
17718	Jerzy Karaszkiewicz	139257
17719	Mieczysław Janowski	139459
17720	Andrzej Żółkiewski	139889
17721	Ryszard Jabłoński	139900
17722	Czesław Lasota	142376
17723	Tomasz Grochoczyński	142382
17724	Krzysztof Gosztyła	143269
17725	Dariusz Gnatowski	144701
17726	Andrzej Haliński	238178
17727	Janusz Zerbst	242747
17728	Jerzy Dukay	246073
17729	Andrzej Szczytko	253555
17730	Piotr Komorowski	255400
17731	Michał Konarski	256212
17732	Paweł Kleszcz	316549
17733	Tomasz Konieczny	317675
17734	Dimitrij Mirgorodskij	334222
17735	Ruslana Pysanka	398456
17736	Krystyna Gierłowska	599040
17737	Przemysław Tejkowski	599790
17738	Władysława Gorpienko	614592
17739	Marek Marcinkowski	660180
17740	Adam Warchoł	662935
17741	Anna Teresa Nowak	671712
17742	Aleksander Pociej	674703
17743	Szymon Kobyliński	675540
17744	Włodzimierz Borysiak	693377
17745	Dana Smutná	7826
17746	Blanka Bohdanová	1103
17747	Eva Mrázová	37306
17748	Anna Melíšková	27595
17749	Zuzana Fišárková	1150
17750	Alexandra Myšková	32331
17751	Josef Vorel	37307
17752	Marie Marešová	23521
17753	Ela Poznerová	23537
17754	Jan Pelikán	36757
17755	Miroslav Zounar	4786
17756	Jana Břežková	1110
17757	Anna Wetlinská	29186
17758	Jan Cmíral ml.	46286
17759	Ladislav Dušek	48311
17760	Milan Tichý-Kohák	43664
17761	Jan Kačmáček	48312
17762	Pavel Lehotský	47694
17763	Antonín Hausknecht	46626
17764	Josef Hrubý	44649
17765	Vladimír Ježek	48313
17766	Vladimír Kaisr	43987
17767	Zdeněk Krumpl	27103
17768	Pavel Myslík	43928
17769	Otakar Němec	46625
17770	Jaroslav Šanda	38401
17771	Stanislav Tůma	38347
17772	Jiří Vach	42151
17773	Pavel Želízko	48316
17774	Miroslav Nohýnek	29233
17775	Tecla Scarano	78748
17776	Armando Trovajoli	88371
17777	Tina Pica	71396
17778	Carlo Croccolo	304582
17779	Silvia Monelli	592401
17780	Ai Kobajaši	18515
17781	Aoi Tada	707138
17782	Hóko Kuwašima	25432
17783	Iššin Čiba	13170
17784	Džúróta Kosugi	18381
17785	Rendži Išibaši	22875
17786	Hiroši Naka	311915
17787	Sajaka Óhara	313112
17788	Hidekacu Šibata	315812
17789	Nobuo Tobita	322712
17790	Takaši Nagasako	323578
17791	Kacujuki Koniši	325365
17792	Kazusa Murai	325877
17793	Jósuke Akimoto	327712
17794	Kazuja Ičidžó	222794
17795	Takehiro Kojama	337752
17796	Džin Hirao	338536
17797	Miki Nagasawa	352373
17798	Kinrjú Arimoto	352522
17799	Kudžira	355145
17800	Cutomu Isobe	356895
17801	Tošihiko Nakadžima	436356
17802	Helen Shaver	9604
17803	Pat Hingle	6611
17804	Burke Byrnes	15091
17805	Judith Barsi	52579
17806	Gabriel Damon	82655
17807	Candace Hutson	330503
17808	Sven Erik Vikström	470764
17809	Čieko Naniwa	52944
17810	Asao Koike	323541
17811	Fred Ward	105
17812	Pamela Reed	1927
17813	Scott Paulin	14656
17814	Charles Frank	96252
17815	Levon Helm	81647
17816	David Gulpilil	4573
17817	Royal Dano	61397
17818	John P. Ryan	68791
17819	Jurij Alexejevič Gagarin	97652
17820	Jim Haynie	104921
17821	John Dehner	111226
17822	Edward Anhalt	89621
17823	Darryl Henriques	250772
17824	Mary Apick	481271
17825	Michael Pritchard	542486
17826	Alan Bendich	704273
17827	Dragan Bjelogrlič	14587
17828	Nikola Kojo	35383
17829	Dragan 'Pele' Petrovič	17420
17830	Velimir 'Bata' Živojinovič	18018
17831	Mira Banjac	20372
17832	Uroš Djurič	34461
17833	Ivan Živković	38269
17834	Radoslav Milenkovič	68513
17835	Milorad Mandič	81776
17836	Nebojša Ilič	83162
17837	Momčilo Mrdaković	95473
17838	Renata Ulmanski	97893
17839	Melita Bihali	182204
17840	Bojan Žirovič	258023
17841	Nikola Pejakovič	374082
17842	Natalija 'Nataša' Lučanin	448041
17843	Dragan Maksimovič	448028
17844	Branko Vidakovič	455948
17845	Olivera Viktorovič	455959
17846	Nadja Sekulič	460804
17847	Darko Tomovič	447509
17848	Jelena Mila	500252
17849	Grégoire Colin	9679
17850	Phyllida Law	15946
17851	Meto Jovanovski	16471
17852	Daniel Newman	57409
17853	Vladimir Jacev	64914
17854	Josif Josifovski	492425
17855	Boris Delcevski	492429
17856	Dejan Velkov	492430
17857	Kiril Ristoski	492432
17858	Mladen Krstevski	492435
17859	Dzemail Maksut	492438
17860	Mile Jovanovski	492443
17861	Milica Stojanova	492444
17862	Petar Mircevski	492447
17863	Ljupco Bresliski	492451
17864	Igor Madzirov	492453
17865	Kiril Psaltirov	492454
17866	Ilko Stefanovski	492455
17867	Blagoja Spirkovski-Dzumerko	492456
17868	Sando Monev	492457
17869	Suzana Kirandziska	492458
17870	Katherina Kocevska	415643
17871	Vladimir Endrovski	492459
17872	Abdurrahman Shala	492460
17873	Atila Klince	492462
17874	Arben Kastrati	492463
17875	Gabrielle Hamilton	492464
17876	Simeon Moni Damevski	492469
17877	Ljupcho Todorovski	492472
17878	Peter Needham	492473
17879	Melissa Wilkes	492475
17880	Joe Gould	492476
17881	Rod Woodruff	492477
17882	Aleksandar Mikic	492478
17883	Cvetko Mareski	492479
17884	Goran	492480
17885	Silvija Stojanovska	492481
17886	Nino Levi	492482
17887	Lence Delova	492483
17888	Jordan Vitanov	492485
17889	Jay Villiers	492486
\.


--
-- Data for Name: top_favourites_film; Type: TABLE DATA; Schema: public; Owner: csfd
--

COPY public.top_favourites_film (id, name, external_id) FROM stdin;
1	Vykoupení z věznice Shawshank	2294
2	Forrest Gump	10135
3	Zelená míle	2292
4	Přelet nad kukaččím hnízdem	2982
5	Sedm	2671
6	Schindlerův seznam	8653
7	Spider-Man: Bez domova	792852
8	Kmotr	1644
9	Dvanáct rozhněvaných mužů	6178
10	Nedotknutelní	306731
11	Pelíšky	4570
12	Terminátor 2: Den zúčtování	1248
13	Pulp Fiction: Historky z podsvětí	8852
14	Kmotr II	1645
15	Pán prstenů: Společenstvo Prstenu	4711
16	Mlčení jehňátek	2356
17	Tenkrát na Západě	5911
18	Pán prstenů: Návrat krále	4712
19	Temný rytíř	223734
20	The Matrix	9499
21	Gran Torino	240479
22	Hodný, zlý a ošklivý	5910
23	Dobyvatelé ztracené archy	8650
24	Rain Man	5954
25	Sedm statečných	18780
26	Vyšší princip	5342
27	Vetřelec	8265
28	Rivalové	301401
29	Le Mans '66	332773
30	Indiana Jones a Poslední křížová výprava	8641
31	Vetřelci	1245
32	Podraz	15046
33	Smrtonosná past	6642
34	Zachraňte vojína Ryana	8652
35	Leon	773
36	S čerty nejsou žerty	821
37	Amadeus	2971
38	Obecná škola	8806
39	„Marečku, podejte mi pero!“	5992
40	Star Wars: Epizoda V - Impérium vrací úder	5238
41	Cesta do hlubin študákovy duše	3092
42	L. A. - Přísně tajné	4123
43	Butch Cassidy a Sundance Kid	15031
44	Město bohů	88625
45	Počátek	254156
46	Návrat do budoucnosti	10128
47	Čistá duše	4543
48	Spalovač mrtvol	4244
49	Pán prstenů: Dvě věže	4713
50	Tanec s vlky	1747
51	Gladiátor	8271
52	Vesničko má středisková	6672
53	Pianista	7355
54	Casino	8242
55	Šestý smysl	8364
56	Kult hákového kříže	5069
57	Nelítostný souboj	6444
58	Prokletý ostrov	235492
59	Klub rváčů	2667
60	Nespoutaný Django	294824
61	Statečné srdce	3297
62	Million Dollar Baby	182363
63	Dobrý Will Hunting	9277
64	Život je krásný	642
65	Dokonalý trik	223160
66	Smrtonosná zbraň	2438
67	Osvícení	5407
68	Bohemian Rhapsody	300902
69	Psycho	4385
70	Star Wars: Epizoda IV - Nová naděje	6169
71	Četa	8759
72	12 úkolů pro Asterixe	102874
73	Prázdniny v Římě	9926
74	Někdo to rád horké	9793
75	Hon	311967
76	Motýlek	20008
77	Na samotě u lesa	6663
78	Requiem za sen	14317
79	Obvyklí podezřelí	8411
80	Kladivo na čarodějnice	9455
81	Tenkrát v Americe	5914
82	Cesta do pravěku	10103
83	Warrior	234462
84	Mafiáni	8246
85	U pokladny stál...	5546
86	Klaus	777537
87	Shrek	14999
88	Americká krása	6654
89	Star Wars: Epizoda III - Pomsta Sithů	6172
90	Podfu(c)k	7700
91	Bourneovo ultimátum	224141
92	25 let neviny	806817
93	Star Wars: Epizoda VI - Návrat Jediho	6474
94	Coco	66830
95	Byl jednou jeden král...	10089
96	Poslední skaut	8283
97	Frajer Luke	7827
98	Terminátor	1249
99	Uprchlík	2302
100	Čas probuzení	6490
101	Trainspotting	901
102	Princezna Mononoke	22205
103	Světáci	23443
104	Medvěd	168
105	Chyť mě, když to dokážeš	8630
106	Jára Cimrman ležící, spící	8541
107	Škola základ života	3157
108	12 opic	3311
109	Osudový dotek	45608
110	Americký gangster	224384
111	Sbal prachy a vypadni	7698
112	Zjizvená tvář	2335
113	Sedm samurajů	5435
114	Černý jestřáb sestřelen	8266
115	Truman Show	9568
116	Zelená kniha	600912
117	Sněhurka a sedm trpaslíků	83776
118	Obchod na korze	4999
119	Hanebný pancharti	117077
120	Predátor	6648
121	Rocky	16103
122	Memento	6995
123	Smrtonosná zbraň 2	2439
124	Cesta do fantazie	42136
125	Batman začíná	136224
126	Vrchní, prchni!	8545
127	Lví král	6741
128	Čarodějův učeň	10102
129	Ponorka	7222
130	Temný rytíř povstal	252669
131	Hotel Rwanda	182289
132	Nejistá sezóna	8543
133	Vynález zkázy	10125
134	Pro pár dolarů navíc	5915
135	Sám doma	1628
136	Černobílý svět	277770
137	Jak vycvičit draka	234768
138	Na hraně zítřka	307556
139	Smrt krásných srnců	4978
140	Život Briana	23587
141	Olověná vesta	5401
142	Most přes řeku Kwai	5696
143	Kolja	8805
144	Císařův pekař - Pekařův císař	3094
145	Limonádový Joe aneb Koňská opera	5991
146	Hra	2668
147	Pink Floyd: The Wall	7123
148	Sloní muž	6251
149	Carlitova cesta	2315
150	Kid	1482
151	Tři oříšky pro Popelku	9430
152	Dobrý voják Švejk	8668
153	Gauneři	8853
154	Apokalypsa	1634
155	Všichni dobří rodáci	4786
156	Zpívání v dešti	2428
157	Hledá se Nemo	43924
158	Skrytá identita	221020
159	Návrat do budoucnosti II	10129
160	Ucho	4983
161	Jurský park	8644
162	Králova řeč	269587
163	Slavnosti sněženek	6670
164	Zmizení	257071
165	Svět podle Prota	10995
166	Společnost mrtvých básníků	9558
167	Okno do dvora	4386
168	Život je krásný	1279
169	Láska nebeská	43677
170	Obchodník se smrtí	189557
171	Skála	546
172	Četník ze Saint Tropez	32107
173	Česká soda	4562
174	Přednosta stanice	8815
175	Gentlemani	675173
176	Velký útěk	18777
177	Diktátor	1472
178	Ratatouille	150988
179	Agent bez minulosti	18113
180	Bournův mýtus	136076
181	Avengers: Infinity War	393331
182	Poslušně hlásím	8680
183	Stvoření světa	4424
184	Hačikó - příběh psa	243655
185	Těžká váha	116574
186	Ducháček to zařídí	5475
187	Nebe a dudy	8505
188	Harry Potter a vězeň z Azkabanu	1625
189	96 hodin	231978
190	Toy Story: Příběh hraček	18184
191	Útěk do divočiny	229841
192	Ip Man	246291
193	Absolvent	6977
194	Nebeští jezdci	7395
195	Vzpomínky na lásku	197196
196	Moderní doba	1488
197	Věc	1329
198	Zvíře	29067
199	Velký flám	32115
200	My Fair Lady	1837
201	Zlo mezi námi	142019
202	Příběh z Bronxu	11970
203	Ve jménu otce	8344
204	Sunset Boulevard	9796
205	Tichá bolest	23827
206	Stezky slávy	5405
207	Bio Ráj	8995
208	Frigo na mašině	5104
209	Nekonečný příběh	7244
210	Jáchyme, hoď ho do stroje!	5990
211	Rambo: První krev	16097
212	Kmotr III	1646
213	Poklad na Stříbrném jezeře	33360
214	Neúplatní	2339
215	Muž z Acapulca	32430
216	Zámek v oblacích	91936
217	Kramerová versus Kramer	646
218	JFK	8755
219	Bídníci	36567
220	Kimi no na wa.	419102
221	Lepší už to nebude	944
222	Joker	628813
223	Philadelphia	2355
224	Páni kluci	7275
225	Whiplash	358992
226	Spider-Man: Paralelní světy	54763
227	Ben Hur	9876
228	Atentát	8301
229	Jean od Floretty	12058
230	Vlkochodci	812957
231	Dangal	68305
232	Sowon	352865
233	Příšerky s.r.o.	11124
234	Adéla ještě nevečeřela	5981
235	Návrat do budoucnosti III	10130
236	Musíme si pomáhat	4567
237	Mach a Šebestová k tabuli!	108769
238	Happy end	5999
239	Dva muži ve městě	12036
240	Payback: Straight Up	230120
241	Norimberský proces	5307
242	Svědek obžaloby	9797
243	Titanic	1250
244	VALL-I	231646
245	Volný pád	8221
246	Kulový blesk	8542
247	Poslední Mohykán	6449
248	Co žere Gilberta Grapea	4099
249	Fimfárum Jana Wericha	49569
250	Asterix v Británii	102865
251	O myších a lidech	14559
252	Lady a Tramp	33891
253	Malý velký muž	7197
254	Na sever Severozápadní linkou	4379
255	Metropolis	5612
256	Pahorek	6200
257	Světla velkoměsta	1461
258	Ten den přijde	433329
259	X-Men: První třída	251188
260	Crash	134171
261	Skleněné peklo	23
262	Skřivánci na niti	6669
263	Romeo a Julie	34649
264	Velká země	9878
265	Manon od pramene	32279
266	Dnes naposled	3097
267	Fantomas	32099
268	Hoří, má panenko	2975
269	Ecce homo Homolka	7101
270	Let číslo 93	221284
271	Vinnetou	33362
272	Kristian	3116
273	Životy těch druhých	222173
274	Profesionál	32440
275	Laputa: Nebeský zámek	28495
276	Hrob světlušek	129496
277	Volyň	434921
278	Shake Hands with the Devil	198327
279	Zlaté opojení	1471
280	Vrah mezi námi	5610
281	Krtek	350930
282	O patro výš	25268
283	Faust	6851
284	Nejlepší léta našeho života	9877
285	Písečná žena	124512
286	Interstellar	227786
287	Amélie z Montmartru	29221
288	Zmizelá	346856
289	Poslední samuraj	43582
290	Žhavé výstřely 2	5
291	Ďáblův advokát	4061
292	Toy Story 2: Příběh hraček	18185
293	Na Hromnice o den více	7570
294	Planeta opic	19977
295	Mary a Max	253387
296	Jestli se rozzlobíme, budeme zlí	26204
297	The Doors	8752
298	Baron Prášil	10099
299	Podivné dědictví	33433
300	Den Šakala	10147
301	Naušika z Větrného údolí	42132
302	Gándhí	350
303	Kočka na rozpálené plechové střeše	15032
304	Hořící Mississippi	7121
305	Byt	9772
306	Kdysi byli bojovníky	33202
307	Osudy dobrého vojáka Švejka	43494
308	Božské děti	119599
309	Andrej Rublev	32345
310	Rudovous	5418
311	Phar Lap	34599
312	Za zvuků hudby	9833
313	Harakiri	141680
314	Světla ramp	1485
315	Dobrodružství Robinsona Crusoe, námořníka z Yorku	158502
316	Utrpení Panny orleánské	100287
317	Šumař na střeše	4801
318	Nebe a peklo	5440
319	Selhání vyloučeno	6193
320	Ubožáci	32578
321	Dárek do cely č.7	761221
322	Věčný svit neposkvrněné mysli	70254
323	Velká ryba	42923
324	Čelisti	8643
325	21 gramů	43073
326	Bláznivá střela	10197
327	Výměna	230480
328	Nepřítel státu	8280
329	Pravidla moštárny	4086
330	Billy Elliot	2231
331	Zuřící býk	8258
332	Klepání na nebeskou bránu	13186
333	Eva tropí hlouposti	3103
334	Asterix a překvapení pro Cézara	37702
335	Persepolis	230517
336	Železný obr	12110
337	Údolí včel	9353
338	Jaro, léto, podzim, zima... a jaro	136117
339	Čekej do tmy	19222
340	Chicagský tribunál	237309
341	Barry Lyndon	5394
342	Píseň moře	384100
343	Lawrence z Arábie	5702
344	Knoflíková válka	38436
345	Kabinet doktora Caligariho	9756
346	Pohádka o Honzíkovi a Mařence	10120
347	Medená veža	23839
348	Zabíjení	5403
349	Fanny a Alexandr	692
350	Děrsu Uzala	5420
351	Pojistka smrti	9776
352	Zloději kol	33701
353	Paříž, Texas	15945
354	Krátký film o lásce	43218
355	Nikdo mne nemá rád	9092
356	Poklad na Sierra Madre	4613
357	Ve službách papeže	19952
358	Východ slunce	6865
359	Vzpoura	25803
360	Poslední štace	6858
361	Hamilton	847379
362	Pátá pečeť	110162
363	Střihoruký Edward	1073
364	Telefonní budka	8227
365	Postřižiny	6665
366	Apollo 13	4541
367	Ukradené Vánoce	29484
368	Vlasy	2974
369	„Čtyři vraždy stačí, drahoušku“	5986
370	Spáči	5955
371	Vzpomínky na Afriku	7376
372	Casablanca	1912
373	Uvnitř tančím	188310
374	Mise	4863
375	Můj soused Totoro	42137
376	V zajetí rychlosti	205774
377	Popelka	33887
378	Jak ukrást Venuši	9910
379	Ukradená vzducholoď	10123
380	Harold a Maude	16019
381	Láska a smrt	42
382	Unaveni sluncem	33625
383	Hádej, kdo přijde na večeři	5303
384	Tři barvy: Červená	31652
385	Moje levá noha	8345
386	Yojimbo	5446
387	Pohádky tisíce a jedné noci	10121
388	Průvodce	253109
389	Na západní frontě klid	77143
390	Sanjuro	5442
391	Scény z manželského života	719
392	Cirkus	1460
393	Plynové lampy	1821
394	Amatér	31657
395	Pan Smith přichází	1289
396	The Stoning of Soraya M.	257166
397	Člověk z mramoru	35203
398	Doba ledová	19838
399	Donnie Darko	16367
400	Zootropolis: Město zvířat	407365
401	Rozpuštěný a vypuštěný	8544
402	Monty Python a Svatý Grál	3308
403	Odplata	12855
404	Hotel Modrá hvězda	3109
405	Kráska a zvíře	18252
406	Vertigo	4406
407	Dr. Divnoláska aneb Jak jsem se naučil nedělat si starosti a mít rád bombu	5397
408	Sedmá pečeť	723
409	Noc na Zemi	4747
410	Upír Nosferatu	6860
411	Prolomit vlny	9385
412	Krvavá neděle	82635
413	Kráva	4953
414	Batman: Návrat Temného rytíře, část 2.	319515
415	Stará puška	32053
416	Welkeom tu Dongmakgol	220026
417	Kimssi pyoryugi	252875
418	Dogani	312928
419	Panu učiteli s láskou	20766
420	Na Zlatém jezeře	24225
421	Maurice Richard	218888
422	Někdo tam nahoře mě má rád	9831
423	Présumé coupable	306046
424	Prožít si své peklo	41129
425	Byl jsem lynčován	5600
426	Ruróni Kenšin: Meidži kenkaku rómantan – Cuioku hen	133142
427	Poznamenaní	10171
428	Satanské tango	143383
429	Mrtvá nevěsta Tima Burtona	194882
430	Kapitán Phillips	307856
431	Serpico	6220
432	Městečko South Park: Říše fantazie	206389
433	Rašómon	5434
434	Nejdelší den	11541
435	Corpus Christi	718823
436	Vlčí děti	308329
437	Díra	90082
438	Obchod za rohem	6144
439	Na vlásku	241059
440	Tři veteráni	6002
441	Tajemství hradu v Karpatech	6000
442	Nesmiřitelní	2515
443	Legenda o Mulan	14997
444	3-iron	185313
445	Pouta války	182330
446	Prohnilí	32030
447	Byl jsem při tom	21144
448	Kdo se bojí Virginie Woolfové?	6984
449	Smrt si říká Engelchen	5002
450	Silnice	2615
451	Kdo seje vítr	5304
452	Laurel a Hardy	99455
453	Kdo to tam zpívá	110249
454	Babka	160543
455	Barva ráje	121688
456	Vojna a mír III: Rok 1812	98363
457	Aurore	222035
458	Podivuhodný případ Benjamina Buttona	221714
459	Pátý element	771
460	Hvězdný prach	224137
461	Krvavý diamant	223266
462	Wind River	434887
463	Jméno růže	166
464	Blbec k večeři	32228
465	Ray	116531
466	Sedím na konári a je mi dobre	4730
467	Rodinná oslava	35432
468	Contratiempo	457067
469	Po stopách krve	8197
470	Lesní jahody	726
471	Otec	811894
472	Útěk v řetězech	5301
473	Džúbei a umění nindžucu	35304
474	Staré pověsti české	28460
475	Zavěste červené lucerny	38107
476	Kinoautomat: Člověk a jeho dům	118873
477	Eso v rukávu	9774
478	Život je úžasný	350816
479	Zapomenutí	1106
480	Huo zhe	38110
481	Vojna a mír	199245
482	Samotáři	7064
483	Žhavé výstřely	4
484	Mechanický pomeranč	5395
485	Fargo	1606
486	Annie Hallová	26
487	Čínská čtvrť	7341
488	Nebožtíci přejí lásce	9773
489	Adelheid	9332
490	Vražda na objednávku	4356
491	Mzda strachu	38791
492	Berserk: Ógon džidai hen II – Doldrey kórjaku	318810
493	Boxer a smrť	28977
494	Koe no katači	442317
495	Christmas in South Park	86039
496	Divotvůrkyně	7199
497	Sbohem, pane profesore!	26097
498	Úžasňákovi	127213
499	Star Trek	222972
500	Parazit	505790
501	Zkažená mládež	232359
502	Goldfinger	11538
503	Petrolejové lampy	4240
504	Jako zabít ptáčka	12380
505	Doktor Živago	5698
506	Metro Manila	311124
507	Americká noc	9090
508	Mother and Child	253277
509	Ghost in the Shell 2.0	246900
510	Žít	5427
511	Rvačka mezi muži	72670
512	Quo vadis, Aida?	904309
513	Piráti z Karibiku: Prokletí Černé perly	43513
514	Drž hubu!	117181
515	Tři billboardy kousek za Ebbingem	439559
516	Dokonalý svět	2509
517	Vůně ženy	935
518	Ghost in the Shell	34300
519	Bílá nemoc	4039
520	Brubaker	7826
521	Control	229968
522	Rytíři spravedlnosti	811926
523	Jesus Christ Superstar	4806
524	Poslední souboj	749685
525	Jeremiah Johnson	7375
526	Smrtící bumerang	12375
527	Tři zločinci ve skryté pevnosti	5429
528	Mastičkář	136865
529	Vojna a mír IV: Pierre Bezuchov	89959
530	Bílé peklo	104415
531	La traviata	34650
532	Chlapec v pruhovaném pyžamu	234754
533	Walk the Line	116755
534	Hledání Země Nezemě	116457
535	Amores perros - Láska je kurva	35429
536	Černá kočka, bílý kocour	5451
537	Pro hrst dolarů	5916
538	Růžový panter znovu zasahuje	2551
539	Vše o mé matce	85
540	Dotek Medúzy	13566
541	Doručovací služba čarodějky Kiki	28675
542	Jih proti Severu	2794
543	S láskou Vincent	428847
544	Návrat	155545
545	Raz, dva, tři	9789
546	Mefisto	36422
547	Vozka smrti	107584
548	Kókaku kidótai: Stand Alone Complex - Solid State Society	225001
549	Maraton	198191
550	Keurosing	225810
551	The Chemical Brothers: Don’t Think	312201
552	Král Lear	143550
553	Smrtonosná past 2	4158
554	Logan: Wolverine	370872
555	Mrtvý muž	4742
556	Thelma a Louise	8275
557	Opustit Las Vegas	2647
558	Černý Petr	2972
559	Kočár do Vídně	4952
560	Arrietty ze světa půjčovníčků	280624
561	Underground	5459
562	Něco z Alenky	8790
563	Kaktusový květ	17342
564	Kabaret	2989
565	Ďáblova past	9333
566	Pohraniční pásmo	157547
567	Pramen panny	702
568	Soumrak	118348
569	Hilary a Jackie	11948
570	Příběh dušičkový	197499
571	Být či nebýt	6152
572	Avengers: Endgame	393332
573	Moulin Rouge!	6175
574	Návrat do Cold Mountain	32940
575	Interstate 60	12663
576	Misery nechce zemřít	7623
577	Stalker	32353
578	Přichází Satan!	2444
579	Hotel Mumbai	562202
580	Hana a její sestry	38
581	Hombre	7714
582	Soumrak dne	4676
583	Na východ od ráje	5076
584	Persona	716
585	Zahraj to znovu, Same	17420
586	Evropa, Evropa	42028
587	Návrat domů	16506
588	Chladnokrevně	10872
589	Zvláštní den	25583
590	Země zaslíbená	35228
591	Pelle Dobyvatel	21658
592	Big Lebowski	1604
593	Ti druzí	17445
594	Hacksaw Ridge: Zrození hrdiny	411301
595	Magnolia	159
596	Magická hlubina	772
597	Šaráda	2407
598	Cyrano z Bergeracu	12032
599	Krátký film o zabíjení	43219
600	Podzimní sonáta	701
601	Jdi, žij a někým se staň	170859
602	Králův dvojník	325249
603	Pan Verdoux	1489
604	Sbohem, má konkubíno	69673
605	Pokání	224935
606	Duna	236957
607	(Ne)obyčejný kluk	466388
608	Půlnoční kovboj	8084
609	Poslední pokušení Krista	8251
610	Cena za něžnost	947
611	Volání divočiny	70419
612	Stalo se jedné noci	1278
613	Slídil	6400
614	Stalag 17	9795
615	K smrti odsouzený uprchl	35300
616	Werckmeisterovy harmonie	41568
617	Špalíček	33869
618	Šíleně smutná princezna	10096
619	Základní instinkt	9288
620	Válka Roseových	2373
621	Gattaca	11993
622	Nejvyšší nabídka	322601
623	Lásky jedné plavovlásky	2980
624	Kluci nepláčou	29419
625	Adamova jablka	221085
626	Vampire Hunter D	35066
627	Země nikoho	37535
628	Krakatit	9458
629	Nebe nad Berlínem	32913
630	Jdi a dívej se	99087
631	Amarcord	2597
632	Mimo zákon	4743
633	Ghost in the Shell 2: Innocence	91969
634	V žáru noci	4805
635	Život v oblouznění	11121
636	Hrabě Monte Christo	36671
637	Dům k pověšení	5452
638	Bohémský život	5049
639	Svědomí	5337
640	Pokání	68837
641	Jim Jefferies Alcoholocaust	318749
642	Císařův slavík	6332
643	Bad Black	458419
644	Bill Burr: I'm Sorry You Feel That Way	397663
645	Vlk z Wall Street	287147
646	Jak utopit Dr. Mráčka aneb Konec vodníků v Čechách	9412
647	Sbohem, baby	226199
648	Muži, kteří nenávidí ženy	247369
649	Maverick	2443
650	Vinnetou - Poslední výstřel	33364
651	Lovec jelenů	1595
652	Tři dny Kondora	7383
653	Piano	13942
654	Star Trek VIII: První kontakt	19251
655	Elitní jednotka 2: Vnitřní nepřítel	276150
656	Na kometě	10113
657	Tisícročná včela	4735
658	Mistrův syn	10064
659	Brendan a tajemství Kellsu	254459
660	Stíny horkého léta	9351
661	Chi bi xia: Jue zhan tian xia	252109
662	Vše o Evě	6384
663	Papírový měsíc	844
664	Hosté večeře Páně	712
665	Sen noci svatojánské	30934
666	Zbojník Jurko	189621
667	Červené střevíčky	7445
668	Chlapci z Pavelské ulice	172517
669	Harry Potter a Relikvie smrti - část 2	239950
670	Saw: Hra o přežití	173957
671	E.T. - Mimozemšťan	8635
672	Ghost Dog - Cesta samuraje	4744
673	Naprostí cizinci	425502
674	Volání o pomoc	224695
675	Příběh Alvina Straighta	6258
676	Roztomilý člověk	3154
677	Křižník Potěmkin	32365
678	Porco Rosso	42133
679	Koně se také střílejí	7381
680	Příští rok ve stejnou dobu	23007
681	Záře	4327
682	Pod vlivem lásky	256074
683	Neviditelný muž	9733
684	Pěst legendy	25094
685	Co se vlastně stalo s Baby Jane?	27540
686	Glory	448369
687	Tisíc dnů s Annou	21953
688	Ima, ai ni jukimasu	206586
689	Bouřlivá dvacátá léta	23360
690	Fialkový parfém	107989
691	Indiana Jones a Chrám zkázy	8642
692	Zápisník jedné lásky	116337
693	Fantomas se zlobí	32101
694	Ostře sledované vlaky	6664
695	Je třeba zabít Sekala	6681
696	Elitní jednotka	234959
697	Dogville	9390
698	Vyvolávač deště	1656
699	Občan Kane	9611
700	Poslední mohykán	8509
701	Yeopgijeogin geunyeo	169677
702	Rozchod Nadera a Simin	292622
703	V písku - Příslib svobody	45771
704	Provaz	4390
705	Vražedná pole	4861
706	Dannyho parťáci	8564
707	Ospalá díra	1080
708	Krotitelé duchů	10360
709	Kokain	14321
710	Smrtonosná zbraň 3	2440
711	Souboj Titánů	17962
712	Sully: Zázrak na řece Hudson	53975
713	Wallace & Gromit: Prokletí králíkodlaka	29466
714	Monty Pythonův smysl života	3309
715	Asterix a Kleopatra	102866
716	Ye Wen 2	258006
717	Francouzská spojka	3191
718	Příliš vzdálený most	346
719	Perný den	5924
720	O dívce, která proskočila časem	230842
721	...a spravedlnost pro všechny	4792
722	A teď něco úplně jiného	3300
723	Šťastný Luke - Daisy Town	102880
724	Oběť	32350
725	Hanba	724
726	Maminčin zámek	38828
727	Quackbusters kačera Daffyho	151349
728	The Avengers	241997
729	Marťan	384557
730	Rozum a cit	5731
731	Pošetilost mocných	32102
732	Bílá paní	23435
733	Manhattan	43
734	Půlnoční expres	7120
735	Zločiny a poklesky	32
736	Hamlet	909
737	Rosencrantz a Guildenstern jsou mrtvi	12271
738	Země	33859
739	Starý dům uprostřed Madridu	22014
740	Zrada a pomsta	136427
741	Strom na dřeváky	129224
742	Černí baroni	8462
743	Road to Perdition	6656
744	Na nože	651342
745	Bláznivá střela 2 a 1/2: Vůně strachu	10196
746	Křidýlko nebo stehýnko	32060
747	Ed Wood	1072
748	Traffic - Nadvláda gangů	8569
749	Aladin	18248
750	Na pokraji slávy	17622
751	Chaplin	347
752	Bambi	70340
753	Smoke	13948
754	Bosé nohy v parku	20944
755	Dumbo	34122
756	Slavíci v kleci	134737
757	Zkrocení zlé ženy	23460
758	Svatý rok	36529
759	Africká Královna	4582
760	Horalka	28254
761	Interstella 5555: The 5tory of the 5ecret 5tar 5ystem	156403
762	Berserk: Ógon džidai hen III – Kórin	324116
763	Waterloo	16213
764	Kafarnaum	617446
765	Píseň za chudého chlapce	74087
766	Rocco a jeho bratři	9324
767	Bílý žár	23531
768	Vlk samotář a mládě 3: Proti vichru smrti	141108
769	Srdce je osamělý lovec	96038
770	Avatar	228329
771	Shrek 2	15000
772	Milionář z chatrče	234131
773	Rocky IV	8662
774	Toy Story 3: Příběh hraček	229387
775	Rosemary má děťátko	7359
776	Braindead - Živí mrtví	4708
777	Muž, který nebyl	1609
778	Veřejný nepřítel č. 1: Epilog	230097
779	Kam orli nelétají	12398
780	Kundun	8250
781	Ronja, dcera loupežníka	37754
782	Mňága - Happy End	10081
783	Cizinci ve vlaku	4399
784	Smuteční slavnost	8468
785	Zjizvená tvář	4205
786	Keulraesik	177992
787	Tatínkova sláva	71440
788	Skryté ostří	202456
789	Suzumija Haruhi no šóšicu	270926
790	Vlk samotář a mládě 2: Řeka smrti	148650
791	Casino Royale	208033
792	Auta	32954
793	Dařbuján a Pandrhola	3095
794	Krycí jméno Donnie Brasco	14513
795	Karamazovi	231191
796	Legenda o slavném návratu	7599
797	Legenda o opilém Mistrovi	11394
798	Der Baader Meinhof Komplex	246076
799	Skafandr a motýl	197198
800	Tři barvy: Modrá	31651
801	Po svatbě	224362
802	Jeřábi táhnou	104630
803	Onibaba	121232
804	The Incredible Shrinking Man	326
805	Příběh z Tokia	124940
806	Velký zlý lišák	517239
807	Samurai 3	92250
808	Já, robot	91975
809	Minority Report	8647
810	X-Men 2	40326
811	X-Men: Budoucí minulost	317342
812	Nepřítel před branami	164
813	Kód Enigmy	283747
814	„Pane, vy jste vdova!“	9423
815	Náš vůdce	239674
816	Propast	1244
817	Taxikář	8260
818	Modrý samet	6247
819	The Animatrix	70635
820	Kam se poděla sedmá rota?	37842
821	Všichni moji blízcí	22975
822	Všichni prezidentovi muži	7083
823	Killer	9849
824	Most	116090
825	Zázrak v New Yorku	28477
826	Kes	36166
827	Kačer Daffy: Fantastický ostrov	97390
828	Dědička	9904
829	Zakázané hry	124627
830	Hamlet	7030
831	Unavená smrt	5615
832	Kimi no suizó o tabetai	646778
833	Ramayana: Legenda o princi Ramovi	178092
834	Lidský úděl 5.: Přeskočit smrt	124881
835	Zrození Planety opic	281606
836	Divoké historky	373181
837	Je to i můj život	253027
838	Spotlight	388128
839	Obávaný bojovník	216113
840	Méďa Béďa	69119
841	Purpurová barva	8632
842	Milenci ze severního pólu	33855
843	Čch' pi	225675
844	Berserk: Ógon džidai hen I – Haó no tamago	299248
845	Kagemuša	5428
846	Vidíš měsíc, Danieli	708724
847	Balada o bratrech Daltonových	102868
848	Umberto D.	42985
849	Balada o Narajamě	113086
850	Vojna a mír II: Nataša Rostovová	77637
851	Kókaku kidótai: S.A.C. 2nd GIG - Individual Eleven	271637
852	Frigo, oběť krevní msty	5122
853	Dny vína a růží	2536
854	District 9	257869
855	S tebou mě baví svět	7366
856	Tahle země není pro starý	226762
857	Pomáda	16442
858	Klub poslední naděje	231188
859	Štěstí na dosah	221903
860	Old Boy	168893
861	Lost Highway	6255
862	Americký zločin	227630
863	Spartakus	5408
864	Uprchlíci	12043
865	Valentin Dobrotivý	3169
866	Jmenuji se Khan	248568
867	Kukačka	37945
868	Tři mušketýři: Královniny přívěsky	37696
869	Třetí muž	11627
870	Divoká planeta	88180
871	Na titulní straně	9782
872	Viridiana	1114
873	Anděl zkázy	1116
874	Bitva o Alžír	124195
875	Jsem uprchlý galejník	25955
876	Trosečník	10131
877	Strážci Galaxie	320638
878	Valkýra	233151
879	Tootsie	7384
880	Život Davida Galea	7119
881	Anton Špelec, ostrostřelec	3083
882	Před úsvitem	13215
883	Marketa Lazarová	9342
884	Velký bazar	33280
885	36. komnata Shaolinu	109157
886	Legenda o "1900"	8993
887	Kačeří příběhy: Poklad ze ztracené lampy	20364
888	Hard Boiled	9859
889	El Dorado	4184
890	Ohněm a mečem	48311
891	Romeo, Julie a tma	9596
892	Signum laudis	24842
893	Včera, dnes a zítra	25587
894	Kovboj Bebop: Lovec odměn	90518
895	Země dinosaurů	31802
896	Krvavý trůn	5430
897	Správná posádka	5024
898	Hezké vesnice hezky hoří	132090
899	Před deštěm	70967
\.


--
-- Data for Name: top_favourites_film_actors; Type: TABLE DATA; Schema: public; Owner: csfd
--

COPY public.top_favourites_film_actors (id, film_id, actor_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	1	4
5	1	5
6	1	6
7	1	7
8	1	8
9	1	9
10	1	10
11	1	11
12	1	12
13	1	13
14	1	14
15	1	15
16	1	16
17	1	17
18	1	18
19	1	19
20	1	20
21	1	21
22	1	22
23	1	23
24	1	24
25	1	25
26	1	26
27	1	27
28	1	28
29	1	29
30	1	30
31	1	31
32	2	32
33	2	33
34	2	34
35	2	35
36	2	36
37	2	37
38	2	38
39	2	39
40	2	40
41	2	41
42	2	42
43	2	43
44	2	44
45	2	45
46	2	46
47	2	47
48	2	48
49	2	49
50	2	50
51	2	51
52	2	52
53	2	53
54	2	54
55	2	55
56	2	56
57	2	57
58	2	58
59	2	59
60	2	60
61	2	61
62	2	62
63	2	63
64	2	64
65	2	65
66	2	66
67	2	67
68	2	68
69	2	69
70	2	70
71	2	71
72	2	72
73	2	73
74	2	74
75	2	75
76	2	76
77	2	77
78	2	78
79	2	79
80	3	80
81	3	81
82	3	82
83	3	83
84	3	84
85	3	85
86	3	86
87	3	87
88	3	88
89	3	89
90	3	90
91	3	91
92	3	92
93	3	93
94	3	94
95	3	95
96	3	96
97	3	97
98	3	98
99	3	99
100	3	100
101	3	101
102	3	102
103	3	103
104	4	104
105	4	105
106	4	106
107	4	107
108	4	108
109	4	109
110	4	110
111	4	111
112	4	112
113	4	113
114	4	114
115	4	115
116	4	116
117	4	117
118	4	118
119	4	119
120	4	120
121	4	121
122	4	122
123	4	123
124	4	124
125	4	125
126	4	126
127	4	127
128	5	128
129	5	129
130	5	130
131	5	131
132	5	132
133	5	133
134	5	134
135	5	135
136	5	136
137	5	137
138	5	138
139	5	139
140	5	140
141	5	141
142	5	142
143	5	143
144	5	144
145	5	145
146	5	146
147	5	147
148	5	148
149	5	149
150	5	150
151	5	151
152	5	152
153	5	153
154	5	154
155	5	155
156	5	156
157	5	157
158	5	158
159	5	159
160	5	160
161	5	161
162	5	162
163	5	163
164	5	164
165	6	165
166	6	166
167	6	167
168	6	168
169	6	169
170	6	170
171	6	171
172	6	172
173	6	173
174	6	174
175	6	175
176	6	176
177	6	177
178	6	178
179	6	179
180	6	180
181	6	181
182	6	182
183	6	183
184	6	184
185	6	185
186	6	186
187	6	187
188	6	188
189	6	189
190	6	190
191	6	191
192	6	192
193	6	193
194	6	194
195	6	195
196	6	196
197	6	197
198	6	198
199	6	199
200	6	200
201	6	201
202	6	202
203	6	203
204	6	204
205	6	205
206	6	206
207	6	207
208	6	208
209	6	209
210	6	210
211	6	211
212	6	212
213	6	213
214	6	214
215	6	215
216	6	216
217	6	217
218	6	218
219	6	219
220	6	220
221	6	221
222	6	222
223	6	223
224	6	224
225	6	225
226	6	226
227	6	227
228	6	228
229	6	229
230	6	230
231	6	231
232	6	232
233	6	233
234	6	234
235	6	235
236	6	236
237	6	237
238	6	238
239	6	239
240	6	240
241	6	241
242	6	242
243	6	243
244	6	244
245	6	245
246	6	246
247	6	247
248	6	248
249	6	249
250	6	250
251	7	251
252	7	252
253	7	253
254	7	254
255	7	255
256	7	256
257	7	257
258	7	258
259	7	259
260	7	260
261	7	261
262	7	262
263	7	263
264	7	264
265	7	265
266	7	266
267	7	267
268	7	268
269	7	269
270	7	270
271	7	271
272	7	272
273	7	273
274	7	274
275	7	275
276	7	276
277	7	277
278	7	278
279	7	279
280	8	280
281	8	281
282	8	282
283	8	283
284	8	284
285	8	285
286	8	286
287	8	287
288	8	288
289	8	289
290	8	290
291	8	291
292	8	292
293	8	293
294	8	294
295	8	295
296	8	296
297	8	297
298	8	298
299	8	299
300	8	300
301	8	301
302	8	302
303	8	303
304	8	304
305	8	305
306	8	306
307	8	307
308	8	308
309	8	309
310	8	310
311	8	311
312	8	312
313	8	313
314	8	314
315	8	315
316	8	316
317	8	317
318	8	318
319	8	319
320	8	320
321	8	321
322	8	322
323	8	323
324	8	324
325	8	325
326	8	326
327	8	327
328	8	328
329	8	329
330	8	330
331	8	331
332	8	332
333	9	333
334	9	334
335	9	335
336	9	336
337	9	337
338	9	338
339	9	339
340	9	340
341	9	341
342	9	342
343	9	343
344	9	344
345	9	345
346	9	346
347	9	347
348	10	348
349	10	349
350	10	350
351	10	351
352	10	352
353	10	353
354	10	354
355	10	355
356	10	356
357	10	357
358	10	358
359	10	359
360	10	360
361	10	361
362	10	362
363	10	363
364	10	364
365	10	365
366	10	366
367	10	367
368	10	368
369	10	369
370	10	370
371	10	371
372	10	372
373	10	373
374	11	374
375	11	375
376	11	376
377	11	377
378	11	378
379	11	379
380	11	380
381	11	381
382	11	382
383	11	383
384	11	384
385	11	385
386	11	386
387	11	387
388	11	388
389	11	389
390	11	390
391	11	391
392	11	392
393	11	393
394	11	394
395	11	395
396	12	396
397	12	397
398	12	398
399	12	399
400	12	400
401	12	401
402	12	402
403	12	403
404	12	404
405	12	405
406	12	406
407	12	407
408	12	408
409	12	409
410	12	410
411	12	411
412	12	412
413	12	413
414	12	414
415	12	415
416	12	416
417	12	417
418	12	418
419	12	419
420	12	420
421	12	421
422	12	422
423	12	423
424	12	424
425	12	425
426	12	426
427	12	427
428	13	428
429	13	429
430	13	430
431	13	431
432	13	432
433	13	433
434	13	434
435	13	435
436	13	436
437	13	437
438	13	438
439	13	439
440	13	440
441	13	441
442	13	442
443	13	443
444	13	444
445	13	445
446	13	446
447	13	447
448	13	448
449	13	449
450	13	450
451	13	451
452	13	452
453	13	453
454	13	454
455	13	455
456	13	456
457	13	457
458	13	458
459	13	459
460	13	460
461	13	461
462	13	462
463	13	463
464	13	464
465	13	465
466	13	466
467	14	467
468	14	468
469	14	469
470	14	470
471	14	471
472	14	472
473	14	473
474	14	474
475	14	475
476	14	476
477	14	477
478	14	478
479	14	479
480	14	480
481	14	481
482	14	482
483	14	483
484	14	484
485	14	485
486	14	486
487	14	487
488	14	488
489	14	489
490	14	490
491	14	491
492	14	492
493	14	493
494	14	494
495	14	495
496	14	496
497	14	497
498	14	498
499	14	499
500	14	500
501	14	501
502	14	502
503	15	503
504	15	504
505	15	505
506	15	506
507	15	507
508	15	508
509	15	509
510	15	510
511	15	511
512	15	512
513	15	513
514	15	514
515	15	515
516	15	516
517	15	517
518	15	518
519	15	519
520	15	520
521	15	521
522	15	522
523	15	523
524	15	524
525	15	525
526	15	526
527	15	527
528	15	528
529	15	529
530	15	530
531	15	531
532	15	532
533	15	533
534	15	534
535	15	535
536	15	536
537	15	537
538	15	538
539	15	539
540	15	540
541	16	541
542	16	542
543	16	543
544	16	544
545	16	545
546	16	546
547	16	547
548	16	548
549	16	549
550	16	550
551	16	551
552	16	552
553	16	553
554	16	554
555	16	555
556	16	556
557	16	557
558	16	558
559	16	559
560	16	560
561	16	561
562	16	562
563	16	563
564	16	564
565	16	565
566	16	566
567	16	567
568	16	568
569	16	569
570	16	570
571	16	571
572	16	572
573	16	573
574	16	574
575	16	575
576	16	576
577	16	577
578	16	578
579	17	579
580	17	580
581	17	581
582	17	582
583	17	583
584	17	584
585	17	585
586	17	586
587	17	587
588	17	588
589	17	589
590	17	590
591	17	591
592	17	592
593	17	593
594	17	594
595	17	595
596	17	596
597	17	597
598	17	598
599	17	599
600	17	600
601	17	601
602	17	602
603	17	603
604	17	604
605	17	605
606	17	606
607	17	607
608	17	608
609	17	609
610	17	610
611	17	611
612	17	612
613	17	613
614	18	614
615	18	615
616	18	616
617	18	617
618	18	618
619	18	619
620	18	620
621	18	621
622	18	622
623	18	623
624	18	624
625	18	625
626	18	626
627	18	627
628	18	628
629	18	629
630	18	630
631	18	631
632	19	632
633	19	633
634	19	634
635	19	635
636	19	636
637	19	637
638	19	638
639	19	639
640	19	640
641	19	641
642	19	642
643	19	643
644	19	644
645	19	645
646	19	646
647	19	647
648	19	648
649	19	649
650	19	650
651	19	651
652	19	652
653	19	653
654	19	654
655	19	655
656	19	656
657	19	657
658	19	658
659	19	659
660	19	660
661	19	661
662	19	662
663	19	663
664	19	664
665	19	665
666	19	666
667	19	667
668	19	668
669	19	669
670	19	670
671	19	671
672	19	672
673	19	673
674	19	674
675	19	675
676	19	676
677	19	677
678	19	678
679	19	679
680	19	680
681	19	681
682	19	682
683	19	683
684	19	684
685	19	685
686	19	686
687	19	687
688	19	688
689	19	689
690	19	690
691	19	691
692	19	692
693	19	693
694	20	694
695	20	695
696	20	696
697	20	697
698	20	698
699	20	699
700	20	700
701	20	701
702	20	702
703	20	703
704	20	704
705	20	705
706	20	706
707	20	707
708	20	708
709	20	709
710	20	710
711	20	711
712	21	712
713	21	713
714	21	714
715	21	715
716	21	716
717	21	717
718	21	718
719	21	719
720	21	720
721	21	721
722	21	722
723	21	723
724	21	724
725	21	725
726	21	726
727	22	727
728	22	728
729	22	729
730	22	730
731	22	731
732	22	732
733	22	733
734	22	734
735	22	735
736	22	736
737	22	737
738	22	738
739	22	739
740	22	740
741	22	741
742	22	742
743	22	743
744	22	744
745	22	745
746	22	746
747	22	747
748	22	748
749	22	749
750	22	750
751	22	751
752	22	752
753	22	753
754	22	754
755	22	755
756	22	756
757	22	757
758	22	758
759	23	759
760	23	760
761	23	761
762	23	762
763	23	763
764	23	764
765	23	765
766	23	766
767	23	767
768	23	768
769	23	769
770	23	770
771	23	771
772	23	772
773	23	773
774	23	774
775	23	775
776	23	776
777	23	777
778	23	778
779	23	779
780	23	780
781	23	781
782	23	782
783	23	783
784	23	784
785	23	785
786	23	786
787	23	787
788	24	788
789	24	789
790	24	790
791	24	791
792	24	792
793	24	793
794	24	794
795	24	795
796	24	796
797	24	797
798	24	798
799	24	799
800	24	800
801	24	801
802	24	802
803	24	803
804	24	804
805	24	805
806	24	806
807	24	807
808	24	808
809	24	809
810	24	810
811	24	811
812	24	812
813	24	813
814	25	814
815	25	815
816	25	816
817	25	817
818	25	818
819	25	819
820	25	820
821	25	821
822	25	822
823	25	823
824	25	824
825	25	825
826	25	826
827	25	827
828	25	828
829	25	829
830	25	830
831	25	831
832	25	832
833	25	833
834	25	834
835	25	835
836	25	836
837	25	837
838	26	838
839	26	839
840	26	840
841	26	841
842	26	842
843	26	843
844	26	844
845	26	845
846	26	846
847	26	847
848	26	848
849	26	849
850	26	850
851	26	851
852	26	852
853	26	853
854	26	854
855	26	855
856	26	856
857	26	857
858	26	858
859	26	859
860	26	860
861	26	861
862	26	862
863	26	863
864	26	864
865	26	865
866	26	866
867	26	867
868	26	868
869	26	869
870	26	870
871	26	871
872	26	872
873	26	873
874	26	874
875	26	875
876	26	876
877	26	877
878	26	878
879	26	879
880	26	880
881	26	881
882	26	882
883	26	883
884	26	884
885	27	885
886	27	886
887	27	887
888	27	888
889	27	889
890	27	890
891	27	891
892	28	892
893	28	893
894	28	894
895	28	895
896	28	896
897	28	897
898	28	898
899	28	899
900	28	900
901	28	901
902	28	902
903	28	903
904	28	904
905	28	905
906	28	906
907	28	907
908	28	908
909	28	909
910	28	910
911	28	911
912	28	912
913	28	913
914	28	914
915	28	915
916	28	916
917	28	917
918	28	918
919	28	919
920	28	920
921	28	921
922	28	922
923	28	923
924	28	924
925	28	925
926	28	926
927	28	927
928	28	928
929	28	929
930	28	930
931	28	931
932	28	932
933	28	933
934	28	934
935	28	935
936	28	936
937	28	937
938	28	938
939	28	939
940	28	940
941	28	941
942	28	942
943	28	943
944	28	944
945	28	945
946	28	946
947	28	947
948	28	948
949	28	949
950	28	950
951	28	951
952	28	952
953	28	953
954	28	954
955	29	955
956	29	956
957	29	957
958	29	958
959	29	959
960	29	960
961	29	961
962	29	962
963	29	963
964	29	964
965	29	965
966	29	966
967	29	967
968	29	968
969	29	969
970	29	970
971	29	971
972	29	972
973	29	973
974	29	974
975	29	975
976	29	976
977	29	977
978	29	978
979	29	979
980	29	980
981	29	981
982	29	982
983	29	983
984	29	984
985	29	985
986	29	986
987	29	987
988	29	988
989	29	989
990	29	990
991	29	991
992	29	992
993	29	993
994	29	994
995	29	995
996	29	996
997	29	997
998	29	998
999	29	999
1000	29	1000
1001	30	1001
1002	30	1002
1003	30	1003
1004	30	1004
1005	30	1005
1006	30	1006
1007	30	1007
1008	30	1008
1009	30	1009
1010	30	1010
1011	30	1011
1012	30	1012
1013	30	1013
1014	30	1014
1015	30	1015
1016	30	1016
1017	30	1017
1018	30	1018
1019	30	1019
1020	30	1020
1021	30	1021
1022	31	1022
1023	31	1023
1024	31	1024
1025	31	1025
1026	31	1026
1027	31	1027
1028	31	1028
1029	31	1029
1030	31	1030
1031	31	1031
1032	31	1032
1033	31	1033
1034	31	1034
1035	31	1035
1036	31	1036
1037	31	1037
1038	32	1038
1039	32	1039
1040	32	1040
1041	32	1041
1042	32	1042
1043	32	1043
1044	32	1044
1045	32	1045
1046	32	1046
1047	32	1047
1048	32	1048
1049	32	1049
1050	32	1050
1051	32	1051
1052	32	1052
1053	32	1053
1054	32	1054
1055	32	1055
1056	32	1056
1057	32	1057
1058	32	1058
1059	32	1059
1060	32	1060
1061	32	1061
1062	32	1062
1063	32	1063
1064	32	1064
1065	32	1065
1066	32	1066
1067	32	1067
1068	32	1068
1069	32	1069
1070	32	1070
1071	32	1071
1072	32	1072
1073	32	1073
1074	32	1074
1075	32	1075
1076	32	1076
1077	32	1077
1078	32	1078
1079	33	1079
1080	33	1080
1081	33	1081
1082	33	1082
1083	33	1083
1084	33	1084
1085	33	1085
1086	33	1086
1087	33	1087
1088	33	1088
1089	33	1089
1090	33	1090
1091	33	1091
1092	33	1092
1093	33	1093
1094	33	1094
1095	33	1095
1096	33	1096
1097	33	1097
1098	33	1098
1099	33	1099
1100	33	1100
1101	33	1101
1102	33	1102
1103	33	1103
1104	33	1104
1105	33	1105
1106	33	1106
1107	33	1107
1108	34	1108
1109	34	1109
1110	34	1110
1111	34	1111
1112	34	1112
1113	34	1113
1114	34	1114
1115	34	1115
1116	34	1116
1117	34	1117
1118	34	1118
1119	34	1119
1120	34	1120
1121	34	1121
1122	34	1122
1123	34	1123
1124	34	1124
1125	34	1125
1126	34	1126
1127	34	1127
1128	34	1128
1129	34	1129
1130	34	1130
1131	34	1131
1132	34	1132
1133	34	1133
1134	34	1134
1135	34	1135
1136	34	1136
1137	34	1137
1138	34	1138
1139	34	1139
1140	34	1140
1141	34	1141
1142	34	1142
1143	34	1143
1144	34	1144
1145	34	1145
1146	34	1146
1147	34	1147
1148	34	1148
1149	34	1149
1150	34	1150
1151	34	1151
1152	35	1152
1153	35	1153
1154	35	1154
1155	35	1155
1156	35	1156
1157	35	1157
1158	35	1158
1159	35	1159
1160	35	1160
1161	35	1161
1162	35	1162
1163	35	1163
1164	35	1164
1165	35	1165
1166	35	1166
1167	35	1167
1168	35	1168
1169	35	1169
1170	35	1170
1171	35	1171
1172	35	1172
1173	35	1173
1174	35	1174
1175	36	1175
1176	36	1176
1177	36	1177
1178	36	1178
1179	36	1179
1180	36	1180
1181	36	1181
1182	36	1182
1183	36	1183
1184	36	1184
1185	36	1185
1186	36	1186
1187	36	1187
1188	36	1188
1189	36	1189
1190	36	1190
1191	36	1191
1192	36	1192
1193	36	1193
1194	36	1194
1195	36	1195
1196	36	1196
1197	36	1197
1198	36	1198
1199	36	1199
1200	36	1200
1201	36	1201
1202	36	1202
1203	36	1203
1204	36	1204
1205	36	1205
1206	36	1206
1207	36	1207
1208	36	1208
1209	36	1209
1210	36	1210
1211	36	1211
1212	36	1212
1213	36	1213
1214	36	1214
1215	36	1215
1216	36	1216
1217	36	1217
1218	36	1218
1219	37	1219
1220	37	1220
1221	37	1221
1222	37	1222
1223	37	1223
1224	37	1224
1225	37	1225
1226	37	1226
1227	37	1227
1228	37	1228
1229	37	1229
1230	37	1230
1231	37	1231
1232	37	1232
1233	37	1233
1234	37	1234
1235	37	1235
1236	37	1236
1237	37	1237
1238	37	1238
1239	37	1239
1240	37	1240
1241	37	1241
1242	37	1242
1243	37	1243
1244	37	1244
1245	37	1245
1246	37	1246
1247	37	1247
1248	37	1248
1249	37	1249
1250	37	1250
1251	37	1251
1252	37	1252
1253	37	1253
1254	37	1254
1255	37	1255
1256	37	1256
1257	37	1257
1258	37	1258
1259	37	1259
1260	37	1260
1261	37	1261
1262	37	1262
1263	37	1263
1264	37	1264
1265	37	1265
1266	37	1266
1267	37	1267
1268	37	1268
1269	37	1269
1270	37	1270
1271	37	1271
1272	37	1272
1273	37	1273
1274	37	1274
1275	37	1275
1276	37	1276
1277	37	1277
1278	38	1278
1279	38	1279
1280	38	1280
1281	38	1281
1282	38	1282
1283	38	1283
1284	38	1284
1285	38	1285
1286	38	1286
1287	38	1287
1288	38	1288
1289	38	1289
1290	38	1290
1291	38	1291
1292	38	1292
1293	38	1293
1294	38	1294
1295	38	1295
1296	38	1296
1297	38	1297
1298	38	1298
1299	38	1299
1300	38	1300
1301	38	1301
1302	38	1302
1303	38	1303
1304	38	1304
1305	38	1305
1306	38	1306
1307	38	1307
1308	38	1308
1309	38	1309
1310	38	1310
1311	38	1311
1312	38	1312
1313	38	1313
1314	38	1314
1315	38	1315
1316	38	1316
1317	38	1317
1318	38	1318
1319	38	1319
1320	38	1320
1321	38	1321
1322	38	1322
1323	38	1323
1324	38	1324
1325	38	1325
1326	38	1326
1327	39	1327
1328	39	1328
1329	39	1329
1330	39	1330
1331	39	1331
1332	39	1332
1333	39	1333
1334	39	1334
1335	39	1335
1336	39	1336
1337	39	1337
1338	39	1338
1339	39	1339
1340	39	1340
1341	39	1341
1342	39	1342
1343	39	1343
1344	39	1344
1345	39	1345
1346	39	1346
1347	39	1347
1348	39	1348
1349	39	1349
1350	39	1350
1351	39	1351
1352	39	1352
1353	39	1353
1354	39	1354
1355	39	1355
1356	39	1356
1357	39	1357
1358	39	1358
1359	39	1359
1360	39	1360
1361	39	1361
1362	39	1362
1363	39	1363
1364	39	1364
1365	39	1365
1366	39	1366
1367	39	1367
1368	39	1368
1369	39	1369
1370	39	1370
1371	39	1371
1372	39	1372
1373	39	1373
1374	39	1374
1375	39	1375
1376	39	1376
1377	39	1377
1378	39	1378
1379	39	1379
1380	39	1380
1381	39	1381
1382	39	1382
1383	39	1383
1384	39	1384
1385	39	1385
1386	39	1386
1387	39	1387
1388	40	1388
1389	40	1389
1390	40	1390
1391	40	1391
1392	40	1392
1393	40	1393
1394	40	1394
1395	40	1395
1396	40	1396
1397	40	1397
1398	40	1398
1399	40	1399
1400	40	1400
1401	40	1401
1402	40	1402
1403	40	1403
1404	40	1404
1405	40	1405
1406	40	1406
1407	40	1407
1408	40	1408
1409	40	1409
1410	40	1410
1411	40	1411
1412	40	1412
1413	40	1413
1414	40	1414
1415	40	1415
1416	40	1416
1417	40	1417
1418	40	1418
1419	40	1419
1420	40	1420
1421	41	1421
1422	41	1422
1423	41	1423
1424	41	1424
1425	41	1425
1426	41	1426
1427	41	1427
1428	41	1428
1429	41	1429
1430	41	1430
1431	41	1431
1432	41	1432
1433	41	1433
1434	41	1434
1435	41	1435
1436	41	1436
1437	41	1437
1438	41	1438
1439	41	1439
1440	41	1440
1441	41	1441
1442	41	1442
1443	41	1443
1444	41	1444
1445	41	1445
1446	41	1446
1447	41	1447
1448	41	1448
1449	41	1449
1450	42	1450
1451	42	1451
1452	42	1452
1453	42	1453
1454	42	1454
1455	42	1455
1456	42	1456
1457	42	1457
1458	42	1458
1459	42	1459
1460	42	1460
1461	42	1461
1462	42	1462
1463	42	1463
1464	42	1464
1465	42	1465
1466	42	1466
1467	42	1467
1468	42	1468
1469	42	1469
1470	42	1470
1471	42	1471
1472	42	1472
1473	42	1473
1474	42	1474
1475	42	1475
1476	42	1476
1477	42	1477
1478	42	1478
1479	42	1479
1480	42	1480
1481	42	1481
1482	42	1482
1483	42	1483
1484	42	1484
1485	42	1485
1486	42	1486
1487	42	1487
1488	42	1488
1489	42	1489
1490	42	1490
1491	42	1491
1492	42	1492
1493	43	1493
1494	43	1494
1495	43	1495
1496	43	1496
1497	43	1497
1498	43	1498
1499	43	1499
1500	43	1500
1501	43	1501
1502	43	1502
1503	43	1503
1504	43	1504
1505	43	1505
1506	43	1506
1507	43	1507
1508	43	1508
1509	43	1509
1510	43	1510
1511	43	1511
1512	43	1512
1513	43	1513
1514	43	1514
1515	43	1515
1516	44	1516
1517	44	1517
1518	44	1518
1519	44	1519
1520	44	1520
1521	44	1521
1522	44	1522
1523	44	1523
1524	44	1524
1525	44	1525
1526	44	1526
1527	44	1527
1528	44	1528
1529	44	1529
1530	44	1530
1531	44	1531
1532	44	1532
1533	44	1533
1534	44	1534
1535	44	1535
1536	45	1536
1537	45	1537
1538	45	1538
1539	45	1539
1540	45	1540
1541	45	1541
1542	45	1542
1543	45	1543
1544	45	1544
1545	45	1545
1546	45	1546
1547	45	1547
1548	45	1548
1549	45	1549
1550	45	1550
1551	45	1551
1552	45	1552
1553	45	1553
1554	45	1554
1555	45	1555
1556	45	1556
1557	45	1557
1558	45	1558
1559	45	1559
1560	45	1560
1561	45	1561
1562	45	1562
1563	45	1563
1564	45	1564
1565	45	1565
1566	45	1566
1567	45	1567
1568	46	1568
1569	46	1569
1570	46	1570
1571	46	1571
1572	46	1572
1573	46	1573
1574	46	1574
1575	46	1575
1576	46	1576
1577	46	1577
1578	46	1578
1579	46	1579
1580	46	1580
1581	46	1581
1582	46	1582
1583	46	1583
1584	46	1584
1585	46	1585
1586	46	1586
1587	46	1587
1588	46	1588
1589	46	1589
1590	46	1590
1591	46	1591
1592	46	1592
1593	46	1593
1594	46	1594
1595	46	1595
1596	46	1596
1597	46	1597
1598	46	1598
1599	46	1599
1600	47	1600
1601	47	1601
1602	47	1602
1603	47	1603
1604	47	1604
1605	47	1605
1606	47	1606
1607	47	1607
1608	47	1608
1609	47	1609
1610	47	1610
1611	47	1611
1612	47	1612
1613	47	1613
1614	47	1614
1615	47	1615
1616	47	1616
1617	47	1617
1618	47	1618
1619	47	1619
1620	47	1620
1621	47	1621
1622	47	1622
1623	47	1623
1624	47	1624
1625	47	1625
1626	48	1626
1627	48	1627
1628	48	1628
1629	48	1629
1630	48	1630
1631	48	1631
1632	48	1632
1633	48	1633
1634	48	1634
1635	48	1635
1636	48	1636
1637	48	1637
1638	48	1638
1639	48	1639
1640	48	1640
1641	48	1641
1642	48	1642
1643	48	1643
1644	48	1644
1645	48	1645
1646	48	1646
1647	48	1647
1648	48	1648
1649	48	1649
1650	48	1650
1651	48	1651
1652	48	1652
1653	48	1653
1654	48	1654
1655	48	1655
1656	48	1656
1657	48	1657
1658	48	1658
1659	48	1659
1660	48	1660
1661	48	1661
1662	48	1662
1663	48	1663
1664	48	1664
1665	48	1665
1666	48	1666
1667	48	1667
1668	48	1668
1669	48	1669
1670	48	1670
1671	48	1671
1672	49	1672
1673	49	1673
1674	49	1674
1675	49	1675
1676	49	1676
1677	49	1677
1678	49	1678
1679	49	1679
1680	49	1680
1681	49	1681
1682	49	1682
1683	49	1683
1684	49	1684
1685	50	1685
1686	50	1686
1687	50	1687
1688	50	1688
1689	50	1689
1690	50	1690
1691	50	1691
1692	50	1692
1693	50	1693
1694	50	1694
1695	50	1695
1696	50	1696
1697	50	1697
1698	50	1698
1699	50	1699
1700	50	1700
1701	50	1701
1702	50	1702
1703	50	1703
1704	50	1704
1705	50	1705
1706	51	1706
1707	51	1707
1708	51	1708
1709	51	1709
1710	51	1710
1711	51	1711
1712	51	1712
1713	51	1713
1714	51	1714
1715	51	1715
1716	51	1716
1717	51	1717
1718	51	1718
1719	51	1719
1720	51	1720
1721	51	1721
1722	51	1722
1723	51	1723
1724	51	1724
1725	51	1725
1726	51	1726
1727	51	1727
1728	51	1728
1729	51	1729
1730	52	1730
1731	52	1731
1732	52	1732
1733	52	1733
1734	52	1734
1735	52	1735
1736	52	1736
1737	52	1737
1738	52	1738
1739	52	1739
1740	52	1740
1741	52	1741
1742	52	1742
1743	52	1743
1744	52	1744
1745	52	1745
1746	52	1746
1747	52	1747
1748	52	1748
1749	52	1749
1750	52	1750
1751	52	1751
1752	52	1752
1753	52	1753
1754	52	1754
1755	52	1755
1756	53	1756
1757	53	1757
1758	53	1758
1759	53	1759
1760	53	1760
1761	53	1761
1762	53	1762
1763	53	1763
1764	53	1764
1765	53	1765
1766	53	1766
1767	53	1767
1768	53	1768
1769	53	1769
1770	53	1770
1771	53	1771
1772	53	1772
1773	53	1773
1774	53	1774
1775	53	1775
1776	53	1776
1777	53	1777
1778	53	1778
1779	53	1779
1780	53	1780
1781	53	1781
1782	53	1782
1783	53	1783
1784	53	1784
1785	53	1785
1786	53	1786
1787	53	1787
1788	53	1788
1789	53	1789
1790	53	1790
1791	53	1791
1792	53	1792
1793	53	1793
1794	53	1794
1795	53	1795
1796	53	1796
1797	53	1797
1798	53	1798
1799	53	1799
1800	53	1800
1801	53	1801
1802	53	1802
1803	53	1803
1804	53	1804
1805	53	1805
1806	53	1806
1807	53	1807
1808	54	1808
1809	54	1809
1810	54	1810
1811	54	1811
1812	54	1812
1813	54	1813
1814	54	1814
1815	54	1815
1816	54	1816
1817	54	1817
1818	54	1818
1819	54	1819
1820	54	1820
1821	54	1821
1822	54	1822
1823	54	1823
1824	54	1824
1825	54	1825
1826	54	1826
1827	54	1827
1828	54	1828
1829	54	1829
1830	54	1830
1831	54	1831
1832	54	1832
1833	54	1833
1834	54	1834
1835	54	1835
1836	54	1836
1837	54	1837
1838	54	1838
1839	54	1839
1840	54	1840
1841	54	1841
1842	54	1842
1843	54	1843
1844	54	1844
1845	54	1845
1846	54	1846
1847	54	1847
1848	54	1848
1849	54	1849
1850	54	1850
1851	54	1851
1852	54	1852
1853	54	1853
1854	54	1854
1855	54	1855
1856	54	1856
1857	54	1857
1858	54	1858
1859	54	1859
1860	55	1860
1861	55	1861
1862	55	1862
1863	55	1863
1864	55	1864
1865	55	1865
1866	55	1866
1867	55	1867
1868	55	1868
1869	55	1869
1870	55	1870
1871	55	1871
1872	55	1872
1873	55	1873
1874	55	1874
1875	55	1875
1876	55	1876
1877	55	1877
1878	56	1878
1879	56	1879
1880	56	1880
1881	56	1881
1882	56	1882
1883	56	1883
1884	56	1884
1885	56	1885
1886	56	1886
1887	56	1887
1888	56	1888
1889	56	1889
1890	56	1890
1891	56	1891
1892	56	1892
1893	56	1893
1894	56	1894
1895	56	1895
1896	56	1896
1897	56	1897
1898	56	1898
1899	56	1899
1900	56	1900
1901	57	1901
1902	57	1902
1903	57	1903
1904	57	1904
1905	57	1905
1906	57	1906
1907	57	1907
1908	57	1908
1909	57	1909
1910	57	1910
1911	57	1911
1912	57	1912
1913	57	1913
1914	57	1914
1915	57	1915
1916	57	1916
1917	57	1917
1918	57	1918
1919	57	1919
1920	57	1920
1921	57	1921
1922	57	1922
1923	57	1923
1924	57	1924
1925	57	1925
1926	57	1926
1927	57	1927
1928	57	1928
1929	57	1929
1930	57	1930
1931	57	1931
1932	57	1932
1933	57	1933
1934	57	1934
1935	57	1935
1936	57	1936
1937	58	1937
1938	58	1938
1939	58	1939
1940	58	1940
1941	58	1941
1942	58	1942
1943	58	1943
1944	58	1944
1945	58	1945
1946	58	1946
1947	58	1947
1948	58	1948
1949	58	1949
1950	58	1950
1951	58	1951
1952	58	1952
1953	58	1953
1954	58	1954
1955	58	1955
1956	58	1956
1957	58	1957
1958	58	1958
1959	58	1959
1960	58	1960
1961	58	1961
1962	58	1962
1963	58	1963
1964	58	1964
1965	58	1965
1966	58	1966
1967	58	1967
1968	58	1968
1969	58	1969
1970	58	1970
1971	58	1971
1972	58	1972
1973	58	1973
1974	58	1974
1975	58	1975
1976	58	1976
1977	58	1977
1978	58	1978
1979	58	1979
1980	58	1980
1981	58	1981
1982	58	1982
1983	58	1983
1984	58	1984
1985	59	1985
1986	59	1986
1987	59	1987
1988	59	1988
1989	59	1989
1990	59	1990
1991	59	1991
1992	59	1992
1993	59	1993
1994	59	1994
1995	59	1995
1996	59	1996
1997	59	1997
1998	59	1998
1999	59	1999
2000	59	2000
2001	59	2001
2002	59	2002
2003	59	2003
2004	59	2004
2005	59	2005
2006	59	2006
2007	59	2007
2008	59	2008
2009	59	2009
2010	59	2010
2011	59	2011
2012	59	2012
2013	59	2013
2014	59	2014
2015	59	2015
2016	59	2016
2017	60	2017
2018	60	2018
2019	60	2019
2020	60	2020
2021	60	2021
2022	60	2022
2023	60	2023
2024	60	2024
2025	60	2025
2026	60	2026
2027	60	2027
2028	60	2028
2029	60	2029
2030	60	2030
2031	60	2031
2032	60	2032
2033	60	2033
2034	60	2034
2035	60	2035
2036	60	2036
2037	60	2037
2038	60	2038
2039	60	2039
2040	60	2040
2041	60	2041
2042	60	2042
2043	60	2043
2044	60	2044
2045	60	2045
2046	60	2046
2047	60	2047
2048	60	2048
2049	60	2049
2050	60	2050
2051	60	2051
2052	60	2052
2053	60	2053
2054	60	2054
2055	60	2055
2056	60	2056
2057	60	2057
2058	60	2058
2059	60	2059
2060	60	2060
2061	60	2061
2062	60	2062
2063	60	2063
2064	60	2064
2065	60	2065
2066	60	2066
2067	60	2067
2068	60	2068
2069	60	2069
2070	60	2070
2071	60	2071
2072	60	2072
2073	60	2073
2074	60	2074
2075	60	2075
2076	60	2076
2077	60	2077
2078	60	2078
2079	60	2079
2080	60	2080
2081	60	2081
2082	60	2082
2083	60	2083
2084	60	2084
2085	60	2085
2086	60	2086
2087	60	2087
2088	61	2088
2089	61	2089
2090	61	2090
2091	61	2091
2092	61	2092
2093	61	2093
2094	61	2094
2095	61	2095
2096	61	2096
2097	61	2097
2098	61	2098
2099	61	2099
2100	61	2100
2101	61	2101
2102	61	2102
2103	61	2103
2104	61	2104
2105	61	2105
2106	61	2106
2107	61	2107
2108	61	2108
2109	61	2109
2110	61	2110
2111	61	2111
2112	61	2112
2113	61	2113
2114	61	2114
2115	61	2115
2116	61	2116
2117	61	2117
2118	61	2118
2119	61	2119
2120	61	2120
2121	61	2121
2122	61	2122
2123	61	2123
2124	61	2124
2125	61	2125
2126	61	2126
2127	61	2127
2128	62	2128
2129	62	2129
2130	62	2130
2131	62	2131
2132	62	2132
2133	62	2133
2134	62	2134
2135	62	2135
2136	62	2136
2137	62	2137
2138	62	2138
2139	62	2139
2140	62	2140
2141	62	2141
2142	62	2142
2143	62	2143
2144	62	2144
2145	62	2145
2146	62	2146
2147	62	2147
2148	62	2148
2149	62	2149
2150	62	2150
2151	62	2151
2152	62	2152
2153	63	2153
2154	63	2154
2155	63	2155
2156	63	2156
2157	63	2157
2158	63	2158
2159	63	2159
2160	63	2160
2161	63	2161
2162	63	2162
2163	63	2163
2164	63	2164
2165	63	2165
2166	63	2166
2167	63	2167
2168	63	2168
2169	63	2169
2170	63	2170
2171	63	2171
2172	64	2172
2173	64	2173
2174	64	2174
2175	64	2175
2176	64	2176
2177	64	2177
2178	64	2178
2179	64	2179
2180	64	2180
2181	64	2181
2182	64	2182
2183	64	2183
2184	64	2184
2185	64	2185
2186	64	2186
2187	64	2187
2188	64	2188
2189	65	2189
2190	65	2190
2191	65	2191
2192	65	2192
2193	65	2193
2194	65	2194
2195	65	2195
2196	65	2196
2197	65	2197
2198	65	2198
2199	65	2199
2200	65	2200
2201	65	2201
2202	65	2202
2203	65	2203
2204	65	2204
2205	65	2205
2206	65	2206
2207	65	2207
2208	65	2208
2209	65	2209
2210	66	2210
2211	66	2211
2212	66	2212
2213	66	2213
2214	66	2214
2215	66	2215
2216	66	2216
2217	66	2217
2218	66	2218
2219	66	2219
2220	66	2220
2221	66	2221
2222	66	2222
2223	66	2223
2224	66	2224
2225	66	2225
2226	66	2226
2227	66	2227
2228	66	2228
2229	66	2229
2230	66	2230
2231	66	2231
2232	66	2232
2233	66	2233
2234	67	2234
2235	67	2235
2236	67	2236
2237	67	2237
2238	67	2238
2239	67	2239
2240	67	2240
2241	67	2241
2242	67	2242
2243	67	2243
2244	67	2244
2245	67	2245
2246	67	2246
2247	67	2247
2248	67	2248
2249	67	2249
2250	67	2250
2251	67	2251
2252	68	2252
2253	68	2253
2254	68	2254
2255	68	2255
2256	68	2256
2257	68	2257
2258	68	2258
2259	68	2259
2260	68	2260
2261	68	2261
2262	68	2262
2263	68	2263
2264	68	2264
2265	68	2265
2266	68	2266
2267	68	2267
2268	68	2268
2269	68	2269
2270	68	2270
2271	68	2271
2272	68	2272
2273	68	2273
2274	68	2274
2275	68	2275
2276	68	2276
2277	68	2277
2278	68	2278
2279	68	2279
2280	68	2280
2281	69	2281
2282	69	2282
2283	69	2283
2284	69	2284
2285	69	2285
2286	69	2286
2287	69	2287
2288	69	2288
2289	69	2289
2290	69	2290
2291	69	2291
2292	69	2292
2293	69	2293
2294	69	2294
2295	69	2295
2296	69	2296
2297	69	2297
2298	69	2298
2299	69	2299
2300	69	2300
2301	69	2301
2302	69	2302
2303	70	2303
2304	70	2304
2305	70	2305
2306	70	2306
2307	70	2307
2308	70	2308
2309	70	2309
2310	70	2310
2311	70	2311
2312	70	2312
2313	70	2313
2314	70	2314
2315	70	2315
2316	70	2316
2317	70	2317
2318	70	2318
2319	70	2319
2320	70	2320
2321	70	2321
2322	70	2322
2323	70	2323
2324	70	2324
2325	70	2325
2326	70	2326
2327	70	2327
2328	71	2328
2329	71	2329
2330	71	2330
2331	71	2331
2332	71	2332
2333	71	2333
2334	71	2334
2335	71	2335
2336	71	2336
2337	71	2337
2338	71	2338
2339	71	2339
2340	71	2340
2341	71	2341
2342	71	2342
2343	71	2343
2344	71	2344
2345	71	2345
2346	71	2346
2347	71	2347
2348	71	2348
2349	71	2349
2350	71	2350
2351	71	2351
2352	71	2352
2353	71	2353
2354	72	2354
2355	72	2355
2356	72	2356
2357	72	2357
2358	72	2358
2359	72	2359
2360	72	2360
2361	72	2361
2362	72	2362
2363	72	2363
2364	72	2364
2365	72	2365
2366	72	2366
2367	72	2367
2368	72	2368
2369	72	2369
2370	72	2370
2371	72	2371
2372	72	2372
2373	72	2373
2374	72	2374
2375	72	2375
2376	73	2376
2377	73	2377
2378	73	2378
2379	73	2379
2380	73	2380
2381	73	2381
2382	73	2382
2383	73	2383
2384	73	2384
2385	73	2385
2386	73	2386
2387	73	2387
2388	73	2388
2389	73	2389
2390	73	2390
2391	73	2391
2392	73	2392
2393	73	2393
2394	73	2394
2395	73	2395
2396	73	2396
2397	73	2397
2398	73	2398
2399	73	2399
2400	74	2400
2401	74	2401
2402	74	2402
2403	74	2403
2404	74	2404
2405	74	2405
2406	74	2406
2407	74	2407
2408	74	2408
2409	74	2409
2410	74	2410
2411	74	2411
2412	74	2412
2413	74	2413
2414	74	2414
2415	74	2415
2416	74	2416
2417	74	2417
2418	74	2418
2419	74	2419
2420	74	2420
2421	74	2421
2422	74	2422
2423	74	2423
2424	74	2424
2425	74	2425
2426	74	2426
2427	74	2427
2428	74	2428
2429	74	2429
2430	74	2430
2431	74	2431
2432	74	2432
2433	74	2433
2434	74	2434
2435	74	2435
2436	74	2436
2437	74	2437
2438	74	2438
2439	74	2439
2440	74	2440
2441	74	2441
2442	74	2442
2443	74	2443
2444	74	2444
2445	74	2445
2446	74	2446
2447	74	2447
2448	74	2448
2449	74	2449
2450	74	2450
2451	75	2451
2452	75	2452
2453	75	2453
2454	75	2454
2455	75	2455
2456	75	2456
2457	75	2457
2458	75	2458
2459	75	2459
2460	75	2460
2461	75	2461
2462	75	2462
2463	75	2463
2464	75	2464
2465	75	2465
2466	75	2466
2467	75	2467
2468	75	2468
2469	75	2469
2470	75	2470
2471	75	2471
2472	75	2472
2473	75	2473
2474	75	2474
2475	75	2475
2476	75	2476
2477	75	2477
2478	75	2478
2479	75	2479
2480	75	2480
2481	76	2481
2482	76	2482
2483	76	2483
2484	76	2484
2485	76	2485
2486	76	2486
2487	76	2487
2488	76	2488
2489	76	2489
2490	76	2490
2491	76	2491
2492	76	2492
2493	76	2493
2494	76	2494
2495	76	2495
2496	76	2496
2497	76	2497
2498	76	2498
2499	76	2499
2500	76	2500
2501	76	2501
2502	76	2502
2503	76	2503
2504	76	2504
2505	77	2505
2506	77	2506
2507	77	2507
2508	77	2508
2509	77	2509
2510	77	2510
2511	77	2511
2512	77	2512
2513	77	2513
2514	77	2514
2515	77	2515
2516	77	2516
2517	78	2517
2518	78	2518
2519	78	2519
2520	78	2520
2521	78	2521
2522	78	2522
2523	78	2523
2524	78	2524
2525	78	2525
2526	78	2526
2527	78	2527
2528	78	2528
2529	78	2529
2530	78	2530
2531	78	2531
2532	78	2532
2533	78	2533
2534	78	2534
2535	78	2535
2536	78	2536
2537	78	2537
2538	78	2538
2539	78	2539
2540	78	2540
2541	78	2541
2542	78	2542
2543	79	2543
2544	79	2544
2545	79	2545
2546	79	2546
2547	79	2547
2548	79	2548
2549	79	2549
2550	79	2550
2551	79	2551
2552	79	2552
2553	79	2553
2554	79	2554
2555	79	2555
2556	79	2556
2557	79	2557
2558	79	2558
2559	79	2559
2560	80	2560
2561	80	2561
2562	80	2562
2563	80	2563
2564	80	2564
2565	80	2565
2566	80	2566
2567	80	2567
2568	80	2568
2569	80	2569
2570	80	2570
2571	80	2571
2572	80	2572
2573	80	2573
2574	80	2574
2575	80	2575
2576	80	2576
2577	80	2577
2578	80	2578
2579	80	2579
2580	80	2580
2581	80	2581
2582	80	2582
2583	80	2583
2584	80	2584
2585	80	2585
2586	80	2586
2587	80	2587
2588	80	2588
2589	80	2589
2590	80	2590
2591	80	2591
2592	80	2592
2593	80	2593
2594	80	2594
2595	80	2595
2596	80	2596
2597	80	2597
2598	80	2598
2599	80	2599
2600	80	2600
2601	80	2601
2602	80	2602
2603	80	2603
2604	80	2604
2605	80	2605
2606	80	2606
2607	80	2607
2608	80	2608
2609	80	2609
2610	80	2610
2611	80	2611
2612	80	2612
2613	80	2613
2614	80	2614
2615	80	2615
2616	80	2616
2617	81	2617
2618	81	2618
2619	81	2619
2620	81	2620
2621	81	2621
2622	81	2622
2623	81	2623
2624	81	2624
2625	81	2625
2626	81	2626
2627	81	2627
2628	81	2628
2629	81	2629
2630	81	2630
2631	81	2631
2632	81	2632
2633	81	2633
2634	81	2634
2635	81	2635
2636	81	2636
2637	81	2637
2638	81	2638
2639	81	2639
2640	81	2640
2641	81	2641
2642	81	2642
2643	81	2643
2644	81	2644
2645	81	2645
2646	81	2646
2647	81	2647
2648	81	2648
2649	82	2649
2650	82	2650
2651	82	2651
2652	82	2652
2653	82	2653
2654	83	2654
2655	83	2655
2656	83	2656
2657	83	2657
2658	83	2658
2659	83	2659
2660	83	2660
2661	83	2661
2662	83	2662
2663	83	2663
2664	83	2664
2665	83	2665
2666	83	2666
2667	83	2667
2668	83	2668
2669	83	2669
2670	83	2670
2671	83	2671
2672	83	2672
2673	83	2673
2674	83	2674
2675	83	2675
2676	83	2676
2677	83	2677
2678	83	2678
2679	83	2679
2680	83	2680
2681	84	2681
2682	84	2682
2683	84	2683
2684	84	2684
2685	84	2685
2686	84	2686
2687	84	2687
2688	84	2688
2689	84	2689
2690	84	2690
2691	84	2691
2692	84	2692
2693	84	2693
2694	84	2694
2695	84	2695
2696	84	2696
2697	84	2697
2698	84	2698
2699	84	2699
2700	84	2700
2701	84	2701
2702	84	2702
2703	84	2703
2704	84	2704
2705	84	2705
2706	84	2706
2707	84	2707
2708	84	2708
2709	84	2709
2710	84	2710
2711	84	2711
2712	84	2712
2713	84	2713
2714	84	2714
2715	84	2715
2716	84	2716
2717	84	2717
2718	84	2718
2719	84	2719
2720	84	2720
2721	84	2721
2722	84	2722
2723	84	2723
2724	84	2724
2725	84	2725
2726	84	2726
2727	84	2727
2728	84	2728
2729	84	2729
2730	84	2730
2731	84	2731
2732	85	2732
2733	85	2733
2734	85	2734
2735	85	2735
2736	85	2736
2737	85	2737
2738	85	2738
2739	85	2739
2740	85	2740
2741	85	2741
2742	85	2742
2743	85	2743
2744	85	2744
2745	85	2745
2746	85	2746
2747	85	2747
2748	85	2748
2749	85	2749
2750	85	2750
2751	85	2751
2752	86	2752
2753	86	2753
2754	86	2754
2755	86	2755
2756	86	2756
2757	86	2757
2758	86	2758
2759	86	2759
2760	86	2760
2761	86	2761
2762	86	2762
2763	86	2763
2764	86	2764
2765	86	2765
2766	86	2766
2767	86	2767
2768	86	2768
2769	86	2769
2770	86	2770
2771	87	2771
2772	87	2772
2773	87	2773
2774	87	2774
2775	87	2775
2776	87	2776
2777	87	2777
2778	87	2778
2779	87	2779
2780	87	2780
2781	87	2781
2782	87	2782
2783	87	2783
2784	87	2784
2785	87	2785
2786	87	2786
2787	87	2787
2788	87	2788
2789	88	2789
2790	88	2790
2791	88	2791
2792	88	2792
2793	88	2793
2794	88	2794
2795	88	2795
2796	88	2796
2797	88	2797
2798	88	2798
2799	88	2799
2800	88	2800
2801	88	2801
2802	88	2802
2803	88	2803
2804	88	2804
2805	88	2805
2806	88	2806
2807	88	2807
2808	89	2808
2809	89	2809
2810	89	2810
2811	89	2811
2812	89	2812
2813	89	2813
2814	89	2814
2815	89	2815
2816	89	2816
2817	89	2817
2818	89	2818
2819	89	2819
2820	89	2820
2821	89	2821
2822	89	2822
2823	89	2823
2824	89	2824
2825	89	2825
2826	89	2826
2827	89	2827
2828	89	2828
2829	89	2829
2830	89	2830
2831	89	2831
2832	89	2832
2833	89	2833
2834	89	2834
2835	89	2835
2836	89	2836
2837	89	2837
2838	89	2838
2839	89	2839
2840	89	2840
2841	90	2841
2842	90	2842
2843	90	2843
2844	90	2844
2845	90	2845
2846	90	2846
2847	90	2847
2848	90	2848
2849	90	2849
2850	90	2850
2851	90	2851
2852	90	2852
2853	90	2853
2854	90	2854
2855	90	2855
2856	90	2856
2857	90	2857
2858	90	2858
2859	90	2859
2860	90	2860
2861	90	2861
2862	90	2862
2863	90	2863
2864	90	2864
2865	90	2865
2866	91	2866
2867	91	2867
2868	91	2868
2869	91	2869
2870	91	2870
2871	91	2871
2872	91	2872
2873	91	2873
2874	91	2874
2875	91	2875
2876	91	2876
2877	91	2877
2878	91	2878
2879	91	2879
2880	91	2880
2881	91	2881
2882	91	2882
2883	91	2883
2884	91	2884
2885	91	2885
2886	91	2886
2887	91	2887
2888	91	2888
2889	91	2889
2890	91	2890
2891	92	2891
2892	92	2892
2893	92	2893
2894	92	2894
2895	92	2895
2896	92	2896
2897	92	2897
2898	92	2898
2899	92	2899
2900	92	2900
2901	92	2901
2902	92	2902
2903	92	2903
2904	92	2904
2905	92	2905
2906	92	2906
2907	92	2907
2908	92	2908
2909	92	2909
2910	92	2910
2911	92	2911
2912	92	2912
2913	92	2913
2914	92	2914
2915	92	2915
2916	92	2916
2917	92	2917
2918	92	2918
2919	92	2919
2920	92	2920
2921	92	2921
2922	92	2922
2923	92	2923
2924	92	2924
2925	92	2925
2926	92	2926
2927	92	2927
2928	92	2928
2929	92	2929
2930	92	2930
2931	92	2931
2932	92	2932
2933	92	2933
2934	92	2934
2935	92	2935
2936	92	2936
2937	92	2937
2938	92	2938
2939	92	2939
2940	92	2940
2941	92	2941
2942	92	2942
2943	92	2943
2944	92	2944
2945	92	2945
2946	92	2946
2947	92	2947
2948	92	2948
2949	92	2949
2950	92	2950
2951	92	2951
2952	92	2952
2953	92	2953
2954	92	2954
2955	92	2955
2956	92	2956
2957	92	2957
2958	92	2958
2959	92	2959
2960	92	2960
2961	92	2961
2962	92	2962
2963	92	2963
2964	92	2964
2965	92	2965
2966	92	2966
2967	92	2967
2968	92	2968
2969	92	2969
2970	92	2970
2971	92	2971
2972	92	2972
2973	92	2973
2974	92	2974
2975	92	2975
2976	92	2976
2977	92	2977
2978	92	2978
2979	92	2979
2980	92	2980
2981	92	2981
2982	92	2982
2983	93	2983
2984	93	2984
2985	93	2985
2986	93	2986
2987	93	2987
2988	93	2988
2989	93	2989
2990	93	2990
2991	93	2991
2992	93	2992
2993	93	2993
2994	93	2994
2995	93	2995
2996	93	2996
2997	93	2997
2998	93	2998
2999	93	2999
3000	93	3000
3001	93	3001
3002	93	3002
3003	93	3003
3004	93	3004
3005	93	3005
3006	93	3006
3007	93	3007
3008	93	3008
3009	93	3009
3010	93	3010
3011	93	3011
3012	93	3012
3013	94	3013
3014	94	3014
3015	94	3015
3016	94	3016
3017	94	3017
3018	94	3018
3019	94	3019
3020	94	3020
3021	94	3021
3022	94	3022
3023	94	3023
3024	94	3024
3025	94	3025
3026	94	3026
3027	95	3027
3028	95	3028
3029	95	3029
3030	95	3030
3031	95	3031
3032	95	3032
3033	95	3033
3034	95	3034
3035	95	3035
3036	95	3036
3037	95	3037
3038	95	3038
3039	95	3039
3040	95	3040
3041	95	3041
3042	95	3042
3043	95	3043
3044	95	3044
3045	95	3045
3046	95	3046
3047	95	3047
3048	95	3048
3049	95	3049
3050	95	3050
3051	95	3051
3052	95	3052
3053	95	3053
3054	95	3054
3055	96	3055
3056	96	3056
3057	96	3057
3058	96	3058
3059	96	3059
3060	96	3060
3061	96	3061
3062	96	3062
3063	96	3063
3064	96	3064
3065	96	3065
3066	96	3066
3067	96	3067
3068	96	3068
3069	96	3069
3070	96	3070
3071	96	3071
3072	96	3072
3073	96	3073
3074	96	3074
3075	96	3075
3076	96	3076
3077	96	3077
3078	96	3078
3079	96	3079
3080	96	3080
3081	96	3081
3082	96	3082
3083	96	3083
3084	96	3084
3085	97	3085
3086	97	3086
3087	97	3087
3088	97	3088
3089	97	3089
3090	97	3090
3091	97	3091
3092	97	3092
3093	97	3093
3094	97	3094
3095	97	3095
3096	97	3096
3097	97	3097
3098	97	3098
3099	97	3099
3100	97	3100
3101	97	3101
3102	97	3102
3103	97	3103
3104	97	3104
3105	97	3105
3106	97	3106
3107	97	3107
3108	97	3108
3109	97	3109
3110	98	3110
3111	98	3111
3112	98	3112
3113	98	3113
3114	98	3114
3115	98	3115
3116	98	3116
3117	98	3117
3118	98	3118
3119	98	3119
3120	98	3120
3121	99	3121
3122	99	3122
3123	99	3123
3124	99	3124
3125	99	3125
3126	99	3126
3127	99	3127
3128	99	3128
3129	99	3129
3130	99	3130
3131	99	3131
3132	99	3132
3133	99	3133
3134	99	3134
3135	99	3135
3136	99	3136
3137	99	3137
3138	99	3138
3139	99	3139
3140	99	3140
3141	99	3141
3142	99	3142
3143	99	3143
3144	99	3144
3145	99	3145
3146	99	3146
3147	99	3147
3148	99	3148
3149	99	3149
3150	99	3150
3151	99	3151
3152	99	3152
3153	99	3153
3154	99	3154
3155	100	3155
3156	100	3156
3157	100	3157
3158	100	3158
3159	100	3159
3160	100	3160
3161	100	3161
3162	100	3162
3163	100	3163
3164	100	3164
3165	100	3165
3166	100	3166
3167	100	3167
3168	100	3168
3169	100	3169
3170	100	3170
3171	100	3171
3172	100	3172
3173	100	3173
3174	100	3174
3175	100	3175
3176	100	3176
3177	100	3177
3178	101	3178
3179	101	3179
3180	101	3180
3181	101	3181
3182	101	3182
3183	101	3183
3184	101	3184
3185	101	3185
3186	101	3186
3187	101	3187
3188	101	3188
3189	101	3189
3190	101	3190
3191	101	3191
3192	101	3192
3193	101	3193
3194	101	3194
3195	101	3195
3196	102	3196
3197	102	3197
3198	102	3198
3199	102	3199
3200	102	3200
3201	102	3201
3202	102	3202
3203	102	3203
3204	102	3204
3205	102	3205
3206	102	3206
3207	102	3207
3208	102	3208
3209	102	3209
3210	102	3210
3211	102	3211
3212	102	3212
3213	103	3213
3214	103	3214
3215	103	3215
3216	103	3216
3217	103	3217
3218	103	3218
3219	103	3219
3220	103	3220
3221	103	3221
3222	103	3222
3223	103	3223
3224	103	3224
3225	103	3225
3226	103	3226
3227	103	3227
3228	103	3228
3229	103	3229
3230	103	3230
3231	103	3231
3232	103	3232
3233	103	3233
3234	103	3234
3235	103	3235
3236	103	3236
3237	103	3237
3238	103	3238
3239	103	3239
3240	103	3240
3241	103	3241
3242	103	3242
3243	103	3243
3244	103	3244
3245	103	3245
3246	103	3246
3247	103	3247
3248	104	3248
3249	104	3249
3250	104	3250
3251	104	3251
3252	104	3252
3253	105	3253
3254	105	3254
3255	105	3255
3256	105	3256
3257	105	3257
3258	105	3258
3259	105	3259
3260	105	3260
3261	105	3261
3262	105	3262
3263	105	3263
3264	105	3264
3265	105	3265
3266	105	3266
3267	105	3267
3268	105	3268
3269	105	3269
3270	105	3270
3271	105	3271
3272	105	3272
3273	105	3273
3274	105	3274
3275	105	3275
3276	105	3276
3277	105	3277
3278	105	3278
3279	105	3279
3280	105	3280
3281	105	3281
3282	105	3282
3283	105	3283
3284	105	3284
3285	105	3285
3286	105	3286
3287	105	3287
3288	105	3288
3289	105	3289
3290	105	3290
3291	105	3291
3292	105	3292
3293	105	3293
3294	105	3294
3295	105	3295
3296	105	3296
3297	105	3297
3298	105	3298
3299	105	3299
3300	105	3300
3301	105	3301
3302	105	3302
3303	105	3303
3304	105	3304
3305	105	3305
3306	105	3306
3307	105	3307
3308	105	3308
3309	105	3309
3310	105	3310
3311	105	3311
3312	105	3312
3313	105	3313
3314	105	3314
3315	105	3315
3316	105	3316
3317	105	3317
3318	105	3318
3319	105	3319
3320	105	3320
3321	105	3321
3322	105	3322
3323	105	3323
3324	106	3324
3325	106	3325
3326	106	3326
3327	106	3327
3328	106	3328
3329	106	3329
3330	106	3330
3331	106	3331
3332	106	3332
3333	106	3333
3334	106	3334
3335	106	3335
3336	106	3336
3337	106	3337
3338	106	3338
3339	106	3339
3340	106	3340
3341	106	3341
3342	106	3342
3343	106	3343
3344	106	3344
3345	106	3345
3346	106	3346
3347	106	3347
3348	106	3348
3349	106	3349
3350	106	3350
3351	106	3351
3352	106	3352
3353	106	3353
3354	106	3354
3355	106	3355
3356	106	3356
3357	106	3357
3358	106	3358
3359	106	3359
3360	106	3360
3361	106	3361
3362	106	3362
3363	106	3363
3364	106	3364
3365	106	3365
3366	106	3366
3367	106	3367
3368	106	3368
3369	106	3369
3370	106	3370
3371	106	3371
3372	106	3372
3373	106	3373
3374	106	3374
3375	106	3375
3376	106	3376
3377	106	3377
3378	106	3378
3379	107	3379
3380	107	3380
3381	107	3381
3382	107	3382
3383	107	3383
3384	107	3384
3385	107	3385
3386	107	3386
3387	107	3387
3388	107	3388
3389	107	3389
3390	107	3390
3391	107	3391
3392	107	3392
3393	107	3393
3394	107	3394
3395	107	3395
3396	107	3396
3397	107	3397
3398	107	3398
3399	107	3399
3400	107	3400
3401	107	3401
3402	107	3402
3403	108	3403
3404	108	3404
3405	108	3405
3406	108	3406
3407	108	3407
3408	108	3408
3409	108	3409
3410	108	3410
3411	108	3411
3412	108	3412
3413	108	3413
3414	108	3414
3415	108	3415
3416	108	3416
3417	108	3417
3418	108	3418
3419	108	3419
3420	108	3420
3421	108	3421
3422	108	3422
3423	108	3423
3424	109	3424
3425	109	3425
3426	109	3426
3427	109	3427
3428	109	3428
3429	109	3429
3430	109	3430
3431	109	3431
3432	109	3432
3433	109	3433
3434	109	3434
3435	109	3435
3436	109	3436
3437	109	3437
3438	109	3438
3439	109	3439
3440	109	3440
3441	109	3441
3442	109	3442
3443	109	3443
3444	109	3444
3445	109	3445
3446	109	3446
3447	109	3447
3448	109	3448
3449	109	3449
3450	109	3450
3451	109	3451
3452	109	3452
3453	109	3453
3454	110	3454
3455	110	3455
3456	110	3456
3457	110	3457
3458	110	3458
3459	110	3459
3460	110	3460
3461	110	3461
3462	110	3462
3463	110	3463
3464	110	3464
3465	110	3465
3466	110	3466
3467	110	3467
3468	110	3468
3469	110	3469
3470	110	3470
3471	110	3471
3472	110	3472
3473	110	3473
3474	110	3474
3475	110	3475
3476	110	3476
3477	110	3477
3478	110	3478
3479	110	3479
3480	110	3480
3481	110	3481
3482	110	3482
3483	110	3483
3484	110	3484
3485	110	3485
3486	110	3486
3487	110	3487
3488	110	3488
3489	110	3489
3490	110	3490
3491	110	3491
3492	110	3492
3493	110	3493
3494	110	3494
3495	110	3495
3496	110	3496
3497	110	3497
3498	110	3498
3499	110	3499
3500	110	3500
3501	110	3501
3502	110	3502
3503	110	3503
3504	110	3504
3505	110	3505
3506	110	3506
3507	110	3507
3508	110	3508
3509	110	3509
3510	110	3510
3511	110	3511
3512	110	3512
3513	110	3513
3514	110	3514
3515	111	3515
3516	111	3516
3517	111	3517
3518	111	3518
3519	111	3519
3520	111	3520
3521	111	3521
3522	111	3522
3523	111	3523
3524	111	3524
3525	111	3525
3526	111	3526
3527	111	3527
3528	111	3528
3529	111	3529
3530	111	3530
3531	111	3531
3532	111	3532
3533	111	3533
3534	111	3534
3535	111	3535
3536	111	3536
3537	111	3537
3538	112	3538
3539	112	3539
3540	112	3540
3541	112	3541
3542	112	3542
3543	112	3543
3544	112	3544
3545	112	3545
3546	112	3546
3547	112	3547
3548	112	3548
3549	112	3549
3550	112	3550
3551	112	3551
3552	112	3552
3553	112	3553
3554	112	3554
3555	112	3555
3556	112	3556
3557	112	3557
3558	112	3558
3559	112	3559
3560	112	3560
3561	112	3561
3562	112	3562
3563	112	3563
3564	112	3564
3565	112	3565
3566	112	3566
3567	112	3567
3568	112	3568
3569	112	3569
3570	112	3570
3571	112	3571
3572	112	3572
3573	112	3573
3574	112	3574
3575	112	3575
3576	112	3576
3577	112	3577
3578	112	3578
3579	112	3579
3580	113	3580
3581	113	3581
3582	113	3582
3583	113	3583
3584	113	3584
3585	113	3585
3586	113	3586
3587	113	3587
3588	113	3588
3589	113	3589
3590	113	3590
3591	113	3591
3592	113	3592
3593	113	3593
3594	113	3594
3595	113	3595
3596	113	3596
3597	113	3597
3598	113	3598
3599	114	3599
3600	114	3600
3601	114	3601
3602	114	3602
3603	114	3603
3604	114	3604
3605	114	3605
3606	114	3606
3607	114	3607
3608	114	3608
3609	114	3609
3610	114	3610
3611	114	3611
3612	114	3612
3613	114	3613
3614	114	3614
3615	114	3615
3616	114	3616
3617	114	3617
3618	114	3618
3619	114	3619
3620	114	3620
3621	114	3621
3622	114	3622
3623	114	3623
3624	114	3624
3625	114	3625
3626	114	3626
3627	114	3627
3628	114	3628
3629	114	3629
3630	114	3630
3631	115	3631
3632	115	3632
3633	115	3633
3634	115	3634
3635	115	3635
3636	115	3636
3637	115	3637
3638	115	3638
3639	115	3639
3640	115	3640
3641	115	3641
3642	115	3642
3643	115	3643
3644	115	3644
3645	115	3645
3646	115	3646
3647	115	3647
3648	115	3648
3649	115	3649
3650	115	3650
3651	115	3651
3652	115	3652
3653	115	3653
3654	115	3654
3655	115	3655
3656	115	3656
3657	115	3657
3658	115	3658
3659	115	3659
3660	115	3660
3661	116	3661
3662	116	3662
3663	116	3663
3664	116	3664
3665	116	3665
3666	116	3666
3667	116	3667
3668	116	3668
3669	116	3669
3670	116	3670
3671	116	3671
3672	116	3672
3673	116	3673
3674	116	3674
3675	116	3675
3676	116	3676
3677	116	3677
3678	116	3678
3679	116	3679
3680	116	3680
3681	116	3681
3682	116	3682
3683	116	3683
3684	116	3684
3685	116	3685
3686	116	3686
3687	116	3687
3688	116	3688
3689	116	3689
3690	116	3690
3691	116	3691
3692	116	3692
3693	116	3693
3694	116	3694
3695	116	3695
3696	116	3696
3697	117	3697
3698	117	3698
3699	117	3699
3700	117	3700
3701	117	3701
3702	117	3702
3703	117	3703
3704	117	3704
3705	117	3705
3706	117	3706
3707	118	3707
3708	118	3708
3709	118	3709
3710	118	3710
3711	118	3711
3712	118	3712
3713	118	3713
3714	118	3714
3715	118	3715
3716	118	3716
3717	118	3717
3718	118	3718
3719	118	3719
3720	118	3720
3721	118	3721
3722	118	3722
3723	118	3723
3724	118	3724
3725	118	3725
3726	118	3726
3727	118	3727
3728	118	3728
3729	118	3729
3730	118	3730
3731	118	3731
3732	118	3732
3733	118	3733
3734	118	3734
3735	118	3735
3736	118	3736
3737	118	3737
3738	118	3738
3739	118	3739
3740	118	3740
3741	118	3741
3742	118	3742
3743	119	3743
3744	119	3744
3745	119	3745
3746	119	3746
3747	119	3747
3748	119	3748
3749	119	3749
3750	119	3750
3751	119	3751
3752	119	3752
3753	119	3753
3754	119	3754
3755	119	3755
3756	119	3756
3757	119	3757
3758	119	3758
3759	119	3759
3760	119	3760
3761	119	3761
3762	119	3762
3763	119	3763
3764	119	3764
3765	119	3765
3766	119	3766
3767	119	3767
3768	119	3768
3769	119	3769
3770	119	3770
3771	119	3771
3772	119	3772
3773	119	3773
3774	119	3774
3775	119	3775
3776	119	3776
3777	119	3777
3778	119	3778
3779	119	3779
3780	119	3780
3781	119	3781
3782	119	3782
3783	119	3783
3784	119	3784
3785	119	3785
3786	119	3786
3787	119	3787
3788	119	3788
3789	119	3789
3790	119	3790
3791	119	3791
3792	120	3792
3793	120	3793
3794	120	3794
3795	120	3795
3796	120	3796
3797	120	3797
3798	120	3798
3799	120	3799
3800	120	3800
3801	121	3801
3802	121	3802
3803	121	3803
3804	121	3804
3805	121	3805
3806	121	3806
3807	121	3807
3808	121	3808
3809	121	3809
3810	121	3810
3811	121	3811
3812	121	3812
3813	121	3813
3814	121	3814
3815	121	3815
3816	121	3816
3817	121	3817
3818	121	3818
3819	121	3819
3820	121	3820
3821	121	3821
3822	121	3822
3823	121	3823
3824	121	3824
3825	121	3825
3826	121	3826
3827	121	3827
3828	121	3828
3829	121	3829
3830	122	3830
3831	122	3831
3832	122	3832
3833	122	3833
3834	122	3834
3835	123	3835
3836	123	3836
3837	123	3837
3838	123	3838
3839	123	3839
3840	123	3840
3841	123	3841
3842	123	3842
3843	123	3843
3844	123	3844
3845	123	3845
3846	123	3846
3847	123	3847
3848	124	3848
3849	124	3849
3850	124	3850
3851	124	3851
3852	124	3852
3853	124	3853
3854	124	3854
3855	124	3855
3856	124	3856
3857	124	3857
3858	124	3858
3859	124	3859
3860	124	3860
3861	124	3861
3862	124	3862
3863	125	3863
3864	125	3864
3865	125	3865
3866	125	3866
3867	125	3867
3868	125	3868
3869	125	3869
3870	125	3870
3871	125	3871
3872	125	3872
3873	125	3873
3874	125	3874
3875	125	3875
3876	125	3876
3877	125	3877
3878	125	3878
3879	125	3879
3880	125	3880
3881	125	3881
3882	125	3882
3883	125	3883
3884	125	3884
3885	125	3885
3886	125	3886
3887	125	3887
3888	125	3888
3889	125	3889
3890	125	3890
3891	125	3891
3892	125	3892
3893	125	3893
3894	125	3894
3895	125	3895
3896	125	3896
3897	125	3897
3898	125	3898
3899	125	3899
3900	125	3900
3901	125	3901
3902	125	3902
3903	125	3903
3904	126	3904
3905	126	3905
3906	126	3906
3907	126	3907
3908	126	3908
3909	126	3909
3910	126	3910
3911	126	3911
3912	126	3912
3913	126	3913
3914	126	3914
3915	126	3915
3916	126	3916
3917	126	3917
3918	126	3918
3919	126	3919
3920	126	3920
3921	126	3921
3922	126	3922
3923	126	3923
3924	126	3924
3925	126	3925
3926	126	3926
3927	126	3927
3928	126	3928
3929	126	3929
3930	126	3930
3931	126	3931
3932	126	3932
3933	126	3933
3934	126	3934
3935	126	3935
3936	126	3936
3937	126	3937
3938	126	3938
3939	126	3939
3940	126	3940
3941	126	3941
3942	126	3942
3943	126	3943
3944	126	3944
3945	126	3945
3946	126	3946
3947	126	3947
3948	126	3948
3949	126	3949
3950	126	3950
3951	126	3951
3952	126	3952
3953	126	3953
3954	127	3954
3955	127	3955
3956	127	3956
3957	127	3957
3958	127	3958
3959	127	3959
3960	127	3960
3961	127	3961
3962	127	3962
3963	127	3963
3964	127	3964
3965	127	3965
3966	128	3966
3967	129	3967
3968	129	3968
3969	129	3969
3970	129	3970
3971	129	3971
3972	129	3972
3973	129	3973
3974	129	3974
3975	129	3975
3976	129	3976
3977	129	3977
3978	129	3978
3979	129	3979
3980	129	3980
3981	129	3981
3982	129	3982
3983	129	3983
3984	129	3984
3985	129	3985
3986	129	3986
3987	129	3987
3988	129	3988
3989	130	3989
3990	130	3990
3991	130	3991
3992	130	3992
3993	130	3993
3994	130	3994
3995	130	3995
3996	130	3996
3997	130	3997
3998	130	3998
3999	130	3999
4000	130	4000
4001	130	4001
4002	130	4002
4003	130	4003
4004	130	4004
4005	130	4005
4006	130	4006
4007	130	4007
4008	130	4008
4009	130	4009
4010	130	4010
4011	130	4011
4012	130	4012
4013	130	4013
4014	130	4014
4015	130	4015
4016	130	4016
4017	130	4017
4018	130	4018
4019	130	4019
4020	130	4020
4021	130	4021
4022	130	4022
4023	130	4023
4024	130	4024
4025	130	4025
4026	130	4026
4027	130	4027
4028	130	4028
4029	130	4029
4030	130	4030
4031	130	4031
4032	130	4032
4033	130	4033
4034	130	4034
4035	130	4035
4036	130	4036
4037	130	4037
4038	130	4038
4039	130	4039
4040	130	4040
4041	130	4041
4042	130	4042
4043	130	4043
4044	130	4044
4045	130	4045
4046	130	4046
4047	130	4047
4048	130	4048
4049	130	4049
4050	130	4050
4051	130	4051
4052	130	4052
4053	130	4053
4054	130	4054
4055	130	4055
4056	131	4056
4057	131	4057
4058	131	4058
4059	131	4059
4060	131	4060
4061	131	4061
4062	131	4062
4063	131	4063
4064	131	4064
4065	131	4065
4066	131	4066
4067	131	4067
4068	131	4068
4069	131	4069
4070	132	4070
4071	132	4071
4072	132	4072
4073	132	4073
4074	132	4074
4075	132	4075
4076	132	4076
4077	132	4077
4078	132	4078
4079	132	4079
4080	132	4080
4081	132	4081
4082	132	4082
4083	132	4083
4084	132	4084
4085	132	4085
4086	132	4086
4087	133	4087
4088	133	4088
4089	133	4089
4090	133	4090
4091	133	4091
4092	133	4092
4093	133	4093
4094	134	4094
4095	134	4095
4096	134	4096
4097	134	4097
4098	134	4098
4099	134	4099
4100	134	4100
4101	134	4101
4102	134	4102
4103	134	4103
4104	134	4104
4105	134	4105
4106	134	4106
4107	134	4107
4108	134	4108
4109	134	4109
4110	134	4110
4111	134	4111
4112	134	4112
4113	134	4113
4114	134	4114
4115	134	4115
4116	134	4116
4117	134	4117
4118	134	4118
4119	135	4119
4120	135	4120
4121	135	4121
4122	135	4122
4123	135	4123
4124	135	4124
4125	135	4125
4126	135	4126
4127	135	4127
4128	135	4128
4129	135	4129
4130	135	4130
4131	135	4131
4132	135	4132
4133	135	4133
4134	135	4134
4135	135	4135
4136	135	4136
4137	135	4137
4138	135	4138
4139	135	4139
4140	135	4140
4141	135	4141
4142	135	4142
4143	135	4143
4144	135	4144
4145	135	4145
4146	135	4146
4147	135	4147
4148	135	4148
4149	135	4149
4150	135	4150
4151	135	4151
4152	135	4152
4153	135	4153
4154	135	4154
4155	135	4155
4156	135	4156
4157	136	4157
4158	136	4158
4159	136	4159
4160	136	4160
4161	136	4161
4162	136	4162
4163	136	4163
4164	136	4164
4165	136	4165
4166	136	4166
4167	136	4167
4168	136	4168
4169	136	4169
4170	136	4170
4171	136	4171
4172	136	4172
4173	136	4173
4174	136	4174
4175	136	4175
4176	136	4176
4177	136	4177
4178	136	4178
4179	136	4179
4180	136	4180
4181	136	4181
4182	136	4182
4183	137	4183
4184	137	4184
4185	137	4185
4186	137	4186
4187	137	4187
4188	137	4188
4189	137	4189
4190	137	4190
4191	137	4191
4192	137	4192
4193	137	4193
4194	138	4194
4195	138	4195
4196	138	4196
4197	138	4197
4198	138	4198
4199	138	4199
4200	138	4200
4201	138	4201
4202	138	4202
4203	138	4203
4204	138	4204
4205	138	4205
4206	138	4206
4207	138	4207
4208	138	4208
4209	138	4209
4210	138	4210
4211	138	4211
4212	138	4212
4213	138	4213
4214	138	4214
4215	138	4215
4216	138	4216
4217	138	4217
4218	138	4218
4219	139	4219
4220	139	4220
4221	139	4221
4222	139	4222
4223	139	4223
4224	139	4224
4225	139	4225
4226	139	4226
4227	139	4227
4228	139	4228
4229	139	4229
4230	139	4230
4231	139	4231
4232	139	4232
4233	139	4233
4234	139	4234
4235	139	4235
4236	139	4236
4237	139	4237
4238	139	4238
4239	139	4239
4240	139	4240
4241	139	4241
4242	139	4242
4243	139	4243
4244	139	4244
4245	139	4245
4246	139	4246
4247	139	4247
4248	139	4248
4249	139	4249
4250	139	4250
4251	139	4251
4252	139	4252
4253	139	4253
4254	139	4254
4255	139	4255
4256	139	4256
4257	139	4257
4258	139	4258
4259	139	4259
4260	139	4260
4261	139	4261
4262	139	4262
4263	139	4263
4264	139	4264
4265	139	4265
4266	139	4266
4267	140	4267
4268	140	4268
4269	140	4269
4270	140	4270
4271	140	4271
4272	140	4272
4273	140	4273
4274	140	4274
4275	140	4275
4276	140	4276
4277	140	4277
4278	140	4278
4279	140	4279
4280	140	4280
4281	140	4281
4282	140	4282
4283	140	4283
4284	140	4284
4285	141	4285
4286	141	4286
4287	141	4287
4288	141	4288
4289	141	4289
4290	141	4290
4291	141	4291
4292	141	4292
4293	141	4293
4294	141	4294
4295	141	4295
4296	141	4296
4297	141	4297
4298	141	4298
4299	141	4299
4300	141	4300
4301	141	4301
4302	141	4302
4303	141	4303
4304	141	4304
4305	141	4305
4306	141	4306
4307	141	4307
4308	141	4308
4309	141	4309
4310	141	4310
4311	141	4311
4312	141	4312
4313	141	4313
4314	141	4314
4315	142	4315
4316	142	4316
4317	142	4317
4318	142	4318
4319	142	4319
4320	142	4320
4321	142	4321
4322	142	4322
4323	142	4323
4324	142	4324
4325	142	4325
4326	143	4326
4327	143	4327
4328	143	4328
4329	143	4329
4330	143	4330
4331	143	4331
4332	143	4332
4333	143	4333
4334	143	4334
4335	143	4335
4336	143	4336
4337	143	4337
4338	143	4338
4339	143	4339
4340	143	4340
4341	143	4341
4342	143	4342
4343	143	4343
4344	143	4344
4345	143	4345
4346	143	4346
4347	143	4347
4348	143	4348
4349	143	4349
4350	143	4350
4351	143	4351
4352	143	4352
4353	143	4353
4354	144	4354
4355	144	4355
4356	144	4356
4357	144	4357
4358	144	4358
4359	144	4359
4360	144	4360
4361	144	4361
4362	144	4362
4363	144	4363
4364	144	4364
4365	144	4365
4366	144	4366
4367	144	4367
4368	144	4368
4369	144	4369
4370	144	4370
4371	144	4371
4372	144	4372
4373	144	4373
4374	144	4374
4375	145	4375
4376	145	4376
4377	145	4377
4378	145	4378
4379	145	4379
4380	145	4380
4381	145	4381
4382	145	4382
4383	145	4383
4384	145	4384
4385	145	4385
4386	145	4386
4387	145	4387
4388	145	4388
4389	145	4389
4390	145	4390
4391	145	4391
4392	145	4392
4393	145	4393
4394	145	4394
4395	145	4395
4396	145	4396
4397	145	4397
4398	145	4398
4399	145	4399
4400	145	4400
4401	145	4401
4402	145	4402
4403	145	4403
4404	145	4404
4405	145	4405
4406	145	4406
4407	145	4407
4408	146	4408
4409	146	4409
4410	146	4410
4411	146	4411
4412	146	4412
4413	146	4413
4414	146	4414
4415	146	4415
4416	146	4416
4417	146	4417
4418	146	4418
4419	146	4419
4420	146	4420
4421	146	4421
4422	146	4422
4423	146	4423
4424	146	4424
4425	147	4425
4426	147	4426
4427	147	4427
4428	147	4428
4429	147	4429
4430	147	4430
4431	147	4431
4432	147	4432
4433	147	4433
4434	147	4434
4435	147	4435
4436	147	4436
4437	147	4437
4438	147	4438
4439	147	4439
4440	147	4440
4441	147	4441
4442	147	4442
4443	147	4443
4444	147	4444
4445	147	4445
4446	147	4446
4447	148	4447
4448	148	4448
4449	148	4449
4450	148	4450
4451	148	4451
4452	148	4452
4453	148	4453
4454	148	4454
4455	148	4455
4456	148	4456
4457	148	4457
4458	148	4458
4459	148	4459
4460	148	4460
4461	148	4461
4462	148	4462
4463	148	4463
4464	148	4464
4465	148	4465
4466	148	4466
4467	148	4467
4468	148	4468
4469	148	4469
4470	148	4470
4471	148	4471
4472	148	4472
4473	149	4473
4474	149	4474
4475	149	4475
4476	149	4476
4477	149	4477
4478	149	4478
4479	149	4479
4480	149	4480
4481	149	4481
4482	149	4482
4483	149	4483
4484	149	4484
4485	149	4485
4486	149	4486
4487	149	4487
4488	149	4488
4489	149	4489
4490	149	4490
4491	149	4491
4492	149	4492
4493	149	4493
4494	149	4494
4495	149	4495
4496	149	4496
4497	150	4497
4498	150	4498
4499	150	4499
4500	150	4500
4501	150	4501
4502	150	4502
4503	150	4503
4504	150	4504
4505	150	4505
4506	150	4506
4507	150	4507
4508	150	4508
4509	150	4509
4510	150	4510
4511	150	4511
4512	150	4512
4513	150	4513
4514	151	4514
4515	151	4515
4516	151	4516
4517	151	4517
4518	151	4518
4519	151	4519
4520	151	4520
4521	151	4521
4522	151	4522
4523	151	4523
4524	151	4524
4525	151	4525
4526	151	4526
4527	151	4527
4528	151	4528
4529	151	4529
4530	151	4530
4531	151	4531
4532	151	4532
4533	151	4533
4534	151	4534
4535	151	4535
4536	151	4536
4537	151	4537
4538	151	4538
4539	151	4539
4540	151	4540
4541	151	4541
4542	151	4542
4543	152	4543
4544	152	4544
4545	152	4545
4546	152	4546
4547	152	4547
4548	152	4548
4549	152	4549
4550	152	4550
4551	152	4551
4552	152	4552
4553	152	4553
4554	152	4554
4555	152	4555
4556	152	4556
4557	152	4557
4558	152	4558
4559	152	4559
4560	152	4560
4561	152	4561
4562	152	4562
4563	152	4563
4564	152	4564
4565	152	4565
4566	152	4566
4567	152	4567
4568	152	4568
4569	152	4569
4570	152	4570
4571	152	4571
4572	152	4572
4573	152	4573
4574	152	4574
4575	152	4575
4576	152	4576
4577	152	4577
4578	152	4578
4579	152	4579
4580	152	4580
4581	152	4581
4582	152	4582
4583	152	4583
4584	152	4584
4585	152	4585
4586	152	4586
4587	153	4587
4588	153	4588
4589	153	4589
4590	153	4590
4591	153	4591
4592	153	4592
4593	153	4593
4594	153	4594
4595	154	4595
4596	154	4596
4597	154	4597
4598	154	4598
4599	154	4599
4600	154	4600
4601	154	4601
4602	154	4602
4603	154	4603
4604	154	4604
4605	154	4605
4606	154	4606
4607	154	4607
4608	154	4608
4609	154	4609
4610	154	4610
4611	154	4611
4612	154	4612
4613	155	4613
4614	155	4614
4615	155	4615
4616	155	4616
4617	155	4617
4618	155	4618
4619	155	4619
4620	155	4620
4621	155	4621
4622	155	4622
4623	155	4623
4624	155	4624
4625	155	4625
4626	155	4626
4627	155	4627
4628	155	4628
4629	155	4629
4630	155	4630
4631	155	4631
4632	155	4632
4633	155	4633
4634	155	4634
4635	155	4635
4636	155	4636
4637	155	4637
4638	155	4638
4639	155	4639
4640	155	4640
4641	155	4641
4642	155	4642
4643	155	4643
4644	155	4644
4645	155	4645
4646	155	4646
4647	155	4647
4648	155	4648
4649	155	4649
4650	155	4650
4651	155	4651
4652	155	4652
4653	155	4653
4654	155	4654
4655	155	4655
4656	155	4656
4657	155	4657
4658	156	4658
4659	156	4659
4660	156	4660
4661	156	4661
4662	156	4662
4663	156	4663
4664	156	4664
4665	156	4665
4666	156	4666
4667	156	4667
4668	156	4668
4669	156	4669
4670	156	4670
4671	156	4671
4672	156	4672
4673	156	4673
4674	156	4674
4675	156	4675
4676	156	4676
4677	156	4677
4678	156	4678
4679	156	4679
4680	156	4680
4681	156	4681
4682	156	4682
4683	156	4683
4684	156	4684
4685	156	4685
4686	156	4686
4687	156	4687
4688	156	4688
4689	156	4689
4690	156	4690
4691	156	4691
4692	156	4692
4693	156	4693
4694	156	4694
4695	156	4695
4696	156	4696
4697	156	4697
4698	156	4698
4699	156	4699
4700	156	4700
4701	156	4701
4702	156	4702
4703	156	4703
4704	156	4704
4705	156	4705
4706	156	4706
4707	156	4707
4708	156	4708
4709	156	4709
4710	156	4710
4711	156	4711
4712	156	4712
4713	156	4713
4714	156	4714
4715	156	4715
4716	156	4716
4717	156	4717
4718	156	4718
4719	156	4719
4720	156	4720
4721	156	4721
4722	157	4722
4723	157	4723
4724	157	4724
4725	157	4725
4726	157	4726
4727	157	4727
4728	157	4728
4729	157	4729
4730	157	4730
4731	157	4731
4732	157	4732
4733	157	4733
4734	157	4734
4735	157	4735
4736	157	4736
4737	158	4737
4738	158	4738
4739	158	4739
4740	158	4740
4741	158	4741
4742	158	4742
4743	158	4743
4744	158	4744
4745	158	4745
4746	158	4746
4747	158	4747
4748	158	4748
4749	158	4749
4750	158	4750
4751	158	4751
4752	158	4752
4753	158	4753
4754	158	4754
4755	158	4755
4756	158	4756
4757	158	4757
4758	158	4758
4759	158	4759
4760	158	4760
4761	158	4761
4762	158	4762
4763	158	4763
4764	158	4764
4765	158	4765
4766	158	4766
4767	158	4767
4768	158	4768
4769	158	4769
4770	158	4770
4771	158	4771
4772	158	4772
4773	159	4773
4774	159	4774
4775	159	4775
4776	159	4776
4777	159	4777
4778	159	4778
4779	159	4779
4780	159	4780
4781	159	4781
4782	159	4782
4783	159	4783
4784	159	4784
4785	159	4785
4786	160	4786
4787	160	4787
4788	160	4788
4789	160	4789
4790	160	4790
4791	160	4791
4792	160	4792
4793	160	4793
4794	160	4794
4795	160	4795
4796	160	4796
4797	160	4797
4798	160	4798
4799	160	4799
4800	160	4800
4801	160	4801
4802	160	4802
4803	160	4803
4804	160	4804
4805	160	4805
4806	161	4806
4807	161	4807
4808	161	4808
4809	161	4809
4810	161	4810
4811	161	4811
4812	161	4812
4813	161	4813
4814	161	4814
4815	161	4815
4816	161	4816
4817	161	4817
4818	161	4818
4819	161	4819
4820	161	4820
4821	161	4821
4822	162	4822
4823	162	4823
4824	162	4824
4825	162	4825
4826	162	4826
4827	162	4827
4828	162	4828
4829	162	4829
4830	162	4830
4831	162	4831
4832	162	4832
4833	162	4833
4834	162	4834
4835	162	4835
4836	162	4836
4837	162	4837
4838	162	4838
4839	162	4839
4840	162	4840
4841	162	4841
4842	162	4842
4843	162	4843
4844	162	4844
4845	163	4845
4846	163	4846
4847	163	4847
4848	163	4848
4849	163	4849
4850	163	4850
4851	163	4851
4852	163	4852
4853	163	4853
4854	163	4854
4855	163	4855
4856	164	4856
4857	164	4857
4858	164	4858
4859	164	4859
4860	164	4860
4861	164	4861
4862	164	4862
4863	164	4863
4864	164	4864
4865	164	4865
4866	164	4866
4867	164	4867
4868	164	4868
4869	164	4869
4870	164	4870
4871	164	4871
4872	164	4872
4873	164	4873
4874	164	4874
4875	164	4875
4876	164	4876
4877	164	4877
4878	164	4878
4879	164	4879
4880	164	4880
4881	164	4881
4882	164	4882
4883	165	4883
4884	165	4884
4885	165	4885
4886	165	4886
4887	165	4887
4888	165	4888
4889	165	4889
4890	165	4890
4891	165	4891
4892	165	4892
4893	165	4893
4894	165	4894
4895	165	4895
4896	165	4896
4897	165	4897
4898	165	4898
4899	165	4899
4900	165	4900
4901	165	4901
4902	165	4902
4903	165	4903
4904	165	4904
4905	165	4905
4906	165	4906
4907	165	4907
4908	165	4908
4909	165	4909
4910	166	4910
4911	166	4911
4912	166	4912
4913	166	4913
4914	166	4914
4915	166	4915
4916	166	4916
4917	166	4917
4918	166	4918
4919	166	4919
4920	166	4920
4921	166	4921
4922	166	4922
4923	166	4923
4924	166	4924
4925	166	4925
4926	166	4926
4927	166	4927
4928	167	4928
4929	167	4929
4930	167	4930
4931	167	4931
4932	167	4932
4933	167	4933
4934	167	4934
4935	167	4935
4936	167	4936
4937	167	4937
4938	167	4938
4939	167	4939
4940	167	4940
4941	167	4941
4942	167	4942
4943	167	4943
4944	167	4944
4945	167	4945
4946	167	4946
4947	167	4947
4948	167	4948
4949	167	4949
4950	167	4950
4951	167	4951
4952	167	4952
4953	167	4953
4954	167	4954
4955	167	4955
4956	168	4956
4957	168	4957
4958	168	4958
4959	168	4959
4960	168	4960
4961	168	4961
4962	168	4962
4963	168	4963
4964	168	4964
4965	168	4965
4966	168	4966
4967	168	4967
4968	168	4968
4969	168	4969
4970	168	4970
4971	168	4971
4972	168	4972
4973	168	4973
4974	168	4974
4975	168	4975
4976	168	4976
4977	168	4977
4978	168	4978
4979	168	4979
4980	168	4980
4981	168	4981
4982	168	4982
4983	168	4983
4984	168	4984
4985	168	4985
4986	168	4986
4987	168	4987
4988	168	4988
4989	168	4989
4990	168	4990
4991	168	4991
4992	168	4992
4993	168	4993
4994	168	4994
4995	168	4995
4996	168	4996
4997	168	4997
4998	168	4998
4999	168	4999
5000	168	5000
5001	168	5001
5002	168	5002
5003	168	5003
5004	168	5004
5005	168	5005
5006	168	5006
5007	168	5007
5008	168	5008
5009	168	5009
5010	168	5010
5011	168	5011
5012	168	5012
5013	168	5013
5014	168	5014
5015	168	5015
5016	168	5016
5017	168	5017
5018	168	5018
5019	168	5019
5020	168	5020
5021	168	5021
5022	168	5022
5023	168	5023
5024	168	5024
5025	168	5025
5026	168	5026
5027	168	5027
5028	168	5028
5029	168	5029
5030	169	5030
5031	169	5031
5032	169	5032
5033	169	5033
5034	169	5034
5035	169	5035
5036	169	5036
5037	169	5037
5038	169	5038
5039	169	5039
5040	169	5040
5041	169	5041
5042	169	5042
5043	169	5043
5044	169	5044
5045	169	5045
5046	169	5046
5047	169	5047
5048	169	5048
5049	169	5049
5050	169	5050
5051	169	5051
5052	169	5052
5053	169	5053
5054	169	5054
5055	169	5055
5056	169	5056
5057	169	5057
5058	169	5058
5059	169	5059
5060	169	5060
5061	169	5061
5062	169	5062
5063	169	5063
5064	169	5064
5065	169	5065
5066	169	5066
5067	169	5067
5068	169	5068
5069	169	5069
5070	169	5070
5071	169	5071
5072	169	5072
5073	169	5073
5074	169	5074
5075	169	5075
5076	169	5076
5077	170	5077
5078	170	5078
5079	170	5079
5080	170	5080
5081	170	5081
5082	170	5082
5083	170	5083
5084	170	5084
5085	170	5085
5086	170	5086
5087	170	5087
5088	170	5088
5089	170	5089
5090	170	5090
5091	170	5091
5092	170	5092
5093	171	5093
5094	171	5094
5095	171	5095
5096	171	5096
5097	171	5097
5098	171	5098
5099	171	5099
5100	171	5100
5101	171	5101
5102	171	5102
5103	171	5103
5104	171	5104
5105	171	5105
5106	171	5106
5107	171	5107
5108	171	5108
5109	171	5109
5110	171	5110
5111	171	5111
5112	171	5112
5113	171	5113
5114	171	5114
5115	171	5115
5116	171	5116
5117	171	5117
5118	171	5118
5119	171	5119
5120	171	5120
5121	171	5121
5122	171	5122
5123	171	5123
5124	171	5124
5125	171	5125
5126	171	5126
5127	171	5127
5128	172	5128
5129	172	5129
5130	172	5130
5131	172	5131
5132	172	5132
5133	172	5133
5134	172	5134
5135	172	5135
5136	172	5136
5137	172	5137
5138	172	5138
5139	172	5139
5140	172	5140
5141	172	5141
5142	172	5142
5143	172	5143
5144	172	5144
5145	172	5145
5146	172	5146
5147	172	5147
5148	172	5148
5149	172	5149
5150	172	5150
5151	172	5151
5152	172	5152
5153	172	5153
5154	172	5154
5155	173	5155
5156	173	5156
5157	173	5157
5158	173	5158
5159	173	5159
5160	173	5160
5161	173	5161
5162	173	5162
5163	173	5163
5164	173	5164
5165	174	5165
5166	174	5166
5167	174	5167
5168	174	5168
5169	174	5169
5170	174	5170
5171	174	5171
5172	174	5172
5173	174	5173
5174	174	5174
5175	174	5175
5176	174	5176
5177	174	5177
5178	175	5178
5179	175	5179
5180	175	5180
5181	175	5181
5182	175	5182
5183	175	5183
5184	175	5184
5185	175	5185
5186	175	5186
5187	175	5187
5188	175	5188
5189	175	5189
5190	175	5190
5191	175	5191
5192	175	5192
5193	175	5193
5194	175	5194
5195	175	5195
5196	175	5196
5197	175	5197
5198	175	5198
5199	175	5199
5200	175	5200
5201	175	5201
5202	175	5202
5203	175	5203
5204	175	5204
5205	176	5205
5206	176	5206
5207	176	5207
5208	176	5208
5209	176	5209
5210	176	5210
5211	176	5211
5212	176	5212
5213	176	5213
5214	176	5214
5215	176	5215
5216	176	5216
5217	176	5217
5218	176	5218
5219	176	5219
5220	176	5220
5221	176	5221
5222	176	5222
5223	176	5223
5224	176	5224
5225	176	5225
5226	176	5226
5227	176	5227
5228	177	5228
5229	177	5229
5230	177	5230
5231	177	5231
5232	177	5232
5233	177	5233
5234	177	5234
5235	177	5235
5236	177	5236
5237	177	5237
5238	177	5238
5239	177	5239
5240	177	5240
5241	177	5241
5242	177	5242
5243	177	5243
5244	177	5244
5245	177	5245
5246	177	5246
5247	177	5247
5248	177	5248
5249	177	5249
5250	177	5250
5251	177	5251
5252	177	5252
5253	177	5253
5254	177	5254
5255	177	5255
5256	177	5256
5257	177	5257
5258	177	5258
5259	177	5259
5260	177	5260
5261	177	5261
5262	177	5262
5263	177	5263
5264	177	5264
5265	177	5265
5266	177	5266
5267	178	5267
5268	178	5268
5269	178	5269
5270	178	5270
5271	178	5271
5272	178	5272
5273	178	5273
5274	178	5274
5275	178	5275
5276	178	5276
5277	178	5277
5278	178	5278
5279	178	5279
5280	179	5280
5281	179	5281
5282	179	5282
5283	179	5283
5284	179	5284
5285	179	5285
5286	179	5286
5287	179	5287
5288	179	5288
5289	179	5289
5290	179	5290
5291	179	5291
5292	179	5292
5293	179	5293
5294	179	5294
5295	179	5295
5296	179	5296
5297	179	5297
5298	179	5298
5299	179	5299
5300	179	5300
5301	179	5301
5302	180	5302
5303	180	5303
5304	180	5304
5305	180	5305
5306	180	5306
5307	180	5307
5308	180	5308
5309	180	5309
5310	180	5310
5311	180	5311
5312	180	5312
5313	180	5313
5314	180	5314
5315	180	5315
5316	180	5316
5317	180	5317
5318	180	5318
5319	180	5319
5320	180	5320
5321	180	5321
5322	180	5322
5323	181	5323
5324	181	5324
5325	181	5325
5326	181	5326
5327	181	5327
5328	181	5328
5329	181	5329
5330	181	5330
5331	181	5331
5332	181	5332
5333	181	5333
5334	181	5334
5335	181	5335
5336	181	5336
5337	181	5337
5338	181	5338
5339	181	5339
5340	181	5340
5341	181	5341
5342	181	5342
5343	181	5343
5344	181	5344
5345	181	5345
5346	181	5346
5347	181	5347
5348	181	5348
5349	181	5349
5350	181	5350
5351	181	5351
5352	181	5352
5353	181	5353
5354	181	5354
5355	181	5355
5356	181	5356
5357	181	5357
5358	181	5358
5359	181	5359
5360	181	5360
5361	182	5361
5362	182	5362
5363	182	5363
5364	182	5364
5365	182	5365
5366	182	5366
5367	182	5367
5368	182	5368
5369	182	5369
5370	182	5370
5371	182	5371
5372	183	5372
5373	183	5373
5374	183	5374
5375	184	5375
5376	184	5376
5377	184	5377
5378	184	5378
5379	184	5379
5380	184	5380
5381	184	5381
5382	184	5382
5383	184	5383
5384	184	5384
5385	185	5385
5386	185	5386
5387	185	5387
5388	185	5388
5389	185	5389
5390	185	5390
5391	185	5391
5392	185	5392
5393	185	5393
5394	185	5394
5395	185	5395
5396	185	5396
5397	185	5397
5398	185	5398
5399	185	5399
5400	185	5400
5401	185	5401
5402	185	5402
5403	185	5403
5404	185	5404
5405	185	5405
5406	185	5406
5407	185	5407
5408	185	5408
5409	185	5409
5410	185	5410
5411	185	5411
5412	185	5412
5413	185	5413
5414	185	5414
5415	185	5415
5416	185	5416
5417	185	5417
5418	185	5418
5419	186	5419
5420	186	5420
5421	186	5421
5422	186	5422
5423	186	5423
5424	186	5424
5425	186	5425
5426	186	5426
5427	186	5427
5428	186	5428
5429	187	5429
5430	187	5430
5431	187	5431
5432	187	5432
5433	187	5433
5434	187	5434
5435	187	5435
5436	187	5436
5437	187	5437
5438	187	5438
5439	187	5439
5440	187	5440
5441	187	5441
5442	187	5442
5443	187	5443
5444	188	5444
5445	188	5445
5446	188	5446
5447	188	5447
5448	188	5448
5449	188	5449
5450	188	5450
5451	188	5451
5452	188	5452
5453	188	5453
5454	188	5454
5455	188	5455
5456	188	5456
5457	188	5457
5458	188	5458
5459	188	5459
5460	188	5460
5461	188	5461
5462	188	5462
5463	188	5463
5464	188	5464
5465	188	5465
5466	188	5466
5467	188	5467
5468	188	5468
5469	188	5469
5470	188	5470
5471	188	5471
5472	188	5472
5473	188	5473
5474	188	5474
5475	188	5475
5476	188	5476
5477	188	5477
5478	189	5478
5479	189	5479
5480	189	5480
5481	189	5481
5482	189	5482
5483	189	5483
5484	189	5484
5485	189	5485
5486	189	5486
5487	189	5487
5488	189	5488
5489	189	5489
5490	189	5490
5491	189	5491
5492	189	5492
5493	189	5493
5494	189	5494
5495	189	5495
5496	189	5496
5497	189	5497
5498	190	5498
5499	190	5499
5500	190	5500
5501	190	5501
5502	190	5502
5503	190	5503
5504	190	5504
5505	190	5505
5506	190	5506
5507	190	5507
5508	190	5508
5509	190	5509
5510	191	5510
5511	191	5511
5512	191	5512
5513	191	5513
5514	191	5514
5515	191	5515
5516	191	5516
5517	191	5517
5518	191	5518
5519	191	5519
5520	191	5520
5521	191	5521
5522	191	5522
5523	191	5523
5524	191	5524
5525	191	5525
5526	191	5526
5527	191	5527
5528	191	5528
5529	192	5529
5530	192	5530
5531	192	5531
5532	192	5532
5533	192	5533
5534	192	5534
5535	192	5535
5536	192	5536
5537	192	5537
5538	192	5538
5539	192	5539
5540	192	5540
5541	192	5541
5542	192	5542
5543	193	5543
5544	193	5544
5545	193	5545
5546	193	5546
5547	193	5547
5548	193	5548
5549	193	5549
5550	193	5550
5551	193	5551
5552	193	5552
5553	193	5553
5554	193	5554
5555	193	5555
5556	193	5556
5557	193	5557
5558	193	5558
5559	193	5559
5560	193	5560
5561	193	5561
5562	193	5562
5563	193	5563
5564	193	5564
5565	193	5565
5566	193	5566
5567	193	5567
5568	194	5568
5569	194	5569
5570	194	5570
5571	194	5571
5572	194	5572
5573	194	5573
5574	194	5574
5575	194	5575
5576	194	5576
5577	194	5577
5578	194	5578
5579	194	5579
5580	194	5580
5581	194	5581
5582	194	5582
5583	194	5583
5584	194	5584
5585	194	5585
5586	194	5586
5587	194	5587
5588	194	5588
5589	194	5589
5590	194	5590
5591	194	5591
5592	194	5592
5593	194	5593
5594	194	5594
5595	194	5595
5596	194	5596
5597	194	5597
5598	195	5598
5599	195	5599
5600	195	5600
5601	195	5601
5602	195	5602
5603	195	5603
5604	195	5604
5605	195	5605
5606	195	5606
5607	195	5607
5608	195	5608
5609	195	5609
5610	195	5610
5611	195	5611
5612	195	5612
5613	195	5613
5614	195	5614
5615	195	5615
5616	196	5616
5617	196	5617
5618	196	5618
5619	196	5619
5620	196	5620
5621	196	5621
5622	196	5622
5623	196	5623
5624	196	5624
5625	196	5625
5626	196	5626
5627	196	5627
5628	196	5628
5629	196	5629
5630	196	5630
5631	196	5631
5632	196	5632
5633	196	5633
5634	196	5634
5635	196	5635
5636	197	5636
5637	197	5637
5638	197	5638
5639	197	5639
5640	197	5640
5641	197	5641
5642	197	5642
5643	197	5643
5644	197	5644
5645	197	5645
5646	197	5646
5647	197	5647
5648	197	5648
5649	197	5649
5650	198	5650
5651	198	5651
5652	198	5652
5653	198	5653
5654	198	5654
5655	198	5655
5656	198	5656
5657	198	5657
5658	198	5658
5659	198	5659
5660	198	5660
5661	198	5661
5662	198	5662
5663	198	5663
5664	198	5664
5665	198	5665
5666	198	5666
5667	198	5667
5668	198	5668
5669	198	5669
5670	198	5670
5671	198	5671
5672	198	5672
5673	198	5673
5674	198	5674
5675	198	5675
5676	198	5676
5677	198	5677
5678	198	5678
5679	198	5679
5680	198	5680
5681	198	5681
5682	198	5682
5683	198	5683
5684	199	5684
5685	199	5685
5686	199	5686
5687	199	5687
5688	199	5688
5689	199	5689
5690	199	5690
5691	199	5691
5692	199	5692
5693	199	5693
5694	199	5694
5695	199	5695
5696	199	5696
5697	199	5697
5698	199	5698
5699	199	5699
5700	199	5700
5701	199	5701
5702	199	5702
5703	199	5703
5704	199	5704
5705	199	5705
5706	199	5706
5707	199	5707
5708	199	5708
5709	199	5709
5710	199	5710
5711	199	5711
5712	199	5712
5713	199	5713
5714	199	5714
5715	199	5715
5716	199	5716
5717	199	5717
5718	200	5718
5719	200	5719
5720	200	5720
5721	200	5721
5722	200	5722
5723	200	5723
5724	200	5724
5725	200	5725
5726	200	5726
5727	200	5727
5728	200	5728
5729	200	5729
5730	200	5730
5731	200	5731
5732	200	5732
5733	200	5733
5734	200	5734
5735	200	5735
5736	200	5736
5737	200	5737
5738	200	5738
5739	200	5739
5740	200	5740
5741	200	5741
5742	200	5742
5743	200	5743
5744	200	5744
5745	200	5745
5746	200	5746
5747	200	5747
5748	200	5748
5749	200	5749
5750	200	5750
5751	200	5751
5752	200	5752
5753	200	5753
5754	200	5754
5755	200	5755
5756	200	5756
5757	200	5757
5758	200	5758
5759	200	5759
5760	200	5760
5761	201	5761
5762	201	5762
5763	201	5763
5764	201	5764
5765	201	5765
5766	201	5766
5767	201	5767
5768	201	5768
5769	201	5769
5770	201	5770
5771	201	5771
5772	201	5772
5773	201	5773
5774	201	5774
5775	201	5775
5776	201	5776
5777	201	5777
5778	201	5778
5779	201	5779
5780	201	5780
5781	201	5781
5782	201	5782
5783	201	5783
5784	201	5784
5785	201	5785
5786	201	5786
5787	201	5787
5788	201	5788
5789	202	5789
5790	202	5790
5791	202	5791
5792	202	5792
5793	202	5793
5794	202	5794
5795	202	5795
5796	202	5796
5797	202	5797
5798	202	5798
5799	202	5799
5800	202	5800
5801	202	5801
5802	202	5802
5803	202	5803
5804	203	5804
5805	203	5805
5806	203	5806
5807	203	5807
5808	203	5808
5809	203	5809
5810	203	5810
5811	203	5811
5812	203	5812
5813	203	5813
5814	203	5814
5815	203	5815
5816	203	5816
5817	203	5817
5818	203	5818
5819	203	5819
5820	203	5820
5821	203	5821
5822	203	5822
5823	203	5823
5824	203	5824
5825	203	5825
5826	203	5826
5827	204	5827
5828	204	5828
5829	204	5829
5830	204	5830
5831	204	5831
5832	204	5832
5833	204	5833
5834	204	5834
5835	204	5835
5836	204	5836
5837	204	5837
5838	204	5838
5839	204	5839
5840	204	5840
5841	204	5841
5842	204	5842
5843	204	5843
5844	204	5844
5845	204	5845
5846	204	5846
5847	204	5847
5848	204	5848
5849	204	5849
5850	204	5850
5851	204	5851
5852	204	5852
5853	204	5853
5854	204	5854
5855	204	5855
5856	204	5856
5857	204	5857
5858	204	5858
5859	204	5859
5860	204	5860
5861	204	5861
5862	204	5862
5863	204	5863
5864	205	5864
5865	205	5865
5866	205	5866
5867	205	5867
5868	205	5868
5869	205	5869
5870	205	5870
5871	205	5871
5872	205	5872
5873	205	5873
5874	205	5874
5875	205	5875
5876	205	5876
5877	205	5877
5878	205	5878
5879	206	5879
5880	206	5880
5881	206	5881
5882	206	5882
5883	206	5883
5884	206	5884
5885	206	5885
5886	206	5886
5887	206	5887
5888	206	5888
5889	206	5889
5890	206	5890
5891	206	5891
5892	206	5892
5893	206	5893
5894	206	5894
5895	206	5895
5896	207	5896
5897	207	5897
5898	207	5898
5899	207	5899
5900	207	5900
5901	207	5901
5902	207	5902
5903	207	5903
5904	207	5904
5905	207	5905
5906	207	5906
5907	207	5907
5908	207	5908
5909	207	5909
5910	207	5910
5911	207	5911
5912	207	5912
5913	207	5913
5914	207	5914
5915	207	5915
5916	207	5916
5917	208	5917
5918	208	5918
5919	208	5919
5920	208	5920
5921	208	5921
5922	208	5922
5923	208	5923
5924	208	5924
5925	208	5925
5926	208	5926
5927	209	5927
5928	209	5928
5929	209	5929
5930	209	5930
5931	209	5931
5932	209	5932
5933	209	5933
5934	209	5934
5935	209	5935
5936	209	5936
5937	209	5937
5938	209	5938
5939	209	5939
5940	209	5940
5941	209	5941
5942	209	5942
5943	210	5943
5944	210	5944
5945	210	5945
5946	210	5946
5947	210	5947
5948	210	5948
5949	210	5949
5950	210	5950
5951	210	5951
5952	210	5952
5953	210	5953
5954	210	5954
5955	210	5955
5956	210	5956
5957	210	5957
5958	210	5958
5959	210	5959
5960	210	5960
5961	210	5961
5962	210	5962
5963	210	5963
5964	210	5964
5965	210	5965
5966	210	5966
5967	210	5967
5968	210	5968
5969	210	5969
5970	210	5970
5971	210	5971
5972	210	5972
5973	210	5973
5974	210	5974
5975	210	5975
5976	210	5976
5977	210	5977
5978	210	5978
5979	210	5979
5980	210	5980
5981	211	5981
5982	211	5982
5983	211	5983
5984	211	5984
5985	211	5985
5986	211	5986
5987	211	5987
5988	211	5988
5989	211	5989
5990	211	5990
5991	211	5991
5992	211	5992
5993	211	5993
5994	211	5994
5995	211	5995
5996	212	5996
5997	212	5997
5998	212	5998
5999	212	5999
6000	212	6000
6001	212	6001
6002	212	6002
6003	212	6003
6004	212	6004
6005	212	6005
6006	212	6006
6007	212	6007
6008	212	6008
6009	212	6009
6010	212	6010
6011	212	6011
6012	212	6012
6013	212	6013
6014	212	6014
6015	212	6015
6016	212	6016
6017	212	6017
6018	212	6018
6019	212	6019
6020	212	6020
6021	212	6021
6022	212	6022
6023	212	6023
6024	212	6024
6025	212	6025
6026	212	6026
6027	212	6027
6028	213	6028
6029	213	6029
6030	213	6030
6031	213	6031
6032	213	6032
6033	213	6033
6034	213	6034
6035	213	6035
6036	213	6036
6037	213	6037
6038	213	6038
6039	213	6039
6040	213	6040
6041	213	6041
6042	213	6042
6043	213	6043
6044	213	6044
6045	213	6045
6046	213	6046
6047	213	6047
6048	213	6048
6049	214	6049
6050	214	6050
6051	214	6051
6052	214	6052
6053	214	6053
6054	214	6054
6055	214	6055
6056	214	6056
6057	214	6057
6058	214	6058
6059	214	6059
6060	214	6060
6061	214	6061
6062	215	6062
6063	215	6063
6064	215	6064
6065	215	6065
6066	215	6066
6067	215	6067
6068	215	6068
6069	215	6069
6070	215	6070
6071	215	6071
6072	215	6072
6073	215	6073
6074	215	6074
6075	215	6075
6076	215	6076
6077	215	6077
6078	215	6078
6079	215	6079
6080	215	6080
6081	215	6081
6082	215	6082
6083	216	6083
6084	216	6084
6085	216	6085
6086	216	6086
6087	216	6087
6088	216	6088
6089	216	6089
6090	216	6090
6091	216	6091
6092	216	6092
6093	216	6093
6094	217	6094
6095	217	6095
6096	217	6096
6097	217	6097
6098	217	6098
6099	217	6099
6100	217	6100
6101	217	6101
6102	217	6102
6103	217	6103
6104	217	6104
6105	217	6105
6106	217	6106
6107	217	6107
6108	217	6108
6109	217	6109
6110	217	6110
6111	217	6111
6112	217	6112
6113	217	6113
6114	217	6114
6115	217	6115
6116	217	6116
6117	217	6117
6118	217	6118
6119	218	6119
6120	218	6120
6121	218	6121
6122	218	6122
6123	218	6123
6124	218	6124
6125	218	6125
6126	218	6126
6127	218	6127
6128	218	6128
6129	218	6129
6130	218	6130
6131	218	6131
6132	218	6132
6133	218	6133
6134	218	6134
6135	218	6135
6136	218	6136
6137	218	6137
6138	218	6138
6139	218	6139
6140	218	6140
6141	218	6141
6142	218	6142
6143	218	6143
6144	218	6144
6145	218	6145
6146	218	6146
6147	218	6147
6148	218	6148
6149	218	6149
6150	218	6150
6151	218	6151
6152	218	6152
6153	218	6153
6154	218	6154
6155	218	6155
6156	218	6156
6157	218	6157
6158	218	6158
6159	218	6159
6160	218	6160
6161	218	6161
6162	218	6162
6163	218	6163
6164	218	6164
6165	218	6165
6166	219	6166
6167	219	6167
6168	219	6168
6169	219	6169
6170	219	6170
6171	219	6171
6172	219	6172
6173	219	6173
6174	219	6174
6175	219	6175
6176	219	6176
6177	219	6177
6178	219	6178
6179	219	6179
6180	219	6180
6181	219	6181
6182	219	6182
6183	219	6183
6184	219	6184
6185	219	6185
6186	219	6186
6187	219	6187
6188	219	6188
6189	219	6189
6190	219	6190
6191	219	6191
6192	219	6192
6193	219	6193
6194	219	6194
6195	219	6195
6196	219	6196
6197	219	6197
6198	219	6198
6199	219	6199
6200	219	6200
6201	219	6201
6202	219	6202
6203	219	6203
6204	219	6204
6205	219	6205
6206	219	6206
6207	219	6207
6208	219	6208
6209	219	6209
6210	219	6210
6211	219	6211
6212	219	6212
6213	219	6213
6214	219	6214
6215	219	6215
6216	219	6216
6217	219	6217
6218	219	6218
6219	219	6219
6220	219	6220
6221	219	6221
6222	219	6222
6223	219	6223
6224	219	6224
6225	219	6225
6226	220	6226
6227	220	6227
6228	220	6228
6229	220	6229
6230	220	6230
6231	220	6231
6232	220	6232
6233	220	6233
6234	220	6234
6235	220	6235
6236	220	6236
6237	220	6237
6238	220	6238
6239	220	6239
6240	220	6240
6241	220	6241
6242	220	6242
6243	220	6243
6244	220	6244
6245	220	6245
6246	220	6246
6247	220	6247
6248	220	6248
6249	220	6249
6250	220	6250
6251	220	6251
6252	221	6252
6253	221	6253
6254	221	6254
6255	221	6255
6256	221	6256
6257	221	6257
6258	221	6258
6259	221	6259
6260	221	6260
6261	221	6261
6262	221	6262
6263	221	6263
6264	221	6264
6265	221	6265
6266	221	6266
6267	221	6267
6268	221	6268
6269	221	6269
6270	221	6270
6271	221	6271
6272	221	6272
6273	221	6273
6274	221	6274
6275	221	6275
6276	221	6276
6277	221	6277
6278	221	6278
6279	221	6279
6280	221	6280
6281	221	6281
6282	221	6282
6283	221	6283
6284	221	6284
6285	221	6285
6286	221	6286
6287	221	6287
6288	221	6288
6289	221	6289
6290	222	6290
6291	222	6291
6292	222	6292
6293	222	6293
6294	222	6294
6295	222	6295
6296	222	6296
6297	222	6297
6298	222	6298
6299	222	6299
6300	222	6300
6301	222	6301
6302	222	6302
6303	222	6303
6304	222	6304
6305	222	6305
6306	222	6306
6307	222	6307
6308	222	6308
6309	222	6309
6310	222	6310
6311	222	6311
6312	222	6312
6313	222	6313
6314	222	6314
6315	222	6315
6316	222	6316
6317	223	6317
6318	223	6318
6319	223	6319
6320	223	6320
6321	223	6321
6322	223	6322
6323	223	6323
6324	223	6324
6325	223	6325
6326	223	6326
6327	223	6327
6328	223	6328
6329	223	6329
6330	223	6330
6331	223	6331
6332	223	6332
6333	223	6333
6334	223	6334
6335	223	6335
6336	223	6336
6337	223	6337
6338	223	6338
6339	224	6339
6340	224	6340
6341	224	6341
6342	224	6342
6343	224	6343
6344	224	6344
6345	224	6345
6346	224	6346
6347	224	6347
6348	224	6348
6349	224	6349
6350	224	6350
6351	224	6351
6352	224	6352
6353	224	6353
6354	225	6354
6355	225	6355
6356	225	6356
6357	225	6357
6358	225	6358
6359	225	6359
6360	225	6360
6361	225	6361
6362	225	6362
6363	225	6363
6364	225	6364
6365	225	6365
6366	225	6366
6367	225	6367
6368	225	6368
6369	225	6369
6370	225	6370
6371	226	6371
6372	226	6372
6373	226	6373
6374	226	6374
6375	226	6375
6376	226	6376
6377	226	6377
6378	226	6378
6379	226	6379
6380	226	6380
6381	226	6381
6382	226	6382
6383	226	6383
6384	226	6384
6385	226	6385
6386	226	6386
6387	226	6387
6388	226	6388
6389	226	6389
6390	226	6390
6391	226	6391
6392	226	6392
6393	226	6393
6394	226	6394
6395	226	6395
6396	227	6396
6397	227	6397
6398	227	6398
6399	227	6399
6400	227	6400
6401	227	6401
6402	227	6402
6403	227	6403
6404	227	6404
6405	227	6405
6406	227	6406
6407	227	6407
6408	227	6408
6409	227	6409
6410	227	6410
6411	227	6411
6412	227	6412
6413	227	6413
6414	227	6414
6415	227	6415
6416	227	6416
6417	227	6417
6418	227	6418
6419	227	6419
6420	227	6420
6421	227	6421
6422	227	6422
6423	227	6423
6424	227	6424
6425	227	6425
6426	227	6426
6427	227	6427
6428	227	6428
6429	227	6429
6430	227	6430
6431	227	6431
6432	227	6432
6433	227	6433
6434	227	6434
6435	227	6435
6436	227	6436
6437	227	6437
6438	228	6438
6439	228	6439
6440	228	6440
6441	228	6441
6442	228	6442
6443	228	6443
6444	228	6444
6445	228	6445
6446	228	6446
6447	228	6447
6448	228	6448
6449	228	6449
6450	228	6450
6451	228	6451
6452	228	6452
6453	228	6453
6454	228	6454
6455	228	6455
6456	228	6456
6457	228	6457
6458	228	6458
6459	228	6459
6460	228	6460
6461	228	6461
6462	228	6462
6463	228	6463
6464	228	6464
6465	228	6465
6466	228	6466
6467	228	6467
6468	228	6468
6469	228	6469
6470	228	6470
6471	228	6471
6472	228	6472
6473	228	6473
6474	228	6474
6475	228	6475
6476	229	6476
6477	229	6477
6478	229	6478
6479	229	6479
6480	229	6480
6481	229	6481
6482	229	6482
6483	229	6483
6484	229	6484
6485	229	6485
6486	229	6486
6487	229	6487
6488	229	6488
6489	229	6489
6490	229	6490
6491	229	6491
6492	229	6492
6493	229	6493
6494	230	6494
6495	230	6495
6496	230	6496
6497	230	6497
6498	230	6498
6499	230	6499
6500	231	6500
6501	231	6501
6502	231	6502
6503	231	6503
6504	231	6504
6505	231	6505
6506	231	6506
6507	231	6507
6508	231	6508
6509	231	6509
6510	231	6510
6511	231	6511
6512	232	6512
6513	232	6513
6514	232	6514
6515	232	6515
6516	232	6516
6517	232	6517
6518	232	6518
6519	232	6519
6520	232	6520
6521	232	6521
6522	232	6522
6523	232	6523
6524	232	6524
6525	232	6525
6526	232	6526
6527	232	6527
6528	232	6528
6529	232	6529
6530	233	6530
6531	233	6531
6532	233	6532
6533	233	6533
6534	233	6534
6535	233	6535
6536	233	6536
6537	233	6537
6538	233	6538
6539	233	6539
6540	233	6540
6541	233	6541
6542	233	6542
6543	233	6543
6544	233	6544
6545	233	6545
6546	233	6546
6547	233	6547
6548	233	6548
6549	233	6549
6550	233	6550
6551	233	6551
6552	234	6552
6553	234	6553
6554	234	6554
6555	234	6555
6556	234	6556
6557	234	6557
6558	234	6558
6559	234	6559
6560	234	6560
6561	234	6561
6562	234	6562
6563	234	6563
6564	234	6564
6565	234	6565
6566	234	6566
6567	234	6567
6568	234	6568
6569	234	6569
6570	234	6570
6571	234	6571
6572	234	6572
6573	234	6573
6574	234	6574
6575	234	6575
6576	234	6576
6577	234	6577
6578	234	6578
6579	234	6579
6580	234	6580
6581	234	6581
6582	234	6582
6583	234	6583
6584	234	6584
6585	234	6585
6586	234	6586
6587	234	6587
6588	234	6588
6589	234	6589
6590	234	6590
6591	234	6591
6592	234	6592
6593	234	6593
6594	234	6594
6595	234	6595
6596	234	6596
6597	234	6597
6598	234	6598
6599	234	6599
6600	234	6600
6601	234	6601
6602	234	6602
6603	234	6603
6604	234	6604
6605	234	6605
6606	234	6606
6607	234	6607
6608	234	6608
6609	234	6609
6610	234	6610
6611	234	6611
6612	234	6612
6613	234	6613
6614	234	6614
6615	234	6615
6616	234	6616
6617	234	6617
6618	234	6618
6619	234	6619
6620	234	6620
6621	234	6621
6622	234	6622
6623	234	6623
6624	234	6624
6625	234	6625
6626	234	6626
6627	234	6627
6628	234	6628
6629	234	6629
6630	234	6630
6631	234	6631
6632	234	6632
6633	234	6633
6634	234	6634
6635	234	6635
6636	234	6636
6637	234	6637
6638	234	6638
6639	234	6639
6640	234	6640
6641	234	6641
6642	234	6642
6643	234	6643
6644	234	6644
6645	234	6645
6646	234	6646
6647	234	6647
6648	234	6648
6649	234	6649
6650	234	6650
6651	234	6651
6652	234	6652
6653	234	6653
6654	235	6654
6655	235	6655
6656	235	6656
6657	235	6657
6658	235	6658
6659	235	6659
6660	235	6660
6661	235	6661
6662	235	6662
6663	235	6663
6664	235	6664
6665	235	6665
6666	235	6666
6667	235	6667
6668	236	6668
6669	236	6669
6670	236	6670
6671	236	6671
6672	236	6672
6673	236	6673
6674	236	6674
6675	236	6675
6676	236	6676
6677	236	6677
6678	236	6678
6679	238	6679
6680	238	6680
6681	238	6681
6682	238	6682
6683	238	6683
6684	238	6684
6685	238	6685
6686	238	6686
6687	238	6687
6688	238	6688
6689	238	6689
6690	238	6690
6691	238	6691
6692	238	6692
6693	238	6693
6694	238	6694
6695	238	6695
6696	238	6696
6697	238	6697
6698	238	6698
6699	238	6699
6700	238	6700
6701	238	6701
6702	238	6702
6703	238	6703
6704	239	6704
6705	239	6705
6706	239	6706
6707	239	6707
6708	239	6708
6709	239	6709
6710	239	6710
6711	239	6711
6712	239	6712
6713	239	6713
6714	239	6714
6715	239	6715
6716	239	6716
6717	239	6717
6718	239	6718
6719	239	6719
6720	239	6720
6721	239	6721
6722	239	6722
6723	239	6723
6724	239	6724
6725	239	6725
6726	239	6726
6727	239	6727
6728	239	6728
6729	239	6729
6730	239	6730
6731	239	6731
6732	239	6732
6733	239	6733
6734	239	6734
6735	240	6735
6736	240	6736
6737	240	6737
6738	240	6738
6739	240	6739
6740	240	6740
6741	240	6741
6742	241	6742
6743	241	6743
6744	241	6744
6745	241	6745
6746	241	6746
6747	241	6747
6748	241	6748
6749	241	6749
6750	241	6750
6751	241	6751
6752	241	6752
6753	241	6753
6754	241	6754
6755	241	6755
6756	241	6756
6757	241	6757
6758	241	6758
6759	241	6759
6760	241	6760
6761	241	6761
6762	241	6762
6763	241	6763
6764	241	6764
6765	241	6765
6766	241	6766
6767	241	6767
6768	241	6768
6769	241	6769
6770	241	6770
6771	241	6771
6772	241	6772
6773	241	6773
6774	241	6774
6775	241	6775
6776	241	6776
6777	241	6777
6778	241	6778
6779	241	6779
6780	241	6780
6781	242	6781
6782	242	6782
6783	242	6783
6784	242	6784
6785	242	6785
6786	242	6786
6787	242	6787
6788	242	6788
6789	242	6789
6790	242	6790
6791	242	6791
6792	242	6792
6793	242	6793
6794	242	6794
6795	242	6795
6796	242	6796
6797	242	6797
6798	242	6798
6799	242	6799
6800	243	6800
6801	243	6801
6802	243	6802
6803	243	6803
6804	243	6804
6805	243	6805
6806	243	6806
6807	243	6807
6808	243	6808
6809	243	6809
6810	243	6810
6811	243	6811
6812	243	6812
6813	243	6813
6814	243	6814
6815	243	6815
6816	243	6816
6817	243	6817
6818	243	6818
6819	243	6819
6820	243	6820
6821	243	6821
6822	243	6822
6823	243	6823
6824	243	6824
6825	243	6825
6826	243	6826
6827	243	6827
6828	243	6828
6829	243	6829
6830	243	6830
6831	243	6831
6832	243	6832
6833	243	6833
6834	243	6834
6835	243	6835
6836	243	6836
6837	243	6837
6838	243	6838
6839	243	6839
6840	243	6840
6841	243	6841
6842	243	6842
6843	243	6843
6844	244	6844
6845	244	6845
6846	244	6846
6847	244	6847
6848	244	6848
6849	244	6849
6850	244	6850
6851	244	6851
6852	244	6852
6853	244	6853
6854	244	6854
6855	245	6855
6856	245	6856
6857	245	6857
6858	245	6858
6859	245	6859
6860	245	6860
6861	245	6861
6862	245	6862
6863	245	6863
6864	245	6864
6865	245	6865
6866	245	6866
6867	245	6867
6868	245	6868
6869	245	6869
6870	245	6870
6871	245	6871
6872	245	6872
6873	245	6873
6874	245	6874
6875	245	6875
6876	245	6876
6877	245	6877
6878	245	6878
6879	245	6879
6880	245	6880
6881	245	6881
6882	245	6882
6883	245	6883
6884	245	6884
6885	245	6885
6886	246	6886
6887	246	6887
6888	246	6888
6889	246	6889
6890	246	6890
6891	246	6891
6892	246	6892
6893	246	6893
6894	246	6894
6895	246	6895
6896	246	6896
6897	246	6897
6898	246	6898
6899	246	6899
6900	246	6900
6901	246	6901
6902	246	6902
6903	246	6903
6904	246	6904
6905	246	6905
6906	247	6906
6907	247	6907
6908	247	6908
6909	247	6909
6910	247	6910
6911	247	6911
6912	247	6912
6913	247	6913
6914	247	6914
6915	247	6915
6916	247	6916
6917	247	6917
6918	247	6918
6919	247	6919
6920	247	6920
6921	247	6921
6922	247	6922
6923	247	6923
6924	247	6924
6925	248	6925
6926	248	6926
6927	248	6927
6928	248	6928
6929	248	6929
6930	248	6930
6931	248	6931
6932	248	6932
6933	248	6933
6934	248	6934
6935	248	6935
6936	249	6936
6937	250	6937
6938	250	6938
6939	250	6939
6940	250	6940
6941	250	6941
6942	250	6942
6943	250	6943
6944	250	6944
6945	250	6945
6946	250	6946
6947	250	6947
6948	250	6948
6949	251	6949
6950	251	6950
6951	251	6951
6952	251	6952
6953	251	6953
6954	252	6954
6955	252	6955
6956	252	6956
6957	252	6957
6958	252	6958
6959	252	6959
6960	253	6960
6961	253	6961
6962	253	6962
6963	253	6963
6964	253	6964
6965	253	6965
6966	253	6966
6967	253	6967
6968	253	6968
6969	253	6969
6970	253	6970
6971	253	6971
6972	253	6972
6973	253	6973
6974	253	6974
6975	253	6975
6976	253	6976
6977	253	6977
6978	253	6978
6979	253	6979
6980	254	6980
6981	254	6981
6982	254	6982
6983	254	6983
6984	254	6984
6985	254	6985
6986	254	6986
6987	254	6987
6988	254	6988
6989	254	6989
6990	254	6990
6991	254	6991
6992	254	6992
6993	254	6993
6994	254	6994
6995	254	6995
6996	254	6996
6997	254	6997
6998	254	6998
6999	254	6999
7000	254	7000
7001	254	7001
7002	254	7002
7003	254	7003
7004	254	7004
7005	254	7005
7006	254	7006
7007	254	7007
7008	254	7008
7009	254	7009
7010	254	7010
7011	254	7011
7012	254	7012
7013	254	7013
7014	254	7014
7015	254	7015
7016	254	7016
7017	254	7017
7018	254	7018
7019	254	7019
7020	254	7020
7021	254	7021
7022	254	7022
7023	254	7023
7024	254	7024
7025	254	7025
7026	254	7026
7027	254	7027
7028	254	7028
7029	254	7029
7030	254	7030
7031	254	7031
7032	254	7032
7033	254	7033
7034	254	7034
7035	254	7035
7036	254	7036
7037	254	7037
7038	255	7038
7039	255	7039
7040	255	7040
7041	255	7041
7042	255	7042
7043	255	7043
7044	255	7044
7045	255	7045
7046	255	7046
7047	255	7047
7048	255	7048
7049	255	7049
7050	255	7050
7051	255	7051
7052	255	7052
7053	255	7053
7054	255	7054
7055	255	7055
7056	255	7056
7057	255	7057
7058	255	7058
7059	255	7059
7060	255	7060
7061	256	7061
7062	256	7062
7063	256	7063
7064	256	7064
7065	256	7065
7066	256	7066
7067	256	7067
7068	256	7068
7069	256	7069
7070	256	7070
7071	256	7071
7072	256	7072
7073	256	7073
7074	257	7074
7075	257	7075
7076	257	7076
7077	257	7077
7078	257	7078
7079	257	7079
7080	257	7080
7081	257	7081
7082	257	7082
7083	258	7083
7084	258	7084
7085	258	7085
7086	258	7086
7087	258	7087
7088	258	7088
7089	258	7089
7090	258	7090
7091	258	7091
7092	258	7092
7093	258	7093
7094	258	7094
7095	258	7095
7096	258	7096
7097	258	7097
7098	258	7098
7099	258	7099
7100	258	7100
7101	258	7101
7102	258	7102
7103	259	7103
7104	259	7104
7105	259	7105
7106	259	7106
7107	259	7107
7108	259	7108
7109	259	7109
7110	259	7110
7111	259	7111
7112	259	7112
7113	259	7113
7114	259	7114
7115	259	7115
7116	259	7116
7117	259	7117
7118	259	7118
7119	259	7119
7120	259	7120
7121	259	7121
7122	259	7122
7123	259	7123
7124	259	7124
7125	259	7125
7126	259	7126
7127	259	7127
7128	259	7128
7129	259	7129
7130	259	7130
7131	259	7131
7132	259	7132
7133	259	7133
7134	259	7134
7135	259	7135
7136	259	7136
7137	259	7137
7138	259	7138
7139	259	7139
7140	259	7140
7141	259	7141
7142	260	7142
7143	260	7143
7144	260	7144
7145	260	7145
7146	260	7146
7147	260	7147
7148	260	7148
7149	260	7149
7150	260	7150
7151	260	7151
7152	260	7152
7153	260	7153
7154	260	7154
7155	260	7155
7156	260	7156
7157	260	7157
7158	260	7158
7159	260	7159
7160	260	7160
7161	260	7161
7162	260	7162
7163	260	7163
7164	260	7164
7165	260	7165
7166	260	7166
7167	260	7167
7168	260	7168
7169	260	7169
7170	260	7170
7171	260	7171
7172	261	7172
7173	261	7173
7174	261	7174
7175	261	7175
7176	261	7176
7177	261	7177
7178	261	7178
7179	261	7179
7180	261	7180
7181	261	7181
7182	261	7182
7183	261	7183
7184	261	7184
7185	261	7185
7186	261	7186
7187	261	7187
7188	261	7188
7189	261	7189
7190	261	7190
7191	261	7191
7192	261	7192
7193	261	7193
7194	261	7194
7195	261	7195
7196	261	7196
7197	261	7197
7198	262	7198
7199	262	7199
7200	262	7200
7201	262	7201
7202	262	7202
7203	262	7203
7204	262	7204
7205	262	7205
7206	262	7206
7207	262	7207
7208	262	7208
7209	262	7209
7210	262	7210
7211	262	7211
7212	262	7212
7213	262	7213
7214	262	7214
7215	262	7215
7216	262	7216
7217	262	7217
7218	262	7218
7219	262	7219
7220	262	7220
7221	262	7221
7222	262	7222
7223	262	7223
7224	262	7224
7225	262	7225
7226	262	7226
7227	262	7227
7228	263	7228
7229	263	7229
7230	263	7230
7231	263	7231
7232	263	7232
7233	263	7233
7234	263	7234
7235	263	7235
7236	263	7236
7237	263	7237
7238	263	7238
7239	263	7239
7240	263	7240
7241	263	7241
7242	263	7242
7243	263	7243
7244	263	7244
7245	263	7245
7246	263	7246
7247	264	7247
7248	264	7248
7249	264	7249
7250	264	7250
7251	264	7251
7252	264	7252
7253	264	7253
7254	264	7254
7255	264	7255
7256	264	7256
7257	264	7257
7258	264	7258
7259	264	7259
7260	264	7260
7261	265	7261
7262	265	7262
7263	265	7263
7264	265	7264
7265	265	7265
7266	265	7266
7267	266	7267
7268	266	7268
7269	266	7269
7270	266	7270
7271	266	7271
7272	266	7272
7273	266	7273
7274	266	7274
7275	266	7275
7276	266	7276
7277	266	7277
7278	267	7278
7279	267	7279
7280	267	7280
7281	267	7281
7282	267	7282
7283	267	7283
7284	267	7284
7285	267	7285
7286	267	7286
7287	267	7287
7288	267	7288
7289	267	7289
7290	267	7290
7291	267	7291
7292	267	7292
7293	267	7293
7294	267	7294
7295	267	7295
7296	267	7296
7297	267	7297
7298	267	7298
7299	267	7299
7300	267	7300
7301	267	7301
7302	268	7302
7303	268	7303
7304	268	7304
7305	268	7305
7306	268	7306
7307	268	7307
7308	268	7308
7309	268	7309
7310	268	7310
7311	268	7311
7312	268	7312
7313	268	7313
7314	268	7314
7315	268	7315
7316	268	7316
7317	268	7317
7318	268	7318
7319	268	7319
7320	268	7320
7321	268	7321
7322	268	7322
7323	268	7323
7324	268	7324
7325	268	7325
7326	268	7326
7327	268	7327
7328	268	7328
7329	268	7329
7330	268	7330
7331	268	7331
7332	268	7332
7333	268	7333
7334	268	7334
7335	269	7335
7336	269	7336
7337	269	7337
7338	269	7338
7339	269	7339
7340	269	7340
7341	269	7341
7342	270	7342
7343	270	7343
7344	270	7344
7345	270	7345
7346	270	7346
7347	270	7347
7348	270	7348
7349	270	7349
7350	270	7350
7351	270	7351
7352	270	7352
7353	270	7353
7354	270	7354
7355	270	7355
7356	270	7356
7357	270	7357
7358	270	7358
7359	270	7359
7360	270	7360
7361	270	7361
7362	270	7362
7363	270	7363
7364	270	7364
7365	270	7365
7366	270	7366
7367	270	7367
7368	270	7368
7369	270	7369
7370	271	7370
7371	271	7371
7372	271	7372
7373	271	7373
7374	271	7374
7375	271	7375
7376	271	7376
7377	271	7377
7378	271	7378
7379	271	7379
7380	271	7380
7381	271	7381
7382	271	7382
7383	271	7383
7384	271	7384
7385	271	7385
7386	271	7386
7387	271	7387
7388	271	7388
7389	271	7389
7390	271	7390
7391	271	7391
7392	271	7392
7393	271	7393
7394	271	7394
7395	271	7395
7396	271	7396
7397	272	7397
7398	272	7398
7399	272	7399
7400	272	7400
7401	272	7401
7402	272	7402
7403	272	7403
7404	272	7404
7405	272	7405
7406	272	7406
7407	272	7407
7408	272	7408
7409	272	7409
7410	272	7410
7411	272	7411
7412	273	7412
7413	273	7413
7414	273	7414
7415	273	7415
7416	273	7416
7417	273	7417
7418	273	7418
7419	273	7419
7420	273	7420
7421	273	7421
7422	273	7422
7423	273	7423
7424	273	7424
7425	273	7425
7426	273	7426
7427	273	7427
7428	273	7428
7429	273	7429
7430	273	7430
7431	273	7431
7432	273	7432
7433	273	7433
7434	273	7434
7435	273	7435
7436	273	7436
7437	273	7437
7438	273	7438
7439	273	7439
7440	273	7440
7441	274	7441
7442	274	7442
7443	274	7443
7444	274	7444
7445	274	7445
7446	274	7446
7447	274	7447
7448	274	7448
7449	274	7449
7450	274	7450
7451	274	7451
7452	274	7452
7453	274	7453
7454	274	7454
7455	274	7455
7456	274	7456
7457	274	7457
7458	274	7458
7459	274	7459
7460	274	7460
7461	274	7461
7462	274	7462
7463	274	7463
7464	275	7464
7465	275	7465
7466	275	7466
7467	275	7467
7468	275	7468
7469	275	7469
7470	275	7470
7471	275	7471
7472	275	7472
7473	275	7473
7474	275	7474
7475	275	7475
7476	275	7476
7477	275	7477
7478	275	7478
7479	275	7479
7480	275	7480
7481	275	7481
7482	276	7482
7483	276	7483
7484	276	7484
7485	276	7485
7486	277	7486
7487	277	7487
7488	277	7488
7489	277	7489
7490	277	7490
7491	277	7491
7492	277	7492
7493	277	7493
7494	277	7494
7495	277	7495
7496	277	7496
7497	277	7497
7498	277	7498
7499	277	7499
7500	277	7500
7501	277	7501
7502	277	7502
7503	277	7503
7504	277	7504
7505	277	7505
7506	277	7506
7507	277	7507
7508	277	7508
7509	277	7509
7510	277	7510
7511	277	7511
7512	277	7512
7513	277	7513
7514	277	7514
7515	277	7515
7516	277	7516
7517	278	7517
7518	278	7518
7519	278	7519
7520	278	7520
7521	278	7521
7522	278	7522
7523	278	7523
7524	278	7524
7525	278	7525
7526	278	7526
7527	278	7527
7528	278	7528
7529	279	7529
7530	279	7530
7531	279	7531
7532	279	7532
7533	279	7533
7534	279	7534
7535	279	7535
7536	279	7536
7537	279	7537
7538	279	7538
7539	279	7539
7540	279	7540
7541	279	7541
7542	279	7542
7543	279	7543
7544	279	7544
7545	280	7545
7546	280	7546
7547	280	7547
7548	280	7548
7549	280	7549
7550	280	7550
7551	280	7551
7552	280	7552
7553	280	7553
7554	280	7554
7555	280	7555
7556	280	7556
7557	280	7557
7558	280	7558
7559	280	7559
7560	280	7560
7561	280	7561
7562	280	7562
7563	280	7563
7564	280	7564
7565	280	7565
7566	280	7566
7567	280	7567
7568	280	7568
7569	280	7569
7570	280	7570
7571	280	7571
7572	280	7572
7573	280	7573
7574	280	7574
7575	280	7575
7576	280	7576
7577	282	7577
7578	282	7578
7579	282	7579
7580	282	7580
7581	282	7581
7582	282	7582
7583	282	7583
7584	282	7584
7585	282	7585
7586	282	7586
7587	282	7587
7588	282	7588
7589	283	7589
7590	283	7590
7591	283	7591
7592	283	7592
7593	283	7593
7594	283	7594
7595	283	7595
7596	283	7596
7597	283	7597
7598	284	7598
7599	284	7599
7600	284	7600
7601	284	7601
7602	284	7602
7603	284	7603
7604	284	7604
7605	284	7605
7606	284	7606
7607	284	7607
7608	284	7608
7609	284	7609
7610	284	7610
7611	284	7611
7612	284	7612
7613	284	7613
7614	284	7614
7615	284	7615
7616	284	7616
7617	284	7617
7618	284	7618
7619	284	7619
7620	284	7620
7621	284	7621
7622	284	7622
7623	284	7623
7624	284	7624
7625	284	7625
7626	284	7626
7627	284	7627
7628	284	7628
7629	284	7629
7630	284	7630
7631	284	7631
7632	284	7632
7633	284	7633
7634	284	7634
7635	284	7635
7636	284	7636
7637	284	7637
7638	284	7638
7639	284	7639
7640	285	7640
7641	285	7641
7642	285	7642
7643	286	7643
7644	286	7644
7645	286	7645
7646	286	7646
7647	286	7647
7648	286	7648
7649	286	7649
7650	286	7650
7651	286	7651
7652	286	7652
7653	286	7653
7654	287	7654
7655	287	7655
7656	287	7656
7657	287	7657
7658	287	7658
7659	287	7659
7660	287	7660
7661	287	7661
7662	287	7662
7663	287	7663
7664	287	7664
7665	287	7665
7666	287	7666
7667	287	7667
7668	287	7668
7669	287	7669
7670	287	7670
7671	287	7671
7672	287	7672
7673	287	7673
7674	287	7674
7675	287	7675
7676	287	7676
7677	287	7677
7678	287	7678
7679	287	7679
7680	287	7680
7681	287	7681
7682	287	7682
7683	287	7683
7684	287	7684
7685	287	7685
7686	287	7686
7687	287	7687
7688	287	7688
7689	287	7689
7690	287	7690
7691	287	7691
7692	288	7692
7693	288	7693
7694	288	7694
7695	288	7695
7696	288	7696
7697	288	7697
7698	288	7698
7699	288	7699
7700	288	7700
7701	288	7701
7702	288	7702
7703	288	7703
7704	288	7704
7705	288	7705
7706	288	7706
7707	288	7707
7708	288	7708
7709	288	7709
7710	288	7710
7711	288	7711
7712	288	7712
7713	288	7713
7714	288	7714
7715	288	7715
7716	288	7716
7717	288	7717
7718	288	7718
7719	288	7719
7720	288	7720
7721	288	7721
7722	289	7722
7723	289	7723
7724	289	7724
7725	289	7725
7726	289	7726
7727	289	7727
7728	289	7728
7729	289	7729
7730	289	7730
7731	289	7731
7732	289	7732
7733	289	7733
7734	289	7734
7735	289	7735
7736	289	7736
7737	290	7737
7738	290	7738
7739	290	7739
7740	290	7740
7741	290	7741
7742	290	7742
7743	290	7743
7744	290	7744
7745	290	7745
7746	290	7746
7747	290	7747
7748	290	7748
7749	290	7749
7750	290	7750
7751	290	7751
7752	290	7752
7753	290	7753
7754	291	7754
7755	291	7755
7756	291	7756
7757	291	7757
7758	291	7758
7759	291	7759
7760	291	7760
7761	291	7761
7762	291	7762
7763	291	7763
7764	291	7764
7765	291	7765
7766	291	7766
7767	291	7767
7768	291	7768
7769	291	7769
7770	291	7770
7771	291	7771
7772	291	7772
7773	291	7773
7774	291	7774
7775	291	7775
7776	291	7776
7777	291	7777
7778	291	7778
7779	291	7779
7780	291	7780
7781	291	7781
7782	291	7782
7783	291	7783
7784	291	7784
7785	291	7785
7786	291	7786
7787	291	7787
7788	291	7788
7789	291	7789
7790	291	7790
7791	291	7791
7792	291	7792
7793	292	7793
7794	292	7794
7795	292	7795
7796	292	7796
7797	292	7797
7798	292	7798
7799	292	7799
7800	292	7800
7801	292	7801
7802	292	7802
7803	292	7803
7804	293	7804
7805	293	7805
7806	293	7806
7807	293	7807
7808	293	7808
7809	293	7809
7810	293	7810
7811	293	7811
7812	293	7812
7813	293	7813
7814	293	7814
7815	293	7815
7816	294	7816
7817	294	7817
7818	294	7818
7819	294	7819
7820	294	7820
7821	294	7821
7822	294	7822
7823	294	7823
7824	294	7824
7825	294	7825
7826	294	7826
7827	294	7827
7828	294	7828
7829	295	7829
7830	295	7830
7831	295	7831
7832	295	7832
7833	295	7833
7834	296	7834
7835	296	7835
7836	296	7836
7837	296	7837
7838	296	7838
7839	296	7839
7840	296	7840
7841	296	7841
7842	296	7842
7843	296	7843
7844	296	7844
7845	296	7845
7846	296	7846
7847	296	7847
7848	296	7848
7849	296	7849
7850	296	7850
7851	296	7851
7852	296	7852
7853	296	7853
7854	296	7854
7855	296	7855
7856	297	7856
7857	297	7857
7858	297	7858
7859	297	7859
7860	297	7860
7861	297	7861
7862	297	7862
7863	297	7863
7864	297	7864
7865	297	7865
7866	297	7866
7867	297	7867
7868	297	7868
7869	297	7869
7870	297	7870
7871	297	7871
7872	297	7872
7873	297	7873
7874	297	7874
7875	297	7875
7876	297	7876
7877	297	7877
7878	297	7878
7879	297	7879
7880	297	7880
7881	297	7881
7882	297	7882
7883	297	7883
7884	297	7884
7885	297	7885
7886	297	7886
7887	297	7887
7888	297	7888
7889	297	7889
7890	297	7890
7891	297	7891
7892	297	7892
7893	297	7893
7894	297	7894
7895	297	7895
7896	297	7896
7897	298	7897
7898	298	7898
7899	299	7899
7900	299	7900
7901	299	7901
7902	299	7902
7903	299	7903
7904	299	7904
7905	299	7905
7906	299	7906
7907	299	7907
7908	299	7908
7909	299	7909
7910	299	7910
7911	299	7911
7912	299	7912
7913	299	7913
7914	299	7914
7915	299	7915
7916	299	7916
7917	299	7917
7918	299	7918
7919	299	7919
7920	299	7920
7921	300	7921
7922	300	7922
7923	300	7923
7924	300	7924
7925	300	7925
7926	300	7926
7927	300	7927
7928	300	7928
7929	300	7929
7930	300	7930
7931	300	7931
7932	300	7932
7933	300	7933
7934	300	7934
7935	300	7935
7936	300	7936
7937	300	7937
7938	300	7938
7939	300	7939
7940	300	7940
7941	300	7941
7942	300	7942
7943	300	7943
7944	300	7944
7945	300	7945
7946	300	7946
7947	300	7947
7948	300	7948
7949	300	7949
7950	300	7950
7951	300	7951
7952	300	7952
7953	300	7953
7954	300	7954
7955	300	7955
7956	300	7956
7957	300	7957
7958	300	7958
7959	301	7959
7960	301	7960
7961	301	7961
7962	301	7962
7963	301	7963
7964	301	7964
7965	301	7965
7966	301	7966
7967	301	7967
7968	301	7968
7969	301	7969
7970	301	7970
7971	301	7971
7972	301	7972
7973	301	7973
7974	301	7974
7975	301	7975
7976	301	7976
7977	302	7977
7978	302	7978
7979	302	7979
7980	302	7980
7981	302	7981
7982	302	7982
7983	302	7983
7984	302	7984
7985	302	7985
7986	302	7986
7987	302	7987
7988	302	7988
7989	302	7989
7990	302	7990
7991	302	7991
7992	302	7992
7993	302	7993
7994	302	7994
7995	302	7995
7996	302	7996
7997	302	7997
7998	302	7998
7999	302	7999
8000	302	8000
8001	302	8001
8002	302	8002
8003	302	8003
8004	302	8004
8005	302	8005
8006	302	8006
8007	302	8007
8008	302	8008
8009	302	8009
8010	302	8010
8011	302	8011
8012	302	8012
8013	302	8013
8014	302	8014
8015	302	8015
8016	302	8016
8017	302	8017
8018	302	8018
8019	302	8019
8020	302	8020
8021	302	8021
8022	302	8022
8023	302	8023
8024	302	8024
8025	302	8025
8026	302	8026
8027	302	8027
8028	302	8028
8029	302	8029
8030	302	8030
8031	302	8031
8032	303	8032
8033	303	8033
8034	303	8034
8035	303	8035
8036	303	8036
8037	303	8037
8038	303	8038
8039	303	8039
8040	303	8040
8041	303	8041
8042	304	8042
8043	304	8043
8044	304	8044
8045	304	8045
8046	304	8046
8047	304	8047
8048	304	8048
8049	304	8049
8050	304	8050
8051	304	8051
8052	304	8052
8053	304	8053
8054	304	8054
8055	304	8055
8056	304	8056
8057	304	8057
8058	304	8058
8059	304	8059
8060	304	8060
8061	304	8061
8062	304	8062
8063	305	8063
8064	305	8064
8065	305	8065
8066	305	8066
8067	305	8067
8068	305	8068
8069	305	8069
8070	305	8070
8071	305	8071
8072	305	8072
8073	305	8073
8074	305	8074
8075	305	8075
8076	305	8076
8077	305	8077
8078	305	8078
8079	305	8079
8080	305	8080
8081	306	8081
8082	306	8082
8083	306	8083
8084	306	8084
8085	306	8085
8086	306	8086
8087	308	8087
8088	308	8088
8089	308	8089
8090	308	8090
8091	308	8091
8092	309	8092
8093	309	8093
8094	309	8094
8095	309	8095
8096	309	8096
8097	309	8097
8098	309	8098
8099	309	8099
8100	309	8100
8101	309	8101
8102	309	8102
8103	309	8103
8104	309	8104
8105	310	8105
8106	310	8106
8107	310	8107
8108	310	8108
8109	310	8109
8110	310	8110
8111	310	8111
8112	310	8112
8113	310	8113
8114	310	8114
8115	310	8115
8116	310	8116
8117	310	8117
8118	310	8118
8119	310	8119
8120	310	8120
8121	310	8121
8122	310	8122
8123	310	8123
8124	311	8124
8125	311	8125
8126	311	8126
8127	311	8127
8128	311	8128
8129	311	8129
8130	311	8130
8131	311	8131
8132	312	8132
8133	312	8133
8134	312	8134
8135	312	8135
8136	312	8136
8137	312	8137
8138	312	8138
8139	312	8139
8140	312	8140
8141	312	8141
8142	312	8142
8143	312	8143
8144	312	8144
8145	313	8145
8146	313	8146
8147	313	8147
8148	313	8148
8149	313	8149
8150	313	8150
8151	313	8151
8152	313	8152
8153	313	8153
8154	314	8154
8155	314	8155
8156	314	8156
8157	314	8157
8158	314	8158
8159	314	8159
8160	314	8160
8161	314	8161
8162	314	8162
8163	314	8163
8164	314	8164
8165	314	8165
8166	314	8166
8167	314	8167
8168	314	8168
8169	314	8169
8170	314	8170
8171	314	8171
8172	314	8172
8173	315	8173
8174	315	8174
8175	315	8175
8176	316	8176
8177	316	8177
8178	316	8178
8179	316	8179
8180	316	8180
8181	316	8181
8182	316	8182
8183	316	8183
8184	316	8184
8185	316	8185
8186	316	8186
8187	316	8187
8188	316	8188
8189	316	8189
8190	317	8190
8191	317	8191
8192	317	8192
8193	317	8193
8194	317	8194
8195	317	8195
8196	317	8196
8197	317	8197
8198	317	8198
8199	317	8199
8200	317	8200
8201	317	8201
8202	317	8202
8203	317	8203
8204	317	8204
8205	317	8205
8206	317	8206
8207	317	8207
8208	317	8208
8209	317	8209
8210	317	8210
8211	317	8211
8212	317	8212
8213	317	8213
8214	317	8214
8215	317	8215
8216	318	8216
8217	318	8217
8218	318	8218
8219	318	8219
8220	318	8220
8221	318	8221
8222	318	8222
8223	318	8223
8224	318	8224
8225	319	8225
8226	319	8226
8227	319	8227
8228	319	8228
8229	319	8229
8230	319	8230
8231	319	8231
8232	319	8232
8233	319	8233
8234	319	8234
8235	319	8235
8236	320	8236
8237	320	8237
8238	320	8238
8239	320	8239
8240	320	8240
8241	320	8241
8242	320	8242
8243	320	8243
8244	320	8244
8245	320	8245
8246	320	8246
8247	320	8247
8248	320	8248
8249	320	8249
8250	320	8250
8251	320	8251
8252	320	8252
8253	320	8253
8254	320	8254
8255	320	8255
8256	320	8256
8257	320	8257
8258	320	8258
8259	320	8259
8260	320	8260
8261	320	8261
8262	320	8262
8263	320	8263
8264	320	8264
8265	320	8265
8266	320	8266
8267	320	8267
8268	320	8268
8269	321	8269
8270	321	8270
8271	321	8271
8272	321	8272
8273	321	8273
8274	321	8274
8275	321	8275
8276	321	8276
8277	321	8277
8278	321	8278
8279	321	8279
8280	321	8280
8281	321	8281
8282	321	8282
8283	321	8283
8284	321	8284
8285	321	8285
8286	321	8286
8287	321	8287
8288	321	8288
8289	321	8289
8290	321	8290
8291	321	8291
8292	321	8292
8293	321	8293
8294	321	8294
8295	321	8295
8296	321	8296
8297	322	8297
8298	322	8298
8299	322	8299
8300	322	8300
8301	322	8301
8302	322	8302
8303	322	8303
8304	322	8304
8305	322	8305
8306	322	8306
8307	323	8307
8308	323	8308
8309	323	8309
8310	323	8310
8311	323	8311
8312	323	8312
8313	323	8313
8314	323	8314
8315	323	8315
8316	323	8316
8317	323	8317
8318	323	8318
8319	323	8319
8320	323	8320
8321	323	8321
8322	323	8322
8323	323	8323
8324	323	8324
8325	323	8325
8326	323	8326
8327	323	8327
8328	323	8328
8329	323	8329
8330	323	8330
8331	324	8331
8332	324	8332
8333	324	8333
8334	324	8334
8335	324	8335
8336	324	8336
8337	324	8337
8338	324	8338
8339	324	8339
8340	324	8340
8341	324	8341
8342	324	8342
8343	324	8343
8344	324	8344
8345	324	8345
8346	324	8346
8347	324	8347
8348	324	8348
8349	325	8349
8350	325	8350
8351	325	8351
8352	325	8352
8353	325	8353
8354	325	8354
8355	325	8355
8356	325	8356
8357	325	8357
8358	325	8358
8359	325	8359
8360	325	8360
8361	325	8361
8362	325	8362
8363	325	8363
8364	325	8364
8365	325	8365
8366	326	8366
8367	326	8367
8368	326	8368
8369	326	8369
8370	326	8370
8371	326	8371
8372	326	8372
8373	326	8373
8374	326	8374
8375	326	8375
8376	326	8376
8377	326	8377
8378	326	8378
8379	326	8379
8380	326	8380
8381	326	8381
8382	326	8382
8383	326	8383
8384	326	8384
8385	326	8385
8386	326	8386
8387	326	8387
8388	326	8388
8389	327	8389
8390	327	8390
8391	327	8391
8392	327	8392
8393	327	8393
8394	327	8394
8395	327	8395
8396	327	8396
8397	327	8397
8398	327	8398
8399	327	8399
8400	327	8400
8401	327	8401
8402	327	8402
8403	327	8403
8404	327	8404
8405	327	8405
8406	327	8406
8407	327	8407
8408	327	8408
8409	327	8409
8410	327	8410
8411	327	8411
8412	327	8412
8413	327	8413
8414	327	8414
8415	327	8415
8416	327	8416
8417	327	8417
8418	327	8418
8419	327	8419
8420	327	8420
8421	327	8421
8422	327	8422
8423	327	8423
8424	327	8424
8425	327	8425
8426	327	8426
8427	328	8427
8428	328	8428
8429	328	8429
8430	328	8430
8431	328	8431
8432	328	8432
8433	328	8433
8434	328	8434
8435	328	8435
8436	328	8436
8437	328	8437
8438	328	8438
8439	328	8439
8440	328	8440
8441	328	8441
8442	328	8442
8443	328	8443
8444	328	8444
8445	328	8445
8446	328	8446
8447	328	8447
8448	328	8448
8449	328	8449
8450	328	8450
8451	328	8451
8452	328	8452
8453	328	8453
8454	328	8454
8455	328	8455
8456	329	8456
8457	329	8457
8458	329	8458
8459	329	8459
8460	329	8460
8461	329	8461
8462	329	8462
8463	329	8463
8464	329	8464
8465	329	8465
8466	330	8466
8467	330	8467
8468	330	8468
8469	330	8469
8470	330	8470
8471	330	8471
8472	330	8472
8473	330	8473
8474	330	8474
8475	330	8475
8476	330	8476
8477	330	8477
8478	330	8478
8479	330	8479
8480	330	8480
8481	330	8481
8482	330	8482
8483	330	8483
8484	330	8484
8485	331	8485
8486	331	8486
8487	331	8487
8488	331	8488
8489	331	8489
8490	331	8490
8491	331	8491
8492	331	8492
8493	331	8493
8494	331	8494
8495	331	8495
8496	331	8496
8497	331	8497
8498	331	8498
8499	331	8499
8500	331	8500
8501	331	8501
8502	331	8502
8503	331	8503
8504	331	8504
8505	331	8505
8506	331	8506
8507	332	8507
8508	332	8508
8509	332	8509
8510	332	8510
8511	332	8511
8512	332	8512
8513	332	8513
8514	332	8514
8515	332	8515
8516	332	8516
8517	332	8517
8518	332	8518
8519	332	8519
8520	332	8520
8521	332	8521
8522	332	8522
8523	332	8523
8524	332	8524
8525	332	8525
8526	332	8526
8527	332	8527
8528	332	8528
8529	332	8529
8530	332	8530
8531	332	8531
8532	332	8532
8533	332	8533
8534	332	8534
8535	332	8535
8536	332	8536
8537	332	8537
8538	332	8538
8539	332	8539
8540	333	8540
8541	334	8541
8542	334	8542
8543	334	8543
8544	334	8544
8545	334	8545
8546	334	8546
8547	334	8547
8548	334	8548
8549	335	8549
8550	335	8550
8551	335	8551
8552	335	8552
8553	335	8553
8554	335	8554
8555	335	8555
8556	335	8556
8557	335	8557
8558	335	8558
8559	335	8559
8560	335	8560
8561	335	8561
8562	336	8562
8563	336	8563
8564	336	8564
8565	336	8565
8566	336	8566
8567	336	8567
8568	336	8568
8569	336	8569
8570	336	8570
8571	336	8571
8572	337	8572
8573	337	8573
8574	337	8574
8575	337	8575
8576	337	8576
8577	337	8577
8578	337	8578
8579	337	8579
8580	337	8580
8581	337	8581
8582	337	8582
8583	337	8583
8584	337	8584
8585	337	8585
8586	337	8586
8587	338	8587
8588	338	8588
8589	338	8589
8590	338	8590
8591	338	8591
8592	338	8592
8593	339	8593
8594	339	8594
8595	339	8595
8596	339	8596
8597	339	8597
8598	339	8598
8599	339	8599
8600	339	8600
8601	340	8601
8602	340	8602
8603	340	8603
8604	340	8604
8605	340	8605
8606	340	8606
8607	340	8607
8608	340	8608
8609	340	8609
8610	340	8610
8611	340	8611
8612	340	8612
8613	340	8613
8614	340	8614
8615	340	8615
8616	340	8616
8617	340	8617
8618	340	8618
8619	340	8619
8620	340	8620
8621	340	8621
8622	340	8622
8623	340	8623
8624	340	8624
8625	340	8625
8626	341	8626
8627	341	8627
8628	341	8628
8629	341	8629
8630	341	8630
8631	341	8631
8632	341	8632
8633	341	8633
8634	341	8634
8635	341	8635
8636	341	8636
8637	341	8637
8638	341	8638
8639	341	8639
8640	341	8640
8641	341	8641
8642	341	8642
8643	341	8643
8644	341	8644
8645	341	8645
8646	341	8646
8647	341	8647
8648	341	8648
8649	341	8649
8650	341	8650
8651	341	8651
8652	341	8652
8653	342	8653
8654	342	8654
8655	342	8655
8656	342	8656
8657	342	8657
8658	342	8658
8659	342	8659
8660	343	8660
8661	343	8661
8662	343	8662
8663	343	8663
8664	343	8664
8665	343	8665
8666	343	8666
8667	343	8667
8668	343	8668
8669	343	8669
8670	343	8670
8671	343	8671
8672	343	8672
8673	343	8673
8674	343	8674
8675	343	8675
8676	343	8676
8677	343	8677
8678	343	8678
8679	343	8679
8680	343	8680
8681	343	8681
8682	343	8682
8683	343	8683
8684	343	8684
8685	343	8685
8686	343	8686
8687	343	8687
8688	343	8688
8689	343	8689
8690	343	8690
8691	343	8691
8692	343	8692
8693	343	8693
8694	343	8694
8695	344	8695
8696	344	8696
8697	344	8697
8698	344	8698
8699	344	8699
8700	344	8700
8701	344	8701
8702	344	8702
8703	344	8703
8704	344	8704
8705	344	8705
8706	344	8706
8707	344	8707
8708	344	8708
8709	345	8709
8710	345	8710
8711	345	8711
8712	345	8712
8713	345	8713
8714	345	8714
8715	346	8715
8716	346	8716
8717	346	8717
8718	346	8718
8719	346	8719
8720	346	8720
8721	346	8721
8722	346	8722
8723	347	8723
8724	347	8724
8725	347	8725
8726	347	8726
8727	347	8727
8728	347	8728
8729	347	8729
8730	347	8730
8731	347	8731
8732	347	8732
8733	347	8733
8734	347	8734
8735	347	8735
8736	348	8736
8737	348	8737
8738	348	8738
8739	348	8739
8740	348	8740
8741	348	8741
8742	348	8742
8743	348	8743
8744	348	8744
8745	348	8745
8746	348	8746
8747	348	8747
8748	348	8748
8749	348	8749
8750	348	8750
8751	348	8751
8752	348	8752
8753	349	8753
8754	349	8754
8755	349	8755
8756	349	8756
8757	349	8757
8758	349	8758
8759	349	8759
8760	349	8760
8761	349	8761
8762	349	8762
8763	349	8763
8764	349	8764
8765	349	8765
8766	349	8766
8767	349	8767
8768	349	8768
8769	349	8769
8770	349	8770
8771	349	8771
8772	349	8772
8773	349	8773
8774	349	8774
8775	349	8775
8776	349	8776
8777	349	8777
8778	349	8778
8779	349	8779
8780	349	8780
8781	349	8781
8782	349	8782
8783	349	8783
8784	349	8784
8785	349	8785
8786	349	8786
8787	349	8787
8788	349	8788
8789	349	8789
8790	349	8790
8791	349	8791
8792	349	8792
8793	349	8793
8794	349	8794
8795	349	8795
8796	349	8796
8797	349	8797
8798	349	8798
8799	349	8799
8800	349	8800
8801	349	8801
8802	349	8802
8803	349	8803
8804	349	8804
8805	349	8805
8806	349	8806
8807	349	8807
8808	349	8808
8809	349	8809
8810	350	8810
8811	350	8811
8812	350	8812
8813	350	8813
8814	350	8814
8815	351	8815
8816	351	8816
8817	351	8817
8818	351	8818
8819	351	8819
8820	351	8820
8821	351	8821
8822	351	8822
8823	351	8823
8824	351	8824
8825	351	8825
8826	351	8826
8827	351	8827
8828	351	8828
8829	351	8829
8830	351	8830
8831	351	8831
8832	351	8832
8833	351	8833
8834	351	8834
8835	352	8835
8836	352	8836
8837	352	8837
8838	352	8838
8839	352	8839
8840	352	8840
8841	352	8841
8842	352	8842
8843	352	8843
8844	352	8844
8845	352	8845
8846	352	8846
8847	352	8847
8848	352	8848
8849	352	8849
8850	352	8850
8851	353	8851
8852	353	8852
8853	353	8853
8854	353	8854
8855	353	8855
8856	353	8856
8857	353	8857
8858	354	8858
8859	354	8859
8860	354	8860
8861	354	8861
8862	354	8862
8863	355	8863
8864	355	8864
8865	355	8865
8866	355	8866
8867	355	8867
8868	355	8868
8869	355	8869
8870	355	8870
8871	355	8871
8872	355	8872
8873	355	8873
8874	355	8874
8875	355	8875
8876	355	8876
8877	355	8877
8878	355	8878
8879	356	8879
8880	356	8880
8881	356	8881
8882	356	8882
8883	356	8883
8884	356	8884
8885	356	8885
8886	356	8886
8887	356	8887
8888	356	8888
8889	356	8889
8890	356	8890
8891	356	8891
8892	356	8892
8893	356	8893
8894	356	8894
8895	356	8895
8896	356	8896
8897	356	8897
8898	356	8898
8899	356	8899
8900	356	8900
8901	357	8901
8902	357	8902
8903	357	8903
8904	357	8904
8905	357	8905
8906	357	8906
8907	357	8907
8908	358	8908
8909	358	8909
8910	358	8910
8911	358	8911
8912	358	8912
8913	358	8913
8914	358	8914
8915	358	8915
8916	358	8916
8917	358	8917
8918	358	8918
8919	358	8919
8920	358	8920
8921	358	8921
8922	358	8922
8923	358	8923
8924	359	8924
8925	359	8925
8926	359	8926
8927	360	8927
8928	360	8928
8929	360	8929
8930	360	8930
8931	360	8931
8932	361	8932
8933	361	8933
8934	361	8934
8935	361	8935
8936	361	8936
8937	361	8937
8938	361	8938
8939	361	8939
8940	361	8940
8941	361	8941
8942	361	8942
8943	361	8943
8944	361	8944
8945	361	8945
8946	362	8946
8947	362	8947
8948	362	8948
8949	362	8949
8950	362	8950
8951	362	8951
8952	362	8952
8953	362	8953
8954	362	8954
8955	362	8955
8956	362	8956
8957	362	8957
8958	362	8958
8959	362	8959
8960	362	8960
8961	362	8961
8962	363	8962
8963	363	8963
8964	363	8964
8965	363	8965
8966	363	8966
8967	363	8967
8968	363	8968
8969	363	8969
8970	363	8970
8971	363	8971
8972	363	8972
8973	363	8973
8974	363	8974
8975	363	8975
8976	364	8976
8977	364	8977
8978	364	8978
8979	364	8979
8980	364	8980
8981	364	8981
8982	364	8982
8983	364	8983
8984	364	8984
8985	364	8985
8986	364	8986
8987	364	8987
8988	364	8988
8989	364	8989
8990	364	8990
8991	364	8991
8992	364	8992
8993	365	8993
8994	365	8994
8995	365	8995
8996	365	8996
8997	365	8997
8998	365	8998
8999	365	8999
9000	365	9000
9001	365	9001
9002	365	9002
9003	365	9003
9004	365	9004
9005	365	9005
9006	366	9006
9007	366	9007
9008	366	9008
9009	366	9009
9010	366	9010
9011	366	9011
9012	366	9012
9013	366	9013
9014	366	9014
9015	366	9015
9016	366	9016
9017	366	9017
9018	366	9018
9019	366	9019
9020	366	9020
9021	366	9021
9022	366	9022
9023	366	9023
9024	366	9024
9025	366	9025
9026	366	9026
9027	366	9027
9028	366	9028
9029	366	9029
9030	366	9030
9031	366	9031
9032	366	9032
9033	366	9033
9034	366	9034
9035	366	9035
9036	366	9036
9037	366	9037
9038	366	9038
9039	366	9039
9040	367	9040
9041	367	9041
9042	367	9042
9043	367	9043
9044	367	9044
9045	367	9045
9046	367	9046
9047	367	9047
9048	367	9048
9049	368	9049
9050	368	9050
9051	368	9051
9052	368	9052
9053	368	9053
9054	368	9054
9055	368	9055
9056	368	9056
9057	368	9057
9058	368	9058
9059	368	9059
9060	368	9060
9061	368	9061
9062	368	9062
9063	368	9063
9064	368	9064
9065	368	9065
9066	368	9066
9067	368	9067
9068	368	9068
9069	368	9069
9070	369	9070
9071	369	9071
9072	369	9072
9073	369	9073
9074	369	9074
9075	369	9075
9076	369	9076
9077	369	9077
9078	369	9078
9079	369	9079
9080	369	9080
9081	369	9081
9082	369	9082
9083	369	9083
9084	369	9084
9085	369	9085
9086	369	9086
9087	369	9087
9088	369	9088
9089	369	9089
9090	370	9090
9091	370	9091
9092	370	9092
9093	370	9093
9094	370	9094
9095	370	9095
9096	370	9096
9097	370	9097
9098	370	9098
9099	370	9099
9100	370	9100
9101	370	9101
9102	370	9102
9103	370	9103
9104	370	9104
9105	370	9105
9106	370	9106
9107	370	9107
9108	370	9108
9109	370	9109
9110	370	9110
9111	370	9111
9112	370	9112
9113	370	9113
9114	370	9114
9115	370	9115
9116	370	9116
9117	370	9117
9118	370	9118
9119	371	9119
9120	371	9120
9121	371	9121
9122	371	9122
9123	371	9123
9124	371	9124
9125	371	9125
9126	371	9126
9127	371	9127
9128	371	9128
9129	371	9129
9130	371	9130
9131	371	9131
9132	371	9132
9133	372	9133
9134	372	9134
9135	372	9135
9136	372	9136
9137	372	9137
9138	372	9138
9139	372	9139
9140	372	9140
9141	372	9141
9142	372	9142
9143	372	9143
9144	372	9144
9145	372	9145
9146	372	9146
9147	372	9147
9148	372	9148
9149	372	9149
9150	372	9150
9151	372	9151
9152	372	9152
9153	372	9153
9154	372	9154
9155	372	9155
9156	372	9156
9157	372	9157
9158	372	9158
9159	372	9159
9160	372	9160
9161	372	9161
9162	372	9162
9163	372	9163
9164	372	9164
9165	372	9165
9166	372	9166
9167	372	9167
9168	372	9168
9169	372	9169
9170	372	9170
9171	372	9171
9172	372	9172
9173	372	9173
9174	372	9174
9175	372	9175
9176	372	9176
9177	372	9177
9178	372	9178
9179	372	9179
9180	372	9180
9181	372	9181
9182	372	9182
9183	373	9183
9184	373	9184
9185	373	9185
9186	373	9186
9187	373	9187
9188	373	9188
9189	373	9189
9190	373	9190
9191	373	9191
9192	374	9192
9193	374	9193
9194	374	9194
9195	374	9195
9196	374	9196
9197	374	9197
9198	374	9198
9199	374	9199
9200	374	9200
9201	374	9201
9202	375	9202
9203	375	9203
9204	375	9204
9205	375	9205
9206	375	9206
9207	375	9207
9208	375	9208
9209	375	9209
9210	376	9210
9211	376	9211
9212	376	9212
9213	376	9213
9214	376	9214
9215	376	9215
9216	376	9216
9217	376	9217
9218	376	9218
9219	376	9219
9220	376	9220
9221	376	9221
9222	376	9222
9223	376	9223
9224	376	9224
9225	376	9225
9226	376	9226
9227	376	9227
9228	376	9228
9229	376	9229
9230	376	9230
9231	376	9231
9232	376	9232
9233	376	9233
9234	377	9234
9235	377	9235
9236	377	9236
9237	377	9237
9238	377	9238
9239	377	9239
9240	377	9240
9241	377	9241
9242	378	9242
9243	378	9243
9244	378	9244
9245	378	9245
9246	378	9246
9247	378	9247
9248	378	9248
9249	379	9249
9250	379	9250
9251	379	9251
9252	379	9252
9253	379	9253
9254	379	9254
9255	379	9255
9256	379	9256
9257	379	9257
9258	379	9258
9259	379	9259
9260	379	9260
9261	379	9261
9262	379	9262
9263	379	9263
9264	379	9264
9265	379	9265
9266	380	9266
9267	380	9267
9268	380	9268
9269	380	9269
9270	380	9270
9271	380	9271
9272	380	9272
9273	381	9273
9274	381	9274
9275	381	9275
9276	381	9276
9277	381	9277
9278	381	9278
9279	381	9279
9280	381	9280
9281	381	9281
9282	381	9282
9283	381	9283
9284	381	9284
9285	381	9285
9286	381	9286
9287	381	9287
9288	381	9288
9289	381	9289
9290	381	9290
9291	382	9291
9292	382	9292
9293	382	9293
9294	382	9294
9295	382	9295
9296	382	9296
9297	382	9297
9298	382	9298
9299	382	9299
9300	382	9300
9301	382	9301
9302	382	9302
9303	382	9303
9304	382	9304
9305	382	9305
9306	382	9306
9307	382	9307
9308	382	9308
9309	383	9309
9310	383	9310
9311	383	9311
9312	383	9312
9313	383	9313
9314	383	9314
9315	383	9315
9316	383	9316
9317	383	9317
9318	383	9318
9319	383	9319
9320	383	9320
9321	383	9321
9322	383	9322
9323	383	9323
9324	384	9324
9325	384	9325
9326	384	9326
9327	384	9327
9328	384	9328
9329	384	9329
9330	384	9330
9331	384	9331
9332	384	9332
9333	384	9333
9334	384	9334
9335	384	9335
9336	384	9336
9337	384	9337
9338	385	9338
9339	385	9339
9340	385	9340
9341	385	9341
9342	385	9342
9343	385	9343
9344	385	9344
9345	386	9345
9346	386	9346
9347	386	9347
9348	388	9348
9349	388	9349
9350	388	9350
9351	388	9351
9352	388	9352
9353	388	9353
9354	388	9354
9355	388	9355
9356	388	9356
9357	388	9357
9358	388	9358
9359	388	9359
9360	389	9360
9361	389	9361
9362	389	9362
9363	389	9363
9364	389	9364
9365	389	9365
9366	389	9366
9367	389	9367
9368	389	9368
9369	389	9369
9370	389	9370
9371	389	9371
9372	389	9372
9373	389	9373
9374	389	9374
9375	389	9375
9376	389	9376
9377	389	9377
9378	389	9378
9379	389	9379
9380	389	9380
9381	389	9381
9382	389	9382
9383	389	9383
9384	389	9384
9385	389	9385
9386	389	9386
9387	389	9387
9388	389	9388
9389	389	9389
9390	389	9390
9391	390	9391
9392	390	9392
9393	390	9393
9394	390	9394
9395	390	9395
9396	391	9396
9397	391	9397
9398	391	9398
9399	391	9399
9400	391	9400
9401	391	9401
9402	391	9402
9403	391	9403
9404	391	9404
9405	391	9405
9406	392	9406
9407	392	9407
9408	392	9408
9409	392	9409
9410	393	9410
9411	393	9411
9412	393	9412
9413	393	9413
9414	393	9414
9415	393	9415
9416	393	9416
9417	393	9417
9418	393	9418
9419	393	9419
9420	393	9420
9421	393	9421
9422	393	9422
9423	393	9423
9424	393	9424
9425	393	9425
9426	393	9426
9427	393	9427
9428	393	9428
9429	393	9429
9430	393	9430
9431	393	9431
9432	393	9432
9433	393	9433
9434	393	9434
9435	394	9435
9436	394	9436
9437	394	9437
9438	394	9438
9439	394	9439
9440	394	9440
9441	394	9441
9442	394	9442
9443	394	9443
9444	394	9444
9445	394	9445
9446	394	9446
9447	394	9447
9448	394	9448
9449	394	9449
9450	394	9450
9451	394	9451
9452	394	9452
9453	394	9453
9454	394	9454
9455	394	9455
9456	394	9456
9457	394	9457
9458	394	9458
9459	395	9459
9460	395	9460
9461	395	9461
9462	395	9462
9463	395	9463
9464	395	9464
9465	395	9465
9466	395	9466
9467	395	9467
9468	395	9468
9469	395	9469
9470	395	9470
9471	395	9471
9472	395	9472
9473	395	9473
9474	395	9474
9475	395	9475
9476	395	9476
9477	395	9477
9478	395	9478
9479	395	9479
9480	395	9480
9481	395	9481
9482	395	9482
9483	395	9483
9484	395	9484
9485	395	9485
9486	395	9486
9487	395	9487
9488	395	9488
9489	395	9489
9490	395	9490
9491	395	9491
9492	395	9492
9493	395	9493
9494	395	9494
9495	395	9495
9496	395	9496
9497	395	9497
9498	395	9498
9499	395	9499
9500	395	9500
9501	395	9501
9502	395	9502
9503	395	9503
9504	395	9504
9505	395	9505
9506	395	9506
9507	395	9507
9508	395	9508
9509	395	9509
9510	395	9510
9511	395	9511
9512	395	9512
9513	395	9513
9514	395	9514
9515	395	9515
9516	395	9516
9517	395	9517
9518	395	9518
9519	395	9519
9520	395	9520
9521	395	9521
9522	395	9522
9523	395	9523
9524	395	9524
9525	395	9525
9526	395	9526
9527	395	9527
9528	395	9528
9529	395	9529
9530	395	9530
9531	395	9531
9532	395	9532
9533	395	9533
9534	395	9534
9535	395	9535
9536	395	9536
9537	395	9537
9538	395	9538
9539	395	9539
9540	395	9540
9541	395	9541
9542	395	9542
9543	395	9543
9544	395	9544
9545	395	9545
9546	395	9546
9547	395	9547
9548	395	9548
9549	395	9549
9550	395	9550
9551	396	9551
9552	396	9552
9553	396	9553
9554	396	9554
9555	396	9555
9556	396	9556
9557	397	9557
9558	397	9558
9559	397	9559
9560	397	9560
9561	397	9561
9562	397	9562
9563	397	9563
9564	397	9564
9565	397	9565
9566	397	9566
9567	397	9567
9568	397	9568
9569	397	9569
9570	397	9570
9571	397	9571
9572	397	9572
9573	397	9573
9574	397	9574
9575	397	9575
9576	397	9576
9577	397	9577
9578	397	9578
9579	397	9579
9580	397	9580
9581	397	9581
9582	397	9582
9583	397	9583
9584	397	9584
9585	397	9585
9586	397	9586
9587	397	9587
9588	397	9588
9589	397	9589
9590	397	9590
9591	397	9591
9592	397	9592
9593	397	9593
9594	397	9594
9595	398	9595
9596	398	9596
9597	398	9597
9598	398	9598
9599	398	9599
9600	398	9600
9601	398	9601
9602	398	9602
9603	398	9603
9604	398	9604
9605	398	9605
9606	398	9606
9607	398	9607
9608	398	9608
9609	398	9609
9610	398	9610
9611	398	9611
9612	399	9612
9613	399	9613
9614	399	9614
9615	399	9615
9616	399	9616
9617	399	9617
9618	399	9618
9619	399	9619
9620	399	9620
9621	399	9621
9622	399	9622
9623	399	9623
9624	399	9624
9625	399	9625
9626	399	9626
9627	399	9627
9628	399	9628
9629	399	9629
9630	399	9630
9631	399	9631
9632	399	9632
9633	399	9633
9634	399	9634
9635	400	9635
9636	400	9636
9637	400	9637
9638	400	9638
9639	400	9639
9640	400	9640
9641	400	9641
9642	400	9642
9643	400	9643
9644	400	9644
9645	400	9645
9646	400	9646
9647	400	9647
9648	400	9648
9649	400	9649
9650	400	9650
9651	400	9651
9652	401	9652
9653	401	9653
9654	401	9654
9655	401	9655
9656	401	9656
9657	401	9657
9658	401	9658
9659	401	9659
9660	401	9660
9661	401	9661
9662	401	9662
9663	401	9663
9664	401	9664
9665	401	9665
9666	402	9666
9667	402	9667
9668	402	9668
9669	402	9669
9670	402	9670
9671	402	9671
9672	402	9672
9673	403	9673
9674	403	9674
9675	403	9675
9676	403	9676
9677	403	9677
9678	403	9678
9679	403	9679
9680	403	9680
9681	403	9681
9682	403	9682
9683	403	9683
9684	404	9684
9685	404	9685
9686	404	9686
9687	404	9687
9688	404	9688
9689	404	9689
9690	404	9690
9691	404	9691
9692	404	9692
9693	404	9693
9694	404	9694
9695	404	9695
9696	404	9696
9697	404	9697
9698	405	9698
9699	405	9699
9700	405	9700
9701	405	9701
9702	405	9702
9703	405	9703
9704	405	9704
9705	405	9705
9706	405	9706
9707	405	9707
9708	405	9708
9709	406	9709
9710	406	9710
9711	406	9711
9712	406	9712
9713	406	9713
9714	406	9714
9715	406	9715
9716	406	9716
9717	406	9717
9718	406	9718
9719	406	9719
9720	406	9720
9721	407	9721
9722	407	9722
9723	407	9723
9724	407	9724
9725	407	9725
9726	407	9726
9727	407	9727
9728	407	9728
9729	407	9729
9730	407	9730
9731	407	9731
9732	407	9732
9733	407	9733
9734	407	9734
9735	408	9735
9736	408	9736
9737	408	9737
9738	408	9738
9739	408	9739
9740	408	9740
9741	408	9741
9742	408	9742
9743	408	9743
9744	408	9744
9745	408	9745
9746	408	9746
9747	408	9747
9748	408	9748
9749	408	9749
9750	408	9750
9751	408	9751
9752	408	9752
9753	408	9753
9754	408	9754
9755	408	9755
9756	408	9756
9757	408	9757
9758	408	9758
9759	408	9759
9760	408	9760
9761	408	9761
9762	409	9762
9763	409	9763
9764	409	9764
9765	409	9765
9766	409	9766
9767	409	9767
9768	409	9768
9769	409	9769
9770	409	9770
9771	409	9771
9772	409	9772
9773	409	9773
9774	409	9774
9775	410	9775
9776	410	9776
9777	410	9777
9778	410	9778
9779	410	9779
9780	410	9780
9781	410	9781
9782	410	9782
9783	410	9783
9784	410	9784
9785	410	9785
9786	410	9786
9787	410	9787
9788	410	9788
9789	410	9789
9790	411	9790
9791	411	9791
9792	411	9792
9793	411	9793
9794	411	9794
9795	411	9795
9796	411	9796
9797	411	9797
9798	411	9798
9799	411	9799
9800	411	9800
9801	411	9801
9802	412	9802
9803	412	9803
9804	412	9804
9805	412	9805
9806	412	9806
9807	412	9807
9808	412	9808
9809	412	9809
9810	412	9810
9811	412	9811
9812	412	9812
9813	412	9813
9814	413	9814
9815	413	9815
9816	413	9816
9817	413	9817
9818	413	9818
9819	413	9819
9820	413	9820
9821	413	9821
9822	413	9822
9823	413	9823
9824	413	9824
9825	413	9825
9826	414	9826
9827	414	9827
9828	414	9828
9829	414	9829
9830	414	9830
9831	414	9831
9832	414	9832
9833	414	9833
9834	414	9834
9835	414	9835
9836	414	9836
9837	414	9837
9838	414	9838
9839	414	9839
9840	414	9840
9841	414	9841
9842	414	9842
9843	414	9843
9844	414	9844
9845	414	9845
9846	414	9846
9847	414	9847
9848	414	9848
9849	414	9849
9850	415	9850
9851	415	9851
9852	415	9852
9853	415	9853
9854	415	9854
9855	415	9855
9856	415	9856
9857	415	9857
9858	415	9858
9859	415	9859
9860	416	9860
9861	416	9861
9862	416	9862
9863	416	9863
9864	416	9864
9865	416	9865
9866	416	9866
9867	416	9867
9868	416	9868
9869	416	9869
9870	416	9870
9871	416	9871
9872	416	9872
9873	416	9873
9874	416	9874
9875	416	9875
9876	417	9876
9877	417	9877
9878	417	9878
9879	417	9879
9880	417	9880
9881	417	9881
9882	417	9882
9883	417	9883
9884	417	9884
9885	417	9885
9886	418	9886
9887	418	9887
9888	418	9888
9889	418	9889
9890	418	9890
9891	418	9891
9892	418	9892
9893	418	9893
9894	418	9894
9895	418	9895
9896	418	9896
9897	418	9897
9898	418	9898
9899	418	9899
9900	418	9900
9901	418	9901
9902	418	9902
9903	419	9903
9904	419	9904
9905	419	9905
9906	419	9906
9907	419	9907
9908	419	9908
9909	419	9909
9910	419	9910
9911	419	9911
9912	419	9912
9913	419	9913
9914	419	9914
9915	419	9915
9916	419	9916
9917	419	9917
9918	419	9918
9919	419	9919
9920	419	9920
9921	419	9921
9922	419	9922
9923	420	9923
9924	420	9924
9925	420	9925
9926	420	9926
9927	420	9927
9928	420	9928
9929	421	9929
9930	421	9930
9931	421	9931
9932	421	9932
9933	421	9933
9934	421	9934
9935	421	9935
9936	421	9936
9937	421	9937
9938	421	9938
9939	421	9939
9940	421	9940
9941	421	9941
9942	421	9942
9943	421	9943
9944	421	9944
9945	421	9945
9946	421	9946
9947	421	9947
9948	421	9948
9949	421	9949
9950	421	9950
9951	421	9951
9952	421	9952
9953	422	9953
9954	422	9954
9955	422	9955
9956	422	9956
9957	422	9957
9958	422	9958
9959	422	9959
9960	422	9960
9961	422	9961
9962	422	9962
9963	422	9963
9964	422	9964
9965	422	9965
9966	422	9966
9967	422	9967
9968	422	9968
9969	422	9969
9970	422	9970
9971	422	9971
9972	422	9972
9973	422	9973
9974	422	9974
9975	422	9975
9976	422	9976
9977	422	9977
9978	422	9978
9979	422	9979
9980	422	9980
9981	422	9981
9982	422	9982
9983	422	9983
9984	422	9984
9985	422	9985
9986	422	9986
9987	422	9987
9988	422	9988
9989	422	9989
9990	422	9990
9991	422	9991
9992	422	9992
9993	422	9993
9994	422	9994
9995	422	9995
9996	422	9996
9997	422	9997
9998	422	9998
9999	422	9999
10000	422	10000
10001	422	10001
10002	422	10002
10003	422	10003
10004	423	10004
10005	423	10005
10006	423	10006
10007	423	10007
10008	423	10008
10009	423	10009
10010	423	10010
10011	423	10011
10012	423	10012
10013	423	10013
10014	423	10014
10015	423	10015
10016	423	10016
10017	423	10017
10018	423	10018
10019	423	10019
10020	423	10020
10021	423	10021
10022	423	10022
10023	423	10023
10024	423	10024
10025	423	10025
10026	423	10026
10027	423	10027
10028	423	10028
10029	424	10029
10030	424	10030
10031	424	10031
10032	424	10032
10033	424	10033
10034	424	10034
10035	424	10035
10036	424	10036
10037	424	10037
10038	424	10038
10039	424	10039
10040	424	10040
10041	424	10041
10042	424	10042
10043	424	10043
10044	424	10044
10045	424	10045
10046	424	10046
10047	424	10047
10048	424	10048
10049	425	10049
10050	425	10050
10051	425	10051
10052	425	10052
10053	425	10053
10054	425	10054
10055	425	10055
10056	425	10056
10057	425	10057
10058	425	10058
10059	425	10059
10060	425	10060
10061	425	10061
10062	425	10062
10063	425	10063
10064	425	10064
10065	425	10065
10066	425	10066
10067	425	10067
10068	425	10068
10069	425	10069
10070	425	10070
10071	425	10071
10072	425	10072
10073	425	10073
10074	425	10074
10075	425	10075
10076	425	10076
10077	425	10077
10078	425	10078
10079	425	10079
10080	425	10080
10081	425	10081
10082	425	10082
10083	425	10083
10084	425	10084
10085	425	10085
10086	425	10086
10087	425	10087
10088	425	10088
10089	425	10089
10090	425	10090
10091	425	10091
10092	425	10092
10093	425	10093
10094	425	10094
10095	425	10095
10096	426	10096
10097	426	10097
10098	426	10098
10099	426	10099
10100	426	10100
10101	426	10101
10102	426	10102
10103	426	10103
10104	426	10104
10105	426	10105
10106	426	10106
10107	426	10107
10108	426	10108
10109	426	10109
10110	426	10110
10111	426	10111
10112	427	10112
10113	427	10113
10114	427	10114
10115	427	10115
10116	428	10116
10117	428	10117
10118	428	10118
10119	428	10119
10120	428	10120
10121	428	10121
10122	428	10122
10123	428	10123
10124	428	10124
10125	429	10125
10126	429	10126
10127	429	10127
10128	429	10128
10129	429	10129
10130	429	10130
10131	430	10131
10132	430	10132
10133	430	10133
10134	430	10134
10135	430	10135
10136	430	10136
10137	430	10137
10138	430	10138
10139	430	10139
10140	430	10140
10141	430	10141
10142	430	10142
10143	430	10143
10144	430	10144
10145	430	10145
10146	430	10146
10147	431	10147
10148	431	10148
10149	431	10149
10150	431	10150
10151	431	10151
10152	431	10152
10153	431	10153
10154	431	10154
10155	431	10155
10156	431	10156
10157	431	10157
10158	431	10158
10159	431	10159
10160	431	10160
10161	431	10161
10162	431	10162
10163	431	10163
10164	431	10164
10165	431	10165
10166	431	10166
10167	431	10167
10168	431	10168
10169	431	10169
10170	431	10170
10171	431	10171
10172	431	10172
10173	431	10173
10174	431	10174
10175	431	10175
10176	431	10176
10177	431	10177
10178	431	10178
10179	431	10179
10180	432	10180
10181	432	10181
10182	432	10182
10183	432	10183
10184	432	10184
10185	433	10185
10186	433	10186
10187	434	10187
10188	434	10188
10189	434	10189
10190	434	10190
10191	434	10191
10192	434	10192
10193	434	10193
10194	434	10194
10195	434	10195
10196	434	10196
10197	434	10197
10198	434	10198
10199	434	10199
10200	434	10200
10201	434	10201
10202	434	10202
10203	434	10203
10204	434	10204
10205	434	10205
10206	434	10206
10207	434	10207
10208	434	10208
10209	434	10209
10210	434	10210
10211	434	10211
10212	434	10212
10213	434	10213
10214	434	10214
10215	434	10215
10216	434	10216
10217	434	10217
10218	434	10218
10219	434	10219
10220	434	10220
10221	434	10221
10222	434	10222
10223	434	10223
10224	434	10224
10225	434	10225
10226	434	10226
10227	434	10227
10228	434	10228
10229	434	10229
10230	434	10230
10231	434	10231
10232	434	10232
10233	434	10233
10234	434	10234
10235	434	10235
10236	434	10236
10237	434	10237
10238	434	10238
10239	434	10239
10240	434	10240
10241	434	10241
10242	434	10242
10243	434	10243
10244	434	10244
10245	434	10245
10246	434	10246
10247	434	10247
10248	434	10248
10249	434	10249
10250	434	10250
10251	434	10251
10252	434	10252
10253	434	10253
10254	434	10254
10255	434	10255
10256	434	10256
10257	434	10257
10258	434	10258
10259	434	10259
10260	434	10260
10261	434	10261
10262	434	10262
10263	434	10263
10264	434	10264
10265	434	10265
10266	434	10266
10267	434	10267
10268	434	10268
10269	434	10269
10270	434	10270
10271	434	10271
10272	434	10272
10273	434	10273
10274	434	10274
10275	434	10275
10276	434	10276
10277	434	10277
10278	434	10278
10279	434	10279
10280	434	10280
10281	434	10281
10282	434	10282
10283	435	10283
10284	435	10284
10285	435	10285
10286	435	10286
10287	435	10287
10288	435	10288
10289	435	10289
10290	435	10290
10291	435	10291
10292	435	10292
10293	435	10293
10294	435	10294
10295	435	10295
10296	435	10296
10297	435	10297
10298	435	10298
10299	435	10299
10300	435	10300
10301	435	10301
10302	435	10302
10303	435	10303
10304	435	10304
10305	435	10305
10306	435	10306
10307	435	10307
10308	435	10308
10309	435	10309
10310	435	10310
10311	435	10311
10312	435	10312
10313	435	10313
10314	435	10314
10315	435	10315
10316	435	10316
10317	435	10317
10318	435	10318
10319	435	10319
10320	435	10320
10321	435	10321
10322	435	10322
10323	436	10323
10324	436	10324
10325	436	10325
10326	436	10326
10327	436	10327
10328	436	10328
10329	436	10329
10330	436	10330
10331	436	10331
10332	436	10332
10333	436	10333
10334	436	10334
10335	436	10335
10336	436	10336
10337	436	10337
10338	436	10338
10339	436	10339
10340	437	10340
10341	437	10341
10342	437	10342
10343	437	10343
10344	437	10344
10345	437	10345
10346	437	10346
10347	437	10347
10348	437	10348
10349	437	10349
10350	437	10350
10351	438	10351
10352	438	10352
10353	438	10353
10354	438	10354
10355	438	10355
10356	438	10356
10357	438	10357
10358	438	10358
10359	438	10359
10360	438	10360
10361	438	10361
10362	439	10362
10363	439	10363
10364	439	10364
10365	439	10365
10366	439	10366
10367	439	10367
10368	439	10368
10369	439	10369
10370	439	10370
10371	439	10371
10372	439	10372
10373	439	10373
10374	439	10374
10375	439	10375
10376	439	10376
10377	439	10377
10378	440	10378
10379	440	10379
10380	440	10380
10381	440	10381
10382	440	10382
10383	441	10383
10384	441	10384
10385	441	10385
10386	441	10386
10387	441	10387
10388	442	10388
10389	442	10389
10390	442	10390
10391	442	10391
10392	442	10392
10393	442	10393
10394	442	10394
10395	442	10395
10396	442	10396
10397	442	10397
10398	442	10398
10399	442	10399
10400	442	10400
10401	442	10401
10402	442	10402
10403	442	10403
10404	442	10404
10405	442	10405
10406	443	10406
10407	443	10407
10408	443	10408
10409	443	10409
10410	443	10410
10411	443	10411
10412	443	10412
10413	443	10413
10414	443	10414
10415	443	10415
10416	443	10416
10417	443	10417
10418	443	10418
10419	443	10419
10420	443	10420
10421	443	10421
10422	443	10422
10423	443	10423
10424	443	10424
10425	444	10425
10426	444	10426
10427	444	10427
10428	444	10428
10429	445	10429
10430	445	10430
10431	445	10431
10432	445	10432
10433	445	10433
10434	445	10434
10435	445	10435
10436	445	10436
10437	445	10437
10438	445	10438
10439	445	10439
10440	445	10440
10441	445	10441
10442	445	10442
10443	445	10443
10444	445	10444
10445	445	10445
10446	445	10446
10447	445	10447
10448	445	10448
10449	445	10449
10450	445	10450
10451	445	10451
10452	445	10452
10453	445	10453
10454	445	10454
10455	446	10455
10456	446	10456
10457	446	10457
10458	446	10458
10459	446	10459
10460	446	10460
10461	446	10461
10462	446	10462
10463	446	10463
10464	446	10464
10465	446	10465
10466	446	10466
10467	446	10467
10468	446	10468
10469	446	10469
10470	446	10470
10471	446	10471
10472	446	10472
10473	446	10473
10474	446	10474
10475	446	10475
10476	446	10476
10477	446	10477
10478	446	10478
10479	446	10479
10480	446	10480
10481	447	10481
10482	447	10482
10483	447	10483
10484	447	10484
10485	447	10485
10486	447	10486
10487	447	10487
10488	447	10488
10489	447	10489
10490	447	10490
10491	447	10491
10492	447	10492
10493	447	10493
10494	447	10494
10495	447	10495
10496	447	10496
10497	447	10497
10498	447	10498
10499	447	10499
10500	447	10500
10501	447	10501
10502	447	10502
10503	447	10503
10504	447	10504
10505	447	10505
10506	447	10506
10507	448	10507
10508	449	10508
10509	449	10509
10510	449	10510
10511	449	10511
10512	449	10512
10513	449	10513
10514	449	10514
10515	449	10515
10516	449	10516
10517	449	10517
10518	449	10518
10519	449	10519
10520	449	10520
10521	450	10521
10522	450	10522
10523	450	10523
10524	450	10524
10525	450	10525
10526	450	10526
10527	450	10527
10528	450	10528
10529	450	10529
10530	451	10530
10531	451	10531
10532	451	10532
10533	451	10533
10534	451	10534
10535	451	10535
10536	451	10536
10537	451	10537
10538	451	10538
10539	451	10539
10540	451	10540
10541	451	10541
10542	451	10542
10543	451	10543
10544	451	10544
10545	451	10545
10546	451	10546
10547	451	10547
10548	451	10548
10549	451	10549
10550	451	10550
10551	451	10551
10552	451	10552
10553	451	10553
10554	451	10554
10555	452	10555
10556	452	10556
10557	452	10557
10558	452	10558
10559	452	10559
10560	452	10560
10561	452	10561
10562	452	10562
10563	452	10563
10564	452	10564
10565	452	10565
10566	452	10566
10567	452	10567
10568	452	10568
10569	452	10569
10570	453	10570
10571	453	10571
10572	453	10572
10573	453	10573
10574	453	10574
10575	453	10575
10576	453	10576
10577	453	10577
10578	453	10578
10579	453	10579
10580	453	10580
10581	453	10581
10582	454	10582
10583	454	10583
10584	454	10584
10585	454	10585
10586	454	10586
10587	454	10587
10588	454	10588
10589	454	10589
10590	454	10590
10591	454	10591
10592	454	10592
10593	455	10593
10594	455	10594
10595	455	10595
10596	455	10596
10597	455	10597
10598	456	10598
10599	456	10599
10600	456	10600
10601	456	10601
10602	456	10602
10603	456	10603
10604	456	10604
10605	456	10605
10606	456	10606
10607	456	10607
10608	457	10608
10609	457	10609
10610	457	10610
10611	457	10611
10612	457	10612
10613	457	10613
10614	457	10614
10615	457	10615
10616	457	10616
10617	457	10617
10618	457	10618
10619	457	10619
10620	457	10620
10621	457	10621
10622	457	10622
10623	457	10623
10624	457	10624
10625	457	10625
10626	457	10626
10627	457	10627
10628	457	10628
10629	457	10629
10630	457	10630
10631	457	10631
10632	457	10632
10633	457	10633
10634	458	10634
10635	458	10635
10636	458	10636
10637	458	10637
10638	458	10638
10639	458	10639
10640	458	10640
10641	458	10641
10642	458	10642
10643	458	10643
10644	458	10644
10645	458	10645
10646	458	10646
10647	458	10647
10648	458	10648
10649	458	10649
10650	458	10650
10651	458	10651
10652	458	10652
10653	458	10653
10654	458	10654
10655	458	10655
10656	458	10656
10657	458	10657
10658	458	10658
10659	458	10659
10660	458	10660
10661	458	10661
10662	458	10662
10663	458	10663
10664	458	10664
10665	458	10665
10666	458	10666
10667	458	10667
10668	458	10668
10669	458	10669
10670	458	10670
10671	458	10671
10672	458	10672
10673	458	10673
10674	458	10674
10675	458	10675
10676	458	10676
10677	458	10677
10678	459	10678
10679	459	10679
10680	459	10680
10681	459	10681
10682	459	10682
10683	459	10683
10684	459	10684
10685	459	10685
10686	459	10686
10687	459	10687
10688	459	10688
10689	459	10689
10690	459	10690
10691	459	10691
10692	459	10692
10693	459	10693
10694	459	10694
10695	459	10695
10696	459	10696
10697	459	10697
10698	459	10698
10699	459	10699
10700	459	10700
10701	459	10701
10702	459	10702
10703	459	10703
10704	459	10704
10705	460	10705
10706	460	10706
10707	460	10707
10708	460	10708
10709	460	10709
10710	460	10710
10711	460	10711
10712	460	10712
10713	460	10713
10714	460	10714
10715	460	10715
10716	460	10716
10717	460	10717
10718	460	10718
10719	460	10719
10720	460	10720
10721	460	10721
10722	460	10722
10723	460	10723
10724	460	10724
10725	460	10725
10726	460	10726
10727	461	10727
10728	461	10728
10729	461	10729
10730	461	10730
10731	461	10731
10732	461	10732
10733	461	10733
10734	461	10734
10735	461	10735
10736	461	10736
10737	461	10737
10738	461	10738
10739	461	10739
10740	461	10740
10741	461	10741
10742	461	10742
10743	462	10743
10744	462	10744
10745	462	10745
10746	462	10746
10747	462	10747
10748	462	10748
10749	462	10749
10750	462	10750
10751	462	10751
10752	462	10752
10753	462	10753
10754	462	10754
10755	462	10755
10756	462	10756
10757	462	10757
10758	462	10758
10759	462	10759
10760	462	10760
10761	463	10761
10762	463	10762
10763	463	10763
10764	463	10764
10765	463	10765
10766	463	10766
10767	463	10767
10768	463	10768
10769	463	10769
10770	463	10770
10771	463	10771
10772	463	10772
10773	463	10773
10774	463	10774
10775	463	10775
10776	463	10776
10777	463	10777
10778	463	10778
10779	463	10779
10780	463	10780
10781	463	10781
10782	463	10782
10783	463	10783
10784	464	10784
10785	464	10785
10786	464	10786
10787	464	10787
10788	464	10788
10789	464	10789
10790	464	10790
10791	464	10791
10792	464	10792
10793	464	10793
10794	464	10794
10795	464	10795
10796	464	10796
10797	464	10797
10798	465	10798
10799	465	10799
10800	465	10800
10801	465	10801
10802	465	10802
10803	465	10803
10804	465	10804
10805	465	10805
10806	465	10806
10807	465	10807
10808	465	10808
10809	465	10809
10810	465	10810
10811	465	10811
10812	465	10812
10813	465	10813
10814	465	10814
10815	465	10815
10816	465	10816
10817	465	10817
10818	465	10818
10819	465	10819
10820	465	10820
10821	465	10821
10822	466	10822
10823	466	10823
10824	466	10824
10825	466	10825
10826	466	10826
10827	466	10827
10828	466	10828
10829	466	10829
10830	466	10830
10831	466	10831
10832	466	10832
10833	466	10833
10834	466	10834
10835	466	10835
10836	466	10836
10837	466	10837
10838	466	10838
10839	466	10839
10840	466	10840
10841	466	10841
10842	466	10842
10843	466	10843
10844	466	10844
10845	466	10845
10846	466	10846
10847	466	10847
10848	466	10848
10849	467	10849
10850	467	10850
10851	467	10851
10852	467	10852
10853	467	10853
10854	467	10854
10855	467	10855
10856	467	10856
10857	467	10857
10858	467	10858
10859	467	10859
10860	467	10860
10861	467	10861
10862	467	10862
10863	467	10863
10864	467	10864
10865	467	10865
10866	468	10866
10867	468	10867
10868	468	10868
10869	468	10869
10870	468	10870
10871	468	10871
10872	468	10872
10873	468	10873
10874	468	10874
10875	468	10875
10876	468	10876
10877	468	10877
10878	469	10878
10879	469	10879
10880	469	10880
10881	469	10881
10882	469	10882
10883	469	10883
10884	469	10884
10885	469	10885
10886	469	10886
10887	469	10887
10888	469	10888
10889	470	10889
10890	470	10890
10891	470	10891
10892	470	10892
10893	470	10893
10894	470	10894
10895	470	10895
10896	470	10896
10897	470	10897
10898	470	10898
10899	470	10899
10900	470	10900
10901	470	10901
10902	470	10902
10903	471	10903
10904	471	10904
10905	471	10905
10906	471	10906
10907	471	10907
10908	471	10908
10909	471	10909
10910	471	10910
10911	472	10911
10912	472	10912
10913	472	10913
10914	472	10914
10915	472	10915
10916	472	10916
10917	472	10917
10918	472	10918
10919	472	10919
10920	473	10920
10921	473	10921
10922	473	10922
10923	473	10923
10924	473	10924
10925	473	10925
10926	473	10926
10927	473	10927
10928	473	10928
10929	473	10929
10930	473	10930
10931	473	10931
10932	473	10932
10933	473	10933
10934	473	10934
10935	474	10935
10936	474	10936
10937	475	10937
10938	475	10938
10939	475	10939
10940	475	10940
10941	475	10941
10942	475	10942
10943	475	10943
10944	476	10944
10945	476	10945
10946	476	10946
10947	477	10947
10948	477	10948
10949	477	10949
10950	477	10950
10951	477	10951
10952	477	10952
10953	477	10953
10954	477	10954
10955	477	10955
10956	477	10956
10957	478	10957
10958	478	10958
10959	478	10959
10960	478	10960
10961	478	10961
10962	478	10962
10963	478	10963
10964	478	10964
10965	478	10965
10966	478	10966
10967	478	10967
10968	478	10968
10969	478	10969
10970	478	10970
10971	478	10971
10972	478	10972
10973	478	10973
10974	478	10974
10975	478	10975
10976	479	10976
10977	479	10977
10978	479	10978
10979	479	10979
10980	479	10980
10981	479	10981
10982	479	10982
10983	479	10983
10984	479	10984
10985	479	10985
10986	479	10986
10987	479	10987
10988	479	10988
10989	479	10989
10990	479	10990
10991	479	10991
10992	479	10992
10993	479	10993
10994	479	10994
10995	479	10995
10996	479	10996
10997	479	10997
10998	479	10998
10999	479	10999
11000	479	11000
11001	480	11001
11002	480	11002
11003	480	11003
11004	480	11004
11005	480	11005
11006	480	11006
11007	480	11007
11008	480	11008
11009	481	11009
11010	481	11010
11011	481	11011
11012	481	11012
11013	481	11013
11014	481	11014
11015	481	11015
11016	481	11016
11017	481	11017
11018	481	11018
11019	481	11019
11020	481	11020
11021	481	11021
11022	481	11022
11023	481	11023
11024	481	11024
11025	482	11025
11026	482	11026
11027	482	11027
11028	482	11028
11029	482	11029
11030	482	11030
11031	482	11031
11032	482	11032
11033	482	11033
11034	482	11034
11035	482	11035
11036	482	11036
11037	482	11037
11038	482	11038
11039	482	11039
11040	482	11040
11041	482	11041
11042	482	11042
11043	482	11043
11044	482	11044
11045	482	11045
11046	482	11046
11047	482	11047
11048	482	11048
11049	483	11049
11050	483	11050
11051	483	11051
11052	483	11052
11053	483	11053
11054	483	11054
11055	483	11055
11056	483	11056
11057	483	11057
11058	483	11058
11059	483	11059
11060	483	11060
11061	483	11061
11062	483	11062
11063	483	11063
11064	483	11064
11065	483	11065
11066	483	11066
11067	484	11067
11068	484	11068
11069	484	11069
11070	484	11070
11071	484	11071
11072	484	11072
11073	484	11073
11074	484	11074
11075	484	11075
11076	484	11076
11077	484	11077
11078	484	11078
11079	484	11079
11080	484	11080
11081	484	11081
11082	484	11082
11083	484	11083
11084	484	11084
11085	484	11085
11086	484	11086
11087	484	11087
11088	484	11088
11089	484	11089
11090	484	11090
11091	484	11091
11092	484	11092
11093	484	11093
11094	485	11094
11095	485	11095
11096	485	11096
11097	485	11097
11098	485	11098
11099	485	11099
11100	485	11100
11101	485	11101
11102	485	11102
11103	485	11103
11104	485	11104
11105	485	11105
11106	485	11106
11107	485	11107
11108	486	11108
11109	486	11109
11110	486	11110
11111	486	11111
11112	486	11112
11113	486	11113
11114	486	11114
11115	486	11115
11116	486	11116
11117	486	11117
11118	486	11118
11119	486	11119
11120	486	11120
11121	486	11121
11122	486	11122
11123	486	11123
11124	486	11124
11125	486	11125
11126	486	11126
11127	486	11127
11128	486	11128
11129	486	11129
11130	487	11130
11131	487	11131
11132	487	11132
11133	487	11133
11134	487	11134
11135	487	11135
11136	487	11136
11137	487	11137
11138	487	11138
11139	487	11139
11140	487	11140
11141	487	11141
11142	487	11142
11143	487	11143
11144	487	11144
11145	487	11145
11146	487	11146
11147	487	11147
11148	488	11148
11149	488	11149
11150	488	11150
11151	488	11151
11152	488	11152
11153	488	11153
11154	488	11154
11155	488	11155
11156	488	11156
11157	488	11157
11158	488	11158
11159	488	11159
11160	488	11160
11161	488	11161
11162	488	11162
11163	488	11163
11164	488	11164
11165	488	11165
11166	488	11166
11167	488	11167
11168	489	11168
11169	489	11169
11170	489	11170
11171	489	11171
11172	489	11172
11173	489	11173
11174	490	11174
11175	490	11175
11176	490	11176
11177	490	11177
11178	490	11178
11179	490	11179
11180	490	11180
11181	490	11181
11182	490	11182
11183	491	11183
11184	491	11184
11185	491	11185
11186	491	11186
11187	491	11187
11188	491	11188
11189	491	11189
11190	491	11190
11191	491	11191
11192	492	11192
11193	492	11193
11194	492	11194
11195	492	11195
11196	492	11196
11197	492	11197
11198	492	11198
11199	492	11199
11200	492	11200
11201	492	11201
11202	492	11202
11203	492	11203
11204	492	11204
11205	492	11205
11206	492	11206
11207	492	11207
11208	492	11208
11209	492	11209
11210	492	11210
11211	492	11211
11212	492	11212
11213	492	11213
11214	493	11214
11215	493	11215
11216	493	11216
11217	493	11217
11218	493	11218
11219	493	11219
11220	493	11220
11221	493	11221
11222	493	11222
11223	493	11223
11224	494	11224
11225	494	11225
11226	494	11226
11227	494	11227
11228	494	11228
11229	494	11229
11230	494	11230
11231	494	11231
11232	494	11232
11233	494	11233
11234	494	11234
11235	494	11235
11236	494	11236
11237	494	11237
11238	494	11238
11239	495	11239
11240	495	11240
11241	495	11241
11242	496	11242
11243	496	11243
11244	496	11244
11245	496	11245
11246	497	11246
11247	497	11247
11248	497	11248
11249	497	11249
11250	497	11250
11251	497	11251
11252	497	11252
11253	497	11253
11254	497	11254
11255	497	11255
11256	497	11256
11257	497	11257
11258	497	11258
11259	497	11259
11260	497	11260
11261	497	11261
11262	498	11262
11263	498	11263
11264	498	11264
11265	498	11265
11266	498	11266
11267	498	11267
11268	498	11268
11269	498	11269
11270	498	11270
11271	499	11271
11272	499	11272
11273	499	11273
11274	499	11274
11275	499	11275
11276	499	11276
11277	499	11277
11278	499	11278
11279	499	11279
11280	499	11280
11281	499	11281
11282	499	11282
11283	499	11283
11284	499	11284
11285	499	11285
11286	499	11286
11287	499	11287
11288	499	11288
11289	499	11289
11290	499	11290
11291	499	11291
11292	499	11292
11293	499	11293
11294	499	11294
11295	499	11295
11296	499	11296
11297	499	11297
11298	499	11298
11299	499	11299
11300	499	11300
11301	499	11301
11302	499	11302
11303	499	11303
11304	499	11304
11305	499	11305
11306	499	11306
11307	499	11307
11308	499	11308
11309	499	11309
11310	499	11310
11311	499	11311
11312	499	11312
11313	499	11313
11314	499	11314
11315	499	11315
11316	499	11316
11317	499	11317
11318	499	11318
11319	499	11319
11320	499	11320
11321	499	11321
11322	499	11322
11323	499	11323
11324	499	11324
11325	499	11325
11326	499	11326
11327	499	11327
11328	499	11328
11329	499	11329
11330	500	11330
11331	500	11331
11332	500	11332
11333	500	11333
11334	500	11334
11335	500	11335
11336	500	11336
11337	500	11337
11338	500	11338
11339	500	11339
11340	500	11340
11341	500	11341
11342	500	11342
11343	500	11343
11344	500	11344
11345	501	11345
11346	501	11346
11347	501	11347
11348	501	11348
11349	501	11349
11350	501	11350
11351	501	11351
11352	501	11352
11353	501	11353
11354	501	11354
11355	501	11355
11356	501	11356
11357	501	11357
11358	501	11358
11359	501	11359
11360	501	11360
11361	501	11361
11362	501	11362
11363	501	11363
11364	501	11364
11365	501	11365
11366	502	11366
11367	502	11367
11368	502	11368
11369	502	11369
11370	502	11370
11371	502	11371
11372	502	11372
11373	502	11373
11374	502	11374
11375	502	11375
11376	502	11376
11377	502	11377
11378	502	11378
11379	502	11379
11380	502	11380
11381	502	11381
11382	502	11382
11383	502	11383
11384	502	11384
11385	502	11385
11386	502	11386
11387	502	11387
11388	502	11388
11389	502	11389
11390	502	11390
11391	502	11391
11392	502	11392
11393	502	11393
11394	502	11394
11395	503	11395
11396	503	11396
11397	503	11397
11398	503	11398
11399	503	11399
11400	503	11400
11401	503	11401
11402	503	11402
11403	503	11403
11404	503	11404
11405	503	11405
11406	503	11406
11407	503	11407
11408	503	11408
11409	503	11409
11410	503	11410
11411	503	11411
11412	503	11412
11413	503	11413
11414	503	11414
11415	503	11415
11416	503	11416
11417	503	11417
11418	503	11418
11419	503	11419
11420	503	11420
11421	503	11421
11422	503	11422
11423	503	11423
11424	503	11424
11425	503	11425
11426	503	11426
11427	503	11427
11428	504	11428
11429	504	11429
11430	504	11430
11431	504	11431
11432	504	11432
11433	504	11433
11434	504	11434
11435	504	11435
11436	504	11436
11437	504	11437
11438	504	11438
11439	504	11439
11440	504	11440
11441	504	11441
11442	504	11442
11443	504	11443
11444	504	11444
11445	504	11445
11446	504	11446
11447	504	11447
11448	504	11448
11449	504	11449
11450	504	11450
11451	504	11451
11452	504	11452
11453	504	11453
11454	504	11454
11455	504	11455
11456	504	11456
11457	504	11457
11458	504	11458
11459	504	11459
11460	504	11460
11461	504	11461
11462	504	11462
11463	504	11463
11464	505	11464
11465	505	11465
11466	505	11466
11467	505	11467
11468	505	11468
11469	505	11469
11470	505	11470
11471	505	11471
11472	505	11472
11473	505	11473
11474	505	11474
11475	505	11475
11476	505	11476
11477	505	11477
11478	505	11478
11479	505	11479
11480	505	11480
11481	505	11481
11482	505	11482
11483	505	11483
11484	505	11484
11485	505	11485
11486	505	11486
11487	505	11487
11488	505	11488
11489	505	11489
11490	506	11490
11491	506	11491
11492	506	11492
11493	506	11493
11494	506	11494
11495	506	11495
11496	506	11496
11497	507	11497
11498	507	11498
11499	507	11499
11500	507	11500
11501	507	11501
11502	507	11502
11503	507	11503
11504	507	11504
11505	507	11505
11506	507	11506
11507	507	11507
11508	507	11508
11509	507	11509
11510	507	11510
11511	507	11511
11512	507	11512
11513	508	11513
11514	508	11514
11515	508	11515
11516	508	11516
11517	508	11517
11518	508	11518
11519	508	11519
11520	508	11520
11521	508	11521
11522	508	11522
11523	508	11523
11524	508	11524
11525	509	11525
11526	509	11526
11527	509	11527
11528	509	11528
11529	509	11529
11530	509	11530
11531	509	11531
11532	509	11532
11533	509	11533
11534	509	11534
11535	510	11535
11536	510	11536
11537	510	11537
11538	510	11538
11539	510	11539
11540	511	11540
11541	511	11541
11542	511	11542
11543	511	11543
11544	511	11544
11545	511	11545
11546	511	11546
11547	511	11547
11548	511	11548
11549	511	11549
11550	511	11550
11551	511	11551
11552	511	11552
11553	511	11553
11554	511	11554
11555	511	11555
11556	511	11556
11557	511	11557
11558	511	11558
11559	512	11559
11560	512	11560
11561	512	11561
11562	512	11562
11563	512	11563
11564	512	11564
11565	512	11565
11566	512	11566
11567	512	11567
11568	512	11568
11569	512	11569
11570	512	11570
11571	512	11571
11572	512	11572
11573	512	11573
11574	512	11574
11575	512	11575
11576	512	11576
11577	513	11577
11578	513	11578
11579	513	11579
11580	513	11580
11581	513	11581
11582	513	11582
11583	513	11583
11584	513	11584
11585	513	11585
11586	513	11586
11587	513	11587
11588	513	11588
11589	513	11589
11590	513	11590
11591	513	11591
11592	513	11592
11593	513	11593
11594	513	11594
11595	513	11595
11596	513	11596
11597	513	11597
11598	513	11598
11599	514	11599
11600	514	11600
11601	514	11601
11602	514	11602
11603	514	11603
11604	514	11604
11605	514	11605
11606	514	11606
11607	514	11607
11608	514	11608
11609	514	11609
11610	514	11610
11611	514	11611
11612	514	11612
11613	514	11613
11614	514	11614
11615	514	11615
11616	514	11616
11617	514	11617
11618	514	11618
11619	514	11619
11620	514	11620
11621	514	11621
11622	515	11622
11623	515	11623
11624	515	11624
11625	515	11625
11626	515	11626
11627	515	11627
11628	515	11628
11629	515	11629
11630	515	11630
11631	515	11631
11632	515	11632
11633	515	11633
11634	515	11634
11635	515	11635
11636	515	11636
11637	515	11637
11638	516	11638
11639	516	11639
11640	516	11640
11641	516	11641
11642	516	11642
11643	516	11643
11644	516	11644
11645	516	11645
11646	516	11646
11647	516	11647
11648	516	11648
11649	516	11649
11650	516	11650
11651	516	11651
11652	516	11652
11653	516	11653
11654	516	11654
11655	517	11655
11656	517	11656
11657	517	11657
11658	517	11658
11659	517	11659
11660	517	11660
11661	517	11661
11662	517	11662
11663	517	11663
11664	517	11664
11665	517	11665
11666	517	11666
11667	517	11667
11668	517	11668
11669	518	11669
11670	518	11670
11671	518	11671
11672	518	11672
11673	519	11673
11674	519	11674
11675	519	11675
11676	519	11676
11677	519	11677
11678	519	11678
11679	519	11679
11680	519	11680
11681	519	11681
11682	519	11682
11683	519	11683
11684	519	11684
11685	519	11685
11686	519	11686
11687	519	11687
11688	519	11688
11689	519	11689
11690	519	11690
11691	519	11691
11692	519	11692
11693	519	11693
11694	519	11694
11695	519	11695
11696	519	11696
11697	520	11697
11698	520	11698
11699	520	11699
11700	520	11700
11701	520	11701
11702	520	11702
11703	520	11703
11704	520	11704
11705	520	11705
11706	520	11706
11707	520	11707
11708	520	11708
11709	520	11709
11710	520	11710
11711	520	11711
11712	520	11712
11713	520	11713
11714	520	11714
11715	520	11715
11716	520	11716
11717	520	11717
11718	520	11718
11719	520	11719
11720	521	11720
11721	521	11721
11722	521	11722
11723	521	11723
11724	521	11724
11725	521	11725
11726	521	11726
11727	521	11727
11728	521	11728
11729	521	11729
11730	521	11730
11731	521	11731
11732	521	11732
11733	521	11733
11734	521	11734
11735	521	11735
11736	521	11736
11737	521	11737
11738	521	11738
11739	521	11739
11740	521	11740
11741	521	11741
11742	521	11742
11743	521	11743
11744	521	11744
11745	521	11745
11746	521	11746
11747	521	11747
11748	521	11748
11749	521	11749
11750	521	11750
11751	521	11751
11752	521	11752
11753	522	11753
11754	522	11754
11755	522	11755
11756	522	11756
11757	522	11757
11758	522	11758
11759	522	11759
11760	522	11760
11761	522	11761
11762	522	11762
11763	522	11763
11764	522	11764
11765	522	11765
11766	522	11766
11767	522	11767
11768	522	11768
11769	522	11769
11770	522	11770
11771	522	11771
11772	522	11772
11773	522	11773
11774	522	11774
11775	522	11775
11776	522	11776
11777	522	11777
11778	522	11778
11779	522	11779
11780	522	11780
11781	522	11781
11782	523	11782
11783	523	11783
11784	523	11784
11785	523	11785
11786	523	11786
11787	523	11787
11788	523	11788
11789	524	11789
11790	524	11790
11791	524	11791
11792	524	11792
11793	524	11793
11794	524	11794
11795	524	11795
11796	524	11796
11797	524	11797
11798	524	11798
11799	524	11799
11800	524	11800
11801	524	11801
11802	524	11802
11803	524	11803
11804	524	11804
11805	525	11805
11806	525	11806
11807	525	11807
11808	525	11808
11809	525	11809
11810	525	11810
11811	525	11811
11812	525	11812
11813	526	11813
11814	526	11814
11815	526	11815
11816	526	11816
11817	526	11817
11818	526	11818
11819	526	11819
11820	526	11820
11821	526	11821
11822	526	11822
11823	526	11823
11824	527	11824
11825	528	11825
11826	528	11826
11827	528	11827
11828	528	11828
11829	528	11829
11830	528	11830
11831	528	11831
11832	528	11832
11833	528	11833
11834	528	11834
11835	528	11835
11836	528	11836
11837	528	11837
11838	528	11838
11839	528	11839
11840	528	11840
11841	528	11841
11842	528	11842
11843	528	11843
11844	528	11844
11845	528	11845
11846	528	11846
11847	528	11847
11848	528	11848
11849	528	11849
11850	528	11850
11851	528	11851
11852	528	11852
11853	528	11853
11854	528	11854
11855	528	11855
11856	528	11856
11857	528	11857
11858	528	11858
11859	528	11859
11860	529	11860
11861	530	11861
11862	530	11862
11863	530	11863
11864	530	11864
11865	530	11865
11866	530	11866
11867	531	11867
11868	531	11868
11869	531	11869
11870	531	11870
11871	531	11871
11872	531	11872
11873	532	11873
11874	532	11874
11875	532	11875
11876	532	11876
11877	532	11877
11878	532	11878
11879	532	11879
11880	532	11880
11881	532	11881
11882	532	11882
11883	533	11883
11884	533	11884
11885	533	11885
11886	533	11886
11887	533	11887
11888	533	11888
11889	533	11889
11890	533	11890
11891	533	11891
11892	533	11892
11893	533	11893
11894	533	11894
11895	533	11895
11896	533	11896
11897	533	11897
11898	533	11898
11899	533	11899
11900	533	11900
11901	533	11901
11902	533	11902
11903	533	11903
11904	533	11904
11905	533	11905
11906	534	11906
11907	534	11907
11908	534	11908
11909	534	11909
11910	534	11910
11911	534	11911
11912	534	11912
11913	534	11913
11914	534	11914
11915	534	11915
11916	534	11916
11917	534	11917
11918	534	11918
11919	535	11919
11920	535	11920
11921	535	11921
11922	535	11922
11923	535	11923
11924	535	11924
11925	535	11925
11926	535	11926
11927	535	11927
11928	535	11928
11929	535	11929
11930	535	11930
11931	535	11931
11932	535	11932
11933	535	11933
11934	535	11934
11935	535	11935
11936	535	11936
11937	535	11937
11938	535	11938
11939	536	11939
11940	536	11940
11941	536	11941
11942	536	11942
11943	536	11943
11944	536	11944
11945	536	11945
11946	536	11946
11947	536	11947
11948	536	11948
11949	536	11949
11950	536	11950
11951	536	11951
11952	537	11952
11953	537	11953
11954	537	11954
11955	537	11955
11956	537	11956
11957	537	11957
11958	537	11958
11959	537	11959
11960	537	11960
11961	537	11961
11962	537	11962
11963	537	11963
11964	537	11964
11965	537	11965
11966	537	11966
11967	537	11967
11968	537	11968
11969	537	11969
11970	538	11970
11971	538	11971
11972	538	11972
11973	538	11973
11974	538	11974
11975	538	11975
11976	538	11976
11977	538	11977
11978	538	11978
11979	538	11979
11980	538	11980
11981	538	11981
11982	538	11982
11983	538	11983
11984	538	11984
11985	538	11985
11986	538	11986
11987	538	11987
11988	538	11988
11989	538	11989
11990	538	11990
11991	538	11991
11992	538	11992
11993	538	11993
11994	538	11994
11995	539	11995
11996	539	11996
11997	539	11997
11998	539	11998
11999	539	11999
12000	539	12000
12001	539	12001
12002	539	12002
12003	539	12003
12004	539	12004
12005	539	12005
12006	539	12006
12007	539	12007
12008	539	12008
12009	539	12009
12010	539	12010
12011	539	12011
12012	539	12012
12013	540	12013
12014	540	12014
12015	540	12015
12016	540	12016
12017	540	12017
12018	540	12018
12019	540	12019
12020	540	12020
12021	540	12021
12022	540	12022
12023	540	12023
12024	540	12024
12025	540	12025
12026	540	12026
12027	540	12027
12028	541	12028
12029	541	12029
12030	541	12030
12031	541	12031
12032	541	12032
12033	541	12033
12034	541	12034
12035	541	12035
12036	541	12036
12037	541	12037
12038	541	12038
12039	541	12039
12040	541	12040
12041	541	12041
12042	542	12042
12043	542	12043
12044	542	12044
12045	542	12045
12046	542	12046
12047	542	12047
12048	542	12048
12049	542	12049
12050	542	12050
12051	542	12051
12052	542	12052
12053	542	12053
12054	542	12054
12055	542	12055
12056	542	12056
12057	542	12057
12058	542	12058
12059	542	12059
12060	542	12060
12061	542	12061
12062	542	12062
12063	542	12063
12064	542	12064
12065	542	12065
12066	542	12066
12067	542	12067
12068	542	12068
12069	542	12069
12070	542	12070
12071	542	12071
12072	542	12072
12073	542	12073
12074	542	12074
12075	542	12075
12076	542	12076
12077	542	12077
12078	542	12078
12079	542	12079
12080	542	12080
12081	542	12081
12082	542	12082
12083	542	12083
12084	542	12084
12085	542	12085
12086	542	12086
12087	542	12087
12088	542	12088
12089	542	12089
12090	542	12090
12091	542	12091
12092	542	12092
12093	542	12093
12094	542	12094
12095	542	12095
12096	542	12096
12097	542	12097
12098	542	12098
12099	543	12099
12100	543	12100
12101	543	12101
12102	543	12102
12103	543	12103
12104	543	12104
12105	543	12105
12106	543	12106
12107	543	12107
12108	543	12108
12109	543	12109
12110	543	12110
12111	544	12111
12112	544	12112
12113	544	12113
12114	544	12114
12115	544	12115
12116	544	12116
12117	544	12117
12118	544	12118
12119	545	12119
12120	545	12120
12121	545	12121
12122	545	12122
12123	545	12123
12124	545	12124
12125	545	12125
12126	545	12126
12127	545	12127
12128	545	12128
12129	545	12129
12130	545	12130
12131	545	12131
12132	545	12132
12133	545	12133
12134	545	12134
12135	545	12135
12136	545	12136
12137	545	12137
12138	545	12138
12139	545	12139
12140	546	12140
12141	546	12141
12142	546	12142
12143	546	12143
12144	546	12144
12145	546	12145
12146	546	12146
12147	546	12147
12148	546	12148
12149	546	12149
12150	546	12150
12151	546	12151
12152	546	12152
12153	546	12153
12154	546	12154
12155	546	12155
12156	546	12156
12157	546	12157
12158	546	12158
12159	546	12159
12160	546	12160
12161	546	12161
12162	546	12162
12163	546	12163
12164	546	12164
12165	546	12165
12166	546	12166
12167	546	12167
12168	546	12168
12169	546	12169
12170	546	12170
12171	546	12171
12172	546	12172
12173	546	12173
12174	546	12174
12175	546	12175
12176	546	12176
12177	546	12177
12178	546	12178
12179	546	12179
12180	546	12180
12181	546	12181
12182	546	12182
12183	546	12183
12184	546	12184
12185	546	12185
12186	546	12186
12187	546	12187
12188	546	12188
12189	546	12189
12190	546	12190
12191	546	12191
12192	547	12192
12193	547	12193
12194	547	12194
12195	547	12195
12196	547	12196
12197	547	12197
12198	547	12198
12199	547	12199
12200	547	12200
12201	547	12201
12202	547	12202
12203	547	12203
12204	547	12204
12205	547	12205
12206	547	12206
12207	547	12207
12208	547	12208
12209	547	12209
12210	547	12210
12211	547	12211
12212	547	12212
12213	547	12213
12214	547	12214
12215	547	12215
12216	547	12216
12217	547	12217
12218	548	12218
12219	548	12219
12220	548	12220
12221	548	12221
12222	548	12222
12223	548	12223
12224	548	12224
12225	548	12225
12226	548	12226
12227	548	12227
12228	548	12228
12229	548	12229
12230	548	12230
12231	548	12231
12232	548	12232
12233	549	12233
12234	549	12234
12235	549	12235
12236	549	12236
12237	549	12237
12238	549	12238
12239	549	12239
12240	549	12240
12241	549	12241
12242	549	12242
12243	550	12243
12244	550	12244
12245	550	12245
12246	550	12246
12247	550	12247
12248	550	12248
12249	550	12249
12250	550	12250
12251	550	12251
12252	550	12252
12253	550	12253
12254	550	12254
12255	550	12255
12256	551	12256
12257	552	12257
12258	552	12258
12259	552	12259
12260	552	12260
12261	552	12261
12262	552	12262
12263	552	12263
12264	552	12264
12265	552	12265
12266	552	12266
12267	552	12267
12268	552	12268
12269	552	12269
12270	553	12270
12271	553	12271
12272	553	12272
12273	553	12273
12274	553	12274
12275	553	12275
12276	553	12276
12277	553	12277
12278	553	12278
12279	553	12279
12280	553	12280
12281	553	12281
12282	553	12282
12283	553	12283
12284	553	12284
12285	553	12285
12286	553	12286
12287	553	12287
12288	553	12288
12289	553	12289
12290	553	12290
12291	553	12291
12292	553	12292
12293	553	12293
12294	553	12294
12295	553	12295
12296	553	12296
12297	553	12297
12298	553	12298
12299	553	12299
12300	553	12300
12301	553	12301
12302	554	12302
12303	554	12303
12304	554	12304
12305	554	12305
12306	554	12306
12307	554	12307
12308	554	12308
12309	554	12309
12310	554	12310
12311	554	12311
12312	554	12312
12313	554	12313
12314	554	12314
12315	554	12315
12316	554	12316
12317	554	12317
12318	554	12318
12319	554	12319
12320	554	12320
12321	554	12321
12322	554	12322
12323	554	12323
12324	555	12324
12325	555	12325
12326	555	12326
12327	555	12327
12328	555	12328
12329	556	12329
12330	556	12330
12331	556	12331
12332	556	12332
12333	556	12333
12334	556	12334
12335	556	12335
12336	556	12336
12337	556	12337
12338	556	12338
12339	556	12339
12340	556	12340
12341	557	12341
12342	557	12342
12343	557	12343
12344	557	12344
12345	557	12345
12346	557	12346
12347	557	12347
12348	557	12348
12349	557	12349
12350	557	12350
12351	557	12351
12352	557	12352
12353	557	12353
12354	557	12354
12355	557	12355
12356	557	12356
12357	557	12357
12358	557	12358
12359	557	12359
12360	557	12360
12361	557	12361
12362	557	12362
12363	558	12363
12364	558	12364
12365	558	12365
12366	558	12366
12367	558	12367
12368	558	12368
12369	558	12369
12370	558	12370
12371	558	12371
12372	558	12372
12373	558	12373
12374	558	12374
12375	558	12375
12376	558	12376
12377	558	12377
12378	558	12378
12379	559	12379
12380	559	12380
12381	559	12381
12382	559	12382
12383	559	12383
12384	559	12384
12385	560	12385
12386	560	12386
12387	560	12387
12388	560	12388
12389	560	12389
12390	560	12390
12391	560	12391
12392	560	12392
12393	561	12393
12394	561	12394
12395	561	12395
12396	561	12396
12397	561	12397
12398	561	12398
12399	561	12399
12400	561	12400
12401	561	12401
12402	561	12402
12403	561	12403
12404	561	12404
12405	561	12405
12406	561	12406
12407	561	12407
12408	561	12408
12409	561	12409
12410	561	12410
12411	561	12411
12412	561	12412
12413	561	12413
12414	561	12414
12415	561	12415
12416	562	12416
12417	563	12417
12418	563	12418
12419	563	12419
12420	563	12420
12421	563	12421
12422	563	12422
12423	563	12423
12424	563	12424
12425	563	12425
12426	563	12426
12427	564	12427
12428	564	12428
12429	564	12429
12430	564	12430
12431	564	12431
12432	564	12432
12433	564	12433
12434	564	12434
12435	564	12435
12436	564	12436
12437	564	12437
12438	564	12438
12439	565	12439
12440	565	12440
12441	565	12441
12442	565	12442
12443	565	12443
12444	565	12444
12445	565	12445
12446	565	12446
12447	565	12447
12448	565	12448
12449	565	12449
12450	566	12450
12451	566	12451
12452	566	12452
12453	566	12453
12454	566	12454
12455	566	12455
12456	566	12456
12457	566	12457
12458	566	12458
12459	566	12459
12460	567	12460
12461	567	12461
12462	567	12462
12463	567	12463
12464	567	12464
12465	567	12465
12466	567	12466
12467	568	12467
12468	568	12468
12469	568	12469
12470	568	12470
12471	568	12471
12472	568	12472
12473	568	12473
12474	568	12474
12475	568	12475
12476	568	12476
12477	568	12477
12478	568	12478
12479	568	12479
12480	569	12480
12481	569	12481
12482	569	12482
12483	569	12483
12484	569	12484
12485	569	12485
12486	569	12486
12487	569	12487
12488	569	12488
12489	569	12489
12490	569	12490
12491	569	12491
12492	569	12492
12493	570	12493
12494	570	12494
12495	570	12495
12496	571	12496
12497	571	12497
12498	571	12498
12499	571	12499
12500	571	12500
12501	571	12501
12502	571	12502
12503	571	12503
12504	571	12504
12505	571	12505
12506	571	12506
12507	571	12507
12508	572	12508
12509	572	12509
12510	572	12510
12511	572	12511
12512	572	12512
12513	572	12513
12514	572	12514
12515	572	12515
12516	572	12516
12517	572	12517
12518	572	12518
12519	572	12519
12520	572	12520
12521	572	12521
12522	572	12522
12523	572	12523
12524	572	12524
12525	572	12525
12526	572	12526
12527	572	12527
12528	572	12528
12529	572	12529
12530	572	12530
12531	572	12531
12532	572	12532
12533	572	12533
12534	572	12534
12535	573	12535
12536	573	12536
12537	573	12537
12538	573	12538
12539	573	12539
12540	573	12540
12541	573	12541
12542	573	12542
12543	573	12543
12544	573	12544
12545	573	12545
12546	573	12546
12547	573	12547
12548	573	12548
12549	573	12549
12550	573	12550
12551	573	12551
12552	573	12552
12553	573	12553
12554	573	12554
12555	573	12555
12556	573	12556
12557	573	12557
12558	573	12558
12559	574	12559
12560	574	12560
12561	574	12561
12562	574	12562
12563	574	12563
12564	574	12564
12565	574	12565
12566	574	12566
12567	574	12567
12568	574	12568
12569	574	12569
12570	574	12570
12571	574	12571
12572	575	12572
12573	575	12573
12574	575	12574
12575	575	12575
12576	575	12576
12577	575	12577
12578	575	12578
12579	575	12579
12580	575	12580
12581	575	12581
12582	575	12582
12583	575	12583
12584	575	12584
12585	575	12585
12586	575	12586
12587	575	12587
12588	575	12588
12589	575	12589
12590	575	12590
12591	575	12591
12592	575	12592
12593	575	12593
12594	575	12594
12595	575	12595
12596	575	12596
12597	575	12597
12598	576	12598
12599	576	12599
12600	576	12600
12601	576	12601
12602	576	12602
12603	577	12603
12604	577	12604
12605	577	12605
12606	577	12606
12607	577	12607
12608	577	12608
12609	577	12609
12610	577	12610
12611	578	12611
12612	578	12612
12613	578	12613
12614	578	12614
12615	578	12615
12616	578	12616
12617	578	12617
12618	578	12618
12619	578	12619
12620	578	12620
12621	578	12621
12622	578	12622
12623	578	12623
12624	578	12624
12625	578	12625
12626	578	12626
12627	579	12627
12628	579	12628
12629	579	12629
12630	579	12630
12631	579	12631
12632	579	12632
12633	579	12633
12634	579	12634
12635	579	12635
12636	579	12636
12637	579	12637
12638	579	12638
12639	579	12639
12640	579	12640
12641	580	12641
12642	580	12642
12643	580	12643
12644	580	12644
12645	580	12645
12646	580	12646
12647	580	12647
12648	580	12648
12649	580	12649
12650	580	12650
12651	580	12651
12652	581	12652
12653	581	12653
12654	581	12654
12655	581	12655
12656	581	12656
12657	581	12657
12658	581	12658
12659	581	12659
12660	581	12660
12661	582	12661
12662	582	12662
12663	582	12663
12664	582	12664
12665	582	12665
12666	582	12666
12667	582	12667
12668	582	12668
12669	582	12669
12670	582	12670
12671	582	12671
12672	582	12672
12673	582	12673
12674	582	12674
12675	583	12675
12676	583	12676
12677	583	12677
12678	583	12678
12679	583	12679
12680	583	12680
12681	583	12681
12682	583	12682
12683	583	12683
12684	583	12684
12685	583	12685
12686	583	12686
12687	583	12687
12688	583	12688
12689	583	12689
12690	583	12690
12691	583	12691
12692	583	12692
12693	583	12693
12694	583	12694
12695	583	12695
12696	583	12696
12697	583	12697
12698	584	12698
12699	584	12699
12700	585	12700
12701	585	12701
12702	585	12702
12703	585	12703
12704	585	12704
12705	585	12705
12706	585	12706
12707	586	12707
12708	586	12708
12709	586	12709
12710	586	12710
12711	586	12711
12712	586	12712
12713	586	12713
12714	586	12714
12715	586	12715
12716	586	12716
12717	586	12717
12718	586	12718
12719	586	12719
12720	586	12720
12721	586	12721
12722	586	12722
12723	586	12723
12724	586	12724
12725	586	12725
12726	586	12726
12727	586	12727
12728	586	12728
12729	586	12729
12730	586	12730
12731	586	12731
12732	586	12732
12733	586	12733
12734	586	12734
12735	587	12735
12736	587	12736
12737	587	12737
12738	587	12738
12739	587	12739
12740	587	12740
12741	587	12741
12742	587	12742
12743	587	12743
12744	587	12744
12745	587	12745
12746	587	12746
12747	587	12747
12748	587	12748
12749	587	12749
12750	587	12750
12751	587	12751
12752	587	12752
12753	587	12753
12754	588	12754
12755	588	12755
12756	588	12756
12757	588	12757
12758	588	12758
12759	588	12759
12760	588	12760
12761	588	12761
12762	588	12762
12763	588	12763
12764	588	12764
12765	588	12765
12766	588	12766
12767	588	12767
12768	588	12768
12769	588	12769
12770	588	12770
12771	589	12771
12772	589	12772
12773	589	12773
12774	589	12774
12775	589	12775
12776	589	12776
12777	590	12777
12778	590	12778
12779	590	12779
12780	590	12780
12781	590	12781
12782	590	12782
12783	590	12783
12784	590	12784
12785	590	12785
12786	590	12786
12787	590	12787
12788	590	12788
12789	590	12789
12790	590	12790
12791	590	12791
12792	590	12792
12793	590	12793
12794	590	12794
12795	590	12795
12796	590	12796
12797	590	12797
12798	590	12798
12799	590	12799
12800	590	12800
12801	590	12801
12802	590	12802
12803	590	12803
12804	590	12804
12805	590	12805
12806	590	12806
12807	590	12807
12808	590	12808
12809	590	12809
12810	590	12810
12811	590	12811
12812	590	12812
12813	590	12813
12814	590	12814
12815	590	12815
12816	590	12816
12817	590	12817
12818	590	12818
12819	590	12819
12820	591	12820
12821	591	12821
12822	591	12822
12823	591	12823
12824	591	12824
12825	591	12825
12826	591	12826
12827	591	12827
12828	591	12828
12829	591	12829
12830	591	12830
12831	591	12831
12832	591	12832
12833	591	12833
12834	592	12834
12835	592	12835
12836	592	12836
12837	592	12837
12838	592	12838
12839	592	12839
12840	592	12840
12841	592	12841
12842	592	12842
12843	592	12843
12844	592	12844
12845	592	12845
12846	592	12846
12847	592	12847
12848	592	12848
12849	593	12849
12850	593	12850
12851	593	12851
12852	593	12852
12853	593	12853
12854	593	12854
12855	593	12855
12856	593	12856
12857	594	12857
12858	594	12858
12859	594	12859
12860	594	12860
12861	594	12861
12862	594	12862
12863	594	12863
12864	594	12864
12865	594	12865
12866	594	12866
12867	594	12867
12868	594	12868
12869	594	12869
12870	594	12870
12871	594	12871
12872	594	12872
12873	594	12873
12874	594	12874
12875	594	12875
12876	594	12876
12877	594	12877
12878	595	12878
12879	595	12879
12880	595	12880
12881	595	12881
12882	595	12882
12883	595	12883
12884	595	12884
12885	595	12885
12886	595	12886
12887	595	12887
12888	595	12888
12889	595	12889
12890	595	12890
12891	595	12891
12892	595	12892
12893	595	12893
12894	595	12894
12895	595	12895
12896	595	12896
12897	595	12897
12898	595	12898
12899	595	12899
12900	595	12900
12901	595	12901
12902	595	12902
12903	595	12903
12904	595	12904
12905	595	12905
12906	595	12906
12907	595	12907
12908	595	12908
12909	595	12909
12910	596	12910
12911	596	12911
12912	596	12912
12913	596	12913
12914	596	12914
12915	596	12915
12916	596	12916
12917	596	12917
12918	596	12918
12919	596	12919
12920	596	12920
12921	596	12921
12922	596	12922
12923	597	12923
12924	597	12924
12925	597	12925
12926	597	12926
12927	597	12927
12928	597	12928
12929	597	12929
12930	597	12930
12931	597	12931
12932	597	12932
12933	598	12933
12934	598	12934
12935	598	12935
12936	598	12936
12937	598	12937
12938	598	12938
12939	598	12939
12940	598	12940
12941	598	12941
12942	598	12942
12943	598	12943
12944	598	12944
12945	598	12945
12946	598	12946
12947	598	12947
12948	598	12948
12949	598	12949
12950	598	12950
12951	598	12951
12952	598	12952
12953	598	12953
12954	598	12954
12955	598	12955
12956	598	12956
12957	598	12957
12958	598	12958
12959	598	12959
12960	598	12960
12961	598	12961
12962	598	12962
12963	598	12963
12964	598	12964
12965	598	12965
12966	598	12966
12967	598	12967
12968	598	12968
12969	599	12969
12970	599	12970
12971	599	12971
12972	599	12972
12973	599	12973
12974	599	12974
12975	599	12975
12976	599	12976
12977	599	12977
12978	599	12978
12979	599	12979
12980	599	12980
12981	599	12981
12982	599	12982
12983	599	12983
12984	599	12984
12985	599	12985
12986	599	12986
12987	599	12987
12988	599	12988
12989	599	12989
12990	599	12990
12991	600	12991
12992	600	12992
12993	600	12993
12994	600	12994
12995	600	12995
12996	600	12996
12997	600	12997
12998	601	12998
12999	601	12999
13000	601	13000
13001	601	13001
13002	601	13002
13003	601	13003
13004	601	13004
13005	601	13005
13006	601	13006
13007	601	13007
13008	601	13008
13009	601	13009
13010	601	13010
13011	602	13011
13012	602	13012
13013	602	13013
13014	602	13014
13015	602	13015
13016	602	13016
13017	602	13017
13018	602	13018
13019	602	13019
13020	602	13020
13021	602	13021
13022	602	13022
13023	602	13023
13024	602	13024
13025	602	13025
13026	602	13026
13027	602	13027
13028	602	13028
13029	602	13029
13030	603	13030
13031	603	13031
13032	603	13032
13033	603	13033
13034	603	13034
13035	603	13035
13036	603	13036
13037	603	13037
13038	603	13038
13039	603	13039
13040	603	13040
13041	603	13041
13042	603	13042
13043	603	13043
13044	603	13044
13045	603	13045
13046	603	13046
13047	603	13047
13048	603	13048
13049	603	13049
13050	603	13050
13051	603	13051
13052	603	13052
13053	604	13053
13054	604	13054
13055	604	13055
13056	604	13056
13057	604	13057
13058	604	13058
13059	604	13059
13060	605	13060
13061	605	13061
13062	605	13062
13063	605	13063
13064	605	13064
13065	605	13065
13066	605	13066
13067	605	13067
13068	605	13068
13069	605	13069
13070	605	13070
13071	605	13071
13072	605	13072
13073	605	13073
13074	605	13074
13075	605	13075
13076	605	13076
13077	605	13077
13078	605	13078
13079	605	13079
13080	605	13080
13081	605	13081
13082	605	13082
13083	605	13083
13084	606	13084
13085	606	13085
13086	606	13086
13087	606	13087
13088	606	13088
13089	606	13089
13090	606	13090
13091	606	13091
13092	606	13092
13093	606	13093
13094	606	13094
13095	606	13095
13096	606	13096
13097	606	13097
13098	606	13098
13099	606	13099
13100	606	13100
13101	606	13101
13102	606	13102
13103	606	13103
13104	607	13104
13105	607	13105
13106	607	13106
13107	607	13107
13108	607	13108
13109	607	13109
13110	607	13110
13111	607	13111
13112	607	13112
13113	607	13113
13114	607	13114
13115	607	13115
13116	607	13116
13117	607	13117
13118	607	13118
13119	607	13119
13120	607	13120
13121	607	13121
13122	607	13122
13123	607	13123
13124	607	13124
13125	607	13125
13126	607	13126
13127	607	13127
13128	607	13128
13129	607	13129
13130	607	13130
13131	607	13131
13132	607	13132
13133	607	13133
13134	608	13134
13135	608	13135
13136	608	13136
13137	608	13137
13138	608	13138
13139	608	13139
13140	608	13140
13141	608	13141
13142	608	13142
13143	608	13143
13144	608	13144
13145	608	13145
13146	608	13146
13147	608	13147
13148	608	13148
13149	608	13149
13150	608	13150
13151	608	13151
13152	608	13152
13153	608	13153
13154	609	13154
13155	609	13155
13156	609	13156
13157	609	13157
13158	609	13158
13159	609	13159
13160	609	13160
13161	609	13161
13162	609	13162
13163	609	13163
13164	609	13164
13165	609	13165
13166	609	13166
13167	609	13167
13168	609	13168
13169	609	13169
13170	609	13170
13171	609	13171
13172	609	13172
13173	610	13173
13174	610	13174
13175	610	13175
13176	610	13176
13177	610	13177
13178	610	13178
13179	610	13179
13180	610	13180
13181	611	13181
13182	611	13182
13183	611	13183
13184	611	13184
13185	612	13185
13186	612	13186
13187	612	13187
13188	612	13188
13189	612	13189
13190	612	13190
13191	612	13191
13192	612	13192
13193	612	13193
13194	612	13194
13195	612	13195
13196	612	13196
13197	612	13197
13198	612	13198
13199	612	13199
13200	612	13200
13201	612	13201
13202	612	13202
13203	612	13203
13204	612	13204
13205	612	13205
13206	612	13206
13207	612	13207
13208	612	13208
13209	612	13209
13210	612	13210
13211	612	13211
13212	612	13212
13213	612	13213
13214	612	13214
13215	612	13215
13216	612	13216
13217	612	13217
13218	612	13218
13219	612	13219
13220	612	13220
13221	612	13221
13222	612	13222
13223	612	13223
13224	612	13224
13225	612	13225
13226	612	13226
13227	612	13227
13228	612	13228
13229	612	13229
13230	612	13230
13231	612	13231
13232	612	13232
13233	612	13233
13234	612	13234
13235	612	13235
13236	612	13236
13237	612	13237
13238	612	13238
13239	612	13239
13240	613	13240
13241	613	13241
13242	613	13242
13243	613	13243
13244	614	13244
13245	614	13245
13246	614	13246
13247	614	13247
13248	614	13248
13249	614	13249
13250	614	13250
13251	614	13251
13252	614	13252
13253	614	13253
13254	614	13254
13255	614	13255
13256	614	13256
13257	614	13257
13258	614	13258
13259	614	13259
13260	614	13260
13261	615	13261
13262	615	13262
13263	615	13263
13264	615	13264
13265	615	13265
13266	615	13266
13267	615	13267
13268	615	13268
13269	615	13269
13270	616	13270
13271	616	13271
13272	616	13272
13273	616	13273
13274	616	13274
13275	616	13275
13276	616	13276
13277	616	13277
13278	616	13278
13279	616	13279
13280	618	13280
13281	618	13281
13282	618	13282
13283	618	13283
13284	618	13284
13285	618	13285
13286	618	13286
13287	618	13287
13288	618	13288
13289	618	13289
13290	618	13290
13291	618	13291
13292	618	13292
13293	618	13293
13294	618	13294
13295	618	13295
13296	618	13296
13297	618	13297
13298	618	13298
13299	618	13299
13300	618	13300
13301	619	13301
13302	619	13302
13303	619	13303
13304	619	13304
13305	619	13305
13306	619	13306
13307	619	13307
13308	619	13308
13309	619	13309
13310	619	13310
13311	619	13311
13312	619	13312
13313	619	13313
13314	619	13314
13315	620	13315
13316	620	13316
13317	620	13317
13318	620	13318
13319	620	13319
13320	620	13320
13321	620	13321
13322	620	13322
13323	620	13323
13324	620	13324
13325	620	13325
13326	620	13326
13327	620	13327
13328	620	13328
13329	621	13329
13330	621	13330
13331	621	13331
13332	621	13332
13333	621	13333
13334	621	13334
13335	621	13335
13336	621	13336
13337	621	13337
13338	621	13338
13339	622	13339
13340	622	13340
13341	622	13341
13342	622	13342
13343	622	13343
13344	622	13344
13345	622	13345
13346	622	13346
13347	622	13347
13348	622	13348
13349	622	13349
13350	622	13350
13351	622	13351
13352	622	13352
13353	622	13353
13354	622	13354
13355	622	13355
13356	622	13356
13357	622	13357
13358	622	13358
13359	622	13359
13360	622	13360
13361	622	13361
13362	622	13362
13363	622	13363
13364	622	13364
13365	622	13365
13366	622	13366
13367	622	13367
13368	622	13368
13369	622	13369
13370	622	13370
13371	622	13371
13372	622	13372
13373	622	13373
13374	622	13374
13375	622	13375
13376	622	13376
13377	622	13377
13378	622	13378
13379	622	13379
13380	622	13380
13381	622	13381
13382	622	13382
13383	622	13383
13384	622	13384
13385	622	13385
13386	622	13386
13387	622	13387
13388	622	13388
13389	622	13389
13390	622	13390
13391	623	13391
13392	623	13392
13393	623	13393
13394	623	13394
13395	623	13395
13396	623	13396
13397	623	13397
13398	623	13398
13399	623	13399
13400	623	13400
13401	623	13401
13402	623	13402
13403	623	13403
13404	623	13404
13405	624	13405
13406	624	13406
13407	624	13407
13408	624	13408
13409	624	13409
13410	624	13410
13411	624	13411
13412	624	13412
13413	624	13413
13414	624	13414
13415	624	13415
13416	624	13416
13417	625	13417
13418	625	13418
13419	625	13419
13420	625	13420
13421	625	13421
13422	625	13422
13423	626	13423
13424	626	13424
13425	626	13425
13426	626	13426
13427	626	13427
13428	626	13428
13429	626	13429
13430	626	13430
13431	626	13431
13432	626	13432
13433	627	13433
13434	627	13434
13435	627	13435
13436	627	13436
13437	627	13437
13438	627	13438
13439	627	13439
13440	627	13440
13441	627	13441
13442	627	13442
13443	627	13443
13444	627	13444
13445	627	13445
13446	627	13446
13447	627	13447
13448	628	13448
13449	628	13449
13450	628	13450
13451	628	13451
13452	628	13452
13453	628	13453
13454	628	13454
13455	628	13455
13456	628	13456
13457	628	13457
13458	628	13458
13459	628	13459
13460	628	13460
13461	628	13461
13462	628	13462
13463	629	13463
13464	629	13464
13465	629	13465
13466	629	13466
13467	629	13467
13468	629	13468
13469	629	13469
13470	629	13470
13471	629	13471
13472	629	13472
13473	629	13473
13474	629	13474
13475	629	13475
13476	629	13476
13477	629	13477
13478	629	13478
13479	629	13479
13480	629	13480
13481	629	13481
13482	629	13482
13483	629	13483
13484	629	13484
13485	629	13485
13486	630	13486
13487	630	13487
13488	630	13488
13489	630	13489
13490	630	13490
13491	630	13491
13492	630	13492
13493	630	13493
13494	630	13494
13495	631	13495
13496	631	13496
13497	631	13497
13498	631	13498
13499	631	13499
13500	631	13500
13501	631	13501
13502	631	13502
13503	631	13503
13504	631	13504
13505	631	13505
13506	631	13506
13507	631	13507
13508	631	13508
13509	631	13509
13510	632	13510
13511	632	13511
13512	632	13512
13513	632	13513
13514	632	13514
13515	632	13515
13516	632	13516
13517	632	13517
13518	633	13518
13519	633	13519
13520	633	13520
13521	633	13521
13522	633	13522
13523	633	13523
13524	633	13524
13525	633	13525
13526	633	13526
13527	633	13527
13528	633	13528
13529	633	13529
13530	633	13530
13531	633	13531
13532	634	13532
13533	634	13533
13534	634	13534
13535	634	13535
13536	634	13536
13537	634	13537
13538	634	13538
13539	634	13539
13540	634	13540
13541	634	13541
13542	634	13542
13543	634	13543
13544	634	13544
13545	635	13545
13546	635	13546
13547	635	13547
13548	635	13548
13549	635	13549
13550	635	13550
13551	635	13551
13552	635	13552
13553	636	13553
13554	636	13554
13555	636	13555
13556	636	13556
13557	636	13557
13558	636	13558
13559	636	13559
13560	636	13560
13561	636	13561
13562	636	13562
13563	636	13563
13564	636	13564
13565	636	13565
13566	636	13566
13567	636	13567
13568	636	13568
13569	636	13569
13570	636	13570
13571	636	13571
13572	636	13572
13573	636	13573
13574	636	13574
13575	636	13575
13576	636	13576
13577	636	13577
13578	636	13578
13579	636	13579
13580	636	13580
13581	636	13581
13582	636	13582
13583	638	13583
13584	638	13584
13585	638	13585
13586	638	13586
13587	638	13587
13588	638	13588
13589	638	13589
13590	638	13590
13591	638	13591
13592	638	13592
13593	638	13593
13594	638	13594
13595	638	13595
13596	638	13596
13597	638	13597
13598	638	13598
13599	638	13599
13600	638	13600
13601	638	13601
13602	638	13602
13603	638	13603
13604	638	13604
13605	638	13605
13606	638	13606
13607	638	13607
13608	638	13608
13609	638	13609
13610	638	13610
13611	638	13611
13612	638	13612
13613	638	13613
13614	638	13614
13615	638	13615
13616	638	13616
13617	638	13617
13618	638	13618
13619	638	13619
13620	638	13620
13621	638	13621
13622	638	13622
13623	638	13623
13624	638	13624
13625	638	13625
13626	638	13626
13627	638	13627
13628	638	13628
13629	638	13629
13630	638	13630
13631	638	13631
13632	638	13632
13633	638	13633
13634	638	13634
13635	638	13635
13636	638	13636
13637	638	13637
13638	638	13638
13639	638	13639
13640	638	13640
13641	638	13641
13642	638	13642
13643	638	13643
13644	638	13644
13645	638	13645
13646	638	13646
13647	638	13647
13648	638	13648
13649	638	13649
13650	638	13650
13651	638	13651
13652	638	13652
13653	638	13653
13654	638	13654
13655	638	13655
13656	638	13656
13657	638	13657
13658	638	13658
13659	638	13659
13660	638	13660
13661	638	13661
13662	638	13662
13663	638	13663
13664	638	13664
13665	639	13665
13666	639	13666
13667	639	13667
13668	639	13668
13669	639	13669
13670	639	13670
13671	639	13671
13672	640	13672
13673	640	13673
13674	640	13674
13675	640	13675
13676	640	13676
13677	640	13677
13678	640	13678
13679	640	13679
13680	640	13680
13681	641	13681
13682	642	13682
13683	642	13683
13684	643	13684
13685	643	13685
13686	643	13686
13687	644	13687
13688	645	13688
13689	645	13689
13690	645	13690
13691	645	13691
13692	645	13692
13693	645	13693
13694	645	13694
13695	645	13695
13696	645	13696
13697	645	13697
13698	645	13698
13699	645	13699
13700	645	13700
13701	645	13701
13702	645	13702
13703	645	13703
13704	645	13704
13705	645	13705
13706	645	13706
13707	645	13707
13708	645	13708
13709	645	13709
13710	645	13710
13711	645	13711
13712	645	13712
13713	645	13713
13714	645	13714
13715	645	13715
13716	645	13716
13717	645	13717
13718	645	13718
13719	645	13719
13720	645	13720
13721	645	13721
13722	645	13722
13723	645	13723
13724	645	13724
13725	645	13725
13726	645	13726
13727	645	13727
13728	645	13728
13729	645	13729
13730	645	13730
13731	645	13731
13732	645	13732
13733	645	13733
13734	645	13734
13735	645	13735
13736	645	13736
13737	645	13737
13738	645	13738
13739	645	13739
13740	645	13740
13741	645	13741
13742	645	13742
13743	645	13743
13744	645	13744
13745	645	13745
13746	645	13746
13747	645	13747
13748	645	13748
13749	645	13749
13750	645	13750
13751	645	13751
13752	645	13752
13753	645	13753
13754	645	13754
13755	645	13755
13756	646	13756
13757	646	13757
13758	646	13758
13759	646	13759
13760	646	13760
13761	646	13761
13762	646	13762
13763	646	13763
13764	646	13764
13765	646	13765
13766	646	13766
13767	646	13767
13768	646	13768
13769	646	13769
13770	646	13770
13771	646	13771
13772	646	13772
13773	646	13773
13774	646	13774
13775	646	13775
13776	646	13776
13777	646	13777
13778	646	13778
13779	647	13779
13780	647	13780
13781	647	13781
13782	647	13782
13783	647	13783
13784	647	13784
13785	647	13785
13786	647	13786
13787	647	13787
13788	647	13788
13789	648	13789
13790	648	13790
13791	648	13791
13792	648	13792
13793	648	13793
13794	648	13794
13795	648	13795
13796	648	13796
13797	648	13797
13798	648	13798
13799	648	13799
13800	648	13800
13801	648	13801
13802	648	13802
13803	648	13803
13804	648	13804
13805	648	13805
13806	648	13806
13807	648	13807
13808	648	13808
13809	648	13809
13810	648	13810
13811	648	13811
13812	648	13812
13813	648	13813
13814	648	13814
13815	648	13815
13816	648	13816
13817	648	13817
13818	648	13818
13819	648	13819
13820	648	13820
13821	648	13821
13822	648	13822
13823	648	13823
13824	648	13824
13825	648	13825
13826	648	13826
13827	648	13827
13828	649	13828
13829	649	13829
13830	649	13830
13831	649	13831
13832	649	13832
13833	649	13833
13834	649	13834
13835	649	13835
13836	649	13836
13837	649	13837
13838	649	13838
13839	649	13839
13840	649	13840
13841	649	13841
13842	649	13842
13843	649	13843
13844	649	13844
13845	649	13845
13846	649	13846
13847	649	13847
13848	649	13848
13849	649	13849
13850	649	13850
13851	649	13851
13852	649	13852
13853	649	13853
13854	649	13854
13855	649	13855
13856	649	13856
13857	649	13857
13858	649	13858
13859	649	13859
13860	650	13860
13861	650	13861
13862	650	13862
13863	650	13863
13864	650	13864
13865	650	13865
13866	650	13866
13867	650	13867
13868	651	13868
13869	651	13869
13870	651	13870
13871	651	13871
13872	651	13872
13873	651	13873
13874	651	13874
13875	651	13875
13876	652	13876
13877	652	13877
13878	652	13878
13879	652	13879
13880	652	13880
13881	652	13881
13882	652	13882
13883	652	13883
13884	652	13884
13885	652	13885
13886	652	13886
13887	652	13887
13888	652	13888
13889	652	13889
13890	652	13890
13891	653	13891
13892	653	13892
13893	653	13893
13894	653	13894
13895	653	13895
13896	653	13896
13897	653	13897
13898	653	13898
13899	654	13899
13900	654	13900
13901	654	13901
13902	654	13902
13903	654	13903
13904	654	13904
13905	654	13905
13906	654	13906
13907	654	13907
13908	654	13908
13909	654	13909
13910	654	13910
13911	654	13911
13912	654	13912
13913	654	13913
13914	654	13914
13915	654	13915
13916	654	13916
13917	654	13917
13918	654	13918
13919	654	13919
13920	654	13920
13921	655	13921
13922	655	13922
13923	655	13923
13924	655	13924
13925	655	13925
13926	655	13926
13927	655	13927
13928	655	13928
13929	655	13929
13930	655	13930
13931	655	13931
13932	655	13932
13933	655	13933
13934	655	13934
13935	655	13935
13936	655	13936
13937	656	13937
13938	656	13938
13939	656	13939
13940	656	13940
13941	656	13941
13942	656	13942
13943	656	13943
13944	656	13944
13945	656	13945
13946	656	13946
13947	656	13947
13948	656	13948
13949	656	13949
13950	656	13950
13951	656	13951
13952	656	13952
13953	656	13953
13954	656	13954
13955	656	13955
13956	656	13956
13957	656	13957
13958	656	13958
13959	656	13959
13960	656	13960
13961	656	13961
13962	657	13962
13963	657	13963
13964	657	13964
13965	657	13965
13966	657	13966
13967	657	13967
13968	657	13968
13969	657	13969
13970	657	13970
13971	657	13971
13972	657	13972
13973	657	13973
13974	657	13974
13975	657	13975
13976	657	13976
13977	657	13977
13978	657	13978
13979	657	13979
13980	657	13980
13981	657	13981
13982	657	13982
13983	657	13983
13984	657	13984
13985	657	13985
13986	657	13986
13987	657	13987
13988	657	13988
13989	657	13989
13990	657	13990
13991	657	13991
13992	657	13992
13993	657	13993
13994	657	13994
13995	657	13995
13996	657	13996
13997	657	13997
13998	657	13998
13999	657	13999
14000	657	14000
14001	657	14001
14002	657	14002
14003	657	14003
14004	657	14004
14005	657	14005
14006	657	14006
14007	657	14007
14008	658	14008
14009	658	14009
14010	658	14010
14011	658	14011
14012	658	14012
14013	658	14013
14014	658	14014
14015	658	14015
14016	658	14016
14017	658	14017
14018	658	14018
14019	658	14019
14020	658	14020
14021	658	14021
14022	659	14022
14023	659	14023
14024	660	14024
14025	660	14025
14026	660	14026
14027	660	14027
14028	660	14028
14029	660	14029
14030	660	14030
14031	660	14031
14032	660	14032
14033	660	14033
14034	660	14034
14035	660	14035
14036	660	14036
14037	660	14037
14038	660	14038
14039	661	14039
14040	661	14040
14041	661	14041
14042	661	14042
14043	661	14043
14044	661	14044
14045	661	14045
14046	661	14046
14047	661	14047
14048	661	14048
14049	661	14049
14050	661	14050
14051	661	14051
14052	661	14052
14053	661	14053
14054	661	14054
14055	662	14055
14056	662	14056
14057	662	14057
14058	662	14058
14059	662	14059
14060	662	14060
14061	662	14061
14062	662	14062
14063	662	14063
14064	662	14064
14065	662	14065
14066	662	14066
14067	662	14067
14068	662	14068
14069	662	14069
14070	662	14070
14071	662	14071
14072	663	14072
14073	663	14073
14074	663	14074
14075	663	14075
14076	663	14076
14077	663	14077
14078	664	14078
14079	664	14079
14080	664	14080
14081	664	14081
14082	665	14082
14083	665	14083
14084	665	14084
14085	665	14085
14086	665	14086
14087	665	14087
14088	665	14088
14089	666	14089
14090	667	14090
14091	667	14091
14092	667	14092
14093	667	14093
14094	667	14094
14095	667	14095
14096	667	14096
14097	667	14097
14098	667	14098
14099	667	14099
14100	667	14100
14101	667	14101
14102	667	14102
14103	667	14103
14104	667	14104
14105	667	14105
14106	667	14106
14107	667	14107
14108	667	14108
14109	668	14109
14110	668	14110
14111	668	14111
14112	668	14112
14113	668	14113
14114	668	14114
14115	668	14115
14116	668	14116
14117	668	14117
14118	668	14118
14119	668	14119
14120	668	14120
14121	668	14121
14122	668	14122
14123	668	14123
14124	668	14124
14125	668	14125
14126	668	14126
14127	668	14127
14128	668	14128
14129	668	14129
14130	668	14130
14131	668	14131
14132	668	14132
14133	668	14133
14134	669	14134
14135	669	14135
14136	669	14136
14137	669	14137
14138	669	14138
14139	669	14139
14140	669	14140
14141	669	14141
14142	669	14142
14143	669	14143
14144	669	14144
14145	669	14145
14146	669	14146
14147	669	14147
14148	669	14148
14149	669	14149
14150	669	14150
14151	669	14151
14152	669	14152
14153	669	14153
14154	669	14154
14155	669	14155
14156	669	14156
14157	669	14157
14158	669	14158
14159	669	14159
14160	669	14160
14161	669	14161
14162	669	14162
14163	669	14163
14164	669	14164
14165	669	14165
14166	669	14166
14167	669	14167
14168	669	14168
14169	669	14169
14170	669	14170
14171	669	14171
14172	669	14172
14173	669	14173
14174	669	14174
14175	669	14175
14176	669	14176
14177	669	14177
14178	670	14178
14179	670	14179
14180	670	14180
14181	670	14181
14182	670	14182
14183	670	14183
14184	670	14184
14185	670	14185
14186	671	14186
14187	671	14187
14188	671	14188
14189	671	14189
14190	671	14190
14191	671	14191
14192	671	14192
14193	671	14193
14194	671	14194
14195	671	14195
14196	671	14196
14197	671	14197
14198	671	14198
14199	671	14199
14200	671	14200
14201	671	14201
14202	671	14202
14203	671	14203
14204	671	14204
14205	671	14205
14206	671	14206
14207	671	14207
14208	671	14208
14209	671	14209
14210	671	14210
14211	671	14211
14212	671	14212
14213	671	14213
14214	672	14214
14215	672	14215
14216	672	14216
14217	672	14217
14218	672	14218
14219	672	14219
14220	672	14220
14221	672	14221
14222	672	14222
14223	672	14223
14224	672	14224
14225	672	14225
14226	672	14226
14227	673	14227
14228	673	14228
14229	673	14229
14230	673	14230
14231	673	14231
14232	673	14232
14233	673	14233
14234	673	14234
14235	673	14235
14236	673	14236
14237	673	14237
14238	674	14238
14239	674	14239
14240	674	14240
14241	674	14241
14242	674	14242
14243	674	14243
14244	674	14244
14245	674	14245
14246	674	14246
14247	674	14247
14248	674	14248
14249	674	14249
14250	674	14250
14251	674	14251
14252	674	14252
14253	674	14253
14254	675	14254
14255	675	14255
14256	675	14256
14257	675	14257
14258	675	14258
14259	675	14259
14260	675	14260
14261	675	14261
14262	675	14262
14263	675	14263
14264	675	14264
14265	675	14265
14266	675	14266
14267	675	14267
14268	676	14268
14269	676	14269
14270	677	14270
14271	677	14271
14272	677	14272
14273	677	14273
14274	677	14274
14275	677	14275
14276	677	14276
14277	677	14277
14278	678	14278
14279	678	14279
14280	678	14280
14281	678	14281
14282	678	14282
14283	678	14283
14284	679	14284
14285	679	14285
14286	679	14286
14287	679	14287
14288	679	14288
14289	679	14289
14290	679	14290
14291	679	14291
14292	679	14292
14293	679	14293
14294	679	14294
14295	679	14295
14296	679	14296
14297	679	14297
14298	679	14298
14299	679	14299
14300	680	14300
14301	680	14301
14302	680	14302
14303	681	14303
14304	681	14304
14305	681	14305
14306	681	14306
14307	681	14307
14308	681	14308
14309	681	14309
14310	681	14310
14311	681	14311
14312	681	14312
14313	682	14313
14314	682	14314
14315	682	14315
14316	682	14316
14317	682	14317
14318	682	14318
14319	682	14319
14320	682	14320
14321	682	14321
14322	682	14322
14323	682	14323
14324	682	14324
14325	682	14325
14326	682	14326
14327	682	14327
14328	682	14328
14329	682	14329
14330	682	14330
14331	682	14331
14332	682	14332
14333	682	14333
14334	682	14334
14335	682	14335
14336	682	14336
14337	682	14337
14338	682	14338
14339	682	14339
14340	683	14340
14341	683	14341
14342	683	14342
14343	683	14343
14344	683	14344
14345	683	14345
14346	683	14346
14347	683	14347
14348	683	14348
14349	683	14349
14350	683	14350
14351	683	14351
14352	683	14352
14353	683	14353
14354	683	14354
14355	683	14355
14356	684	14356
14357	684	14357
14358	684	14358
14359	684	14359
14360	684	14360
14361	684	14361
14362	684	14362
14363	684	14363
14364	684	14364
14365	684	14365
14366	684	14366
14367	684	14367
14368	684	14368
14369	684	14369
14370	684	14370
14371	684	14371
14372	684	14372
14373	684	14373
14374	684	14374
14375	684	14375
14376	684	14376
14377	684	14377
14378	684	14378
14379	684	14379
14380	684	14380
14381	684	14381
14382	685	14382
14383	685	14383
14384	685	14384
14385	685	14385
14386	685	14386
14387	685	14387
14388	685	14388
14389	685	14389
14390	685	14390
14391	685	14391
14392	685	14392
14393	685	14393
14394	685	14394
14395	685	14395
14396	685	14396
14397	685	14397
14398	685	14398
14399	685	14399
14400	685	14400
14401	686	14401
14402	686	14402
14403	686	14403
14404	686	14404
14405	686	14405
14406	686	14406
14407	686	14407
14408	686	14408
14409	686	14409
14410	686	14410
14411	686	14411
14412	686	14412
14413	686	14413
14414	686	14414
14415	686	14415
14416	686	14416
14417	686	14417
14418	686	14418
14419	686	14419
14420	686	14420
14421	686	14421
14422	686	14422
14423	686	14423
14424	686	14424
14425	686	14425
14426	686	14426
14427	686	14427
14428	686	14428
14429	686	14429
14430	686	14430
14431	686	14431
14432	686	14432
14433	686	14433
14434	686	14434
14435	686	14435
14436	686	14436
14437	686	14437
14438	686	14438
14439	686	14439
14440	686	14440
14441	686	14441
14442	686	14442
14443	686	14443
14444	686	14444
14445	686	14445
14446	686	14446
14447	686	14447
14448	686	14448
14449	686	14449
14450	686	14450
14451	687	14451
14452	687	14452
14453	687	14453
14454	687	14454
14455	687	14455
14456	687	14456
14457	687	14457
14458	687	14458
14459	687	14459
14460	687	14460
14461	687	14461
14462	687	14462
14463	687	14463
14464	687	14464
14465	687	14465
14466	687	14466
14467	687	14467
14468	687	14468
14469	687	14469
14470	687	14470
14471	687	14471
14472	687	14472
14473	688	14473
14474	688	14474
14475	688	14475
14476	688	14476
14477	688	14477
14478	688	14478
14479	688	14479
14480	688	14480
14481	688	14481
14482	688	14482
14483	688	14483
14484	688	14484
14485	688	14485
14486	688	14486
14487	688	14487
14488	689	14488
14489	689	14489
14490	689	14490
14491	689	14491
14492	689	14492
14493	689	14493
14494	689	14494
14495	689	14495
14496	689	14496
14497	689	14497
14498	689	14498
14499	689	14499
14500	689	14500
14501	689	14501
14502	689	14502
14503	689	14503
14504	689	14504
14505	689	14505
14506	689	14506
14507	689	14507
14508	689	14508
14509	689	14509
14510	689	14510
14511	689	14511
14512	689	14512
14513	689	14513
14514	689	14514
14515	689	14515
14516	689	14516
14517	689	14517
14518	689	14518
14519	689	14519
14520	689	14520
14521	690	14521
14522	690	14522
14523	690	14523
14524	690	14524
14525	690	14525
14526	690	14526
14527	690	14527
14528	690	14528
14529	690	14529
14530	690	14530
14531	690	14531
14532	691	14532
14533	691	14533
14534	691	14534
14535	691	14535
14536	691	14536
14537	691	14537
14538	691	14538
14539	691	14539
14540	691	14540
14541	691	14541
14542	691	14542
14543	691	14543
14544	691	14544
14545	691	14545
14546	692	14546
14547	692	14547
14548	692	14548
14549	692	14549
14550	692	14550
14551	692	14551
14552	692	14552
14553	692	14553
14554	692	14554
14555	692	14555
14556	692	14556
14557	692	14557
14558	692	14558
14559	692	14559
14560	692	14560
14561	692	14561
14562	692	14562
14563	692	14563
14564	692	14564
14565	692	14565
14566	692	14566
14567	692	14567
14568	692	14568
14569	692	14569
14570	693	14570
14571	693	14571
14572	693	14572
14573	693	14573
14574	693	14574
14575	693	14575
14576	693	14576
14577	693	14577
14578	693	14578
14579	694	14579
14580	694	14580
14581	694	14581
14582	694	14582
14583	694	14583
14584	694	14584
14585	694	14585
14586	694	14586
14587	694	14587
14588	694	14588
14589	694	14589
14590	694	14590
14591	694	14591
14592	694	14592
14593	694	14593
14594	694	14594
14595	694	14595
14596	695	14596
14597	695	14597
14598	695	14598
14599	695	14599
14600	695	14600
14601	695	14601
14602	695	14602
14603	695	14603
14604	695	14604
14605	695	14605
14606	695	14606
14607	695	14607
14608	696	14608
14609	696	14609
14610	696	14610
14611	696	14611
14612	696	14612
14613	696	14613
14614	696	14614
14615	696	14615
14616	696	14616
14617	696	14617
14618	696	14618
14619	696	14619
14620	696	14620
14621	696	14621
14622	697	14622
14623	697	14623
14624	697	14624
14625	697	14625
14626	697	14626
14627	697	14627
14628	697	14628
14629	697	14629
14630	697	14630
14631	697	14631
14632	698	14632
14633	698	14633
14634	698	14634
14635	698	14635
14636	698	14636
14637	698	14637
14638	698	14638
14639	698	14639
14640	698	14640
14641	698	14641
14642	698	14642
14643	699	14643
14644	699	14644
14645	699	14645
14646	699	14646
14647	699	14647
14648	699	14648
14649	699	14649
14650	699	14650
14651	699	14651
14652	699	14652
14653	699	14653
14654	699	14654
14655	699	14655
14656	699	14656
14657	699	14657
14658	699	14658
14659	699	14659
14660	699	14660
14661	699	14661
14662	699	14662
14663	699	14663
14664	699	14664
14665	699	14665
14666	699	14666
14667	699	14667
14668	699	14668
14669	699	14669
14670	699	14670
14671	699	14671
14672	699	14672
14673	700	14673
14674	700	14674
14675	700	14675
14676	700	14676
14677	700	14677
14678	700	14678
14679	700	14679
14680	700	14680
14681	700	14681
14682	700	14682
14683	700	14683
14684	700	14684
14685	700	14685
14686	700	14686
14687	700	14687
14688	701	14688
14689	701	14689
14690	701	14690
14691	701	14691
14692	701	14692
14693	701	14693
14694	701	14694
14695	701	14695
14696	701	14696
14697	701	14697
14698	701	14698
14699	701	14699
14700	701	14700
14701	701	14701
14702	702	14702
14703	702	14703
14704	702	14704
14705	702	14705
14706	702	14706
14707	702	14707
14708	702	14708
14709	702	14709
14710	702	14710
14711	702	14711
14712	702	14712
14713	703	14713
14714	703	14714
14715	703	14715
14716	703	14716
14717	703	14717
14718	703	14718
14719	703	14719
14720	703	14720
14721	703	14721
14722	703	14722
14723	703	14723
14724	703	14724
14725	703	14725
14726	703	14726
14727	703	14727
14728	703	14728
14729	703	14729
14730	703	14730
14731	703	14731
14732	703	14732
14733	703	14733
14734	703	14734
14735	703	14735
14736	703	14736
14737	703	14737
14738	704	14738
14739	704	14739
14740	704	14740
14741	704	14741
14742	704	14742
14743	704	14743
14744	704	14744
14745	705	14745
14746	705	14746
14747	705	14747
14748	705	14748
14749	705	14749
14750	706	14750
14751	706	14751
14752	706	14752
14753	706	14753
14754	706	14754
14755	706	14755
14756	706	14756
14757	706	14757
14758	706	14758
14759	706	14759
14760	706	14760
14761	706	14761
14762	706	14762
14763	706	14763
14764	706	14764
14765	706	14765
14766	706	14766
14767	706	14767
14768	706	14768
14769	706	14769
14770	706	14770
14771	706	14771
14772	706	14772
14773	706	14773
14774	706	14774
14775	706	14775
14776	706	14776
14777	706	14777
14778	706	14778
14779	706	14779
14780	706	14780
14781	706	14781
14782	706	14782
14783	706	14783
14784	707	14784
14785	707	14785
14786	707	14786
14787	707	14787
14788	707	14788
14789	707	14789
14790	707	14790
14791	707	14791
14792	707	14792
14793	707	14793
14794	707	14794
14795	707	14795
14796	707	14796
14797	707	14797
14798	707	14798
14799	707	14799
14800	707	14800
14801	707	14801
14802	708	14802
14803	708	14803
14804	708	14804
14805	708	14805
14806	708	14806
14807	708	14807
14808	708	14808
14809	708	14809
14810	708	14810
14811	708	14811
14812	708	14812
14813	708	14813
14814	708	14814
14815	708	14815
14816	708	14816
14817	708	14817
14818	708	14818
14819	708	14819
14820	708	14820
14821	709	14821
14822	709	14822
14823	709	14823
14824	709	14824
14825	709	14825
14826	709	14826
14827	709	14827
14828	709	14828
14829	709	14829
14830	709	14830
14831	709	14831
14832	709	14832
14833	709	14833
14834	709	14834
14835	709	14835
14836	709	14836
14837	709	14837
14838	709	14838
14839	709	14839
14840	709	14840
14841	709	14841
14842	709	14842
14843	709	14843
14844	709	14844
14845	709	14845
14846	709	14846
14847	709	14847
14848	710	14848
14849	710	14849
14850	710	14850
14851	710	14851
14852	710	14852
14853	710	14853
14854	710	14854
14855	710	14855
14856	710	14856
14857	710	14857
14858	710	14858
14859	710	14859
14860	711	14860
14861	711	14861
14862	711	14862
14863	711	14863
14864	711	14864
14865	711	14865
14866	711	14866
14867	711	14867
14868	712	14868
14869	712	14869
14870	712	14870
14871	712	14871
14872	712	14872
14873	712	14873
14874	712	14874
14875	712	14875
14876	712	14876
14877	712	14877
14878	712	14878
14879	712	14879
14880	712	14880
14881	712	14881
14882	712	14882
14883	712	14883
14884	712	14884
14885	712	14885
14886	712	14886
14887	712	14887
14888	712	14888
14889	712	14889
14890	712	14890
14891	712	14891
14892	712	14892
14893	713	14893
14894	713	14894
14895	713	14895
14896	713	14896
14897	713	14897
14898	713	14898
14899	713	14899
14900	714	14900
14901	714	14901
14902	714	14902
14903	714	14903
14904	715	14904
14905	715	14905
14906	715	14906
14907	715	14907
14908	715	14908
14909	715	14909
14910	715	14910
14911	715	14911
14912	716	14912
14913	716	14913
14914	716	14914
14915	716	14915
14916	716	14916
14917	716	14917
14918	716	14918
14919	716	14919
14920	716	14920
14921	716	14921
14922	717	14922
14923	717	14923
14924	717	14924
14925	717	14925
14926	717	14926
14927	717	14927
14928	717	14928
14929	717	14929
14930	717	14930
14931	717	14931
14932	717	14932
14933	717	14933
14934	717	14934
14935	717	14935
14936	717	14936
14937	717	14937
14938	717	14938
14939	717	14939
14940	717	14940
14941	718	14941
14942	718	14942
14943	718	14943
14944	718	14944
14945	718	14945
14946	718	14946
14947	718	14947
14948	718	14948
14949	718	14949
14950	718	14950
14951	718	14951
14952	718	14952
14953	718	14953
14954	718	14954
14955	718	14955
14956	718	14956
14957	718	14957
14958	718	14958
14959	718	14959
14960	718	14960
14961	718	14961
14962	718	14962
14963	718	14963
14964	718	14964
14965	718	14965
14966	718	14966
14967	718	14967
14968	718	14968
14969	718	14969
14970	718	14970
14971	718	14971
14972	718	14972
14973	718	14973
14974	718	14974
14975	718	14975
14976	718	14976
14977	718	14977
14978	718	14978
14979	718	14979
14980	718	14980
14981	718	14981
14982	718	14982
14983	718	14983
14984	718	14984
14985	718	14985
14986	718	14986
14987	718	14987
14988	718	14988
14989	718	14989
14990	718	14990
14991	718	14991
14992	718	14992
14993	718	14993
14994	718	14994
14995	718	14995
14996	718	14996
14997	719	14997
14998	719	14998
14999	719	14999
15000	719	15000
15001	719	15001
15002	719	15002
15003	719	15003
15004	719	15004
15005	719	15005
15006	719	15006
15007	719	15007
15008	719	15008
15009	719	15009
15010	719	15010
15011	719	15011
15012	719	15012
15013	719	15013
15014	719	15014
15015	719	15015
15016	719	15016
15017	719	15017
15018	719	15018
15019	719	15019
15020	719	15020
15021	719	15021
15022	719	15022
15023	719	15023
15024	719	15024
15025	719	15025
15026	720	15026
15027	720	15027
15028	720	15028
15029	720	15029
15030	721	15030
15031	721	15031
15032	721	15032
15033	721	15033
15034	721	15034
15035	721	15035
15036	721	15036
15037	721	15037
15038	721	15038
15039	721	15039
15040	721	15040
15041	721	15041
15042	721	15042
15043	722	15043
15044	723	15044
15045	723	15045
15046	723	15046
15047	724	15047
15048	724	15048
15049	724	15049
15050	724	15050
15051	724	15051
15052	724	15052
15053	724	15053
15054	724	15054
15055	724	15055
15056	724	15056
15057	724	15057
15058	724	15058
15059	724	15059
15060	725	15060
15061	725	15061
15062	725	15062
15063	725	15063
15064	725	15064
15065	725	15065
15066	725	15066
15067	725	15067
15068	725	15068
15069	725	15069
15070	725	15070
15071	725	15071
15072	725	15072
15073	725	15073
15074	725	15074
15075	725	15075
15076	725	15076
15077	725	15077
15078	725	15078
15079	725	15079
15080	725	15080
15081	725	15081
15082	725	15082
15083	725	15083
15084	725	15084
15085	725	15085
15086	726	15086
15087	726	15087
15088	726	15088
15089	726	15089
15090	726	15090
15091	726	15091
15092	726	15092
15093	726	15093
15094	726	15094
15095	726	15095
15096	726	15096
15097	726	15097
15098	726	15098
15099	726	15099
15100	726	15100
15101	727	15101
15102	727	15102
15103	727	15103
15104	727	15104
15105	728	15105
15106	728	15106
15107	728	15107
15108	728	15108
15109	728	15109
15110	728	15110
15111	728	15111
15112	728	15112
15113	728	15113
15114	728	15114
15115	728	15115
15116	728	15116
15117	728	15117
15118	728	15118
15119	728	15119
15120	728	15120
15121	728	15121
15122	728	15122
15123	728	15123
15124	728	15124
15125	728	15125
15126	728	15126
15127	728	15127
15128	728	15128
15129	729	15129
15130	729	15130
15131	729	15131
15132	729	15132
15133	729	15133
15134	729	15134
15135	729	15135
15136	729	15136
15137	729	15137
15138	729	15138
15139	729	15139
15140	729	15140
15141	729	15141
15142	729	15142
15143	729	15143
15144	729	15144
15145	729	15145
15146	729	15146
15147	730	15147
15148	730	15148
15149	730	15149
15150	730	15150
15151	730	15151
15152	730	15152
15153	730	15153
15154	730	15154
15155	730	15155
15156	730	15156
15157	730	15157
15158	731	15158
15159	731	15159
15160	731	15160
15161	731	15161
15162	731	15162
15163	731	15163
15164	731	15164
15165	731	15165
15166	731	15166
15167	731	15167
15168	731	15168
15169	731	15169
15170	732	15170
15171	732	15171
15172	732	15172
15173	732	15173
15174	732	15174
15175	732	15175
15176	732	15176
15177	732	15177
15178	732	15178
15179	732	15179
15180	732	15180
15181	732	15181
15182	732	15182
15183	732	15183
15184	733	15184
15185	733	15185
15186	733	15186
15187	733	15187
15188	733	15188
15189	733	15189
15190	733	15190
15191	733	15191
15192	734	15192
15193	734	15193
15194	734	15194
15195	734	15195
15196	734	15196
15197	734	15197
15198	734	15198
15199	734	15199
15200	734	15200
15201	734	15201
15202	735	15202
15203	735	15203
15204	735	15204
15205	735	15205
15206	735	15206
15207	735	15207
15208	735	15208
15209	735	15209
15210	735	15210
15211	735	15211
15212	735	15212
15213	735	15213
15214	735	15214
15215	735	15215
15216	736	15216
15217	736	15217
15218	736	15218
15219	736	15219
15220	736	15220
15221	736	15221
15222	736	15222
15223	736	15223
15224	736	15224
15225	736	15225
15226	736	15226
15227	736	15227
15228	736	15228
15229	736	15229
15230	736	15230
15231	736	15231
15232	736	15232
15233	736	15233
15234	736	15234
15235	737	15235
15236	737	15236
15237	737	15237
15238	737	15238
15239	737	15239
15240	738	15240
15241	738	15241
15242	738	15242
15243	738	15243
15244	738	15244
15245	738	15245
15246	738	15246
15247	738	15247
15248	738	15248
15249	739	15249
15250	739	15250
15251	739	15251
15252	739	15252
15253	739	15253
15254	739	15254
15255	739	15255
15256	739	15256
15257	739	15257
15258	740	15258
15259	740	15259
15260	740	15260
15261	740	15261
15262	741	15262
15263	741	15263
15264	741	15264
15265	741	15265
15266	741	15266
15267	741	15267
15268	741	15268
15269	741	15269
15270	741	15270
15271	741	15271
15272	741	15272
15273	741	15273
15274	741	15274
15275	741	15275
15276	741	15276
15277	741	15277
15278	741	15278
15279	741	15279
15280	741	15280
15281	741	15281
15282	741	15282
15283	741	15283
15284	741	15284
15285	741	15285
15286	741	15286
15287	741	15287
15288	741	15288
15289	741	15289
15290	741	15290
15291	742	15291
15292	742	15292
15293	742	15293
15294	742	15294
15295	742	15295
15296	742	15296
15297	742	15297
15298	743	15298
15299	743	15299
15300	743	15300
15301	743	15301
15302	743	15302
15303	743	15303
15304	743	15304
15305	743	15305
15306	743	15306
15307	743	15307
15308	743	15308
15309	743	15309
15310	743	15310
15311	744	15311
15312	744	15312
15313	744	15313
15314	744	15314
15315	744	15315
15316	744	15316
15317	744	15317
15318	744	15318
15319	744	15319
15320	744	15320
15321	744	15321
15322	745	15322
15323	745	15323
15324	745	15324
15325	745	15325
15326	745	15326
15327	745	15327
15328	745	15328
15329	745	15329
15330	745	15330
15331	745	15331
15332	745	15332
15333	745	15333
15334	745	15334
15335	745	15335
15336	745	15336
15337	745	15337
15338	745	15338
15339	745	15339
15340	746	15340
15341	746	15341
15342	746	15342
15343	746	15343
15344	746	15344
15345	746	15345
15346	746	15346
15347	746	15347
15348	746	15348
15349	746	15349
15350	746	15350
15351	746	15351
15352	746	15352
15353	746	15353
15354	746	15354
15355	746	15355
15356	746	15356
15357	746	15357
15358	746	15358
15359	747	15359
15360	747	15360
15361	747	15361
15362	747	15362
15363	747	15363
15364	747	15364
15365	747	15365
15366	747	15366
15367	747	15367
15368	747	15368
15369	747	15369
15370	747	15370
15371	747	15371
15372	747	15372
15373	747	15373
15374	747	15374
15375	747	15375
15376	747	15376
15377	747	15377
15378	747	15378
15379	747	15379
15380	747	15380
15381	747	15381
15382	748	15382
15383	748	15383
15384	748	15384
15385	748	15385
15386	748	15386
15387	748	15387
15388	748	15388
15389	748	15389
15390	748	15390
15391	748	15391
15392	748	15392
15393	748	15393
15394	748	15394
15395	748	15395
15396	748	15396
15397	748	15397
15398	748	15398
15399	748	15399
15400	748	15400
15401	748	15401
15402	748	15402
15403	748	15403
15404	748	15404
15405	748	15405
15406	748	15406
15407	748	15407
15408	748	15408
15409	748	15409
15410	749	15410
15411	749	15411
15412	749	15412
15413	749	15413
15414	749	15414
15415	749	15415
15416	749	15416
15417	749	15417
15418	750	15418
15419	750	15419
15420	750	15420
15421	750	15421
15422	750	15422
15423	750	15423
15424	750	15424
15425	750	15425
15426	750	15426
15427	750	15427
15428	750	15428
15429	750	15429
15430	750	15430
15431	750	15431
15432	750	15432
15433	750	15433
15434	750	15434
15435	750	15435
15436	750	15436
15437	750	15437
15438	750	15438
15439	750	15439
15440	750	15440
15441	750	15441
15442	750	15442
15443	750	15443
15444	750	15444
15445	750	15445
15446	750	15446
15447	750	15447
15448	750	15448
15449	750	15449
15450	751	15450
15451	751	15451
15452	751	15452
15453	751	15453
15454	751	15454
15455	751	15455
15456	751	15456
15457	751	15457
15458	751	15458
15459	751	15459
15460	751	15460
15461	751	15461
15462	751	15462
15463	751	15463
15464	751	15464
15465	751	15465
15466	751	15466
15467	751	15467
15468	751	15468
15469	751	15469
15470	751	15470
15471	751	15471
15472	751	15472
15473	751	15473
15474	751	15474
15475	751	15475
15476	751	15476
15477	751	15477
15478	751	15478
15479	751	15479
15480	751	15480
15481	751	15481
15482	751	15482
15483	752	15483
15484	752	15484
15485	752	15485
15486	752	15486
15487	752	15487
15488	753	15488
15489	753	15489
15490	753	15490
15491	753	15491
15492	753	15492
15493	753	15493
15494	753	15494
15495	753	15495
15496	754	15496
15497	754	15497
15498	754	15498
15499	754	15499
15500	754	15500
15501	754	15501
15502	754	15502
15503	754	15503
15504	754	15504
15505	755	15505
15506	756	15506
15507	756	15507
15508	756	15508
15509	756	15509
15510	756	15510
15511	756	15511
15512	756	15512
15513	756	15513
15514	756	15514
15515	756	15515
15516	756	15516
15517	756	15517
15518	756	15518
15519	756	15519
15520	756	15520
15521	756	15521
15522	756	15522
15523	757	15523
15524	757	15524
15525	757	15525
15526	757	15526
15527	757	15527
15528	757	15528
15529	757	15529
15530	757	15530
15531	757	15531
15532	757	15532
15533	757	15533
15534	757	15534
15535	758	15535
15536	758	15536
15537	758	15537
15538	758	15538
15539	758	15539
15540	758	15540
15541	758	15541
15542	758	15542
15543	758	15543
15544	758	15544
15545	758	15545
15546	758	15546
15547	758	15547
15548	758	15548
15549	758	15549
15550	758	15550
15551	758	15551
15552	758	15552
15553	758	15553
15554	758	15554
15555	758	15555
15556	758	15556
15557	758	15557
15558	758	15558
15559	758	15559
15560	758	15560
15561	758	15561
15562	759	15562
15563	759	15563
15564	759	15564
15565	759	15565
15566	760	15566
15567	760	15567
15568	760	15568
15569	760	15569
15570	760	15570
15571	760	15571
15572	760	15572
15573	760	15573
15574	760	15574
15575	760	15575
15576	761	15576
15577	762	15577
15578	762	15578
15579	762	15579
15580	762	15580
15581	763	15581
15582	763	15582
15583	763	15583
15584	763	15584
15585	763	15585
15586	763	15586
15587	763	15587
15588	763	15588
15589	763	15589
15590	763	15590
15591	763	15591
15592	763	15592
15593	763	15593
15594	763	15594
15595	763	15595
15596	763	15596
15597	763	15597
15598	763	15598
15599	763	15599
15600	763	15600
15601	763	15601
15602	763	15602
15603	763	15603
15604	763	15604
15605	764	15605
15606	764	15606
15607	764	15607
15608	764	15608
15609	764	15609
15610	764	15610
15611	764	15611
15612	764	15612
15613	765	15613
15614	765	15614
15615	765	15615
15616	765	15616
15617	765	15617
15618	765	15618
15619	765	15619
15620	765	15620
15621	765	15621
15622	765	15622
15623	765	15623
15624	765	15624
15625	766	15625
15626	766	15626
15627	766	15627
15628	766	15628
15629	766	15629
15630	766	15630
15631	766	15631
15632	766	15632
15633	766	15633
15634	766	15634
15635	766	15635
15636	766	15636
15637	766	15637
15638	767	15638
15639	767	15639
15640	767	15640
15641	767	15641
15642	767	15642
15643	767	15643
15644	767	15644
15645	767	15645
15646	767	15646
15647	767	15647
15648	767	15648
15649	767	15649
15650	767	15650
15651	767	15651
15652	767	15652
15653	767	15653
15654	767	15654
15655	767	15655
15656	767	15656
15657	767	15657
15658	767	15658
15659	767	15659
15660	767	15660
15661	767	15661
15662	767	15662
15663	767	15663
15664	767	15664
15665	767	15665
15666	767	15666
15667	767	15667
15668	768	15668
15669	768	15669
15670	768	15670
15671	768	15671
15672	768	15672
15673	769	15673
15674	769	15674
15675	769	15675
15676	769	15676
15677	769	15677
15678	770	15678
15679	770	15679
15680	770	15680
15681	770	15681
15682	770	15682
15683	770	15683
15684	770	15684
15685	770	15685
15686	770	15686
15687	770	15687
15688	770	15688
15689	770	15689
15690	770	15690
15691	770	15691
15692	770	15692
15693	770	15693
15694	770	15694
15695	770	15695
15696	770	15696
15697	771	15697
15698	771	15698
15699	771	15699
15700	771	15700
15701	771	15701
15702	771	15702
15703	771	15703
15704	772	15704
15705	772	15705
15706	772	15706
15707	772	15707
15708	772	15708
15709	772	15709
15710	772	15710
15711	772	15711
15712	772	15712
15713	772	15713
15714	772	15714
15715	772	15715
15716	772	15716
15717	772	15717
15718	772	15718
15719	772	15719
15720	772	15720
15721	772	15721
15722	772	15722
15723	772	15723
15724	772	15724
15725	772	15725
15726	772	15726
15727	772	15727
15728	772	15728
15729	772	15729
15730	773	15730
15731	773	15731
15732	773	15732
15733	773	15733
15734	773	15734
15735	773	15735
15736	773	15736
15737	773	15737
15738	773	15738
15739	773	15739
15740	774	15740
15741	774	15741
15742	774	15742
15743	774	15743
15744	774	15744
15745	774	15745
15746	774	15746
15747	775	15747
15748	775	15748
15749	775	15749
15750	775	15750
15751	775	15751
15752	775	15752
15753	775	15753
15754	775	15754
15755	775	15755
15756	775	15756
15757	775	15757
15758	775	15758
15759	775	15759
15760	775	15760
15761	775	15761
15762	775	15762
15763	775	15763
15764	775	15764
15765	775	15765
15766	775	15766
15767	775	15767
15768	776	15768
15769	776	15769
15770	776	15770
15771	776	15771
15772	776	15772
15773	776	15773
15774	776	15774
15775	776	15775
15776	776	15776
15777	776	15777
15778	776	15778
15779	776	15779
15780	776	15780
15781	776	15781
15782	777	15782
15783	777	15783
15784	777	15784
15785	777	15785
15786	777	15786
15787	777	15787
15788	777	15788
15789	777	15789
15790	777	15790
15791	777	15791
15792	777	15792
15793	777	15793
15794	777	15794
15795	777	15795
15796	777	15796
15797	778	15797
15798	778	15798
15799	778	15799
15800	778	15800
15801	778	15801
15802	778	15802
15803	778	15803
15804	778	15804
15805	778	15805
15806	778	15806
15807	778	15807
15808	778	15808
15809	778	15809
15810	778	15810
15811	778	15811
15812	778	15812
15813	778	15813
15814	778	15814
15815	778	15815
15816	778	15816
15817	778	15817
15818	778	15818
15819	778	15819
15820	778	15820
15821	778	15821
15822	778	15822
15823	778	15823
15824	778	15824
15825	778	15825
15826	778	15826
15827	778	15827
15828	778	15828
15829	779	15829
15830	779	15830
15831	779	15831
15832	779	15832
15833	779	15833
15834	779	15834
15835	779	15835
15836	779	15836
15837	779	15837
15838	779	15838
15839	779	15839
15840	779	15840
15841	779	15841
15842	779	15842
15843	779	15843
15844	780	15844
15845	780	15845
15846	780	15846
15847	780	15847
15848	780	15848
15849	780	15849
15850	780	15850
15851	780	15851
15852	780	15852
15853	780	15853
15854	780	15854
15855	780	15855
15856	780	15856
15857	780	15857
15858	780	15858
15859	780	15859
15860	780	15860
15861	780	15861
15862	780	15862
15863	780	15863
15864	780	15864
15865	781	15865
15866	781	15866
15867	781	15867
15868	781	15868
15869	781	15869
15870	781	15870
15871	781	15871
15872	781	15872
15873	781	15873
15874	781	15874
15875	781	15875
15876	781	15876
15877	781	15877
15878	781	15878
15879	781	15879
15880	781	15880
15881	781	15881
15882	781	15882
15883	781	15883
15884	781	15884
15885	781	15885
15886	781	15886
15887	781	15887
15888	781	15888
15889	782	15889
15890	782	15890
15891	782	15891
15892	782	15892
15893	782	15893
15894	782	15894
15895	782	15895
15896	782	15896
15897	782	15897
15898	782	15898
15899	782	15899
15900	782	15900
15901	782	15901
15902	782	15902
15903	782	15903
15904	782	15904
15905	782	15905
15906	782	15906
15907	782	15907
15908	783	15908
15909	783	15909
15910	783	15910
15911	783	15911
15912	783	15912
15913	783	15913
15914	783	15914
15915	783	15915
15916	783	15916
15917	783	15917
15918	783	15918
15919	783	15919
15920	784	15920
15921	784	15921
15922	784	15922
15923	784	15923
15924	785	15924
15925	785	15925
15926	785	15926
15927	785	15927
15928	785	15928
15929	785	15929
15930	785	15930
15931	785	15931
15932	785	15932
15933	785	15933
15934	785	15934
15935	785	15935
15936	785	15936
15937	785	15937
15938	785	15938
15939	785	15939
15940	785	15940
15941	785	15941
15942	785	15942
15943	785	15943
15944	785	15944
15945	786	15945
15946	786	15946
15947	786	15947
15948	786	15948
15949	786	15949
15950	786	15950
15951	786	15951
15952	786	15952
15953	787	15953
15954	787	15954
15955	787	15955
15956	788	15956
15957	788	15957
15958	788	15958
15959	788	15959
15960	788	15960
15961	788	15961
15962	788	15962
15963	788	15963
15964	788	15964
15965	788	15965
15966	789	15966
15967	789	15967
15968	789	15968
15969	789	15969
15970	789	15970
15971	789	15971
15972	789	15972
15973	789	15973
15974	789	15974
15975	789	15975
15976	789	15976
15977	789	15977
15978	789	15978
15979	789	15979
15980	789	15980
15981	789	15981
15982	789	15982
15983	789	15983
15984	789	15984
15985	789	15985
15986	789	15986
15987	789	15987
15988	789	15988
15989	789	15989
15990	790	15990
15991	790	15991
15992	790	15992
15993	791	15993
15994	791	15994
15995	791	15995
15996	791	15996
15997	791	15997
15998	791	15998
15999	791	15999
16000	791	16000
16001	791	16001
16002	791	16002
16003	791	16003
16004	791	16004
16005	791	16005
16006	791	16006
16007	791	16007
16008	791	16008
16009	791	16009
16010	791	16010
16011	791	16011
16012	791	16012
16013	791	16013
16014	791	16014
16015	791	16015
16016	791	16016
16017	791	16017
16018	791	16018
16019	791	16019
16020	791	16020
16021	791	16021
16022	791	16022
16023	791	16023
16024	791	16024
16025	791	16025
16026	791	16026
16027	791	16027
16028	791	16028
16029	791	16029
16030	791	16030
16031	791	16031
16032	791	16032
16033	791	16033
16034	792	16034
16035	792	16035
16036	792	16036
16037	792	16037
16038	792	16038
16039	792	16039
16040	792	16040
16041	792	16041
16042	792	16042
16043	792	16043
16044	792	16044
16045	792	16045
16046	792	16046
16047	792	16047
16048	792	16048
16049	792	16049
16050	792	16050
16051	793	16051
16052	793	16052
16053	793	16053
16054	793	16054
16055	793	16055
16056	793	16056
16057	793	16057
16058	793	16058
16059	793	16059
16060	793	16060
16061	794	16061
16062	794	16062
16063	794	16063
16064	794	16064
16065	794	16065
16066	794	16066
16067	794	16067
16068	794	16068
16069	794	16069
16070	794	16070
16071	794	16071
16072	794	16072
16073	794	16073
16074	794	16074
16075	795	16075
16076	795	16076
16077	795	16077
16078	795	16078
16079	795	16079
16080	795	16080
16081	795	16081
16082	795	16082
16083	795	16083
16084	795	16084
16085	795	16085
16086	795	16086
16087	796	16087
16088	796	16088
16089	796	16089
16090	796	16090
16091	796	16091
16092	796	16092
16093	796	16093
16094	796	16094
16095	796	16095
16096	796	16096
16097	796	16097
16098	796	16098
16099	796	16099
16100	797	16100
16101	797	16101
16102	797	16102
16103	797	16103
16104	797	16104
16105	797	16105
16106	797	16106
16107	797	16107
16108	797	16108
16109	797	16109
16110	797	16110
16111	797	16111
16112	797	16112
16113	797	16113
16114	797	16114
16115	797	16115
16116	797	16116
16117	797	16117
16118	797	16118
16119	797	16119
16120	797	16120
16121	797	16121
16122	797	16122
16123	797	16123
16124	797	16124
16125	797	16125
16126	797	16126
16127	798	16127
16128	798	16128
16129	798	16129
16130	798	16130
16131	798	16131
16132	798	16132
16133	798	16133
16134	798	16134
16135	798	16135
16136	798	16136
16137	798	16137
16138	798	16138
16139	798	16139
16140	798	16140
16141	798	16141
16142	798	16142
16143	798	16143
16144	798	16144
16145	798	16145
16146	798	16146
16147	798	16147
16148	798	16148
16149	798	16149
16150	798	16150
16151	798	16151
16152	798	16152
16153	798	16153
16154	798	16154
16155	798	16155
16156	798	16156
16157	798	16157
16158	798	16158
16159	798	16159
16160	798	16160
16161	798	16161
16162	798	16162
16163	798	16163
16164	798	16164
16165	798	16165
16166	798	16166
16167	798	16167
16168	798	16168
16169	798	16169
16170	798	16170
16171	798	16171
16172	798	16172
16173	798	16173
16174	798	16174
16175	798	16175
16176	798	16176
16177	798	16177
16178	798	16178
16179	798	16179
16180	798	16180
16181	798	16181
16182	798	16182
16183	798	16183
16184	798	16184
16185	798	16185
16186	798	16186
16187	798	16187
16188	798	16188
16189	798	16189
16190	798	16190
16191	798	16191
16192	798	16192
16193	798	16193
16194	798	16194
16195	798	16195
16196	798	16196
16197	798	16197
16198	798	16198
16199	798	16199
16200	798	16200
16201	798	16201
16202	798	16202
16203	798	16203
16204	798	16204
16205	798	16205
16206	798	16206
16207	798	16207
16208	798	16208
16209	798	16209
16210	799	16210
16211	799	16211
16212	799	16212
16213	799	16213
16214	799	16214
16215	799	16215
16216	799	16216
16217	799	16217
16218	799	16218
16219	799	16219
16220	799	16220
16221	799	16221
16222	799	16222
16223	799	16223
16224	799	16224
16225	799	16225
16226	799	16226
16227	799	16227
16228	799	16228
16229	799	16229
16230	800	16230
16231	800	16231
16232	800	16232
16233	800	16233
16234	800	16234
16235	800	16235
16236	800	16236
16237	800	16237
16238	800	16238
16239	800	16239
16240	800	16240
16241	800	16241
16242	800	16242
16243	800	16243
16244	800	16244
16245	800	16245
16246	800	16246
16247	801	16247
16248	801	16248
16249	801	16249
16250	801	16250
16251	801	16251
16252	801	16252
16253	801	16253
16254	801	16254
16255	801	16255
16256	801	16256
16257	801	16257
16258	801	16258
16259	801	16259
16260	801	16260
16261	801	16261
16262	801	16262
16263	801	16263
16264	801	16264
16265	801	16265
16266	801	16266
16267	802	16267
16268	802	16268
16269	802	16269
16270	802	16270
16271	802	16271
16272	802	16272
16273	802	16273
16274	802	16274
16275	802	16275
16276	802	16276
16277	802	16277
16278	802	16278
16279	802	16279
16280	802	16280
16281	802	16281
16282	802	16282
16283	802	16283
16284	802	16284
16285	802	16285
16286	803	16286
16287	803	16287
16288	803	16288
16289	804	16289
16290	804	16290
16291	804	16291
16292	804	16292
16293	804	16293
16294	804	16294
16295	805	16295
16296	805	16296
16297	805	16297
16298	805	16298
16299	805	16299
16300	805	16300
16301	805	16301
16302	806	16302
16303	806	16303
16304	807	16304
16305	807	16305
16306	807	16306
16307	807	16307
16308	807	16308
16309	807	16309
16310	808	16310
16311	808	16311
16312	808	16312
16313	808	16313
16314	808	16314
16315	808	16315
16316	808	16316
16317	808	16317
16318	808	16318
16319	808	16319
16320	808	16320
16321	808	16321
16322	808	16322
16323	808	16323
16324	808	16324
16325	808	16325
16326	809	16326
16327	809	16327
16328	809	16328
16329	809	16329
16330	809	16330
16331	809	16331
16332	809	16332
16333	809	16333
16334	809	16334
16335	809	16335
16336	809	16336
16337	809	16337
16338	809	16338
16339	809	16339
16340	809	16340
16341	809	16341
16342	809	16342
16343	809	16343
16344	809	16344
16345	809	16345
16346	809	16346
16347	809	16347
16348	809	16348
16349	809	16349
16350	809	16350
16351	809	16351
16352	809	16352
16353	809	16353
16354	809	16354
16355	809	16355
16356	809	16356
16357	809	16357
16358	809	16358
16359	809	16359
16360	809	16360
16361	809	16361
16362	809	16362
16363	809	16363
16364	809	16364
16365	809	16365
16366	809	16366
16367	809	16367
16368	809	16368
16369	809	16369
16370	809	16370
16371	809	16371
16372	810	16372
16373	810	16373
16374	810	16374
16375	810	16375
16376	810	16376
16377	810	16377
16378	810	16378
16379	810	16379
16380	810	16380
16381	810	16381
16382	810	16382
16383	810	16383
16384	810	16384
16385	810	16385
16386	810	16386
16387	810	16387
16388	810	16388
16389	810	16389
16390	810	16390
16391	810	16391
16392	810	16392
16393	810	16393
16394	810	16394
16395	810	16395
16396	810	16396
16397	810	16397
16398	810	16398
16399	810	16399
16400	810	16400
16401	810	16401
16402	810	16402
16403	810	16403
16404	810	16404
16405	810	16405
16406	811	16406
16407	811	16407
16408	811	16408
16409	811	16409
16410	811	16410
16411	811	16411
16412	811	16412
16413	811	16413
16414	811	16414
16415	811	16415
16416	811	16416
16417	811	16417
16418	811	16418
16419	811	16419
16420	811	16420
16421	811	16421
16422	811	16422
16423	811	16423
16424	811	16424
16425	811	16425
16426	811	16426
16427	811	16427
16428	811	16428
16429	811	16429
16430	811	16430
16431	811	16431
16432	811	16432
16433	811	16433
16434	811	16434
16435	811	16435
16436	811	16436
16437	811	16437
16438	811	16438
16439	811	16439
16440	811	16440
16441	811	16441
16442	811	16442
16443	812	16443
16444	812	16444
16445	812	16445
16446	812	16446
16447	812	16447
16448	812	16448
16449	812	16449
16450	812	16450
16451	812	16451
16452	812	16452
16453	812	16453
16454	812	16454
16455	812	16455
16456	812	16456
16457	812	16457
16458	812	16458
16459	812	16459
16460	812	16460
16461	812	16461
16462	812	16462
16463	812	16463
16464	812	16464
16465	812	16465
16466	812	16466
16467	812	16467
16468	812	16468
16469	812	16469
16470	812	16470
16471	813	16471
16472	813	16472
16473	813	16473
16474	813	16474
16475	813	16475
16476	813	16476
16477	813	16477
16478	813	16478
16479	813	16479
16480	813	16480
16481	813	16481
16482	813	16482
16483	813	16483
16484	813	16484
16485	813	16485
16486	813	16486
16487	813	16487
16488	814	16488
16489	814	16489
16490	814	16490
16491	814	16491
16492	814	16492
16493	814	16493
16494	814	16494
16495	814	16495
16496	814	16496
16497	814	16497
16498	814	16498
16499	814	16499
16500	814	16500
16501	814	16501
16502	815	16502
16503	815	16503
16504	815	16504
16505	815	16505
16506	815	16506
16507	815	16507
16508	815	16508
16509	815	16509
16510	815	16510
16511	815	16511
16512	815	16512
16513	815	16513
16514	815	16514
16515	815	16515
16516	815	16516
16517	815	16517
16518	815	16518
16519	815	16519
16520	815	16520
16521	815	16521
16522	815	16522
16523	815	16523
16524	815	16524
16525	815	16525
16526	815	16526
16527	815	16527
16528	815	16528
16529	815	16529
16530	816	16530
16531	816	16531
16532	816	16532
16533	816	16533
16534	816	16534
16535	816	16535
16536	816	16536
16537	816	16537
16538	816	16538
16539	816	16539
16540	816	16540
16541	816	16541
16542	817	16542
16543	817	16543
16544	817	16544
16545	817	16545
16546	817	16546
16547	817	16547
16548	817	16548
16549	817	16549
16550	817	16550
16551	817	16551
16552	817	16552
16553	818	16553
16554	818	16554
16555	818	16555
16556	818	16556
16557	818	16557
16558	818	16558
16559	818	16559
16560	818	16560
16561	818	16561
16562	819	16562
16563	819	16563
16564	819	16564
16565	819	16565
16566	819	16566
16567	819	16567
16568	819	16568
16569	819	16569
16570	819	16570
16571	819	16571
16572	819	16572
16573	819	16573
16574	819	16574
16575	819	16575
16576	819	16576
16577	819	16577
16578	819	16578
16579	819	16579
16580	819	16580
16581	820	16581
16582	820	16582
16583	820	16583
16584	820	16584
16585	820	16585
16586	820	16586
16587	820	16587
16588	821	16588
16589	821	16589
16590	821	16590
16591	821	16591
16592	821	16592
16593	821	16593
16594	821	16594
16595	821	16595
16596	821	16596
16597	821	16597
16598	821	16598
16599	821	16599
16600	821	16600
16601	821	16601
16602	821	16602
16603	822	16603
16604	822	16604
16605	822	16605
16606	822	16606
16607	822	16607
16608	822	16608
16609	822	16609
16610	822	16610
16611	822	16611
16612	822	16612
16613	822	16613
16614	822	16614
16615	822	16615
16616	822	16616
16617	822	16617
16618	822	16618
16619	822	16619
16620	822	16620
16621	822	16621
16622	822	16622
16623	822	16623
16624	822	16624
16625	822	16625
16626	822	16626
16627	822	16627
16628	822	16628
16629	822	16629
16630	822	16630
16631	822	16631
16632	823	16632
16633	823	16633
16634	823	16634
16635	823	16635
16636	823	16636
16637	823	16637
16638	823	16638
16639	823	16639
16640	823	16640
16641	823	16641
16642	823	16642
16643	823	16643
16644	823	16644
16645	823	16645
16646	823	16646
16647	823	16647
16648	823	16648
16649	823	16649
16650	823	16650
16651	823	16651
16652	823	16652
16653	823	16653
16654	823	16654
16655	823	16655
16656	823	16656
16657	823	16657
16658	823	16658
16659	823	16659
16660	824	16660
16661	824	16661
16662	824	16662
16663	824	16663
16664	824	16664
16665	824	16665
16666	824	16666
16667	824	16667
16668	824	16668
16669	824	16669
16670	824	16670
16671	824	16671
16672	824	16672
16673	824	16673
16674	824	16674
16675	824	16675
16676	824	16676
16677	824	16677
16678	824	16678
16679	824	16679
16680	824	16680
16681	824	16681
16682	825	16682
16683	825	16683
16684	825	16684
16685	825	16685
16686	825	16686
16687	825	16687
16688	825	16688
16689	825	16689
16690	825	16690
16691	825	16691
16692	825	16692
16693	825	16693
16694	825	16694
16695	825	16695
16696	825	16696
16697	825	16697
16698	825	16698
16699	825	16699
16700	825	16700
16701	825	16701
16702	825	16702
16703	826	16703
16704	826	16704
16705	826	16705
16706	826	16706
16707	826	16707
16708	826	16708
16709	826	16709
16710	826	16710
16711	826	16711
16712	826	16712
16713	826	16713
16714	826	16714
16715	826	16715
16716	828	16716
16717	828	16717
16718	828	16718
16719	828	16719
16720	828	16720
16721	828	16721
16722	828	16722
16723	828	16723
16724	829	16724
16725	829	16725
16726	829	16726
16727	829	16727
16728	829	16728
16729	829	16729
16730	829	16730
16731	829	16731
16732	829	16732
16733	830	16733
16734	830	16734
16735	830	16735
16736	830	16736
16737	830	16737
16738	830	16738
16739	830	16739
16740	830	16740
16741	830	16741
16742	831	16742
16743	831	16743
16744	831	16744
16745	831	16745
16746	831	16746
16747	831	16747
16748	831	16748
16749	831	16749
16750	831	16750
16751	831	16751
16752	831	16752
16753	831	16753
16754	832	16754
16755	832	16755
16756	832	16756
16757	832	16757
16758	832	16758
16759	832	16759
16760	832	16760
16761	832	16761
16762	832	16762
16763	832	16763
16764	832	16764
16765	833	16765
16766	834	16766
16767	834	16767
16768	834	16768
16769	834	16769
16770	834	16770
16771	834	16771
16772	834	16772
16773	834	16773
16774	835	16774
16775	835	16775
16776	835	16776
16777	835	16777
16778	835	16778
16779	835	16779
16780	835	16780
16781	835	16781
16782	835	16782
16783	835	16783
16784	835	16784
16785	835	16785
16786	835	16786
16787	835	16787
16788	835	16788
16789	835	16789
16790	835	16790
16791	835	16791
16792	835	16792
16793	835	16793
16794	835	16794
16795	835	16795
16796	835	16796
16797	835	16797
16798	835	16798
16799	835	16799
16800	835	16800
16801	835	16801
16802	835	16802
16803	835	16803
16804	836	16804
16805	836	16805
16806	836	16806
16807	836	16807
16808	836	16808
16809	836	16809
16810	836	16810
16811	836	16811
16812	836	16812
16813	836	16813
16814	836	16814
16815	836	16815
16816	836	16816
16817	836	16817
16818	836	16818
16819	836	16819
16820	836	16820
16821	836	16821
16822	836	16822
16823	836	16823
16824	836	16824
16825	836	16825
16826	836	16826
16827	836	16827
16828	836	16828
16829	836	16829
16830	836	16830
16831	836	16831
16832	836	16832
16833	837	16833
16834	837	16834
16835	837	16835
16836	837	16836
16837	837	16837
16838	837	16838
16839	837	16839
16840	837	16840
16841	837	16841
16842	837	16842
16843	837	16843
16844	837	16844
16845	837	16845
16846	837	16846
16847	837	16847
16848	837	16848
16849	837	16849
16850	837	16850
16851	837	16851
16852	837	16852
16853	837	16853
16854	838	16854
16855	838	16855
16856	838	16856
16857	838	16857
16858	838	16858
16859	838	16859
16860	838	16860
16861	838	16861
16862	838	16862
16863	838	16863
16864	838	16864
16865	838	16865
16866	838	16866
16867	838	16867
16868	838	16868
16869	838	16869
16870	838	16870
16871	838	16871
16872	838	16872
16873	838	16873
16874	838	16874
16875	838	16875
16876	838	16876
16877	838	16877
16878	838	16878
16879	839	16879
16880	839	16880
16881	839	16881
16882	839	16882
16883	839	16883
16884	839	16884
16885	839	16885
16886	839	16886
16887	839	16887
16888	839	16888
16889	839	16889
16890	840	16890
16891	840	16891
16892	841	16892
16893	841	16893
16894	841	16894
16895	841	16895
16896	841	16896
16897	841	16897
16898	841	16898
16899	841	16899
16900	841	16900
16901	841	16901
16902	841	16902
16903	841	16903
16904	841	16904
16905	841	16905
16906	841	16906
16907	841	16907
16908	841	16908
16909	842	16909
16910	842	16910
16911	842	16911
16912	842	16912
16913	842	16913
16914	842	16914
16915	842	16915
16916	842	16916
16917	842	16917
16918	842	16918
16919	843	16919
16920	843	16920
16921	843	16921
16922	843	16922
16923	843	16923
16924	843	16924
16925	844	16925
16926	844	16926
16927	844	16927
16928	844	16928
16929	844	16929
16930	844	16930
16931	845	16931
16932	845	16932
16933	845	16933
16934	845	16934
16935	845	16935
16936	845	16936
16937	845	16937
16938	845	16938
16939	845	16939
16940	845	16940
16941	846	16941
16942	846	16942
16943	846	16943
16944	846	16944
16945	846	16945
16946	846	16946
16947	846	16947
16948	846	16948
16949	846	16949
16950	846	16950
16951	846	16951
16952	846	16952
16953	846	16953
16954	846	16954
16955	846	16955
16956	846	16956
16957	846	16957
16958	846	16958
16959	846	16959
16960	846	16960
16961	846	16961
16962	846	16962
16963	846	16963
16964	846	16964
16965	846	16965
16966	846	16966
16967	846	16967
16968	846	16968
16969	846	16969
16970	847	16970
16971	847	16971
16972	847	16972
16973	847	16973
16974	847	16974
16975	847	16975
16976	847	16976
16977	848	16977
16978	848	16978
16979	848	16979
16980	848	16980
16981	849	16981
16982	849	16982
16983	849	16983
16984	849	16984
16985	849	16985
16986	850	16986
16987	850	16987
16988	850	16988
16989	850	16989
16990	851	16990
16991	851	16991
16992	851	16992
16993	851	16993
16994	851	16994
16995	851	16995
16996	852	16996
16997	852	16997
16998	852	16998
16999	852	16999
17000	852	17000
17001	853	17001
17002	853	17002
17003	853	17003
17004	853	17004
17005	853	17005
17006	853	17006
17007	853	17007
17008	853	17008
17009	853	17009
17010	853	17010
17011	853	17011
17012	853	17012
17013	853	17013
17014	854	17014
17015	854	17015
17016	854	17016
17017	854	17017
17018	854	17018
17019	854	17019
17020	854	17020
17021	854	17021
17022	854	17022
17023	854	17023
17024	854	17024
17025	854	17025
17026	854	17026
17027	854	17027
17028	854	17028
17029	854	17029
17030	854	17030
17031	854	17031
17032	854	17032
17033	854	17033
17034	854	17034
17035	854	17035
17036	854	17036
17037	854	17037
17038	855	17038
17039	855	17039
17040	855	17040
17041	855	17041
17042	855	17042
17043	855	17043
17044	855	17044
17045	855	17045
17046	856	17046
17047	856	17047
17048	856	17048
17049	856	17049
17050	856	17050
17051	856	17051
17052	856	17052
17053	856	17053
17054	856	17054
17055	856	17055
17056	856	17056
17057	856	17057
17058	856	17058
17059	856	17059
17060	856	17060
17061	856	17061
17062	856	17062
17063	857	17063
17064	857	17064
17065	857	17065
17066	857	17066
17067	857	17067
17068	857	17068
17069	857	17069
17070	857	17070
17071	857	17071
17072	857	17072
17073	857	17073
17074	857	17074
17075	857	17075
17076	857	17076
17077	857	17077
17078	857	17078
17079	857	17079
17080	857	17080
17081	857	17081
17082	857	17082
17083	857	17083
17084	857	17084
17085	857	17085
17086	857	17086
17087	857	17087
17088	858	17088
17089	858	17089
17090	858	17090
17091	858	17091
17092	858	17092
17093	858	17093
17094	858	17094
17095	858	17095
17096	858	17096
17097	858	17097
17098	858	17098
17099	858	17099
17100	858	17100
17101	858	17101
17102	859	17102
17103	859	17103
17104	859	17104
17105	859	17105
17106	859	17106
17107	859	17107
17108	859	17108
17109	859	17109
17110	859	17110
17111	859	17111
17112	859	17112
17113	859	17113
17114	859	17114
17115	859	17115
17116	859	17116
17117	859	17117
17118	859	17118
17119	859	17119
17120	859	17120
17121	859	17121
17122	859	17122
17123	860	17123
17124	860	17124
17125	860	17125
17126	860	17126
17127	860	17127
17128	860	17128
17129	860	17129
17130	860	17130
17131	860	17131
17132	860	17132
17133	860	17133
17134	860	17134
17135	861	17135
17136	861	17136
17137	861	17137
17138	861	17138
17139	861	17139
17140	861	17140
17141	861	17141
17142	861	17142
17143	861	17143
17144	861	17144
17145	861	17145
17146	861	17146
17147	861	17147
17148	861	17148
17149	861	17149
17150	861	17150
17151	861	17151
17152	861	17152
17153	861	17153
17154	861	17154
17155	862	17155
17156	862	17156
17157	862	17157
17158	862	17158
17159	862	17159
17160	862	17160
17161	862	17161
17162	862	17162
17163	862	17163
17164	862	17164
17165	862	17165
17166	862	17166
17167	862	17167
17168	863	17168
17169	863	17169
17170	863	17170
17171	863	17171
17172	863	17172
17173	863	17173
17174	863	17174
17175	863	17175
17176	863	17176
17177	863	17177
17178	863	17178
17179	863	17179
17180	863	17180
17181	863	17181
17182	863	17182
17183	863	17183
17184	863	17184
17185	863	17185
17186	863	17186
17187	863	17187
17188	863	17188
17189	863	17189
17190	863	17190
17191	863	17191
17192	863	17192
17193	863	17193
17194	863	17194
17195	863	17195
17196	863	17196
17197	863	17197
17198	863	17198
17199	863	17199
17200	863	17200
17201	863	17201
17202	863	17202
17203	863	17203
17204	863	17204
17205	863	17205
17206	863	17206
17207	863	17207
17208	863	17208
17209	863	17209
17210	863	17210
17211	863	17211
17212	863	17212
17213	863	17213
17214	863	17214
17215	863	17215
17216	863	17216
17217	863	17217
17218	864	17218
17219	864	17219
17220	864	17220
17221	864	17221
17222	864	17222
17223	864	17223
17224	864	17224
17225	864	17225
17226	864	17226
17227	864	17227
17228	864	17228
17229	864	17229
17230	864	17230
17231	864	17231
17232	864	17232
17233	864	17233
17234	864	17234
17235	864	17235
17236	864	17236
17237	864	17237
17238	864	17238
17239	864	17239
17240	865	17240
17241	865	17241
17242	865	17242
17243	865	17243
17244	865	17244
17245	865	17245
17246	865	17246
17247	866	17247
17248	866	17248
17249	866	17249
17250	866	17250
17251	866	17251
17252	866	17252
17253	866	17253
17254	866	17254
17255	866	17255
17256	866	17256
17257	866	17257
17258	866	17258
17259	866	17259
17260	866	17260
17261	866	17261
17262	866	17262
17263	866	17263
17264	866	17264
17265	866	17265
17266	866	17266
17267	866	17267
17268	866	17268
17269	866	17269
17270	866	17270
17271	866	17271
17272	866	17272
17273	866	17273
17274	866	17274
17275	866	17275
17276	866	17276
17277	866	17277
17278	866	17278
17279	866	17279
17280	866	17280
17281	866	17281
17282	866	17282
17283	866	17283
17284	866	17284
17285	866	17285
17286	866	17286
17287	866	17287
17288	866	17288
17289	866	17289
17290	867	17290
17291	867	17291
17292	867	17292
17293	867	17293
17294	867	17294
17295	867	17295
17296	867	17296
17297	867	17297
17298	867	17298
17299	868	17299
17300	868	17300
17301	868	17301
17302	868	17302
17303	868	17303
17304	868	17304
17305	868	17305
17306	868	17306
17307	868	17307
17308	868	17308
17309	868	17309
17310	868	17310
17311	868	17311
17312	868	17312
17313	868	17313
17314	868	17314
17315	868	17315
17316	868	17316
17317	868	17317
17318	869	17318
17319	869	17319
17320	869	17320
17321	869	17321
17322	869	17322
17323	869	17323
17324	869	17324
17325	869	17325
17326	869	17326
17327	869	17327
17328	869	17328
17329	869	17329
17330	869	17330
17331	869	17331
17332	869	17332
17333	869	17333
17334	869	17334
17335	869	17335
17336	869	17336
17337	869	17337
17338	869	17338
17339	869	17339
17340	869	17340
17341	869	17341
17342	869	17342
17343	869	17343
17344	870	17344
17345	870	17345
17346	870	17346
17347	870	17347
17348	870	17348
17349	870	17349
17350	870	17350
17351	871	17351
17352	871	17352
17353	871	17353
17354	871	17354
17355	871	17355
17356	871	17356
17357	871	17357
17358	871	17358
17359	871	17359
17360	871	17360
17361	871	17361
17362	871	17362
17363	871	17363
17364	872	17364
17365	872	17365
17366	872	17366
17367	872	17367
17368	872	17368
17369	872	17369
17370	872	17370
17371	872	17371
17372	872	17372
17373	872	17373
17374	872	17374
17375	873	17375
17376	873	17376
17377	873	17377
17378	873	17378
17379	873	17379
17380	873	17380
17381	873	17381
17382	873	17382
17383	873	17383
17384	873	17384
17385	873	17385
17386	873	17386
17387	873	17387
17388	873	17388
17389	873	17389
17390	873	17390
17391	873	17391
17392	873	17392
17393	873	17393
17394	873	17394
17395	873	17395
17396	873	17396
17397	873	17397
17398	873	17398
17399	873	17399
17400	873	17400
17401	873	17401
17402	873	17402
17403	873	17403
17404	873	17404
17405	873	17405
17406	873	17406
17407	873	17407
17408	873	17408
17409	873	17409
17410	873	17410
17411	874	17411
17412	874	17412
17413	874	17413
17414	874	17414
17415	875	17415
17416	875	17416
17417	875	17417
17418	875	17418
17419	875	17419
17420	875	17420
17421	875	17421
17422	875	17422
17423	875	17423
17424	875	17424
17425	875	17425
17426	875	17426
17427	875	17427
17428	875	17428
17429	875	17429
17430	875	17430
17431	875	17431
17432	875	17432
17433	875	17433
17434	875	17434
17435	875	17435
17436	876	17436
17437	876	17437
17438	876	17438
17439	876	17439
17440	876	17440
17441	876	17441
17442	876	17442
17443	876	17443
17444	876	17444
17445	876	17445
17446	876	17446
17447	876	17447
17448	876	17448
17449	876	17449
17450	876	17450
17451	876	17451
17452	876	17452
17453	876	17453
17454	876	17454
17455	876	17455
17456	877	17456
17457	877	17457
17458	877	17458
17459	877	17459
17460	877	17460
17461	877	17461
17462	877	17462
17463	877	17463
17464	877	17464
17465	877	17465
17466	877	17466
17467	877	17467
17468	877	17468
17469	877	17469
17470	877	17470
17471	877	17471
17472	877	17472
17473	877	17473
17474	877	17474
17475	877	17475
17476	877	17476
17477	877	17477
17478	877	17478
17479	877	17479
17480	877	17480
17481	877	17481
17482	877	17482
17483	877	17483
17484	877	17484
17485	877	17485
17486	877	17486
17487	877	17487
17488	877	17488
17489	877	17489
17490	877	17490
17491	877	17491
17492	877	17492
17493	878	17493
17494	878	17494
17495	878	17495
17496	878	17496
17497	878	17497
17498	878	17498
17499	878	17499
17500	878	17500
17501	878	17501
17502	878	17502
17503	878	17503
17504	878	17504
17505	878	17505
17506	878	17506
17507	878	17507
17508	878	17508
17509	878	17509
17510	878	17510
17511	878	17511
17512	878	17512
17513	878	17513
17514	878	17514
17515	878	17515
17516	878	17516
17517	878	17517
17518	878	17518
17519	878	17519
17520	878	17520
17521	878	17521
17522	878	17522
17523	878	17523
17524	878	17524
17525	878	17525
17526	878	17526
17527	878	17527
17528	878	17528
17529	878	17529
17530	878	17530
17531	878	17531
17532	878	17532
17533	879	17533
17534	879	17534
17535	879	17535
17536	879	17536
17537	879	17537
17538	879	17538
17539	879	17539
17540	879	17540
17541	879	17541
17542	879	17542
17543	879	17543
17544	879	17544
17545	879	17545
17546	879	17546
17547	879	17547
17548	879	17548
17549	879	17549
17550	879	17550
17551	879	17551
17552	880	17552
17553	880	17553
17554	880	17554
17555	880	17555
17556	880	17556
17557	880	17557
17558	880	17558
17559	880	17559
17560	880	17560
17561	880	17561
17562	880	17562
17563	880	17563
17564	881	17564
17565	881	17565
17566	881	17566
17567	881	17567
17568	881	17568
17569	881	17569
17570	881	17570
17571	881	17571
17572	881	17572
17573	881	17573
17574	881	17574
17575	881	17575
17576	881	17576
17577	881	17577
17578	881	17578
17579	881	17579
17580	881	17580
17581	882	17581
17582	882	17582
17583	882	17583
17584	882	17584
17585	882	17585
17586	882	17586
17587	882	17587
17588	882	17588
17589	882	17589
17590	882	17590
17591	882	17591
17592	882	17592
17593	882	17593
17594	882	17594
17595	882	17595
17596	882	17596
17597	883	17597
17598	883	17598
17599	883	17599
17600	883	17600
17601	883	17601
17602	883	17602
17603	883	17603
17604	883	17604
17605	883	17605
17606	883	17606
17607	883	17607
17608	883	17608
17609	883	17609
17610	883	17610
17611	883	17611
17612	883	17612
17613	883	17613
17614	883	17614
17615	884	17615
17616	884	17616
17617	884	17617
17618	884	17618
17619	884	17619
17620	884	17620
17621	884	17621
17622	884	17622
17623	884	17623
17624	884	17624
17625	884	17625
17626	885	17626
17627	885	17627
17628	885	17628
17629	885	17629
17630	885	17630
17631	885	17631
17632	885	17632
17633	885	17633
17634	885	17634
17635	885	17635
17636	885	17636
17637	885	17637
17638	885	17638
17639	885	17639
17640	885	17640
17641	885	17641
17642	885	17642
17643	885	17643
17644	886	17644
17645	886	17645
17646	886	17646
17647	886	17647
17648	886	17648
17649	886	17649
17650	886	17650
17651	886	17651
17652	886	17652
17653	886	17653
17654	886	17654
17655	886	17655
17656	886	17656
17657	887	17657
17658	887	17658
17659	887	17659
17660	888	17660
17661	888	17661
17662	888	17662
17663	888	17663
17664	888	17664
17665	888	17665
17666	888	17666
17667	888	17667
17668	888	17668
17669	888	17669
17670	888	17670
17671	888	17671
17672	888	17672
17673	888	17673
17674	888	17674
17675	888	17675
17676	888	17676
17677	888	17677
17678	889	17678
17679	889	17679
17680	889	17680
17681	889	17681
17682	889	17682
17683	889	17683
17684	889	17684
17685	889	17685
17686	889	17686
17687	889	17687
17688	889	17688
17689	889	17689
17690	889	17690
17691	889	17691
17692	889	17692
17693	889	17693
17694	890	17694
17695	890	17695
17696	890	17696
17697	890	17697
17698	890	17698
17699	890	17699
17700	890	17700
17701	890	17701
17702	890	17702
17703	890	17703
17704	890	17704
17705	890	17705
17706	890	17706
17707	890	17707
17708	890	17708
17709	890	17709
17710	890	17710
17711	890	17711
17712	890	17712
17713	890	17713
17714	890	17714
17715	890	17715
17716	890	17716
17717	890	17717
17718	890	17718
17719	890	17719
17720	890	17720
17721	890	17721
17722	890	17722
17723	890	17723
17724	890	17724
17725	890	17725
17726	890	17726
17727	890	17727
17728	890	17728
17729	890	17729
17730	890	17730
17731	890	17731
17732	890	17732
17733	890	17733
17734	890	17734
17735	890	17735
17736	890	17736
17737	890	17737
17738	890	17738
17739	890	17739
17740	890	17740
17741	890	17741
17742	890	17742
17743	890	17743
17744	890	17744
17745	891	17745
17746	891	17746
17747	891	17747
17748	891	17748
17749	891	17749
17750	891	17750
17751	891	17751
17752	891	17752
17753	891	17753
17754	891	17754
17755	892	17755
17756	892	17756
17757	892	17757
17758	892	17758
17759	892	17759
17760	892	17760
17761	892	17761
17762	892	17762
17763	892	17763
17764	892	17764
17765	892	17765
17766	892	17766
17767	892	17767
17768	892	17768
17769	892	17769
17770	892	17770
17771	892	17771
17772	892	17772
17773	892	17773
17774	892	17774
17775	893	17775
17776	893	17776
17777	893	17777
17778	893	17778
17779	893	17779
17780	894	17780
17781	894	17781
17782	894	17782
17783	894	17783
17784	894	17784
17785	894	17785
17786	894	17786
17787	894	17787
17788	894	17788
17789	894	17789
17790	894	17790
17791	894	17791
17792	894	17792
17793	894	17793
17794	894	17794
17795	894	17795
17796	894	17796
17797	894	17797
17798	894	17798
17799	894	17799
17800	894	17800
17801	894	17801
17802	895	17802
17803	895	17803
17804	895	17804
17805	895	17805
17806	895	17806
17807	895	17807
17808	895	17808
17809	896	17809
17810	896	17810
17811	897	17811
17812	897	17812
17813	897	17813
17814	897	17814
17815	897	17815
17816	897	17816
17817	897	17817
17818	897	17818
17819	897	17819
17820	897	17820
17821	897	17821
17822	897	17822
17823	897	17823
17824	897	17824
17825	897	17825
17826	897	17826
17827	898	17827
17828	898	17828
17829	898	17829
17830	898	17830
17831	898	17831
17832	898	17832
17833	898	17833
17834	898	17834
17835	898	17835
17836	898	17836
17837	898	17837
17838	898	17838
17839	898	17839
17840	898	17840
17841	898	17841
17842	898	17842
17843	898	17843
17844	898	17844
17845	898	17845
17846	898	17846
17847	898	17847
17848	898	17848
17849	899	17849
17850	899	17850
17851	899	17851
17852	899	17852
17853	899	17853
17854	899	17854
17855	899	17855
17856	899	17856
17857	899	17857
17858	899	17858
17859	899	17859
17860	899	17860
17861	899	17861
17862	899	17862
17863	899	17863
17864	899	17864
17865	899	17865
17866	899	17866
17867	899	17867
17868	899	17868
17869	899	17869
17870	899	17870
17871	899	17871
17872	899	17872
17873	899	17873
17874	899	17874
17875	899	17875
17876	899	17876
17877	899	17877
17878	899	17878
17879	899	17879
17880	899	17880
17881	899	17881
17882	899	17882
17883	899	17883
17884	899	17884
17885	899	17885
17886	899	17886
17887	899	17887
17888	899	17888
17889	899	17889
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: csfd
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: csfd
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: csfd
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 24, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: csfd
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: csfd
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: csfd
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: csfd
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 6, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: csfd
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 15, true);


--
-- Name: top_favourites_actor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: csfd
--

SELECT pg_catalog.setval('public.top_favourites_actor_id_seq', 17889, true);


--
-- Name: top_favourites_film_actors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: csfd
--

SELECT pg_catalog.setval('public.top_favourites_film_actors_id_seq', 17889, true);


--
-- Name: top_favourites_film_id_seq; Type: SEQUENCE SET; Schema: public; Owner: csfd
--

SELECT pg_catalog.setval('public.top_favourites_film_id_seq', 899, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: top_favourites_actor top_favourites_actor_external_id_key; Type: CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.top_favourites_actor
    ADD CONSTRAINT top_favourites_actor_external_id_key UNIQUE (external_id);


--
-- Name: top_favourites_actor top_favourites_actor_pkey; Type: CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.top_favourites_actor
    ADD CONSTRAINT top_favourites_actor_pkey PRIMARY KEY (id);


--
-- Name: top_favourites_film_actors top_favourites_film_actors_film_id_actor_id_a21f5c3d_uniq; Type: CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.top_favourites_film_actors
    ADD CONSTRAINT top_favourites_film_actors_film_id_actor_id_a21f5c3d_uniq UNIQUE (film_id, actor_id);


--
-- Name: top_favourites_film_actors top_favourites_film_actors_pkey; Type: CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.top_favourites_film_actors
    ADD CONSTRAINT top_favourites_film_actors_pkey PRIMARY KEY (id);


--
-- Name: top_favourites_film top_favourites_film_external_id_key; Type: CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.top_favourites_film
    ADD CONSTRAINT top_favourites_film_external_id_key UNIQUE (external_id);


--
-- Name: top_favourites_film top_favourites_film_pkey; Type: CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.top_favourites_film
    ADD CONSTRAINT top_favourites_film_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: csfd
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: csfd
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: csfd
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: csfd
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: csfd
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: csfd
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: csfd
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: csfd
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: csfd
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: top_favourites_actor_name_5da05ef2; Type: INDEX; Schema: public; Owner: csfd
--

CREATE INDEX top_favourites_actor_name_5da05ef2 ON public.top_favourites_actor USING btree (name);


--
-- Name: top_favourites_actor_name_5da05ef2_like; Type: INDEX; Schema: public; Owner: csfd
--

CREATE INDEX top_favourites_actor_name_5da05ef2_like ON public.top_favourites_actor USING btree (name varchar_pattern_ops);


--
-- Name: top_favourites_film_actors_actor_id_59b11d4a; Type: INDEX; Schema: public; Owner: csfd
--

CREATE INDEX top_favourites_film_actors_actor_id_59b11d4a ON public.top_favourites_film_actors USING btree (actor_id);


--
-- Name: top_favourites_film_actors_film_id_74910d8d; Type: INDEX; Schema: public; Owner: csfd
--

CREATE INDEX top_favourites_film_actors_film_id_74910d8d ON public.top_favourites_film_actors USING btree (film_id);


--
-- Name: top_favourites_film_name_d8be78b0; Type: INDEX; Schema: public; Owner: csfd
--

CREATE INDEX top_favourites_film_name_d8be78b0 ON public.top_favourites_film USING btree (name);


--
-- Name: top_favourites_film_name_d8be78b0_like; Type: INDEX; Schema: public; Owner: csfd
--

CREATE INDEX top_favourites_film_name_d8be78b0_like ON public.top_favourites_film USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: top_favourites_film_actors top_favourites_film__actor_id_59b11d4a_fk_top_favou; Type: FK CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.top_favourites_film_actors
    ADD CONSTRAINT top_favourites_film__actor_id_59b11d4a_fk_top_favou FOREIGN KEY (actor_id) REFERENCES public.top_favourites_actor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: top_favourites_film_actors top_favourites_film__film_id_74910d8d_fk_top_favou; Type: FK CONSTRAINT; Schema: public; Owner: csfd
--

ALTER TABLE ONLY public.top_favourites_film_actors
    ADD CONSTRAINT top_favourites_film__film_id_74910d8d_fk_top_favou FOREIGN KEY (film_id) REFERENCES public.top_favourites_film(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

