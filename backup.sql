--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2
-- Dumped by pg_dump version 11.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


--
-- Name: skill_learn_question; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.skill_learn_question (
    id integer NOT NULL,
    question text,
    option1 text,
    option2 text,
    option3 text,
    option4 text,
    correct text,
    original_text_id integer,
    summary_text_id integer,
    rating double precision NOT NULL
);


--
-- Name: skill_learn_question_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.skill_learn_question_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: skill_learn_question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.skill_learn_question_id_seq OWNED BY public.skill_learn_question.id;


--
-- Name: skill_learn_student; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.skill_learn_student (
    id integer NOT NULL,
    username character varying(100) NOT NULL
);


--
-- Name: skill_learn_student_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.skill_learn_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: skill_learn_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.skill_learn_student_id_seq OWNED BY public.skill_learn_student.id;


--
-- Name: skill_learn_text; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.skill_learn_text (
    id integer NOT NULL,
    text text,
    topic_id integer NOT NULL,
    identifier character varying(200),
    rating double precision NOT NULL
);


--
-- Name: skill_learn_text_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.skill_learn_text_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: skill_learn_text_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.skill_learn_text_id_seq OWNED BY public.skill_learn_text.id;


--
-- Name: skill_learn_topic; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.skill_learn_topic (
    id integer NOT NULL,
    name text,
    rating double precision NOT NULL
);


--
-- Name: skill_learn_topic_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.skill_learn_topic_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: skill_learn_topic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.skill_learn_topic_id_seq OWNED BY public.skill_learn_topic.id;


--
-- Name: skill_learn_userrating; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.skill_learn_userrating (
    id integer NOT NULL,
    rating double precision,
    student_id integer NOT NULL,
    topic_id integer NOT NULL
);


--
-- Name: skill_learn_userratings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.skill_learn_userratings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: skill_learn_userratings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.skill_learn_userratings_id_seq OWNED BY public.skill_learn_userrating.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: skill_learn_question id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.skill_learn_question ALTER COLUMN id SET DEFAULT nextval('public.skill_learn_question_id_seq'::regclass);


--
-- Name: skill_learn_student id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.skill_learn_student ALTER COLUMN id SET DEFAULT nextval('public.skill_learn_student_id_seq'::regclass);


--
-- Name: skill_learn_text id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.skill_learn_text ALTER COLUMN id SET DEFAULT nextval('public.skill_learn_text_id_seq'::regclass);


--
-- Name: skill_learn_topic id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.skill_learn_topic ALTER COLUMN id SET DEFAULT nextval('public.skill_learn_topic_id_seq'::regclass);


--
-- Name: skill_learn_userrating id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.skill_learn_userrating ALTER COLUMN id SET DEFAULT nextval('public.skill_learn_userratings_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add topic	7	add_topic
26	Can change topic	7	change_topic
27	Can delete topic	7	delete_topic
28	Can view topic	7	view_topic
29	Can add question	8	add_question
30	Can change question	8	change_question
31	Can delete question	8	delete_question
32	Can view question	8	view_question
33	Can add user ratings	9	add_userratings
34	Can change user ratings	9	change_userratings
35	Can delete user ratings	9	delete_userratings
36	Can view user ratings	9	view_userratings
37	Can add student	10	add_student
38	Can change student	10	change_student
39	Can delete student	10	delete_student
40	Can view student	10	view_student
41	Can add text	11	add_text
42	Can change text	11	change_text
43	Can delete text	11	delete_text
44	Can view text	11	view_text
45	Can add user rating	9	add_userrating
46	Can change user rating	9	change_userrating
47	Can delete user rating	9	delete_userrating
48	Can view user rating	9	view_userrating
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$150000$m5ZP18yfhNGN$IRCdZwJ+NWswmw0pqdAeWir9iskaLHUaV5T2tl9c40s=	2019-06-15 18:02:34.290416+05:30	t	atharva				t	t	2019-06-15 10:48:38.301728+05:30
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-06-15 11:37:29.493117+05:30	1	Topic object (1)	1	[{"added": {}}]	7	1
2	2019-06-15 11:40:57.790872+05:30	1	The Human Body	2	[{"changed": {"fields": ["name"]}}]	7	1
3	2019-06-15 11:45:09.091157+05:30	2	The Human Body: original_tissue	1	[{"added": {}}]	11	1
4	2019-06-15 11:45:46.353219+05:30	3	The Human Body: summary_tissue	1	[{"added": {}}]	11	1
5	2019-06-15 11:49:12.99842+05:30	1	Which of the following is not a type of tissue ?	1	[{"added": {}}]	8	1
6	2019-06-15 11:51:08.297086+05:30	4	The Human Body: summary_cell	1	[{"added": {}}]	11	1
7	2019-06-15 11:52:41.076987+05:30	5	The Human Body: original_cell	1	[{"added": {}}]	11	1
8	2019-06-15 11:55:21.224472+05:30	6	The Human Body: summary_tissue_types	1	[{"added": {}}]	11	1
9	2019-06-15 11:56:11.197976+05:30	7	The Human Body: original_tissue_types	1	[{"added": {}}]	11	1
10	2019-06-15 11:59:33.956439+05:30	2	The smallest unit of the body is called___________.	1	[{"added": {}}]	8	1
11	2019-06-15 12:01:55.884154+05:30	3	_____ tissue is responsible for body movements.	1	[{"added": {}}]	8	1
12	2019-06-15 12:09:30.339825+05:30	8	The Human Body: summary_nucleus	1	[{"added": {}}]	11	1
13	2019-06-15 12:10:25.97376+05:30	9	The Human Body: original_nucleus	1	[{"added": {}}]	11	1
14	2019-06-15 12:11:30.355807+05:30	4	The _____ is the master control of the cell.	1	[{"added": {}}]	8	1
15	2019-06-15 12:12:35.272326+05:30	10	The Human Body: original_tears	1	[{"added": {}}]	11	1
16	2019-06-15 12:14:24.436488+05:30	11	The Human Body: summary_tears	1	[{"added": {}}]	11	1
17	2019-06-15 12:15:35.299109+05:30	5	_____ are useful for keeping eyes clean and moist.	1	[{"added": {}}]	8	1
18	2019-06-15 12:17:53.950418+05:30	12	The Human Body: summary_cellmembrane	1	[{"added": {}}]	11	1
19	2019-06-15 12:18:26.511228+05:30	13	The Human Body: original_cellmembrane	1	[{"added": {}}]	11	1
20	2019-06-15 12:19:25.314346+05:30	6	_____ is the outer boundary of the cell.	1	[{"added": {}}]	8	1
21	2019-06-15 12:24:20.334864+05:30	14	The Human Body: summary_norgans	1	[{"added": {}}]	11	1
22	2019-06-15 12:25:01.375321+05:30	15	The Human Body: original_norgans	1	[{"added": {}}]	11	1
23	2019-06-15 12:25:51.527488+05:30	7	There are almost _____ organs in a human body.	1	[{"added": {}}]	8	1
24	2019-06-15 12:27:17.765183+05:30	16	The Human Body: summary_liver	1	[{"added": {}}]	11	1
25	2019-06-15 12:28:25.976688+05:30	17	The Human Body: original_liver	1	[{"added": {}}]	11	1
26	2019-06-15 12:29:43.794172+05:30	8	Liver secretes the juice into the -------------	1	[{"added": {}}]	8	1
27	2019-06-15 12:31:10.422939+05:30	18	The Human Body: summary_liverp	1	[{"added": {}}]	11	1
28	2019-06-15 12:32:43.513731+05:30	19	The Human Body: original_liverp	1	[{"added": {}}]	11	1
29	2019-06-15 12:34:03.496728+05:30	9	Liver is the part of?	1	[{"added": {}}]	8	1
30	2019-06-15 12:35:09.834125+05:30	20	The Human Body: original_brainstem	1	[{"added": {}}]	11	1
31	2019-06-15 12:36:36.920448+05:30	7	There are almost _____ organs in a human body.	2	[{"changed": {"fields": ["option3"]}}]	8	1
32	2019-06-15 12:38:10.884928+05:30	21	The Human Body: summary_brainstem	1	[{"added": {}}]	11	1
33	2019-06-15 12:39:22.771758+05:30	10	_____ connects the rest of the brain to the spinal cord.	1	[{"added": {}}]	8	1
34	2019-06-15 12:40:59.435111+05:30	22	The Human Body: summary_spinal	1	[{"added": {}}]	11	1
35	2019-06-15 12:41:33.434274+05:30	23	The Human Body: original_spinal	1	[{"added": {}}]	11	1
36	2019-06-15 12:43:33.041017+05:30	11	Spinal cord is a part of?	1	[{"added": {}}]	8	1
37	2019-06-15 12:54:08.95034+05:30	24	The Human Body: summary_sensory	1	[{"added": {}}]	11	1
38	2019-06-15 12:55:04.451487+05:30	25	The Human Body: original_sensory	1	[{"added": {}}]	11	1
39	2019-06-15 12:56:16.342911+05:30	12	_____ nerves bring message from the sense organs to the brain.	1	[{"added": {}}]	8	1
40	2019-06-15 12:57:55.57602+05:30	26	The Human Body: summary_skeletel	1	[{"added": {}}]	11	1
41	2019-06-15 13:02:02.04485+05:30	27	The Human Body: original_skeletal	1	[{"added": {}}]	11	1
42	2019-06-15 13:04:12.094899+05:30	13	Which of the following is not a property of skeletal muscles?	1	[{"added": {}}]	8	1
43	2019-06-15 14:11:27.853509+05:30	28	The Human Body: summary_heart	1	[{"added": {}}]	11	1
44	2019-06-15 14:15:31.249877+05:30	29	The Human Body: original_heart	1	[{"added": {}}]	11	1
45	2019-06-15 14:16:28.33485+05:30	14	The function of the _____ is to pump blood throughout the body.	1	[{"added": {}}]	8	1
46	2019-06-15 14:18:16.896683+05:30	30	The Human Body: summary_ribs	1	[{"added": {}}]	11	1
47	2019-06-15 14:19:08.337781+05:30	31	The Human Body: original_ribs	1	[{"added": {}}]	11	1
48	2019-06-15 14:20:14.178811+05:30	15	_____ forms a protective cage around the heart.	1	[{"added": {}}]	8	1
49	2019-06-15 14:35:18.870746+05:30	1	Which of the following is not a type of tissue ?	2	[{"changed": {"fields": ["rating"]}}]	8	1
50	2019-06-15 14:35:43.03377+05:30	2	The smallest unit of the body is called___________.	2	[{"changed": {"fields": ["rating"]}}]	8	1
51	2019-06-15 14:35:54.690338+05:30	3	_____ tissue is responsible for body movements.	2	[{"changed": {"fields": ["rating"]}}]	8	1
52	2019-06-15 14:36:20.50003+05:30	4	The _____ is the master control of the cell.	2	[{"changed": {"fields": ["rating"]}}]	8	1
53	2019-06-15 14:36:49.979953+05:30	5	_____ are useful for keeping eyes clean and moist.	2	[{"changed": {"fields": ["rating"]}}]	8	1
54	2019-06-15 14:37:00.631998+05:30	6	_____ is the outer boundary of the cell.	2	[{"changed": {"fields": ["rating"]}}]	8	1
55	2019-06-15 14:37:27.470908+05:30	7	There are almost _____ organs in a human body.	2	[{"changed": {"fields": ["rating"]}}]	8	1
56	2019-06-15 14:37:57.155127+05:30	8	Liver secretes the juice into the ___________	2	[{"changed": {"fields": ["question", "rating"]}}]	8	1
57	2019-06-15 14:42:46.12956+05:30	9	Liver is the part of?	2	[{"changed": {"fields": ["rating"]}}]	8	1
58	2019-06-15 14:42:58.853942+05:30	10	_____ connects the rest of the brain to the spinal cord.	2	[{"changed": {"fields": ["rating"]}}]	8	1
59	2019-06-15 14:43:08.247722+05:30	13	Which of the following is not a property of skeletal muscles?	2	[{"changed": {"fields": ["rating"]}}]	8	1
60	2019-06-15 14:43:20.803705+05:30	14	The function of the _____ is to pump blood throughout the body.	2	[{"changed": {"fields": ["rating"]}}]	8	1
61	2019-06-15 14:43:34.88111+05:30	15	_____ forms a protective cage around the heart.	2	[{"changed": {"fields": ["rating"]}}]	8	1
62	2019-06-15 16:34:20.864974+05:30	7	The Human Body: original_tissue_types	3		11	1
63	2019-06-15 16:34:20.868602+05:30	6	The Human Body: summary_tissue_types	3		11	1
64	2019-06-15 16:37:52.844246+05:30	32	The Human Body: original_veins	1	[{"added": {}}]	11	1
65	2019-06-15 16:40:10.662319+05:30	33	The Human Body: original_heart2	1	[{"added": {}}]	11	1
66	2019-06-15 16:41:40.585016+05:30	34	The Human Body: original_digestion	1	[{"added": {}}]	11	1
67	2019-06-15 16:43:04.352042+05:30	35	The Human Body: original_digestion	1	[{"added": {}}]	11	1
68	2019-06-15 16:43:27.910423+05:30	34	The Human Body: original_digestion2	2	[{"changed": {"fields": ["identifier"]}}]	11	1
69	2019-06-15 18:27:41.977685+05:30	36	The Human Body: auto_summary_tissue	3		11	1
70	2019-06-15 19:11:40.665258+05:30	1	student0(The Human Body): 5.0	2	[{"changed": {"fields": ["rating"]}}]	9	1
71	2019-06-15 19:12:16.187306+05:30	12	_____ nerves bring message from the sense organs to the brain.	2	[{"changed": {"fields": ["rating"]}}]	8	1
72	2019-06-15 19:12:25.923046+05:30	11	Spinal cord is a part of?	2	[{"changed": {"fields": ["rating"]}}]	8	1
73	2019-06-15 19:12:47.524997+05:30	7	There are almost _____ organs in a human body.	2	[{"changed": {"fields": ["rating"]}}]	8	1
74	2019-06-15 19:12:55.905134+05:30	6	_____ is the outer boundary of the cell.	2	[{"changed": {"fields": ["rating"]}}]	8	1
75	2019-06-15 19:34:15.870698+05:30	1	student0(The Human Body): 5.0	2	[{"changed": {"fields": ["rating"]}}]	9	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	skill_learn	topic
8	skill_learn	question
10	skill_learn	student
11	skill_learn	text
9	skill_learn	userrating
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-06-15 10:47:21.427318+05:30
2	auth	0001_initial	2019-06-15 10:47:21.469911+05:30
3	admin	0001_initial	2019-06-15 10:47:21.518767+05:30
4	admin	0002_logentry_remove_auto_add	2019-06-15 10:47:21.537296+05:30
5	admin	0003_logentry_add_action_flag_choices	2019-06-15 10:47:21.547874+05:30
6	contenttypes	0002_remove_content_type_name	2019-06-15 10:47:21.572209+05:30
7	auth	0002_alter_permission_name_max_length	2019-06-15 10:47:21.578186+05:30
8	auth	0003_alter_user_email_max_length	2019-06-15 10:47:21.590681+05:30
9	auth	0004_alter_user_username_opts	2019-06-15 10:47:21.600434+05:30
10	auth	0005_alter_user_last_login_null	2019-06-15 10:47:21.610719+05:30
11	auth	0006_require_contenttypes_0002	2019-06-15 10:47:21.613157+05:30
12	auth	0007_alter_validators_add_error_messages	2019-06-15 10:47:21.621992+05:30
13	auth	0008_alter_user_username_max_length	2019-06-15 10:47:21.635891+05:30
14	auth	0009_alter_user_last_name_max_length	2019-06-15 10:47:21.646605+05:30
15	auth	0010_alter_group_name_max_length	2019-06-15 10:47:21.657967+05:30
16	auth	0011_update_proxy_permissions	2019-06-15 10:47:21.669213+05:30
17	sessions	0001_initial	2019-06-15 10:47:21.676785+05:30
18	skill_learn	0001_initial	2019-06-15 11:25:38.528833+05:30
19	skill_learn	0002_text_identifier	2019-06-15 11:31:49.343051+05:30
20	skill_learn	0003_auto_20190615_0605	2019-06-15 11:35:31.895844+05:30
21	skill_learn	0004_text_rating	2019-06-15 17:35:30.491089+05:30
22	skill_learn	0005_auto_20190615_1329	2019-06-15 18:59:12.82677+05:30
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
67quoy7glcznrakq67ubnhqg9u56ogbu	NjhjOTY1MGFkYTk0MWI4NzViYTZjODk5ZjJjNDA2MWQyM2Y4MjIzYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YTg0OTc4OTY2YTY4ZjFlNjQ2NDFmY2QyY2Q3YjUxNDAzNzNjZjY1In0=	2019-06-29 10:53:37.373653+05:30
a8jc6yrrchsx5rwawy4p5rv64g8h78el	NjhjOTY1MGFkYTk0MWI4NzViYTZjODk5ZjJjNDA2MWQyM2Y4MjIzYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YTg0OTc4OTY2YTY4ZjFlNjQ2NDFmY2QyY2Q3YjUxNDAzNzNjZjY1In0=	2019-06-29 10:59:16.374098+05:30
h0bb7gg4ed6scykf0l5kn5xqle2difaf	NjhjOTY1MGFkYTk0MWI4NzViYTZjODk5ZjJjNDA2MWQyM2Y4MjIzYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YTg0OTc4OTY2YTY4ZjFlNjQ2NDFmY2QyY2Q3YjUxNDAzNzNjZjY1In0=	2019-06-29 14:08:19.584153+05:30
a90oo20pz0fmlkp06hv12uxg7k2vvqvh	NjhjOTY1MGFkYTk0MWI4NzViYTZjODk5ZjJjNDA2MWQyM2Y4MjIzYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YTg0OTc4OTY2YTY4ZjFlNjQ2NDFmY2QyY2Q3YjUxNDAzNzNjZjY1In0=	2019-06-29 18:02:34.29296+05:30
\.


--
-- Data for Name: skill_learn_question; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.skill_learn_question (id, question, option1, option2, option3, option4, correct, original_text_id, summary_text_id, rating) FROM stdin;
5	_____ are useful for keeping eyes clean and moist.	Tears	Eyebrows	Eyelids	Eyelashes	option1	10	11	3.10219568054186867
9	Liver is the part of?	Nervous system	Digestive system	Muscular system	External system	option2	19	18	1.89512174595973382
10	_____ connects the rest of the brain to the spinal cord.	Brain stem	Cerebrum	Cerebellum	Tissue	option1	20	21	1.89211571950666158
12	_____ nerves bring message from the sense organs to the brain.	Mixed	Sensory	Motor	Interneurons	option2	25	24	0.877853683787560457
4	The _____ is the master control of the cell.	tissue	nucleus	cell membrane	muscle	option2	9	8	3.79164184197046428
14	The function of the _____ is to pump blood throughout the body.	lungs	heart	brain	muscle	option2	29	28	3.78081905981021604
7	There are almost _____ organs in a human body.	150	90	78	75	option3	15	14	3.7147289421080707
1	Which of the following is not a type of tissue ?	Epithelial tissue	connective tissue	muscular tissue	face tissue	option4	2	3	8.83913892286092562
11	Spinal cord is a part of?	Nervous system	Digestive system	Muscular system	External system	option1	23	22	1
15	_____ forms a protective cage around the heart.	Tissues	Ribs	Muscles	cells	option2	31	30	6.5011912146842068
2	The smallest unit of the body is called___________.	tissue	cell	organ	muscle	option2	5	4	5.70189678358484819
13	Which of the following is not a property of skeletal muscles?	voluntary muscle cells	cover our skeleton	move our body	give structure to our body	option4	27	26	7.72546154834047005
6	_____ is the outer boundary of the cell.	Nucleus	Cytoplasm	Cell membrane	Tissue	option3	13	12	5.94291918293200006
8	Liver secretes the juice into the ___________	small intestine	large intestine	stomach	pancreas	option1	17	16	5.77328735238415369
\.


--
-- Data for Name: skill_learn_student; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.skill_learn_student (id, username) FROM stdin;
1	student0
\.


--
-- Data for Name: skill_learn_text; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.skill_learn_text (id, text, topic_id, identifier, rating) FROM stdin;
2	Tissues are groups of cells with a common structure (form) and function (job).\r\nThere are four main tissues in the body – epithelium, muscle, connective tissue and nervous tissue.\r\nI. EPITHELIUM\r\nFunctions (jobs):\r\n1) It protects us from the outside world – skin.\r\n2) Absorbs – stomach and intestinal lining (gut)\r\n3) Filters – the kidney\r\n4) Secretes – forms glands\r\nCharacteristics (Traits):\r\n1) Closely attached to each other forming a protective barrier.\r\n2) Always has one free (apical) surface open to outside the body or inside (cavity) an internal organ.\r\n3) Always had one fixed (basal) section attached to underlying connective tissue.\r\n4) Has no blood vessels but can soak up nutrients from blood vessels in connective tissue underneath.\r\n5) Can have lots of nerves in it (innervated).\r\n6) Very good at regenerating (fixing itself). i.e. sunburn, skinned knee.\r\nClassifications (types):\r\n1) By shape\r\na) squamous - flat and scale-like\r\nb) cuboidal - as tall as they are wide\r\nc) columnar - tall, column-shaped\r\n2) By cell arrangement\r\na) simple epithelium - single layer of cells (usually for absorption and filtration)\r\nb) stratified epithelium - stacked up call layers (protection from abrasion (rubbing) - mouth, skin.)\r\nII. CONNECTIVE TISSUE\r\nFunctions (jobs):\r\n1) Wraps around and cushions and protects organs\r\n2) Stores nutrients\r\n3) Internal support for organs\r\n4) As tendon and ligaments protects joints and attached muscles to bone and each other\r\n5) Runs through organ capsules and in deep layers of skin giving strength\r\nThe 3 Elements of Connective Tissue:\r\n1) Ground substance – gel around cells and fibers\r\n2) Fibers – provide strength, elasticity and support\r\n3) Cells\r\n2 Kinds of Connective Tissue:\r\n1) Loose Connective Tissue:\r\na) Areolar Connective Tissue – cushion around organs, loose arrangement of cells and fibers.\r\nb) Adipose Tissue – storehouse for nutrients, packed with cells and blood vessels\r\nc) Reticular Connective Tissue – internal supporting framework of some organs, delicate network of fibers and cells\r\n2) Dense Connective Tissue:\r\na) Dense Regular Connective Tissue – tendons and ligaments, regularly arranged bundles packed with fibers running same way for strength in one direction.\r\nb) Dense Irregular Connective Tissue – skin, organ capsules, irregularly arranged bundles packed with fibers for strength in all directions.	1	original_tissue	0
3	A tissue is a group cells that have a similar shape and function.	1	summary_tissue	0
4	A cell is the smallest independently functioning unit of a living organism. Even bacteria, which are extremely small, independently-living organisms, have a cellular structure. Each bacterium is a single cell. All living structures of human anatomy contain cells, and almost all functions of human physiology are performed in cells or are initiated by cells.	1	summary_cell	0
5	All living things are composed of cells. The smallest living organisms — the bacteria — are composed of a single cell. The largest cells are chicken egg yolks.\r\nShow the diagram. The cells walls are called “membrane”.\r\nCells are the smallest units in the human body and cannot be seen without a\r\nmicroscope. Cells that perform the same job gather themselves into shapes that\r\nmake “tissue” like the skin, muscles, bones and organs such as the liver, lungs\r\nand kidneys.\r\nTissues are groups of like cells that perform the same function, for example,\r\nmuscle tissue or bone tissue.\r\nOrgans are tissues that group to perform a specific function, like the heart or\r\nthe liver.\r\nThe teacher tells students that the human body consists of many cells.\r\n1. Cells are of different shapes and sizes.\r\n2. The body makes over a billion new cells every minute.\r\n3. Some cells are muscle cells, some are bone cells, and others blood cells, skin\r\ncells or nerve cells.\r\n4. Each cell can make new cells by separating itself into two new cells; we say\r\nthat cells divide.\r\n5. Cells help humans grow.\r\n6. Cells help humans heal injured body parts by making new cells.\r\n7. Blood cells take food and oxygen to all the other body cells to help the cells\r\ndevelop and reproduce or help make new cells.\r\n8. There are special cells the body needs to reproduce itself.\r\n9. Inside the cell membrane is a substance called “cytoplasm”.\r\n10. Inside the cell, along with the cytoplasm, is the nucleus, which is the central\r\npart that controls the actions of the cell. The nucleus grows and then separates into two parts to form two new cells.	1	original_cell	0
8	The cell nucleus is the site of many important biological functions of the eukaryotic cell. These processes include transcription, replication, splicing and ribosome biogenesis. The effect of these processes extends to affecting cellular metabolism and growth. The nucleus contains approximately 2m of DNA which is enmeshed by the nuclear envelope, a crosslinked network of proteins and membranes.	1	summary_nucleus	0
9	The cell nucleus is the site of many important biological functions of the eukaryotic cell. These processes include transcription, replication, splicing and ribosome biogenesis. The effect of these processes extends to affecting cellular metabolism and growth. The nucleus contains approximately 2m of DNA which is enmeshed by the nuclear envelope, a crosslinked network of proteins and membranes.\r\n\r\nThe nucleus is mechanically stable, possessing the ability to resist deformation. Additionally, the nucleus dynamically interacts with the surrounding cytoskeleton. The mechanical support and functional organization of the nucleus is contributed by several nuclear subcompartments, or nuclear bodies. These facilitate the various nuclear processes, particularly gene expression.  \r\n\r\nThe cell nucleus contains all of the cell's genome, except for a small fraction of mitochondrial DNA, organized as multiple long linear DNA molecules in a complex with a large variety of proteins, such as histones, to form chromosomes. The genes within these chromosomes are structured in such a way to promote cell function. The nucleus maintains the integrity of genes and controls the activities of the cell by regulating gene expression—the nucleus is, therefore, the control center of the cell. The main structures making up the nucleus are the nuclear envelope, a double membrane that encloses the entire organelle and isolates its contents from the cellular cytoplasm, and the nuclear matrix (which includes the nuclear lamina), a network within the nucleus that adds mechanical support, much like the cytoskeleton, which supports the cell as a whole.	1	original_nucleus	0
10	After blinking, a film of tear fluid coats the surface of the eye at a certain thickness, and is maintained for a while. This is called tear stability. Tears not only keep the eye moist but also have an important role in maintaining the healthy functioning of the eye.\r\n\r\nPreventing dryness\r\nTears prevent dryness by coating the surface of the eye, as well as protecting it from external irritants.\r\nSupplying oxygen and nutrients to the eyes\r\nThere are no blood vessels on the surface of the eye, so oxygen and nutrients are transported to the surface cells by tears.\r\nPreventing infection\r\nForeign bodies that enter the eye are washed out by tears. Moreover, tears contain a substance called lysozyme, which has an antibacterial action, and works to prevent invasion and infection by microbes.\r\nHealing damage to the surface of the eye\r\nTears contain components that heal damage to the surface of the eye.\r\nCreating a smooth surface on the eye\r\nTears lubricate and smooth the surfaces of our eyes so that light is refracted correctly, enabling us to see clearly.	1	original_tears	0
11	a body fluid which often serves to clean and lubricate the eyes in response to irritation of the eyes.[1] Tears formed through crying are associated with strong internal emotions. This includes sorrow, elation, love, awe, and pleasure.[2] Laughing or yawning can also cause tear production.	1	summary_tears	0
12	Membrane, in biology, the thin layer that forms the outer boundary of a living cell or of an internal cell compartment. The outer boundary is the plasma membrane, and the compartments enclosed by internal membranes are called organelles. Biological membranes have three primary functions: (1) they keep toxic substances out of the cell; (2) they contain receptors and channels that allow specific molecules, such as ions, nutrients, wastes, and metabolic products, that mediate cellular and extracellular activities to pass between organelles and between the cell and the outside environment; and (3) they separate vital but incompatible metabolic processes conducted within organelles.	1	summary_cellmembrane	0
13	Membranes consist largely of a lipid bilayer, which is a double layer of phospholipid, cholesterol, and glycolipid molecules that contains chains of fatty acids and determines whether a membrane is formed into long flat sheets or round vesicles. Lipids give cell membranes a fluid character, with a consistency approaching that of a light oil. The fatty-acid chains allow many small, fat-soluble molecules, such as oxygen, to permeate the membrane, but they repel large, water-soluble molecules, such as sugar, and electrically charged ions, such as calcium.\r\n\r\nEmbedded in the lipid bilayer are large proteins, many of which transport ions and water-soluble molecules across the membrane. Some proteins in the plasma membrane form open pores, called membrane channels, which allow the free diffusion of ions into and out of the cell. Others bind to specific molecules on one side of a membrane and transport the molecules to the other side. Sometimes one protein simultaneously transports two types of molecules in opposite directions. Most plasma membranes are about 50 percent protein by weight, while the membranes of some metabolically active organelles are 75 percent protein. Attached to proteins on the outside of the plasma membrane are long carbohydrate molecules.	1	original_cellmembrane	0
14	There are 78 organs in a human body which vary according to their sizes, functions or actions . \r\n\r\nRegional groups are:\r\n\r\nHead and neck – includes everything above the thoracic inlet.\r\nUpper limb – includes the hand, wrist, forearm, elbow, arm, and shoulder.\r\nThorax – the region of the chest from the thoracic inlet to the thoracic diaphragm.\r\nHuman abdomen to the pelvic brim or to the pelvic inlet.\r\nThe back – the spine and its components, the vertebrae, sacrum, coccyx, and intervertebral disks.\r\nPelvis and Perineum – the pelvis consists of everything from the pelvic inlet to the pelvic diaphragm. The perineum is the region between the sex organs and the anus.\r\nLower limb – everything below the inguinal ligament, including the hip, the thigh, the knee, the leg, the ankle, and the foot.	1	summary_norgans	0
15	Major organ systems\r\n\r\nCirculatory system\r\n\r\nPumping and channeling blood to and from the body and lungs with heart, blood, and blood vessels.\r\n\r\nDigestive System\r\n\r\nDigestion and processing food with salivary glands, esophagus, stomach, liver, gallbladder, pancreas, intestines, rectum, and anus.\r\n\r\nEndocannabinoid system\r\n\r\nNeuromodulatory lipids and receptors involved in a variety of physiological processes including appetite, pain-sensation, mood, motor learning, synaptic plasticity, andmemory.\r\n\r\nEndocrine system\r\n\r\nCommunication within the body using hormones made by endocrine glands such as the hypothalamus, pituitary or pituitary gland, pineal body or pineal gland, thyroid,parathyroids, and adrenals or adrenal glands.\r\n\r\nIntegumentary system\r\n\r\nskin, hair and nails\r\n\r\nImmune system\r\n\r\nThe system that fights off disease; composed of leukocytes, tonsils, adenoids, thymus, and spleen.\r\n\r\nLymphatic system\r\n\r\nStructures involved in the transfer of lymph between tissues and the blood stream, the lymph and the nodes and vessels that transport it.\r\n\r\nMusculoskeletal system\r\n\r\nMuscles provide movement and a skeleton provides structural support and protection with bones, cartilage, ligaments, and tendons.\r\n\r\nNervous system\r\n\r\nCollecting, transferring and processing information with brain, spinal cord, peripheral nerves, and nerves.\r\n\r\nReproductive system\r\n\r\nThe sex organs; in the female; ovaries, fallopian tubes, uterus, vagina, mammary glands, and in the male; testes, vas deferens, seminal vesicles, prostate, and penis.\r\n\r\nRespiratory system\r\n\r\nThe organs used for breathing, the pharynx, larynx, trachea, bronchi, lungs, and diaphragm.\r\n\r\nUrinary system\r\n\r\nkidneys, ureters, bladder and urethra involved in fluid balance, electrolyte balance and excretion of urine.\r\n\r\nVestibular system\r\n\r\nContributes to our balance and our sense of spatial orientation.\r\n\r\nVital organs\r\n\r\nThe ten most vital organs are as follows:\r\n\r\nSkin\r\n\r\nThe skin is the largest organ in the human body. Its main job is to maintain the body's temperature, which means that sweat is created to cool the body, and goosebumps or raised hair occur to trap heat in the body. Along with sweat glands, the skin contains oil glands. The oil your skin releases helps to keep your skin from drying out and your hair from becoming brittle. The skin also regularly sheds cells to maintain its effectiveness. If you can imagine, there are about 19 million skin cells in every square inch of the human body!\r\n\r\nBrain\r\n\r\nThe brain is the controller of your body, and stores information, allows you to think and learn, as well as controls vital daily functions, like digestion, heart rate, and breathing. The brain receives impulses from your nerves, which are located throughout your body and respond to pain and other stimulation. Even though the brain is so important, it is also very delicate. The brain is made of soft tissue and is protected only by the skull, which is why head injuries can be so serious. The average adult brain weighs 3 pounds.\r\n\r\nHeart\r\n\r\nThe heart is another vital organ. The heart's job is to pump oxygenated blood throughout your body and receive deoxygenated blood back in return. Without your heart, your other organs would not receive oxygen or have carbon dioxide removed. In an average lifetime, the heart beats more than 2.5 million times!\r\n\r\nKidneys\r\n\r\nThe kidneys are located under the ribcage in your lower back. The job of the kidneys is to filter things like water and salts out of your blood and to produce urine. The kidneys also produce an enzyme called renin. This enzyme plays a big role in regulating your blood pressure. Did you know that a healthy person is able to live with only kidney?\r\n\r\nLiver\r\n\r\nThe liver is located in the upper abdomen, slightly more to the left side. The main job of the liver is to produce bile, which it sends to the stomach for digestion. The liver also filters out toxins and regulates blood sugar. Blood sugar is regulated because the liver converts sugars and stores them, releasing them when more sugar is needed in the blood. The liver is also in charge of releasing cholesterol, breaking down fats, and producing blood proteins. It is the largest internal organ!\r\n\r\nPancreas\r\n\r\nThe pancreas is located in the abdomen, behind the stomach. The job of the pancreas is to produce enzymes necessary for digestion and send them to the stomach. The pancreas also regulates blood sugar and does this through its process of creating insulin. The pancreas also creates glucagon which has the opposite effect of insulin and also helps to maintain blood sugar levels.\r\n\r\nStomach\r\n\r\nThe stomach receives food from the esophagus and sends it into the small intenstine. The stomach's role in digestion is to break down food and mix it with digestive juices or enzymes.\r\n\r\nSmall Intenstine\r\n\r\nThe job of the small intenstine is to digest food. It does this using chemicals, such as emzymes. The small intenstine also absorbs nutrients from the food through villi and gives these nutrients to your blood. The small intenstine is 5 meters long! The food moves from your small intenstine to your large intenstine with a series of muscle contractions.\r\n\r\nLarge Intestine\r\n\r\nThe large intenstine is located in your abdomen and is 1.5 meters in length! The large intenstine is involved in digestion, and receives undigested food from the small intenstine. The large intenstine then absorbs as much water as possible and then expels the waste and any excess fiber.\r\n\r\nLungs\r\n\r\nThe lungs are located in your chest and are protected by your rib cage. The lungs take in oxygen which goes into the blood through the heart, and expels carbon dioxide as the heart receives unoxygenated blood.	1	original_norgans	0
16	Liver\r\nThe liver produces a greenish juice called bile, which is stored and concentrated by the gall bladder. After a high-fat meal, such as one containing cheese, cream or bacon, the fats from the food tend to stick together to form large fat spheres. These are too big for the enzymes to work on, so the fat can be absorbed by the body. Bile acts like soap, breaking the bonds that hold these spheres together and turning them into tiny globules that are easily taken up by the body. Bile is not an enzyme but is is essential for the fat-digesting enzymes to work.	1	summary_liver	0
33	The heart is made of a special kind of muscle. The muscle cells in the heart are\r\nconnected so they contract and expand at exactly the same moment. This type of\r\nmuscle is not found anywhere else in the body.\r\nThe human heart has four chambers or compartments: the left and right atria and\r\nthe left and right ventricles.\r\nThe atria are smaller than the ventricles and their walls are thinner because they\r\ndon't have to work as hard—they only pump blood to the next compartment. The\r\nventricles, on the other hand, have to pump blood to the lungs and around the\r\nwhole body. The left ventricle is the strongest of the heart's chambers.\r\nEach atrium is separated from its ventricle by a valve. Take a moment to find those\r\ntwo valves on the diagram. The valves act like one-way doors. When you push from\r\none side, they open. If you push from the other side, they close.	1	original_heart2	0
17	The liver regulates most chemical levels in the blood and excretes a product called bile. Bile helps to break down fats, preparing them for further digestion and absorption. All of the blood leaving the stomach and intestines passes through the liver. The liver processes this blood and breaks down, balances, and creates nutrients for the body to use. It also metabolized drugs in the blood into forms that are easier for the body to use.  Many vital functions have been identified with the liver. Some of the more well-known functions include the following:\r\n\r\nProduction of bile, which helps carry away waste and break down fats in the small intestine during digestion\r\n\r\nProduction of certain proteins for blood plasma\r\n\r\nProduction of cholesterol and special proteins to help carry fats through the body\r\n\r\nStore and release glucose as needed\r\n\r\nProcessing of hemoglobin for use of its iron content (the liver stores iron)\r\n\r\nConversion of harmful ammonia to urea (urea is one of the end products of protein metabolism that is excreted in the urine)\r\n\r\nClearing the blood of drugs and other harmful substances\r\n\r\nRegulating blood clotting\r\n\r\nResisting infections by producing immune factors and removing bacteria from the bloodstream\r\n\r\nClearance of bilirubin (if there is a buildup of bilirubin, the skin and eyes turn yellow)\r\n\r\nWhen the liver has broken down harmful substances, they are excreted into the bile or blood. Bile by-products enter the intestine and ultimately leave the body in the feces. Blood by-products are filtered out by the kidneys and leave the body in the form of urine.	1	original_liver	0
18	The liver belongs to the digestive or the gastrointestinal system. The digestive system includes the stomach, small intestine, and large intestine. The liver is part of the associated organs of the digestive system, along with the pancreas, and gallbladder. These associated organs are responsible for the production of digestive enzymes, removal of toxins, and storing substances necessary for digestion.	1	summary_liverp	0
19	The digestive system is made up of the gastrointestinal tract—also called the GI tract or digestive tract—and the liver, pancreas, and gallbladder. The GI tract is a series of hollow organs joined in a long, twisting tube from the mouth to the anus. The hollow organs that make up the GI tract are the mouth, esophagus, stomach, small intestine, large intestine, and anus. The liver, pancreas, and gallbladder are the solid organs of the digestive system.\r\n\r\nThe small intestine has three parts. The first part is called the duodenum. The jejunum is in the middle and the ileum is at the end. The large intestine includes the appendix, cecum, colon, and rectum. The appendix is a finger-shaped pouch attached to the cecum. The cecum is the first part of the large intestine. The colon is next. The rectum is the end of the large intestine.\r\nBacteria in your GI tract, also called gut flora or microbiome, help with digestion. Parts of your nervous and circulatory  systems also help. Working together, nerves, hormones, bacteria, blood, and the organs of your digestive system digest the foods and liquids you eat or drink each day.	1	original_liverp	0
20	The brainstem (or brain stem) is the posterior part of the brain, continuous with the spinal cord. In the human brain the brainstem includes the midbrain, and the pons and medulla oblongata of the hindbrain. Sometimes the diencephalon, the caudal part of the forebrain, is included.[1]\r\n\r\nThe brainstem provides the main motor and sensory nerve supply to the face and neck via the cranial nerves. Of the thirteen pairs of cranial nerves, ten pairs (or twelve, if the diencephalon is included in the brainstem) come from the brainstem. The brainstem is an extremely important part of the brain as the nerve connections of the motor and sensory systems from the main part of the brain to the rest of the body pass through the brainstem. This includes the corticospinal tract (motor), the dorsal column-medial lemniscus pathway (fine touch, vibration sensation, and proprioception), and the spinothalamic tract (pain, temperature, itch, and crude touch).\r\n\r\nThe brainstem also plays an important role in the regulation of cardiac and respiratory function. It also regulates the central nervous system, and is pivotal in maintaining consciousness and regulating the sleep cycle. The brainstem has many basic functions including heart rate, breathing, sleeping, and eating.	1	original_brainstem	0
21	The brain stem connects the brain with the spinal cord. It controls hunger and thirst and some of the most basic body functions, such as body temperature, blood pressure, and breathing.	1	summary_brainstem	0
22	The spinal cord is a long, thin, tubular structure made up of nervous tissue, which extends from the medulla oblongata in the brainstem to the lumbar region of the vertebral column. It encloses the central canal of the spinal cord, which contains cerebrospinal fluid. The brain and spinal cord together make up the central nervous system (CNS).	1	summary_spinal	0
23	The spinal cord is a long, thin, tubular structure made up of nervous tissue, which extends from the medulla oblongata in the brainstem to the lumbar region of the vertebral column. It encloses the central canal of the spinal cord, which contains cerebrospinal fluid. The brain and spinal cord together make up the central nervous system (CNS). In humans, the spinal cord begins at the occipital bone, passing through the foramen magnum and entering the spinal canal at the beginning of the cervical vertebrae. The spinal cord extends down to between the first and second lumbar vertebrae, where it ends. The enclosing bony vertebral column protects the relatively shorter spinal cord. It is around 45 cm (18 in) in men and around 43 cm (17 in) long in women. The diameter of the spinal cord ranges from 13 mm (1⁄2 in) in the cervical and lumbar regions to 6.4 mm (1⁄4 in) in the thoracic area.\r\n\r\nThe spinal cord functions primarily in the transmission of nerve signals from the motor cortex to the body, and from the afferent fibers of the sensory neurons to the sensory cortex. It is also a center for coordinating many reflexes and contains reflex arcs that can independently control reflexes. It is also the location of groups of spinal interneurons that make up the neural circuits known as central pattern generators. These circuits are responsible for controlling motor instructions for rhythmic movements such as walking.	1	original_spinal	0
24	The Neuron\r\n\r\nThe neuron, a nerve cell, is the functional unit of the nervous system that carries the impulse (the message) to the appropriate part of the nervous system or interprets the impulse and allows a response.  There are three types of neurons and each has different functions.\r\n\r\n1)    sensory neurons—receive impulses and carry them from the sense organs to the spinal cord or brain.\r\n\r\n2)    interneurons—connect sensory and motor neurons and interpret the impulse; only in the brain and spinal cord.\r\n\r\n3)    motor neurons—carry impulses from the brain and spinal cord to muscles or glands	1	summary_sensory	0
43	The human heart has four chambers or compartments: the left and right atria and\r\nThe left ventricle is the strongest of the heart's chambers.\nEach atrium is separated from its ventricle by a valve.	1	auto_summary_heart2	0
45	The digestive system is made up of the gastrointestinal tract—also called the GI tract or digestive tract—and the liver, pancreas, and gallbladder.\nThe hollow organs that make up the GI tract are the mouth, esophagus, stomach, small intestine, large intestine, and anus.\nThe large intestine includes the appendix, cecum, colon, and rectum.	1	auto_summary_liverp	0
25	The Response Mechanism\r\n\r\nWhen a stimulus is received by a sensory neuron, the impulse (or message) is carried through fibrous extensions called dendrites to the cell body. The cell body is made up of cytoplasm, cytoplasmic structures, and a nucleus, which controls neuron function. The impulse travels through the cell body and is carried through the axon to the end brush, a collection of fibers that extend off the axon.  Here, the impulse triggers a release of chemicals that allow the impulse to travel through the synapse—the space between the axon of one neuron and the dendrites of the next. \r\n\r\nAn impulse travels along the neuron pathways as electrical charges move across each neural cell membrane. Ions moving across the membrane cause the impulse to move along the nerve cells.\r\n\r\nThe difference in electrical charge on each side of the cell membrane (caused by differing numbers of positively and negatively charged ions) produces a resting potential. Neurons have a resting potential of approximately 70 millivolts (mV). \r\n\r\nSpecifically, the cell membrane proteins pump sodium ions (Na+) out of the neuron and pump potassium ions (K+) into the neuron.  Active transport mechanisms and leaking back and forth of both the Na+ and K+ ions produce a negative charge on the inside of the neuron’s cell membrane. \r\nAn impulse begins when a neuron is stimulated by another neuron or by a stimulus in the environment. The cell membranes begin to change the flow of ions and a reversal of charges, the action potential, results. An impulse that changes one neuron, changes the next.  The impulse movement continues along the pathway in this way.	1	original_sensory	0
26	Skeletal muscle possesses four essential properties:\r\n\r\nExcitability: this refers to muscle tissue being able to react to nervous stimulation.\r\nExtensibility: this refers to the ability of muscle tissue to lengthen when contracting and provide the effort required to move the lever system (the bones and joints), producing coordinated movement.\r\nElasticity: this refers to the ability of muscle tissue to return to its normal resting length once it has been stretched. A useful analogy is that of an elastic band, that will always resume its resting shape after it has been stretched. This property enables the muscle to prepare for a series of repeated contractions, which is normally required when performing exercise or sport.\r\nContractility: this refers to the capacity of a muscle to contract or shorten forcibly when stimulated by nerves and hormones (excitability).	1	summary_skeletel	0
27	Skeletal muscle is one of three major muscle types, the others being cardiac muscle and smooth muscle. It is a form of striated muscle tissue, which is under the voluntary control of the somatic nervous system.[1] Most skeletal muscles are attached to bones by bundles of collagen fibers known as tendons.\r\n\r\nA skeletal muscle refers to multiple bundles (fascicles) of cells joined together called muscle fibers. The fibers and muscles are surrounded by connective tissue layers called fasciae. Muscle fibers, or muscle cells, are formed from the fusion of developmental myoblasts in a process known as myogenesis. Muscle fibers are cylindrical and have more than one nucleus. They also have multiple mitochondria to meet energy needs.\r\n\r\nMuscle fibers are in turn composed of myofibrils. The myofibrils are composed of actin and myosin filaments, repeated in units called sarcomeres, which are the basic functional units of the muscle fiber. The sarcomere is responsible for the striated appearance of skeletal muscle and forms the basic machinery necessary for muscle contraction.\r\n\r\nThe skeletal muscles are responsible for body movements such as typing, breathing, extending the arm, writing, etc. The muscles contract which pulls the tendons on the bones and causes movement.\r\nThe body posture is maintained by the skeletal muscles. The gluteal muscle is responsible for the erect posture of the body. The sartorius muscles in thighs are responsible for body movement.\r\nThe skeletal muscles protect the internal organs and tissues from any injury and also provide support to these delicate organs and tissues.\r\nThese also support the entry and exit points of the body. The sphincter muscles are present around the anus, mouth and the urinary tract. These muscles contract which reduces the size of the openings and facilitates the swallowing of food, defecation, and urination.\r\nThe skeletal muscles also regulate body temperature. After a strenuous exercise, the body feels hot. This is due to the contraction of skeletal muscles which converts energy into heat.	1	original_skeletal	0
28	The human heart is an organ that pumps blood throughout the body via the circulatory system, supplying oxygen and nutrients to the tissues and removing carbon dioxide and other wastes.	1	summary_heart	0
29	The heart circulates blood through two pathways: the pulmonary circuit and the systemic circuit.\r\n\r\nIn the pulmonary circuit, deoxygenated blood leaves the right ventricle of the heart via the pulmonary artery and travels to the lungs, then returns as oxygenated blood to the left atrium of the heart via the pulmonary vein.\r\n\r\nIn the systemic circuit, oxygenated blood leaves the body via the left ventricle to the aorta, and from there enters the arteries and capillaries where it supplies the body's tissues with oxygen. Deoxygenated blood returns via veins to the venae cavae, re-entering the heart's right atrium.\r\n\r\nThe human heart is an organ that pumps blood throughout the body via the circulatory system, supplying oxygen and nutrients to the tissues and removing carbon dioxide and other wastes.	1	original_heart	0
30	The ribs are thin, flat, curved bones that form a protective cage around the organs in the upper body. The rib cage is made up of 24 bones arranged in 12 pairs. These bones are divided into three groups: true ribs, false ribs and floating ribs.	1	summary_ribs	0
31	The first seven bones are called the true ribs. These bones are connected to the spine (the backbone) in back. In the front, the true ribs are connected directly to the breastbone or sternum by a strips of cartilage called the costal cartilage. The next three pairs of bones (8, 9 and 10) are called false ribs. These bones are slightly shorter than the true ribs and are connected to the spine in back, but not connected directly to the sternum in the front. The false ribs are attached to the lowest true rib that provides connection to the sternum.\r\n\r\nThe last two pairs of bones are called floating ribs. Floating ribs are smaller than the true ribs and the false ribs. They are attached to the spine at the back, but are not connected to anything in the front. The front floats free, hence their name floating ribs.\r\n\r\nIt is much easier to see the floating ribs in the rib cage side view diagram to the right. The bottom two ribs (11 and 12) are clearly not attached to the front sternum. They are also not attached to other ribs as with the false ribs.\r\n\r\nThe twelve pairs of ribs are often called the "rib cage." This is because they form a kind of cage that encloses the upper body. This cage gives the chest its familiar barrel-like shape.	1	original_ribs	0
32	Veins are blood vessels that carry blood toward the heart. Veins don't have muscles\r\nof their own, but they do have valves. Valves are folds or flaps of skin that prevent\r\nblood from backing up in the vein. Since the blood in your veins is at a much lower\r\npressure, veins are located closer to our body's surface. Blood doesn't spurt from a\r\ncut vein, so clotting can easily stop the flow.\r\nThe way blood moves through the veins is similar to the way air is forced out of\r\nthe lungs. In both instances, an external set of muscles squeezes the organ, reduces\r\nits volume, and increases its pressure. The pressure difference causes the flow of\r\nblood (or air) from a region of high pressure to one of low pressure. One difference\r\nis that veins have valves to prevent the back flow of blood. Lungs don't need valves\r\nbecause there is nowhere for the air to flow back to.	1	original_veins	0
44	The liver regulates most chemical levels in the blood and excretes a product called bile.\nThe liver processes this blood and breaks down, balances, and creates nutrients for the body to use.\nProduction of bile, which helps carry away waste and break down fats in the small intestine during digestion\r\nWhen the liver has broken down harmful substances, they are excreted into the bile or blood.	1	auto_summary_liver	0
35	The mechanical digestion and chemical digestion of food begins in the mouth.\r\nHere, saliva mixes with food to form a food ball or bolus. The tongue moves,\r\nmixes, and positions food for chewing and swallowing. The teeth cut and crush\r\nfood, increasing surface area and mixing with saliva. Every day the salivary glands\r\nproduce about a litre of saliva. Saliva contains salivary amylase, which begins the\r\nbreakdown of food.\r\nThe pharynx or throat is the passageway for both the food bolus to the esophagus\r\nand for air to enter the trachea. The process of swallowing takes place here. When\r\nswallowing takes place, the epiglottis meets with the glottis. It covers the opening\r\nto the trachea and allows food to move into the esophagus. Smooth, wave-like\r\nmuscle contractions of the esophagus, also referred to as peristalsis, move the food\r\nbolus to the stomach.\r\nThe cardiac sphincter is a ring of muscle located at the entrance to the stomach.\r\nIt allows food to enter the stomach, but keeps digested food (acid chyme) in the\r\nstomach, preventing reflux during mechanical digestion.\r\nThe stomach is a muscular organ that mechanically and chemically digests food. It\r\nsqueezes and kneads food and drenches it in gastric juices. The mixture of food and\r\ngastric juices is called chyme.\r\nThe pyloric sphincter controls the amount of acid chyme that enters the small\r\nintestine by releasing small quantities at regular intervals.	1	original_digestion	0
34	Most of the food we eat is made up of complex chemicals, yet the nutrients our\r\ncells need are simple chemicals—glucose, amino acids, fatty acids, and elemental\r\nminerals such as calcium and iron. The food we eat has to go through a lot of\r\nchanges before our cells can use it.\r\nThrough a process called digestion, the food we eat is broken down into simple\r\ncompounds that can be absorbed into our bloodstream and assimilated into our\r\ncells.\r\nDigestion is carried out in a long, uneven, hollow tube that runs through the centre\r\nof the body. This tube is partly coiled. If it were stretched into a straight line, it\r\nwould be about 10 metres long! The tube has two openings—the mouth and the\r\nanus—and is made up of many different tissues and organs, each of which has a\r\nspecial job to do.	1	original_digestion2	0
37	Tissues are groups of cells with a common structure (form) and function (job).\n3) Always had one fixed (basal) section attached to underlying connective tissue.\n4) Has no blood vessels but can soak up nutrients from blood vessels in connective tissue underneath.\nc) columnar - tall, column-shaped\r\na) Areolar Connective Tissue – cushion around organs, loose arrangement of cells and fibers.\nc) Reticular Connective Tissue – internal supporting framework of some organs, delicate network of fibers and cells\r\na) Dense Regular Connective Tissue – tendons and ligaments, regularly arranged bundles packed with fibers running same way for strength in one direction.\nb) Dense Irregular Connective Tissue – skin, organ capsules, irregularly arranged bundles packed with fibers for strength in all directions.	1	auto_summary_tissue	0
38	Cells are the smallest units in the human body and cannot be seen without a\r\nmake “tissue” like the skin, muscles, bones and organs such as the liver, lungs\r\nTissues are groups of like cells that perform the same function, for example,\r\n5. Cells help humans grow.\n6. Cells help humans heal injured body parts by making new cells.\ndevelop and reproduce or help make new cells.	1	auto_summary_cell	0
39	The genes within these chromosomes are structured in such a way to promote cell function.\nThe main structures making up the nucleus are the nuclear envelope, a double membrane that encloses the entire organelle and isolates its contents from the cellular cytoplasm, and the nuclear matrix (which includes the nuclear lamina), a network within the nucleus that adds mechanical support, much like the cytoskeleton, which supports the cell as a whole.	1	auto_summary_nucleus	0
40	Tears prevent dryness by coating the surface of the eye, as well as protecting it from external irritants.\nTears contain components that heal damage to the surface of the eye.	1	auto_summary_tears	0
41	Membranes consist largely of a lipid bilayer, which is a double layer of phospholipid, cholesterol, and glycolipid molecules that contains chains of fatty acids and determines whether a membrane is formed into long flat sheets or round vesicles.	1	auto_summary_cellmembrane	0
42	Digestion and processing food with salivary glands, esophagus, stomach, liver, gallbladder, pancreas, intestines, rectum, and anus.\nThe skin is the largest organ in the human body.\nThe brain is the controller of your body, and stores information, allows you to think and learn, as well as controls vital daily functions, like digestion, heart rate, and breathing.\nThe brain receives impulses from your nerves, which are located throughout your body and respond to pain and other stimulation.\nThe heart is another vital organ.\nThe heart's job is to pump oxygenated blood throughout your body and receive deoxygenated blood back in return.\nWithout your heart, your other organs would not receive oxygen or have carbon dioxide removed.\nThe job of the kidneys is to filter things like water and salts out of your blood and to produce urine.\nThe main job of the liver is to produce bile, which it sends to the stomach for digestion.\nThe pancreas is located in the abdomen, behind the stomach.\nThe job of the pancreas is to produce enzymes necessary for digestion and send them to the stomach.\nThe pancreas also regulates blood sugar and does this through its process of creating insulin.\nThe stomach receives food from the esophagus and sends it into the small intenstine.\nThe job of the small intenstine is to digest food.\nThe small intenstine also absorbs nutrients from the food through villi and gives these nutrients to your blood.\nThe large intenstine is involved in digestion, and receives undigested food from the small intenstine.	1	auto_summary_norgans	0
46	Of the thirteen pairs of cranial nerves, ten pairs (or twelve, if the diencephalon is included in the brainstem) come from the brainstem.\nThe brainstem is an extremely important part of the brain as the nerve connections of the motor and sensory systems from the main part of the brain to the rest of the body pass through the brainstem.	1	auto_summary_brainstem	0
47	The spinal cord is a long, thin, tubular structure made up of nervous tissue, which extends from the medulla oblongata in the brainstem to the lumbar region of the vertebral column.\nIt encloses the central canal of the spinal cord, which contains cerebrospinal fluid.	1	auto_summary_spinal	0
48	When a stimulus is received by a sensory neuron, the impulse (or message) is carried through fibrous extensions called dendrites to the cell body.\nAn impulse travels along the neuron pathways as electrical charges move across each neural cell membrane.\nThe difference in electrical charge on each side of the cell membrane (caused by differing numbers of positively and negatively charged ions) produces a resting potential.	1	auto_summary_sensory	0
49	It is a form of striated muscle tissue, which is under the voluntary control of the somatic nervous system.[1] Most skeletal muscles are attached to bones by bundles of collagen fibers known as tendons.\nThe sarcomere is responsible for the striated appearance of skeletal muscle and forms the basic machinery necessary for muscle contraction.\nThe skeletal muscles are responsible for body movements such as typing, breathing, extending the arm, writing, etc.\nThe sartorius muscles in thighs are responsible for body movement.	1	auto_summary_skeletal	0
50	In the pulmonary circuit, deoxygenated blood leaves the right ventricle of the heart via the pulmonary artery and travels to the lungs, then returns as oxygenated blood to the left atrium of the heart via the pulmonary vein.	1	auto_summary_heart	0
51	In the front, the true ribs are connected directly to the breastbone or sternum by a strips of cartilage called the costal cartilage.\nThese bones are slightly shorter than the true ribs and are connected to the spine in back, but not connected directly to the sternum in the front.\nThe false ribs are attached to the lowest true rib that provides connection to the sternum.	1	auto_summary_ribs	0
52	The pressure difference causes the flow of\r\nis that veins have valves to prevent the back flow of blood.\nbecause there is nowhere for the air to flow back to.	1	auto_summary_veins	0
53	Here, saliva mixes with food to form a food ball or bolus.\nfood, increasing surface area and mixing with saliva.\nIt allows food to enter the stomach, but keeps digested food (acid chyme) in the\r\nThe stomach is a muscular organ that mechanically and chemically digests food.\nThe pyloric sphincter controls the amount of acid chyme that enters the small\r	1	auto_summary_digestion	0
54	cells need are simple chemicals—glucose, amino acids, fatty acids, and elemental\r\nThrough a process called digestion, the food we eat is broken down into simple\r\nDigestion is carried out in a long, uneven, hollow tube that runs through the centre\r	1	auto_summary_digestion2	0
\.


--
-- Data for Name: skill_learn_topic; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.skill_learn_topic (id, name, rating) FROM stdin;
1	The Human Body	0
\.


--
-- Data for Name: skill_learn_userrating; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.skill_learn_userrating (id, rating, student_id, topic_id) FROM stdin;
1	4.08782971128920103	1	1
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 75, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);


--
-- Name: skill_learn_question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.skill_learn_question_id_seq', 15, true);


--
-- Name: skill_learn_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.skill_learn_student_id_seq', 1, true);


--
-- Name: skill_learn_text_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.skill_learn_text_id_seq', 54, true);


--
-- Name: skill_learn_topic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.skill_learn_topic_id_seq', 1, true);


--
-- Name: skill_learn_userratings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.skill_learn_userratings_id_seq', 1, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: skill_learn_question skill_learn_question_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.skill_learn_question
    ADD CONSTRAINT skill_learn_question_pkey PRIMARY KEY (id);


--
-- Name: skill_learn_student skill_learn_student_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.skill_learn_student
    ADD CONSTRAINT skill_learn_student_pkey PRIMARY KEY (id);


--
-- Name: skill_learn_text skill_learn_text_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.skill_learn_text
    ADD CONSTRAINT skill_learn_text_pkey PRIMARY KEY (id);


--
-- Name: skill_learn_topic skill_learn_topic_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.skill_learn_topic
    ADD CONSTRAINT skill_learn_topic_pkey PRIMARY KEY (id);


--
-- Name: skill_learn_userrating skill_learn_userratings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.skill_learn_userrating
    ADD CONSTRAINT skill_learn_userratings_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: skill_learn_question_original_text_id_92ac40b4; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX skill_learn_question_original_text_id_92ac40b4 ON public.skill_learn_question USING btree (original_text_id);


--
-- Name: skill_learn_question_summary_text_id_5f933e2a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX skill_learn_question_summary_text_id_5f933e2a ON public.skill_learn_question USING btree (summary_text_id);


--
-- Name: skill_learn_text_topic_id_9315aaf0; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX skill_learn_text_topic_id_9315aaf0 ON public.skill_learn_text USING btree (topic_id);


--
-- Name: skill_learn_userratings_student_id_8d63f5ac; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX skill_learn_userratings_student_id_8d63f5ac ON public.skill_learn_userrating USING btree (student_id);


--
-- Name: skill_learn_userratings_topic_id_d8fa48cc; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX skill_learn_userratings_topic_id_d8fa48cc ON public.skill_learn_userrating USING btree (topic_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: skill_learn_question skill_learn_question_original_text_id_92ac40b4_fk_skill_lea; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.skill_learn_question
    ADD CONSTRAINT skill_learn_question_original_text_id_92ac40b4_fk_skill_lea FOREIGN KEY (original_text_id) REFERENCES public.skill_learn_text(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: skill_learn_question skill_learn_question_summary_text_id_5f933e2a_fk_skill_lea; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.skill_learn_question
    ADD CONSTRAINT skill_learn_question_summary_text_id_5f933e2a_fk_skill_lea FOREIGN KEY (summary_text_id) REFERENCES public.skill_learn_text(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: skill_learn_text skill_learn_text_topic_id_9315aaf0_fk_skill_learn_topic_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.skill_learn_text
    ADD CONSTRAINT skill_learn_text_topic_id_9315aaf0_fk_skill_learn_topic_id FOREIGN KEY (topic_id) REFERENCES public.skill_learn_topic(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: skill_learn_userrating skill_learn_userrati_student_id_8d63f5ac_fk_skill_lea; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.skill_learn_userrating
    ADD CONSTRAINT skill_learn_userrati_student_id_8d63f5ac_fk_skill_lea FOREIGN KEY (student_id) REFERENCES public.skill_learn_student(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: skill_learn_userrating skill_learn_userrati_topic_id_d8fa48cc_fk_skill_lea; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.skill_learn_userrating
    ADD CONSTRAINT skill_learn_userrati_topic_id_d8fa48cc_fk_skill_lea FOREIGN KEY (topic_id) REFERENCES public.skill_learn_topic(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

