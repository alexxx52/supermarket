PGDMP         +                 }            supermarket    14.5    14.5 +               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    33303    supermarket    DATABASE     h   CREATE DATABASE supermarket WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE supermarket;
                postgres    false            �            1259    33514    cash_registers    TABLE     r   CREATE TABLE public.cash_registers (
    register_id integer NOT NULL,
    register_name character varying(50)
);
 "   DROP TABLE public.cash_registers;
       public         heap    postgres    false            �            1259    33513    cash_registers_register_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cash_registers_register_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.cash_registers_register_id_seq;
       public          postgres    false    214                       0    0    cash_registers_register_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.cash_registers_register_id_seq OWNED BY public.cash_registers.register_id;
          public          postgres    false    213            �            1259    33500    cashiers    TABLE     �   CREATE TABLE public.cashiers (
    cashier_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    hire_date date
);
    DROP TABLE public.cashiers;
       public         heap    postgres    false            �            1259    33499    cashiers_cashier_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cashiers_cashier_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.cashiers_cashier_id_seq;
       public          postgres    false    210                       0    0    cashiers_cashier_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.cashiers_cashier_id_seq OWNED BY public.cashiers.cashier_id;
          public          postgres    false    209            �            1259    33507    products    TABLE     �   CREATE TABLE public.products (
    product_id integer NOT NULL,
    product_name character varying(100),
    price numeric(10,2),
    category character varying(50)
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    33506    products_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.products_product_id_seq;
       public          postgres    false    212                        0    0    products_product_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products.product_id;
          public          postgres    false    211            �            1259    33538 
   sale_items    TABLE     �   CREATE TABLE public.sale_items (
    sale_item_id integer NOT NULL,
    sale_id integer,
    product_id integer,
    quantity integer,
    item_price numeric(10,2),
    item_amount numeric(10,2)
);
    DROP TABLE public.sale_items;
       public         heap    postgres    false            �            1259    33537    sale_items_sale_item_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sale_items_sale_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.sale_items_sale_item_id_seq;
       public          postgres    false    218            !           0    0    sale_items_sale_item_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.sale_items_sale_item_id_seq OWNED BY public.sale_items.sale_item_id;
          public          postgres    false    217            �            1259    33521    sales    TABLE     �   CREATE TABLE public.sales (
    sale_id integer NOT NULL,
    sale_time timestamp without time zone,
    register_id integer,
    cashier_id integer,
    total_amount numeric(10,2)
);
    DROP TABLE public.sales;
       public         heap    postgres    false            �            1259    33520    sales_sale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sales_sale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.sales_sale_id_seq;
       public          postgres    false    216            "           0    0    sales_sale_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.sales_sale_id_seq OWNED BY public.sales.sale_id;
          public          postgres    false    215            r           2604    33517    cash_registers register_id    DEFAULT     �   ALTER TABLE ONLY public.cash_registers ALTER COLUMN register_id SET DEFAULT nextval('public.cash_registers_register_id_seq'::regclass);
 I   ALTER TABLE public.cash_registers ALTER COLUMN register_id DROP DEFAULT;
       public          postgres    false    213    214    214            p           2604    33503    cashiers cashier_id    DEFAULT     z   ALTER TABLE ONLY public.cashiers ALTER COLUMN cashier_id SET DEFAULT nextval('public.cashiers_cashier_id_seq'::regclass);
 B   ALTER TABLE public.cashiers ALTER COLUMN cashier_id DROP DEFAULT;
       public          postgres    false    210    209    210            q           2604    33510    products product_id    DEFAULT     z   ALTER TABLE ONLY public.products ALTER COLUMN product_id SET DEFAULT nextval('public.products_product_id_seq'::regclass);
 B   ALTER TABLE public.products ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    212    211    212            t           2604    33541    sale_items sale_item_id    DEFAULT     �   ALTER TABLE ONLY public.sale_items ALTER COLUMN sale_item_id SET DEFAULT nextval('public.sale_items_sale_item_id_seq'::regclass);
 F   ALTER TABLE public.sale_items ALTER COLUMN sale_item_id DROP DEFAULT;
       public          postgres    false    218    217    218            s           2604    33524    sales sale_id    DEFAULT     n   ALTER TABLE ONLY public.sales ALTER COLUMN sale_id SET DEFAULT nextval('public.sales_sale_id_seq'::regclass);
 <   ALTER TABLE public.sales ALTER COLUMN sale_id DROP DEFAULT;
       public          postgres    false    215    216    216                      0    33514    cash_registers 
   TABLE DATA           D   COPY public.cash_registers (register_id, register_name) FROM stdin;
    public          postgres    false    214   w1                 0    33500    cashiers 
   TABLE DATA           P   COPY public.cashiers (cashier_id, first_name, last_name, hire_date) FROM stdin;
    public          postgres    false    210   �1                 0    33507    products 
   TABLE DATA           M   COPY public.products (product_id, product_name, price, category) FROM stdin;
    public          postgres    false    212   )2                 0    33538 
   sale_items 
   TABLE DATA           j   COPY public.sale_items (sale_item_id, sale_id, product_id, quantity, item_price, item_amount) FROM stdin;
    public          postgres    false    218   �2                 0    33521    sales 
   TABLE DATA           Z   COPY public.sales (sale_id, sale_time, register_id, cashier_id, total_amount) FROM stdin;
    public          postgres    false    216   !3       #           0    0    cash_registers_register_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.cash_registers_register_id_seq', 3, true);
          public          postgres    false    213            $           0    0    cashiers_cashier_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.cashiers_cashier_id_seq', 3, true);
          public          postgres    false    209            %           0    0    products_product_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.products_product_id_seq', 4, true);
          public          postgres    false    211            &           0    0    sale_items_sale_item_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.sale_items_sale_item_id_seq', 8, true);
          public          postgres    false    217            '           0    0    sales_sale_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.sales_sale_id_seq', 4, true);
          public          postgres    false    215            z           2606    33519 "   cash_registers cash_registers_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.cash_registers
    ADD CONSTRAINT cash_registers_pkey PRIMARY KEY (register_id);
 L   ALTER TABLE ONLY public.cash_registers DROP CONSTRAINT cash_registers_pkey;
       public            postgres    false    214            v           2606    33505    cashiers cashiers_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.cashiers
    ADD CONSTRAINT cashiers_pkey PRIMARY KEY (cashier_id);
 @   ALTER TABLE ONLY public.cashiers DROP CONSTRAINT cashiers_pkey;
       public            postgres    false    210            x           2606    33512    products products_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    212            ~           2606    33543    sale_items sale_items_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.sale_items
    ADD CONSTRAINT sale_items_pkey PRIMARY KEY (sale_item_id);
 D   ALTER TABLE ONLY public.sale_items DROP CONSTRAINT sale_items_pkey;
       public            postgres    false    218            |           2606    33526    sales sales_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_pkey PRIMARY KEY (sale_id);
 :   ALTER TABLE ONLY public.sales DROP CONSTRAINT sales_pkey;
       public            postgres    false    216            �           2606    33549 %   sale_items sale_items_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sale_items
    ADD CONSTRAINT sale_items_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id);
 O   ALTER TABLE ONLY public.sale_items DROP CONSTRAINT sale_items_product_id_fkey;
       public          postgres    false    218    212    3192            �           2606    33544 "   sale_items sale_items_sale_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sale_items
    ADD CONSTRAINT sale_items_sale_id_fkey FOREIGN KEY (sale_id) REFERENCES public.sales(sale_id);
 L   ALTER TABLE ONLY public.sale_items DROP CONSTRAINT sale_items_sale_id_fkey;
       public          postgres    false    218    3196    216            �           2606    33532    sales sales_cashier_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_cashier_id_fkey FOREIGN KEY (cashier_id) REFERENCES public.cashiers(cashier_id);
 E   ALTER TABLE ONLY public.sales DROP CONSTRAINT sales_cashier_id_fkey;
       public          postgres    false    216    3190    210                       2606    33527    sales sales_register_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_register_id_fkey FOREIGN KEY (register_id) REFERENCES public.cash_registers(register_id);
 F   ALTER TABLE ONLY public.sales DROP CONSTRAINT sales_register_id_fkey;
       public          postgres    false    216    3194    214               &   x�3�0���/lP0�2B�q#s��b���� ���         l   x�=��	�P���n/��)�bL���D"hB^��H%��0��;#ߣ�%<*�d���e.7�g*�m��,������a�].[.������%�椪+wu<x         �   x�U�1
�@E�Sx�e�Y�0&D�"��h����$�\�ύ���`1�����ZpŌ�3b�mp���N�X���b����N+��DD/�wޗ�TO�ONxc`9!�Y7�'��1�.�wk��Zp�D�*������ѽS�/�lf         O   x�e���0�x����K~���8�pqΐYZ&�f�\�x�D��j։$˿[�B�w6����{ۋ�_�P��         K   x�]���0�w24�c*!fa�9h
��u2-�jd#6�D�X9ztx��&�I�� ~r�}�U��+��;|�     