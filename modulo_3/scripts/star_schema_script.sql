BEGIN;


CREATE TABLE IF NOT EXISTS public."FactSales"
(
    orderid integer NOT NULL,
    dateid integer,
    countryid integer,
    categoryid integer,
    amount integer,
    CONSTRAINT "FactSales_pkey" PRIMARY KEY (orderid)
);

CREATE TABLE IF NOT EXISTS public.softcart_dimcategory
(
    category_id integer NOT NULL,
    category character varying COLLATE pg_catalog."default",
    CONSTRAINT softcart_dimcategory_pkey PRIMARY KEY (category_id)
);

CREATE TABLE IF NOT EXISTS public.softcart_dimcountry
(
    country_id integer NOT NULL,
    country character varying COLLATE pg_catalog."default",
    CONSTRAINT softcart_dimcountry_pkey PRIMARY KEY (country_id)
);

CREATE TABLE IF NOT EXISTS public.softcart_dimdate
(
    date_id serial NOT NULL,
    date date,
    day integer,
    weekday integer,
    weekday_name character varying(20) COLLATE pg_catalog."default",
    month integer,
    month_name character varying(20) COLLATE pg_catalog."default",
    year integer,
    quarter integer,
    quarter_name character varying(20) COLLATE pg_catalog."default",
    CONSTRAINT softcart_dimdate_pkey PRIMARY KEY (date_id)
);

ALTER TABLE IF EXISTS public."FactSales"
    ADD FOREIGN KEY (dateid)
    REFERENCES public.softcart_dimdate (date_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public."FactSales"
    ADD FOREIGN KEY (countryid)
    REFERENCES public.softcart_dimcountry (country_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public."FactSales"
    ADD FOREIGN KEY (categoryid)
    REFERENCES public.softcart_dimcategory (category_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

END;
