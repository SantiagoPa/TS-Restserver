PGDMP     
    4                y            curso-node-ts     13.4 (Ubuntu 13.4-4.pgdg20.04+1)     14.0 (Ubuntu 14.0-1.pgdg20.04+1)     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16672    curso-node-ts    DATABASE     d   CREATE DATABASE "curso-node-ts" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'es_CO.UTF-8';
    DROP DATABASE "curso-node-ts";
                postgres    false            ?            1259    16683    users    TABLE     ?   CREATE TABLE public.users (
    id integer NOT NULL,
    nameuser character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    estado boolean NOT NULL,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    16681    users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    201            ?           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    200            R           2604    16686    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            ?          0    16683    users 
   TABLE DATA           V   COPY public.users (id, nameuser, email, estado, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    201   =       ?           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 6, true);
          public          postgres    false    200            T           2606    16690    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    201            V           2606    16688    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    201            ?   ?   x?}?Q
?0????@C?v??'?{	s????????X!???/Ĉ??6?ܶ4??8s??/?8???Kjq????§#W|???f?!i?N???<??	?????8??+?e?7ض?Y?FL?g??Ġ???q?Z?-4??????F_     