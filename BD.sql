--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 11.3

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

SET default_with_oids = false;

--
-- Name: administrador; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.administrador (
    nome character varying(250) NOT NULL,
    login character varying(250) NOT NULL,
    senha character varying(250) NOT NULL,
    email character varying(250) NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.administrador OWNER TO postgres;

--
-- Name: administrador_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.administrador_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.administrador_id_seq OWNER TO postgres;

--
-- Name: administrador_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.administrador_id_seq OWNED BY public.administrador.id;


--
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria (
    descricao character varying(250) NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- Name: categoria_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categoria_id_seq OWNER TO postgres;

--
-- Name: categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categoria_id_seq OWNED BY public.categoria.id;


--
-- Name: categoria_produto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria_produto (
    id_categoria integer NOT NULL,
    id_produto integer NOT NULL
);


ALTER TABLE public.categoria_produto OWNER TO postgres;

--
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    nome character varying(250) NOT NULL,
    login character varying(250) NOT NULL,
    senha character varying(250) NOT NULL,
    email character varying(250) NOT NULL,
    endereco character varying(250) NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- Name: cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cliente_id_seq OWNER TO postgres;

--
-- Name: cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_id_seq OWNED BY public.cliente.id;


--
-- Name: compra; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.compra (
    data timestamp without time zone,
    id_cliente integer NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.compra OWNER TO postgres;

--
-- Name: compra_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.compra_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.compra_id_seq OWNER TO postgres;

--
-- Name: compra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.compra_id_seq OWNED BY public.compra.id;


--
-- Name: compra_produto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.compra_produto (
    id_compra integer NOT NULL,
    id_produto integer NOT NULL
);


ALTER TABLE public.compra_produto OWNER TO postgres;

--
-- Name: produto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produto (
    nome character varying(250) NOT NULL,
    descricao character varying(250) NOT NULL,
    foto character varying(250) NOT NULL,
    quantidade integer NOT NULL,
    preco double precision,
    id integer NOT NULL
);


ALTER TABLE public.produto OWNER TO postgres;

--
-- Name: produto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produto_id_seq OWNER TO postgres;

--
-- Name: produto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produto_id_seq OWNED BY public.produto.id;


--
-- Name: administrador id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.administrador ALTER COLUMN id SET DEFAULT nextval('public.administrador_id_seq'::regclass);


--
-- Name: categoria id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria ALTER COLUMN id SET DEFAULT nextval('public.categoria_id_seq'::regclass);


--
-- Name: cliente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id SET DEFAULT nextval('public.cliente_id_seq'::regclass);


--
-- Name: compra id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra ALTER COLUMN id SET DEFAULT nextval('public.compra_id_seq'::regclass);


--
-- Name: produto id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto ALTER COLUMN id SET DEFAULT nextval('public.produto_id_seq'::regclass);


--
-- Data for Name: administrador; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.administrador VALUES ('erivan', 'erivan', 'erivan', 'erivan', 1);


--
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categoria VALUES ('data', 1);
INSERT INTO public.categoria VALUES ('virus', 2);
INSERT INTO public.categoria VALUES ('metal', 3);
INSERT INTO public.categoria VALUES ('comum', 4);
INSERT INTO public.categoria VALUES ('super', 5);


--
-- Data for Name: categoria_produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categoria_produto VALUES (1, 1);
INSERT INTO public.categoria_produto VALUES (1, 2);
INSERT INTO public.categoria_produto VALUES (1, 3);
INSERT INTO public.categoria_produto VALUES (1, 4);
INSERT INTO public.categoria_produto VALUES (2, 5);
INSERT INTO public.categoria_produto VALUES (2, 6);


--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cliente VALUES ('erivan', 'erivan', 'erivan', 'gasparzinho633@gmail.cmo', 'av jose alencar', 1);
INSERT INTO public.cliente VALUES ('Rigel', 'Murphy', 'August', 'In.at.pede@sedturpisnec.ca', '10466-480', 2);
INSERT INTO public.cliente VALUES ('Ishmael', 'Ulysses', 'Whilemina', 'justo@habitant.ca', '4891', 3);
INSERT INTO public.cliente VALUES ('Blaze', 'Neville', 'Rhea', 'augue@loremDonecelementum.edu', '56738', 4);
INSERT INTO public.cliente VALUES ('Damon', 'Warren', 'Jasper', 'rutrum@eget.edu', '680611', 5);
INSERT INTO public.cliente VALUES ('Nissim', 'Kieran', 'Bree', 'Etiam@laciniamattis.co.uk', '8805', 6);
INSERT INTO public.cliente VALUES ('Lucas', 'Gage', 'Eliana', 'Nullam@adipiscingMauris.co.uk', '7491', 7);
INSERT INTO public.cliente VALUES ('Leo', 'Kibo', 'Anastasia', 'turpis@interdum.co.uk', '6413', 8);
INSERT INTO public.cliente VALUES ('Felix', 'Kenneth', 'Pearl', 'sollicitudin.a.malesuada@Namconsequat.ca', '7696', 9);
INSERT INTO public.cliente VALUES ('Lamar', 'Alexander', 'Tamekah', 'orci.tincidunt@dapibusgravidaAliquam.org', '818204', 10);
INSERT INTO public.cliente VALUES ('Rafael', 'Philip', 'Nissim', 'egestas@adipiscingnonluctus.net', '13375', 11);
INSERT INTO public.cliente VALUES ('Declan', 'Abel', 'Clayton', 'pellentesque.a.facilisis@ipsum.net', '2998 XK', 12);
INSERT INTO public.cliente VALUES ('Prescott', 'Moses', 'Rogan', 'sodales@Suspendisse.co.uk', '545410', 13);
INSERT INTO public.cliente VALUES ('Edward', 'Benedict', 'Kadeem', 'sociis.natoque.penatibus@Suspendisse.org', '6441', 14);
INSERT INTO public.cliente VALUES ('Rudyard', 'Damon', 'Daniel', 'sed.facilisis@Vestibulumante.net', '95247-625', 15);
INSERT INTO public.cliente VALUES ('William', 'Orlando', 'Rebecca', 'tempor@ametorciUt.edu', '4523', 16);
INSERT INTO public.cliente VALUES ('Josiah', 'Kyle', 'Boris', 'Maecenas.mi@Phasellus.co.uk', '84087', 17);
INSERT INTO public.cliente VALUES ('Leonard', 'Zachery', 'Wendy', 'vitae.nibh@apurusDuis.co.uk', '97861', 18);
INSERT INTO public.cliente VALUES ('Warren', 'Kasimir', 'Moana', 'et.ultrices.posuere@interdumfeugiat.ca', '35221', 19);
INSERT INTO public.cliente VALUES ('Dexter', 'Adrian', 'Aiko', 'Cum@laciniaorci.co.uk', '1305', 20);
INSERT INTO public.cliente VALUES ('Ross', 'Troy', 'Xyla', 'nibh.sit.amet@risusDonecnibh.co.uk', 'I6 1WH', 21);
INSERT INTO public.cliente VALUES ('Christian', 'Zachery', 'Yael', 'bibendum@dictum.ca', '659797', 22);
INSERT INTO public.cliente VALUES ('Denton', 'Bevis', 'Igor', 'dictum@velnislQuisque.net', '74043-623', 23);
INSERT INTO public.cliente VALUES ('Malcolm', 'Flynn', 'Grant', 'justo.Praesent@commodoauctor.edu', '84227', 24);
INSERT INTO public.cliente VALUES ('Jesse', 'Hayes', 'Breanna', 'mauris@odio.org', '63729', 25);
INSERT INTO public.cliente VALUES ('Elmo', 'Lawrence', 'Meghan', 'massa@estconguea.org', '6664', 26);
INSERT INTO public.cliente VALUES ('Elijah', 'Fritz', 'Brian', 'ipsum@elitsed.ca', '31526', 27);
INSERT INTO public.cliente VALUES ('Jermaine', 'Hamish', 'Indira', 'natoque.penatibus.et@ullamcorperviverra.org', '89778', 28);
INSERT INTO public.cliente VALUES ('Alan', 'Nash', 'Ivor', 'semper.pretium.neque@faucibusleo.co.uk', '292640', 29);
INSERT INTO public.cliente VALUES ('Chancellor', 'Alfonso', 'Carlos', 'magna.et.ipsum@Nulla.ca', '8921', 30);
INSERT INTO public.cliente VALUES ('Baxter', 'Zachery', 'Dale', 'dictum.Phasellus@utpellentesqueeget.org', '32-078', 31);
INSERT INTO public.cliente VALUES ('Curran', 'Ivan', 'Ayanna', 'vel.arcu.eu@velitAliquamnisl.co.uk', '535431', 32);
INSERT INTO public.cliente VALUES ('John', 'Fritz', 'Genevieve', 'ipsum.sodales@nisi.ca', '86803', 33);
INSERT INTO public.cliente VALUES ('Arden', 'Lance', 'Patricia', 'orci@tincidunt.edu', '77523', 34);
INSERT INTO public.cliente VALUES ('Austin', 'Byron', 'Brooke', 'ornare@adipiscing.ca', 'R9P 2T6', 35);
INSERT INTO public.cliente VALUES ('Phelan', 'Jordan', 'Alec', 'et.lacinia.vitae@a.ca', '14646', 36);
INSERT INTO public.cliente VALUES ('Isaiah', 'Drew', 'Kyle', 'libero.Integer.in@Quisqueporttitor.co.uk', '40630', 37);
INSERT INTO public.cliente VALUES ('Dolan', 'Steven', 'Zenaida', 'vestibulum.lorem@nibhvulputatemauris.com', '10919', 38);
INSERT INTO public.cliente VALUES ('Lyle', 'Uriah', 'Bertha', 'Nam.consequat.dolor@nostraperinceptos.com', '78577', 39);
INSERT INTO public.cliente VALUES ('Damian', 'Rafael', 'Brennan', 'eu.odio@infaucibus.org', '07792', 40);
INSERT INTO public.cliente VALUES ('Preston', 'Caesar', 'Timon', 'enim@convallisincursus.net', '8648', 41);
INSERT INTO public.cliente VALUES ('Castor', 'Carl', 'Prescott', 'sit.amet@Maecenasmifelis.edu', '79176', 42);
INSERT INTO public.cliente VALUES ('Magee', 'Xenos', 'Guinevere', 'Cum@consectetuer.com', '66775', 43);
INSERT INTO public.cliente VALUES ('Jonas', 'Barry', 'Pandora', 'feugiat.Sed.nec@Donec.org', '795466', 44);
INSERT INTO public.cliente VALUES ('Lester', 'Kieran', 'Abigail', 'Fusce.dolor.quam@ultriciesadipiscingenim.ca', '505796', 45);
INSERT INTO public.cliente VALUES ('Roth', 'Norman', 'Kenyon', 'in.faucibus.orci@egestasAliquam.org', '29330', 46);
INSERT INTO public.cliente VALUES ('Griffin', 'Mufutau', 'Maryam', 'auctor@elementumat.co.uk', '832963', 47);
INSERT INTO public.cliente VALUES ('Abel', 'Ahmed', 'Garrett', 'eget@interdumCurabiturdictum.net', '80802', 48);
INSERT INTO public.cliente VALUES ('Ross', 'Tiger', 'Mara', 'eget@luctus.org', '1147', 49);
INSERT INTO public.cliente VALUES ('Wylie', 'Carl', 'Nathan', 'rutrum.magna@neque.ca', '9390', 50);
INSERT INTO public.cliente VALUES ('Price', 'Oleg', 'Charlotte', 'nibh.Aliquam.ornare@taciti.co.uk', '38120-471', 51);
INSERT INTO public.cliente VALUES ('Hedley', 'Darius', 'Beverly', 'Cras@In.edu', '46-136', 52);
INSERT INTO public.cliente VALUES ('Steven', 'Blaze', 'Georgia', 'lectus@sem.org', '71012', 53);
INSERT INTO public.cliente VALUES ('Gavin', 'Stephen', 'Jaden', 'pede.malesuada@vel.com', 'V7 2SM', 54);
INSERT INTO public.cliente VALUES ('Talon', 'Brennan', 'April', 'molestie.dapibus.ligula@velitegestaslacinia.net', '7219', 55);
INSERT INTO public.cliente VALUES ('Lucian', 'Kane', 'Lars', 'dolor@blandit.ca', '604123', 56);
INSERT INTO public.cliente VALUES ('Keefe', 'Abbot', 'Rina', 'eget@Sedcongueelit.org', '8738 BL', 57);
INSERT INTO public.cliente VALUES ('Arthur', 'Colorado', 'Edward', 'ultricies@sitamet.com', '4490 OQ', 58);
INSERT INTO public.cliente VALUES ('Russell', 'Theodore', 'Madeson', 'facilisis.magna.tellus@hendrerit.ca', '99-190', 59);
INSERT INTO public.cliente VALUES ('Palmer', 'Laith', 'Griffith', 'Donec.vitae.erat@lobortis.org', '16332', 60);
INSERT INTO public.cliente VALUES ('Orlando', 'Herman', 'Leah', 'ut.nisi.a@nullamagna.edu', '878117', 61);
INSERT INTO public.cliente VALUES ('Clayton', 'Barry', 'Ezekiel', 'eu@sempertellusid.com', 'G0A 0T9', 62);
INSERT INTO public.cliente VALUES ('Elliott', 'Walter', 'Hall', 'nisl.Maecenas@eleifend.net', '82778', 63);
INSERT INTO public.cliente VALUES ('Jacob', 'Samuel', 'Martin', 'blandit.Nam@consequatdolorvitae.ca', '81208', 64);
INSERT INTO public.cliente VALUES ('Price', 'Marsden', 'Cally', 'lobortis@lacus.com', 'K3P 3H9', 65);
INSERT INTO public.cliente VALUES ('Dillon', 'Brent', 'Reese', 'ut@Integersemelit.edu', '29884', 66);
INSERT INTO public.cliente VALUES ('Reuben', 'Randall', 'Kane', 'egestas.rhoncus.Proin@tortor.com', '501311', 67);
INSERT INTO public.cliente VALUES ('Steel', 'Burke', 'Brody', 'Aenean.gravida.nunc@Donec.com', '22306', 68);
INSERT INTO public.cliente VALUES ('Bruno', 'Merritt', 'Cairo', 'magna@malesuadaid.net', '14713', 69);
INSERT INTO public.cliente VALUES ('Griffin', 'Kasimir', 'Amity', 'arcu@nuncInat.com', '55741', 70);
INSERT INTO public.cliente VALUES ('Wallace', 'Macon', 'Dominique', 'sit@Aeneanmassa.org', '9499', 71);
INSERT INTO public.cliente VALUES ('Carlos', 'Zeph', 'Allen', 'Vivamus.nibh@et.edu', '528798', 72);
INSERT INTO public.cliente VALUES ('Darius', 'Bernard', 'Nolan', 'Vestibulum.ante@a.net', 'U19 5OF', 73);
INSERT INTO public.cliente VALUES ('Ivan', 'Cooper', 'Leo', 'consectetuer.rhoncus@nec.com', '74281', 74);
INSERT INTO public.cliente VALUES ('Elliott', 'Wesley', 'Tana', 'consectetuer.ipsum.nunc@massaSuspendisse.net', '41006-326', 75);
INSERT INTO public.cliente VALUES ('Samuel', 'Kibo', 'Rogan', 'risus@penatibuset.ca', '6352', 76);
INSERT INTO public.cliente VALUES ('Wing', 'Garrison', 'Sylvia', 'Nulla.semper@aliquamiaculislacus.org', '5749', 77);
INSERT INTO public.cliente VALUES ('Conan', 'Duncan', 'Jamal', 'lorem.lorem.luctus@consectetueradipiscingelit.edu', '61705', 78);
INSERT INTO public.cliente VALUES ('Martin', 'Chandler', 'Odessa', 'enim@ac.ca', '77141', 79);
INSERT INTO public.cliente VALUES ('Emery', 'Chadwick', 'Tiger', 'vel@lacus.co.uk', '5682', 80);
INSERT INTO public.cliente VALUES ('Lester', 'Basil', 'Brett', 'mus@urnaconvallis.net', '62898', 81);
INSERT INTO public.cliente VALUES ('Kasper', 'Magee', 'Cathleen', 'magna.Praesent.interdum@Duis.ca', '10701', 82);
INSERT INTO public.cliente VALUES ('Zachery', 'Rafael', 'Garrison', 'dapibus@diamDuis.ca', '25-508', 83);
INSERT INTO public.cliente VALUES ('Drew', 'Dean', 'Xenos', 'imperdiet.ornare@turpisegestas.com', '17381', 84);
INSERT INTO public.cliente VALUES ('Samson', 'Yasir', 'Emerald', 'id.nunc.interdum@justoeuarcu.edu', '3606', 85);
INSERT INTO public.cliente VALUES ('Ronan', 'Hiram', 'Robert', 'erat@musDonec.ca', '11799', 86);
INSERT INTO public.cliente VALUES ('Uriel', 'Murphy', 'Buckminster', 'Aliquam.ornare@Fusce.com', '34089', 87);
INSERT INTO public.cliente VALUES ('Justin', 'Ray', 'Vance', 'enim.Etiam@aaliquetvel.org', '08735', 88);
INSERT INTO public.cliente VALUES ('Seth', 'Igor', 'Priscilla', 'neque.sed.sem@egestas.com', '93016', 89);
INSERT INTO public.cliente VALUES ('Luke', 'Colorado', 'Nerea', 'scelerisque.lorem@loremloremluctus.ca', '92089', 90);
INSERT INTO public.cliente VALUES ('Harlan', 'Harper', 'Yeo', 'tellus.eu@nislarcuiaculis.co.uk', '72721', 91);
INSERT INTO public.cliente VALUES ('Orlando', 'Hamish', 'Kelly', 'quam.Pellentesque@fringillaeuismod.edu', 'B0D 0AC', 92);
INSERT INTO public.cliente VALUES ('Charles', 'Curran', 'MacKensie', 'ligula.eu@felisDonec.edu', '7790', 93);
INSERT INTO public.cliente VALUES ('Merritt', 'Isaac', 'Yuli', 'Nunc.sollicitudin@pharetranibhAliquam.net', '4883', 94);
INSERT INTO public.cliente VALUES ('Magee', 'Kareem', 'Tarik', 'turpis.nec@arcuSedeu.net', '8438', 95);
INSERT INTO public.cliente VALUES ('Shad', 'Curran', 'Macaulay', 'sem.molestie@sagittis.com', '6749 VU', 96);
INSERT INTO public.cliente VALUES ('Marvin', 'Abraham', 'Wing', 'ornare.Fusce@inconsectetueripsum.ca', '912037', 97);
INSERT INTO public.cliente VALUES ('Fritz', 'Alec', 'Rafael', 'eu.augue@In.co.uk', '1787 FX', 98);
INSERT INTO public.cliente VALUES ('Carlos', 'Connor', 'Willow', 'Quisque.imperdiet@Suspendisseseddolor.org', '2637', 99);
INSERT INTO public.cliente VALUES ('Baxter', 'Fritz', 'MacKensie', 'luctus.et.ultrices@imperdiet.net', '41316', 100);
INSERT INTO public.cliente VALUES ('Vaughan', 'Stuart', 'Kitra', 'neque@auctorMaurisvel.org', '842408', 101);
INSERT INTO public.cliente VALUES ('Joshua', 'Mannix', 'Haley', 'eget.magna@Aliquam.co.uk', '85061', 102);
INSERT INTO public.cliente VALUES ('Dieter', 'Dale', 'Mollie', 'sagittis@utpellentesque.net', '59568', 103);
INSERT INTO public.cliente VALUES ('Silas', 'Malik', 'Paul', 'Duis@cursusdiam.net', '671577', 104);
INSERT INTO public.cliente VALUES ('Lamar', 'Cairo', 'Clare', 'est@semPellentesque.edu', '83247', 105);
INSERT INTO public.cliente VALUES ('Price', 'Vaughan', 'Prescott', 'dapibus.gravida@feugiatSed.co.uk', '24-845', 106);
INSERT INTO public.cliente VALUES ('Hayden', 'Quinn', 'Kylynn', 'sociis.natoque.penatibus@purussapiengravida.org', 'UL0G 7BO', 107);
INSERT INTO public.cliente VALUES ('Norman', 'Jack', 'Daquan', 'libero.lacus.varius@nequeMorbi.com', '52625', 108);
INSERT INTO public.cliente VALUES ('Abbot', 'Bevis', 'Cally', 'dictum.placerat@blanditatnisi.org', '2419 CJ', 109);
INSERT INTO public.cliente VALUES ('Elvis', 'Erasmus', 'Abigail', 'vulputate.dui.nec@luctusfelispurus.edu', '533505', 110);
INSERT INTO public.cliente VALUES ('Maxwell', 'Hall', 'Forrest', 'Phasellus@dapibusgravida.com', '37495', 111);
INSERT INTO public.cliente VALUES ('Alden', 'Griffith', 'Cadman', 'Pellentesque.habitant.morbi@tempor.net', '96324', 112);
INSERT INTO public.cliente VALUES ('Kato', 'Stone', 'Ryder', 'auctor@nisi.ca', '290411', 113);
INSERT INTO public.cliente VALUES ('Xander', 'Travis', 'Aline', 'odio@metusVivamus.ca', 'R8B 9G1', 114);
INSERT INTO public.cliente VALUES ('Fletcher', 'Melvin', 'Alec', 'egestas.Aliquam@enimSuspendisse.com', '3226 YY', 115);
INSERT INTO public.cliente VALUES ('Fulton', 'Gregory', 'Zena', 'amet.ornare@diam.edu', '72400', 116);
INSERT INTO public.cliente VALUES ('Hiram', 'James', 'Clark', 'felis.adipiscing.fringilla@netusetmalesuada.edu', '63-473', 117);
INSERT INTO public.cliente VALUES ('Laith', 'Burke', 'Cyrus', 'eget.dictum@ullamcorper.co.uk', '31949', 118);
INSERT INTO public.cliente VALUES ('Perry', 'Wesley', 'Nathan', 'accumsan.laoreet.ipsum@magnis.org', '37968', 119);
INSERT INTO public.cliente VALUES ('Bevis', 'Clark', 'Indira', 'ornare.libero.at@magnisdisparturient.edu', '87139', 120);
INSERT INTO public.cliente VALUES ('Colorado', 'Bradley', 'Amethyst', 'ac.risus@sollicitudinamalesuada.net', '141595', 121);
INSERT INTO public.cliente VALUES ('Geoffrey', 'Eagan', 'Ferris', 'ipsum@malesuadaInteger.com', '96883', 122);
INSERT INTO public.cliente VALUES ('Blaze', 'Drew', 'Yardley', 'Sed.eget.lacus@amet.co.uk', '0339', 123);
INSERT INTO public.cliente VALUES ('Lucius', 'Ulysses', 'Kelsie', 'quis@musDonec.com', '0768', 124);
INSERT INTO public.cliente VALUES ('Hayes', 'John', 'Lucy', 'Duis.dignissim.tempor@urnaUttincidunt.com', '270725', 125);
INSERT INTO public.cliente VALUES ('Brandon', 'Anthony', 'Sydney', 'eget@sed.org', '76716', 126);
INSERT INTO public.cliente VALUES ('Hashim', 'Kamal', 'Bell', 'in@estNunc.ca', '396019', 127);
INSERT INTO public.cliente VALUES ('Leonard', 'Alvin', 'Lars', 'neque@nequepellentesque.org', '78399', 128);
INSERT INTO public.cliente VALUES ('Harper', 'Giacomo', 'Joelle', 'Aenean.egestas.hendrerit@enim.ca', '10-298', 129);
INSERT INTO public.cliente VALUES ('Bruno', 'Carlos', 'Cameron', 'Sed.nunc@ametanteVivamus.co.uk', '6676', 130);
INSERT INTO public.cliente VALUES ('Bradley', 'Armando', 'Timothy', 'libero.Proin@Donec.co.uk', 'A8Z 8B5', 131);
INSERT INTO public.cliente VALUES ('Garrison', 'Dolan', 'Xander', 'eleifend.Cras.sed@luctussitamet.edu', '00181', 132);
INSERT INTO public.cliente VALUES ('Herman', 'Keaton', 'Odysseus', 'dictum.eu.placerat@Pellentesqueultricies.edu', '3378', 133);
INSERT INTO public.cliente VALUES ('Dolan', 'Knox', 'Timothy', 'velit.egestas@inconsectetueripsum.com', '14502', 134);
INSERT INTO public.cliente VALUES ('Lars', 'Jasper', 'Samuel', 'non@ipsumleo.org', '2509', 135);
INSERT INTO public.cliente VALUES ('Jerry', 'Lamar', 'Harrison', 'Quisque@tortor.com', '6117', 136);
INSERT INTO public.cliente VALUES ('Beau', 'Aidan', 'Delilah', 'sapien.Aenean@necurna.ca', 'P6 1MJ', 137);
INSERT INTO public.cliente VALUES ('Jonas', 'Macon', 'Evangeline', 'interdum@euultrices.com', '1132', 138);
INSERT INTO public.cliente VALUES ('Slade', 'Wyatt', 'Aurora', 'a.feugiat.tellus@dignissimtemporarcu.org', '292403', 139);
INSERT INTO public.cliente VALUES ('Declan', 'Matthew', 'Burton', 'orci@utmolestie.edu', '4198', 140);
INSERT INTO public.cliente VALUES ('Camden', 'Donovan', 'Cadman', 'non.massa@etultrices.co.uk', '9490', 141);
INSERT INTO public.cliente VALUES ('Beck', 'Wing', 'Amir', 'ornare.tortor@elitsed.edu', 'SP53 6XS', 142);
INSERT INTO public.cliente VALUES ('Igor', 'Christian', 'Quon', 'elit.Aliquam.auctor@sitamet.co.uk', '726569', 143);
INSERT INTO public.cliente VALUES ('Seth', 'Macon', 'Fay', 'aliquet.diam@adipiscingMauris.ca', '10772', 144);
INSERT INTO public.cliente VALUES ('Wylie', 'Jackson', 'Josephine', 'Pellentesque@dictum.com', '7403', 145);
INSERT INTO public.cliente VALUES ('August', 'Lamar', 'Kenneth', 'tempor@pretiumaliquet.net', '61680', 146);
INSERT INTO public.cliente VALUES ('Mohammad', 'Stephen', 'Echo', 'felis@Namtempordiam.net', '3758 KZ', 147);
INSERT INTO public.cliente VALUES ('Leonard', 'Ian', 'Desiree', 'vitae@necligulaconsectetuer.com', '27721', 148);
INSERT INTO public.cliente VALUES ('Thaddeus', 'Erich', 'Stewart', 'Fusce@quamdignissim.org', '5028', 149);
INSERT INTO public.cliente VALUES ('Oren', 'Kennan', 'Gabriel', 'lacinia.vitae@velitduisemper.co.uk', '59630', 150);
INSERT INTO public.cliente VALUES ('Eric', 'Jackson', 'Idola', 'luctus.sit@enim.ca', 'B1N 3Z4', 151);
INSERT INTO public.cliente VALUES ('Ian', 'Fitzgerald', 'Caryn', 'amet@sagittis.com', 'K9M 2V2', 152);
INSERT INTO public.cliente VALUES ('Geoffrey', 'Emery', 'Mallory', 'Mauris.ut@vitae.ca', 'WJ1T 4GX', 153);
INSERT INTO public.cliente VALUES ('Drew', 'Lance', 'Cullen', 'enim.nec.tempus@mauris.ca', '763830', 154);
INSERT INTO public.cliente VALUES ('Lev', 'Ian', 'Samantha', 'ultrices.a@dignissim.net', '31107', 155);
INSERT INTO public.cliente VALUES ('Tad', 'Chadwick', 'Yoshio', 'luctus.felis.purus@gravida.com', '71216', 156);
INSERT INTO public.cliente VALUES ('Nissim', 'Jeremy', 'Ashton', 'urna.suscipit@ametmetusAliquam.net', '97677', 157);
INSERT INTO public.cliente VALUES ('Zachery', 'Slade', 'Kenneth', 'Integer.id@morbitristique.net', '31215', 158);
INSERT INTO public.cliente VALUES ('Caldwell', 'Ezra', 'Adria', 'laoreet.ipsum@Suspendisseac.edu', '90875', 159);
INSERT INTO public.cliente VALUES ('Cameron', 'Xavier', 'Olympia', 'ornare@sitamet.net', '34053', 160);
INSERT INTO public.cliente VALUES ('Herman', 'Quinlan', 'Cherokee', 'enim@NuncmaurisMorbi.net', '0604', 161);
INSERT INTO public.cliente VALUES ('Russell', 'Ray', 'Brendan', 'hendrerit@NullafacilisiSed.org', '483253', 162);
INSERT INTO public.cliente VALUES ('Harper', 'Giacomo', 'Macaulay', 'fringilla.porttitor@Nuncpulvinararcu.org', '8935', 163);
INSERT INTO public.cliente VALUES ('Wesley', 'Berk', 'Chancellor', 'est.mauris.rhoncus@Fuscemollis.edu', '8704', 164);
INSERT INTO public.cliente VALUES ('Marshall', 'Thaddeus', 'Helen', 'velit.Sed.malesuada@apurusDuis.net', '7586', 165);
INSERT INTO public.cliente VALUES ('Scott', 'Craig', 'Ora', 'auctor.ullamcorper@egestasrhoncus.org', '8165 ZV', 166);
INSERT INTO public.cliente VALUES ('Carlos', 'Tucker', 'Stephanie', 'a@placerataugue.co.uk', '3323', 167);
INSERT INTO public.cliente VALUES ('Leonard', 'Jeremy', 'Randall', 'pede.malesuada@sed.org', '715055', 168);
INSERT INTO public.cliente VALUES ('Bernard', 'Seth', 'Shellie', 'aliquet.molestie.tellus@duiCumsociis.com', '703550', 169);
INSERT INTO public.cliente VALUES ('Amal', 'Hu', 'Emi', 'interdum.ligula.eu@feugiat.edu', '358365', 170);
INSERT INTO public.cliente VALUES ('Brody', 'Dominic', 'Logan', 'penatibus.et@Maurisnon.net', 'A7P 9M1', 171);
INSERT INTO public.cliente VALUES ('Castor', 'Josiah', 'Dalton', 'Phasellus.dolor.elit@Uttincidunt.org', 'RR26 3EM', 172);
INSERT INTO public.cliente VALUES ('Marshall', 'Kasper', 'Stacy', 'vulputate@sagittisfelisDonec.com', '29534', 173);
INSERT INTO public.cliente VALUES ('Alden', 'Connor', 'Blake', 'magnis@bibendumullamcorper.ca', '62540', 174);
INSERT INTO public.cliente VALUES ('Chandler', 'Baker', 'Nomlanga', 'nisl.arcu.iaculis@pede.co.uk', 'J2L 6M7', 175);
INSERT INTO public.cliente VALUES ('Hamish', 'Vladimir', 'Garth', 'vel@necmauris.org', '61819', 176);
INSERT INTO public.cliente VALUES ('Fitzgerald', 'Yasir', 'Helen', 'Donec.luctus@aliquamiaculis.edu', '81723', 177);
INSERT INTO public.cliente VALUES ('Nasim', 'Slade', 'Amal', 'Donec.consectetuer.mauris@mauris.com', '5460', 178);
INSERT INTO public.cliente VALUES ('Erich', 'Sawyer', 'Amaya', 'feugiat.Sed@pedeCras.com', '13284', 179);
INSERT INTO public.cliente VALUES ('Simon', 'Solomon', 'Harrison', 'adipiscing@nuncullamcorpereu.ca', '2152', 180);
INSERT INTO public.cliente VALUES ('Guy', 'Caldwell', 'Tanisha', 'sit@nuncIn.edu', '8598', 181);
INSERT INTO public.cliente VALUES ('Shad', 'Prescott', 'Alyssa', 'eu.sem@eu.org', '9387', 182);
INSERT INTO public.cliente VALUES ('Dennis', 'Brock', 'Hollee', 'egestas.Aliquam.fringilla@laciniaSed.co.uk', '908980', 183);
INSERT INTO public.cliente VALUES ('Roth', 'Lance', 'Ursula', 'orci@vel.com', '618498', 184);
INSERT INTO public.cliente VALUES ('Christopher', 'Calvin', 'Wade', 'est.arcu.ac@Nunccommodoauctor.co.uk', '0574', 185);
INSERT INTO public.cliente VALUES ('Amir', 'Graiden', 'Savannah', 'nec.mauris@luctusCurabitur.ca', 'XI4O 5UJ', 186);
INSERT INTO public.cliente VALUES ('Ignatius', 'Raphael', 'Grace', 'tempor.augue.ac@montesnascetur.com', '7940', 187);
INSERT INTO public.cliente VALUES ('Flynn', 'Macon', 'Kendall', 'cursus.et@blandit.edu', '13620', 188);
INSERT INTO public.cliente VALUES ('Linus', 'Walter', 'Shelby', 'diam@lorem.co.uk', '9747', 189);
INSERT INTO public.cliente VALUES ('Boris', 'Rooney', 'Hoyt', 'sed@lobortisrisusIn.co.uk', '74-060', 190);
INSERT INTO public.cliente VALUES ('Kennedy', 'Kenyon', 'Noelle', 'elit.pellentesque@quamPellentesque.net', '76530', 191);
INSERT INTO public.cliente VALUES ('Wang', 'Phillip', 'Channing', 'consectetuer@dolorquamelementum.edu', '15829', 192);
INSERT INTO public.cliente VALUES ('Hiram', 'Elijah', 'Owen', 'mollis.lectus@erat.com', '65-848', 193);
INSERT INTO public.cliente VALUES ('Randall', 'Clinton', 'Desiree', 'gravida.nunc.sed@pretium.edu', '2575', 194);
INSERT INTO public.cliente VALUES ('Dante', 'Perry', 'Lydia', 'non.sollicitudin.a@quam.co.uk', '0060 WF', 195);
INSERT INTO public.cliente VALUES ('Warren', 'Phillip', 'Vaughan', 'blandit.Nam.nulla@auctor.ca', '619648', 196);
INSERT INTO public.cliente VALUES ('Ferdinand', 'Kareem', 'Mariko', 'rhoncus@consectetueradipiscingelit.com', '770155', 197);
INSERT INTO public.cliente VALUES ('Steven', 'Levi', 'Quinn', 'ante.iaculis.nec@orci.co.uk', '7810', 198);
INSERT INTO public.cliente VALUES ('Harrison', 'Daniel', 'Natalie', 'ut.lacus@liberoMorbiaccumsan.com', '9254', 199);
INSERT INTO public.cliente VALUES ('Barry', 'Akeem', 'Galvin', 'molestie.in@mauriseu.ca', '817531', 200);
INSERT INTO public.cliente VALUES ('Hamish', 'Nathan', 'Gareth', 'amet.lorem.semper@neccursusa.com', '22133', 201);


--
-- Data for Name: compra; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.compra VALUES (NULL, 1, 2);
INSERT INTO public.compra VALUES (NULL, 1, 3);
INSERT INTO public.compra VALUES (NULL, 2, 4);
INSERT INTO public.compra VALUES (NULL, 3, 5);
INSERT INTO public.compra VALUES (NULL, 1, 6);
INSERT INTO public.compra VALUES (NULL, 1, 7);
INSERT INTO public.compra VALUES (NULL, 1, 8);
INSERT INTO public.compra VALUES (NULL, 2, 9);
INSERT INTO public.compra VALUES (NULL, 2, 10);
INSERT INTO public.compra VALUES (NULL, 2, 11);
INSERT INTO public.compra VALUES (NULL, 3, 12);
INSERT INTO public.compra VALUES (NULL, 3, 13);
INSERT INTO public.compra VALUES (NULL, 3, 14);
INSERT INTO public.compra VALUES (NULL, 4, 15);
INSERT INTO public.compra VALUES (NULL, 4, 16);
INSERT INTO public.compra VALUES (NULL, 4, 17);


--
-- Data for Name: compra_produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.compra_produto VALUES (2, 1);
INSERT INTO public.compra_produto VALUES (3, 1);
INSERT INTO public.compra_produto VALUES (4, 1);
INSERT INTO public.compra_produto VALUES (5, 1);
INSERT INTO public.compra_produto VALUES (2, 3);
INSERT INTO public.compra_produto VALUES (3, 3);
INSERT INTO public.compra_produto VALUES (4, 3);


--
-- Data for Name: produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.produto VALUES ('b', 'b', '1.png', 8, 8, 1);
INSERT INTO public.produto VALUES ('c', 'c', '1.png', 8, 8, 2);
INSERT INTO public.produto VALUES ('d', 'd', '1.png', 8, 8, 3);
INSERT INTO public.produto VALUES ('e', 'e', '1.png', 8, 8, 4);
INSERT INTO public.produto VALUES ('f', 'f', '1.png', 8, 8, 5);
INSERT INTO public.produto VALUES ('g', 'g', '1.png', 8, 8, 6);


--
-- Name: administrador_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.administrador_id_seq', 1, true);


--
-- Name: categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoria_id_seq', 5, true);


--
-- Name: cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_id_seq', 201, true);


--
-- Name: compra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.compra_id_seq', 17, true);


--
-- Name: produto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produto_id_seq', 6, true);


--
-- Name: administrador pk_administrador; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.administrador
    ADD CONSTRAINT pk_administrador PRIMARY KEY (id);


--
-- Name: categoria pk_categoria; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT pk_categoria PRIMARY KEY (id);


--
-- Name: categoria_produto pk_categoria_produto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria_produto
    ADD CONSTRAINT pk_categoria_produto PRIMARY KEY (id_categoria, id_produto);


--
-- Name: cliente pk_cliente; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT pk_cliente PRIMARY KEY (id);


--
-- Name: compra pk_compra; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra
    ADD CONSTRAINT pk_compra PRIMARY KEY (id);


--
-- Name: compra_produto pk_compra_produto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra_produto
    ADD CONSTRAINT pk_compra_produto PRIMARY KEY (id_compra, id_produto);


--
-- Name: produto pk_produto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT pk_produto PRIMARY KEY (id);


--
-- Name: categoria_produto fk_categoria_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria_produto
    ADD CONSTRAINT fk_categoria_id FOREIGN KEY (id_categoria) REFERENCES public.categoria(id);


--
-- Name: compra fk_compra_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra
    ADD CONSTRAINT fk_compra_ FOREIGN KEY (id_cliente) REFERENCES public.cliente(id);


--
-- Name: compra_produto fk_compra_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra_produto
    ADD CONSTRAINT fk_compra_id FOREIGN KEY (id_compra) REFERENCES public.compra(id);


--
-- Name: categoria_produto fk_produto_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria_produto
    ADD CONSTRAINT fk_produto_id FOREIGN KEY (id_produto) REFERENCES public.produto(id);


--
-- Name: compra_produto fk_produto_id_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra_produto
    ADD CONSTRAINT fk_produto_id_ FOREIGN KEY (id_produto) REFERENCES public.produto(id);


--
-- PostgreSQL database dump complete
--

