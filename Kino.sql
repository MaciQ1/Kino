--------------------------------------------------------
--  File created - œroda-czerwca-19-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Type PRODUCT_TYPE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "HR"."PRODUCT_TYPE" AS OBJECT (
    id NUMBER,
    name VARCHAR2(30),
    price NUMBER
);

/
--------------------------------------------------------
--  DDL for Type TICKET_PRICE_INFO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "HR"."TICKET_PRICE_INFO" AS OBJECT (
    base_price NUMBER,
    discount NUMBER,
    final_price NUMBER
);

/
--------------------------------------------------------
--  DDL for Type TICKET_PRICE_INFO_TAB
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "HR"."TICKET_PRICE_INFO_TAB" AS TABLE OF ticket_price_info;

/
--------------------------------------------------------
--  DDL for Sequence FAILED_JOBS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."FAILED_JOBS_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence FILMS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."FILMS_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence JOBS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."JOBS_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence MIGRATIONS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."MIGRATIONS_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence PRODUCTS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."PRODUCTS_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence PROMOTIONS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."PROMOTIONS_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence RESERVATION_PRODUCTS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."RESERVATION_PRODUCTS_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence RESERVATION_SEATS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."RESERVATION_SEATS_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence RESERVATIONS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."RESERVATIONS_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SCREENING_ROOMS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."SCREENING_ROOMS_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEANCES_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."SEANCES_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEATS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."SEATS_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 221 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence TECHNOLOGIES_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."TECHNOLOGIES_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence TICKETS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."TICKETS_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence USERS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."USERS_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence VOUCHERS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."VOUCHERS_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence WORKERS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."WORKERS_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table CACHE
--------------------------------------------------------

  CREATE TABLE "HR"."CACHE" 
   (	"KEY" VARCHAR2(255 BYTE), 
	"VALUE" CLOB, 
	"EXPIRATION" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSAUX" 
 LOB ("VALUE") STORE AS SECUREFILE (
  TABLESPACE "SYSAUX" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;
--------------------------------------------------------
--  DDL for Table CACHE_LOCKS
--------------------------------------------------------

  CREATE TABLE "HR"."CACHE_LOCKS" 
   (	"KEY" VARCHAR2(255 BYTE), 
	"OWNER" VARCHAR2(255 BYTE), 
	"EXPIRATION" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table FAILED_JOBS
--------------------------------------------------------

  CREATE TABLE "HR"."FAILED_JOBS" 
   (	"ID" NUMBER(19,0), 
	"UUID" VARCHAR2(255 BYTE), 
	"CONNECTION" CLOB, 
	"QUEUE" CLOB, 
	"PAYLOAD" CLOB, 
	"EXCEPTION" CLOB, 
	"FAILED_AT" TIMESTAMP (6)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSAUX" 
 LOB ("CONNECTION") STORE AS SECUREFILE (
  TABLESPACE "SYSAUX" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) 
 LOB ("QUEUE") STORE AS SECUREFILE (
  TABLESPACE "SYSAUX" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) 
 LOB ("PAYLOAD") STORE AS SECUREFILE (
  TABLESPACE "SYSAUX" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) 
 LOB ("EXCEPTION") STORE AS SECUREFILE (
  TABLESPACE "SYSAUX" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;
--------------------------------------------------------
--  DDL for Table FILMS
--------------------------------------------------------

  CREATE TABLE "HR"."FILMS" 
   (	"ID" NUMBER(19,0), 
	"NAME" VARCHAR2(100 BYTE), 
	"DESCRIPTION" VARCHAR2(1000 BYTE), 
	"DURATION" VARCHAR2(10 BYTE), 
	"GENRE" VARCHAR2(60 BYTE), 
	"IMG" VARCHAR2(60 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table JOB_BATCHES
--------------------------------------------------------

  CREATE TABLE "HR"."JOB_BATCHES" 
   (	"ID" VARCHAR2(255 BYTE), 
	"NAME" VARCHAR2(255 BYTE), 
	"TOTAL_JOBS" NUMBER(10,0), 
	"PENDING_JOBS" NUMBER(10,0), 
	"FAILED_JOBS" NUMBER(10,0), 
	"FAILED_JOB_IDS" CLOB, 
	"OPTIONS" CLOB, 
	"CANCELLED_AT" NUMBER(10,0), 
	"CREATED_AT" NUMBER(10,0), 
	"FINISHED_AT" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSAUX" 
 LOB ("FAILED_JOB_IDS") STORE AS SECUREFILE (
  TABLESPACE "SYSAUX" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) 
 LOB ("OPTIONS") STORE AS SECUREFILE (
  TABLESPACE "SYSAUX" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;
--------------------------------------------------------
--  DDL for Table JOBS
--------------------------------------------------------

  CREATE TABLE "HR"."JOBS" 
   (	"ID" NUMBER(19,0), 
	"QUEUE" VARCHAR2(255 BYTE), 
	"PAYLOAD" CLOB, 
	"ATTEMPTS" NUMBER(3,0), 
	"RESERVED_AT" NUMBER(10,0), 
	"AVAILABLE_AT" NUMBER(10,0), 
	"CREATED_AT" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSAUX" 
 LOB ("PAYLOAD") STORE AS SECUREFILE (
  TABLESPACE "SYSAUX" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;
--------------------------------------------------------
--  DDL for Table MIGRATIONS
--------------------------------------------------------

  CREATE TABLE "HR"."MIGRATIONS" 
   (	"ID" NUMBER(10,0), 
	"MIGRATION" VARCHAR2(255 BYTE), 
	"BATCH" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table PASSWORD_RESET_TOKENS
--------------------------------------------------------

  CREATE TABLE "HR"."PASSWORD_RESET_TOKENS" 
   (	"EMAIL" VARCHAR2(255 BYTE), 
	"TOKEN" VARCHAR2(255 BYTE), 
	"CREATED_AT" TIMESTAMP (6)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table PRODUCTS
--------------------------------------------------------

  CREATE TABLE "HR"."PRODUCTS" 
   (	"ID" NUMBER(19,0), 
	"NAME" VARCHAR2(30 BYTE), 
	"PRICE" NUMBER(8,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table PROMOTIONS
--------------------------------------------------------

  CREATE TABLE "HR"."PROMOTIONS" 
   (	"ID" NUMBER(19,0), 
	"DISCOUNT" NUMBER(8,2), 
	"START_TIME" TIMESTAMP (6), 
	"END_TIME" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table RESERVATION_PRODUCTS
--------------------------------------------------------

  CREATE TABLE "HR"."RESERVATION_PRODUCTS" 
   (	"ID" NUMBER(19,0), 
	"RESERVATION_ID" NUMBER(19,0), 
	"PRODUCT_ID" NUMBER(19,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table RESERVATIONS
--------------------------------------------------------

  CREATE TABLE "HR"."RESERVATIONS" 
   (	"ID" NUMBER(19,0), 
	"SEANCE_ID" NUMBER(19,0), 
	"USER_ID" NUMBER(19,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table RESERVATION_SEATS
--------------------------------------------------------

  CREATE TABLE "HR"."RESERVATION_SEATS" 
   (	"ID" NUMBER(19,0), 
	"RESERVATION_ID" NUMBER(19,0), 
	"SEAT_ID" NUMBER(19,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table SCREENING_ROOMS
--------------------------------------------------------

  CREATE TABLE "HR"."SCREENING_ROOMS" 
   (	"ID" NUMBER(19,0), 
	"SEATS" NUMBER(10,0), 
	"NUMBER_OF_ROWS" NUMBER(10,0), 
	"PRICE_FOR_SEAT" NUMBER(8,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table SEANCES
--------------------------------------------------------

  CREATE TABLE "HR"."SEANCES" 
   (	"ID" NUMBER(19,0), 
	"FILM_ID" NUMBER(19,0), 
	"SCREENING_ROOM_ID" NUMBER(19,0), 
	"WORKER_ID" NUMBER(19,0), 
	"TECHNOLOGY_ID" NUMBER(19,0), 
	"PROMOTION_ID" NUMBER(19,0), 
	"START_TIME" TIMESTAMP (6), 
	"END_TIME" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table SEATS
--------------------------------------------------------

  CREATE TABLE "HR"."SEATS" 
   (	"ID" NUMBER(19,0), 
	"SCREENING_ROOM_ID" NUMBER(19,0), 
	"ROW_NUMBER" NUMBER(10,0), 
	"SEAT_IN_ROW" NUMBER(10,0), 
	"VIP" CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table SESSIONS
--------------------------------------------------------

  CREATE TABLE "HR"."SESSIONS" 
   (	"ID" VARCHAR2(255 BYTE), 
	"USER_ID" NUMBER(19,0), 
	"IP_ADDRESS" VARCHAR2(45 BYTE), 
	"USER_AGENT" CLOB, 
	"PAYLOAD" CLOB, 
	"LAST_ACTIVITY" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSAUX" 
 LOB ("USER_AGENT") STORE AS SECUREFILE (
  TABLESPACE "SYSAUX" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) 
 LOB ("PAYLOAD") STORE AS SECUREFILE (
  TABLESPACE "SYSAUX" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;
--------------------------------------------------------
--  DDL for Table TECHNOLOGIES
--------------------------------------------------------

  CREATE TABLE "HR"."TECHNOLOGIES" 
   (	"ID" NUMBER(19,0), 
	"NAME" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table TICKETS
--------------------------------------------------------

  CREATE TABLE "HR"."TICKETS" 
   (	"ID" NUMBER(19,0), 
	"RESERVATION_ID" NUMBER(19,0), 
	"VOUCHER_ID" NUMBER(19,0), 
	"PRICE" NUMBER(8,2)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "HR"."USERS" 
   (	"ID" NUMBER(19,0), 
	"NAME" VARCHAR2(30 BYTE), 
	"SURNAME" VARCHAR2(30 BYTE), 
	"EMAIL" VARCHAR2(40 BYTE), 
	"PHONE_NUMBER" NUMBER(10,0), 
	"ROLE" VARCHAR2(5 BYTE) DEFAULT 'user', 
	"PASSWORD" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table VOUCHERS
--------------------------------------------------------

  CREATE TABLE "HR"."VOUCHERS" 
   (	"ID" NUMBER(19,0), 
	"NAME" VARCHAR2(30 BYTE), 
	"DISCOUNT" NUMBER(8,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table WORKERS
--------------------------------------------------------

  CREATE TABLE "HR"."WORKERS" 
   (	"ID" NUMBER(19,0), 
	"NAME" VARCHAR2(30 BYTE), 
	"SURNAME" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
REM INSERTING into HR.CACHE
SET DEFINE OFF;
REM INSERTING into HR.CACHE_LOCKS
SET DEFINE OFF;
REM INSERTING into HR.FAILED_JOBS
SET DEFINE OFF;
REM INSERTING into HR.FILMS
SET DEFINE OFF;
Insert into HR.FILMS (ID,NAME,DESCRIPTION,DURATION,GENRE,IMG) values ('1','Avengers: Koniec gry','Po niszcz¹cych wydarzeniach Avengers: Wojna bez granic, wszechœwiat jest w ruinie. Z pomoc¹ pozosta³ych sojuszników Avengers zbieraj¹ siê ponownie, aby odwróciæ dzia³ania Thanosa i przywróciæ równowagê wszechœwiata.','181','Akcja, Przygodowy, Dramat','avengers_endgame.jpg');
Insert into HR.FILMS (ID,NAME,DESCRIPTION,DURATION,GENRE,IMG) values ('2','Batman','Mroczny Rycerz Gotham City rozpoczyna swoj¹ wojnê z przestêpczoœci¹, a jego pierwszym g³ównym wrogiem jest zabójczy klaun Joker.','126','Akcja, Przygodowy','batman.jpg');
Insert into HR.FILMS (ID,NAME,DESCRIPTION,DURATION,GENRE,IMG) values ('3','Incepcja','Z³odziej, który kradnie tajemnice korporacyjne za pomoc¹ technologii dzielenia siê snami, dostaje odwrotne zadanie - wszczepiæ pomys³ do umys³u C.E.O.','148','Akcja, Przygodowy, Sci-Fi','inception.jpg');
Insert into HR.FILMS (ID,NAME,DESCRIPTION,DURATION,GENRE,IMG) values ('4','Interstellar','Zespó³ odkrywców podró¿uje przez tunel czasoprzestrzenny w kosmosie, aby zapewniæ przetrwanie ludzkoœci.','169','Przygodowy, Dramat, Sci-Fi','interstellar.jpg');
Insert into HR.FILMS (ID,NAME,DESCRIPTION,DURATION,GENRE,IMG) values ('5','Skazani na Shawshank','Dwóch wiêŸniów zaprzyjaŸnia siê na przestrzeni lat, znajduj¹c ukojenie i ostateczne odkupienie poprzez akty powszechnej przyzwoitoœci.','142','Dramat','shawshank.jpg');
Insert into HR.FILMS (ID,NAME,DESCRIPTION,DURATION,GENRE,IMG) values ('6','Avatar','Paraplegiczny ¿o³nierz jest wysy³any na ksiê¿yc Pandora na unikaln¹ misjê, ale staje przed dylematem miêdzy przestrzeganiem rozkazów a ochron¹ nowego œwiata.','162','Akcja, Przygodowy, Sci-Fi','avatar.jpg');
Insert into HR.FILMS (ID,NAME,DESCRIPTION,DURATION,GENRE,IMG) values ('7','Bêkarty wojny','W okupowanej przez nazistów Francji grupa ¿ydowskich ¿o³nierzy przeprowadza skoordynowane operacje partyzanckie przeciwko Niemcom.','153','Przygodowy, Dramat, Wojenny','inglourious_basterds.jpg');
Insert into HR.FILMS (ID,NAME,DESCRIPTION,DURATION,GENRE,IMG) values ('8','Blade Runner 2049','Nowy blade runner odkrywa dawno skrywan¹ tajemnicê, która mo¿e pogr¹¿yæ to, co pozosta³o z spo³eczeñstwa, w chaosie.','164','Sci-Fi, Thriller','blade_runner_2049.jpg');
Insert into HR.FILMS (ID,NAME,DESCRIPTION,DURATION,GENRE,IMG) values ('9','Bohemian Rhapsody','Biografia legendarnego zespo³u rockowego Queen i ich wokalisty, Freddiego Mercury''ego, prowadz¹ca do s³ynnego wystêpu na Live Aid w 1985 roku.','134','Biograficzny, Dramat, Muzyczny','bohemian_rhapsody.jpg');
Insert into HR.FILMS (ID,NAME,DESCRIPTION,DURATION,GENRE,IMG) values ('10','Django','Wyzwolony niewolnik sprzymierza siê z niemieckim ³owc¹ nagród, aby uratowaæ swoj¹ ¿onê z r¹k brutalnego w³aœciciela plantacji.','165','Dramat, Western','django.jpg');
Insert into HR.FILMS (ID,NAME,DESCRIPTION,DURATION,GENRE,IMG) values ('11','Dunkierka','Alianci z Belgii, Imperium Brytyjskiego i Francji s¹ otoczeni przez niemieck¹ armiê i ewakuowani podczas zaciek³ej bitwy pod Dunkierk¹.','106','Akcja, Dramat, Historia','dunkirk.jpg');
Insert into HR.FILMS (ID,NAME,DESCRIPTION,DURATION,GENRE,IMG) values ('12','Dystrykt 9','Nieludzcy obcy musz¹ ¿yæ w warunkach przypominaj¹cych slumsy na Ziemi, ale jeden z nich niespodziewanie odkrywa, jak mo¿e pomóc swoim wspó³ziomkom.','112','Akcja, Sci-Fi, Thriller','district_9.jpg');
Insert into HR.FILMS (ID,NAME,DESCRIPTION,DURATION,GENRE,IMG) values ('13','Faceci w czerni','Agenci tajnej organizacji œledz¹cej i reguluj¹cej ¿ycie obcych na Ziemi musz¹ powstrzymaæ zagro¿enie dla planety.','98','Akcja, Przygodowy, Komedia','men_in_black.jpg');
Insert into HR.FILMS (ID,NAME,DESCRIPTION,DURATION,GENRE,IMG) values ('14','Furia','Za³oga amerykañskiego czo³gu stawia czo³a trudnoœciom w ostatnich dniach II wojny œwiatowej.','134','Akcja, Dramat, Wojenny','fury.jpg');
Insert into HR.FILMS (ID,NAME,DESCRIPTION,DURATION,GENRE,IMG) values ('15','Gwiezdne wojny: czêœæ III - Zemsta Sithów','Anakin Skywalker zostaje skuszony przez mroczn¹ stronê Mocy i staje siê Darth Vaderem, ale Jedi walcz¹ o przetrwanie.','140','Akcja, Przygodowy, Sci-Fi','star_wars_ep_iii.jpg');
Insert into HR.FILMS (ID,NAME,DESCRIPTION,DURATION,GENRE,IMG) values ('16','Jak wytresowaæ smoka','M³ody Wiking, który chce walczyæ ze smokami, zaprzyjaŸnia siê z m³odym smokiem i uczy siê, ¿e mog¹ byæ bardziej wartoœciowi ni¿ s¹dzono.','98','Animacja, Przygodowy, Familijny','how_to_train_your_dragon.jpg');
Insert into HR.FILMS (ID,NAME,DESCRIPTION,DURATION,GENRE,IMG) values ('17','Król Lew','M³ody lew Simba zostaje wygnany po œmierci swojego ojca i musi dorosn¹æ, aby odzyskaæ swoje królestwo.','88','Animacja, Przygodowy, Dramat','lion_king.jpg');
Insert into HR.FILMS (ID,NAME,DESCRIPTION,DURATION,GENRE,IMG) values ('18','Marsjanin','Astronauta zostaje przypadkowo pozostawiony na Marsie i musi wykorzystaæ swoj¹ inteligencjê, aby przetrwaæ i znaleŸæ sposób na powrót na Ziemiê.','144','Przygodowy, Dramat, Sci-Fi','martian.jpg');
Insert into HR.FILMS (ID,NAME,DESCRIPTION,DURATION,GENRE,IMG) values ('19','Matrix','Haker odkrywa, ¿e rzeczywistoœæ, w której ¿yje, jest wirtualn¹ symulacj¹ stworzona przez maszyny i do³¹cza do rebelii, aby j¹ zniszczyæ.','136','Akcja, Sci-Fi','matrix.jpg');
Insert into HR.FILMS (ID,NAME,DESCRIPTION,DURATION,GENRE,IMG) values ('20','Ratatuj','Szczur o imieniu Remy marzy o zostaniu wielkim szefem kuchni i nawi¹zuje niezwyk³¹ wspó³pracê z m³odym kucharzem w presti¿owej restauracji.','111','Animacja, Przygodowy, Komedia','ratatouille.jpg');
Insert into HR.FILMS (ID,NAME,DESCRIPTION,DURATION,GENRE,IMG) values ('21','Sherlock Holmes','Detektyw Sherlock Holmes i jego partner Watson rozwi¹zuj¹ sprawy kryminalne i zwalczaj¹ niebezpiecznych przestêpców w Londynie.','128','Akcja, Przygodowy, Krymina³','sherlock_holmes.jpg');
Insert into HR.FILMS (ID,NAME,DESCRIPTION,DURATION,GENRE,IMG) values ('22','Stra¿nicy Galaktyki','Grupa miêdzygwiezdnych outsiderów musi zjednoczyæ siê, aby powstrzymaæ potê¿nego przeciwnika przed zniszczeniem galaktyki.','121','Akcja, Przygodowy, Komedia','guardians_of_the_galaxy.jpg');
Insert into HR.FILMS (ID,NAME,DESCRIPTION,DURATION,GENRE,IMG) values ('23','Szybcy i wœciekli','Podziemny œwiat nielegalnych wyœcigów samochodowych i misje pe³ne akcji oraz adrenaliny.','107','Akcja, Krymina³, Thriller','fast_and_furious.jpg');
Insert into HR.FILMS (ID,NAME,DESCRIPTION,DURATION,GENRE,IMG) values ('24','Titanic','Romans miêdzy m³od¹ arystokratk¹ a biednym artyst¹ na pok³adzie luksusowego statku, który zmierza ku tragedii.','195','Dramat, Romans','titanic.jpg');
Insert into HR.FILMS (ID,NAME,DESCRIPTION,DURATION,GENRE,IMG) values ('25','WALL-E','Robot odpowiedzialny za sprz¹tanie Ziemi z odpadków odkrywa nowy cel ¿ycia, gdy spotyka nowoczesnego robota zwiadowczego, Evê.','98','Animacja, Przygodowy, Familijny','wall_e.jpg');
Insert into HR.FILMS (ID,NAME,DESCRIPTION,DURATION,GENRE,IMG) values ('26','Wiêzieñ labiryntu','Nastoletni ch³opak budzi siê w tajemniczym labiryncie bez pamiêci o swoim poprzednim ¿yciu i musi po³¹czyæ si³y z innymi, aby znaleŸæ wyjœcie.','113','Akcja, Sci-Fi, Thriller','maze_runner.jpg');
REM INSERTING into HR.JOB_BATCHES
SET DEFINE OFF;
REM INSERTING into HR.JOBS
SET DEFINE OFF;
REM INSERTING into HR.MIGRATIONS
SET DEFINE OFF;
Insert into HR.MIGRATIONS (ID,MIGRATION,BATCH) values ('1','0001_01_01_000000_create_users_table','1');
Insert into HR.MIGRATIONS (ID,MIGRATION,BATCH) values ('2','0001_01_01_000001_create_cache_table','1');
Insert into HR.MIGRATIONS (ID,MIGRATION,BATCH) values ('3','0001_01_01_000002_create_jobs_table','1');
Insert into HR.MIGRATIONS (ID,MIGRATION,BATCH) values ('4','2024_05_13_162218_create_workers_table','1');
Insert into HR.MIGRATIONS (ID,MIGRATION,BATCH) values ('5','2024_05_13_162225_create_technologies_table','1');
Insert into HR.MIGRATIONS (ID,MIGRATION,BATCH) values ('6','2024_05_13_162232_create_films_table','1');
Insert into HR.MIGRATIONS (ID,MIGRATION,BATCH) values ('7','2024_05_13_162243_create_promotions_table','1');
Insert into HR.MIGRATIONS (ID,MIGRATION,BATCH) values ('8','2024_05_13_162404_create_screening_rooms_table','1');
Insert into HR.MIGRATIONS (ID,MIGRATION,BATCH) values ('9','2024_05_13_162406_create_seances_table','1');
Insert into HR.MIGRATIONS (ID,MIGRATION,BATCH) values ('10','2024_05_13_162423_create_seats_table','1');
Insert into HR.MIGRATIONS (ID,MIGRATION,BATCH) values ('11','2024_05_13_162441_create_reservations_table','1');
Insert into HR.MIGRATIONS (ID,MIGRATION,BATCH) values ('12','2024_05_13_162447_create_vouchers_table','1');
Insert into HR.MIGRATIONS (ID,MIGRATION,BATCH) values ('13','2024_05_13_162452_create_tickets_table','1');
Insert into HR.MIGRATIONS (ID,MIGRATION,BATCH) values ('14','2024_05_13_162514_create_reservation_seats_table','1');
Insert into HR.MIGRATIONS (ID,MIGRATION,BATCH) values ('15','2024_05_13_162531_create_products_table','1');
Insert into HR.MIGRATIONS (ID,MIGRATION,BATCH) values ('16','2024_05_13_162546_create_reservation_products_table','1');
REM INSERTING into HR.PASSWORD_RESET_TOKENS
SET DEFINE OFF;
REM INSERTING into HR.PRODUCTS
SET DEFINE OFF;
Insert into HR.PRODUCTS (ID,NAME,PRICE) values ('1','Popcorn','5,99');
Insert into HR.PRODUCTS (ID,NAME,PRICE) values ('2','Soda','2,99');
Insert into HR.PRODUCTS (ID,NAME,PRICE) values ('3','Cukierki','1,49');
Insert into HR.PRODUCTS (ID,NAME,PRICE) values ('4','Nachos','4,99');
Insert into HR.PRODUCTS (ID,NAME,PRICE) values ('5','Hot Dog','3,99');
REM INSERTING into HR.PROMOTIONS
SET DEFINE OFF;
Insert into HR.PROMOTIONS (ID,DISCOUNT,START_TIME,END_TIME) values ('1','10',to_timestamp('24/05/14 08:00:00,000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/08/14 10:00:00,000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into HR.PROMOTIONS (ID,DISCOUNT,START_TIME,END_TIME) values ('2','15',to_timestamp('24/05/14 08:00:00,000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/08/14 10:00:00,000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into HR.PROMOTIONS (ID,DISCOUNT,START_TIME,END_TIME) values ('3','12',to_timestamp('24/05/14 08:00:00,000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/08/14 10:00:00,000000000','RR/MM/DD HH24:MI:SSXFF'));
REM INSERTING into HR.RESERVATION_PRODUCTS
SET DEFINE OFF;
REM INSERTING into HR.RESERVATIONS
SET DEFINE OFF;
REM INSERTING into HR.RESERVATION_SEATS
SET DEFINE OFF;
REM INSERTING into HR.SCREENING_ROOMS
SET DEFINE OFF;
Insert into HR.SCREENING_ROOMS (ID,SEATS,NUMBER_OF_ROWS,PRICE_FOR_SEAT) values ('1','100','10','16,5');
Insert into HR.SCREENING_ROOMS (ID,SEATS,NUMBER_OF_ROWS,PRICE_FOR_SEAT) values ('2','120','12','18,5');
REM INSERTING into HR.SEANCES
SET DEFINE OFF;
Insert into HR.SEANCES (ID,FILM_ID,SCREENING_ROOM_ID,WORKER_ID,TECHNOLOGY_ID,PROMOTION_ID,START_TIME,END_TIME) values ('5','5','1','1','1','1',to_timestamp('24/06/19 16:00:00,000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/06/19 18:22:00,000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into HR.SEANCES (ID,FILM_ID,SCREENING_ROOM_ID,WORKER_ID,TECHNOLOGY_ID,PROMOTION_ID,START_TIME,END_TIME) values ('6','6','2','2','2','1',to_timestamp('24/06/19 19:00:00,000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/06/19 21:42:00,000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into HR.SEANCES (ID,FILM_ID,SCREENING_ROOM_ID,WORKER_ID,TECHNOLOGY_ID,PROMOTION_ID,START_TIME,END_TIME) values ('7','7','1','1','1','1',to_timestamp('24/06/20 12:00:00,000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/06/20 14:33:00,000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into HR.SEANCES (ID,FILM_ID,SCREENING_ROOM_ID,WORKER_ID,TECHNOLOGY_ID,PROMOTION_ID,START_TIME,END_TIME) values ('8','8','2','2','2','1',to_timestamp('24/06/20 16:00:00,000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/06/20 18:44:00,000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into HR.SEANCES (ID,FILM_ID,SCREENING_ROOM_ID,WORKER_ID,TECHNOLOGY_ID,PROMOTION_ID,START_TIME,END_TIME) values ('9','9','1','1','1','1',to_timestamp('24/06/20 19:00:00,000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/06/20 21:14:00,000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into HR.SEANCES (ID,FILM_ID,SCREENING_ROOM_ID,WORKER_ID,TECHNOLOGY_ID,PROMOTION_ID,START_TIME,END_TIME) values ('10','10','2','2','2','1',to_timestamp('24/06/21 12:00:00,000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/06/21 14:45:00,000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into HR.SEANCES (ID,FILM_ID,SCREENING_ROOM_ID,WORKER_ID,TECHNOLOGY_ID,PROMOTION_ID,START_TIME,END_TIME) values ('11','11','1','1','1','1',to_timestamp('24/06/21 16:00:00,000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/06/21 17:46:00,000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into HR.SEANCES (ID,FILM_ID,SCREENING_ROOM_ID,WORKER_ID,TECHNOLOGY_ID,PROMOTION_ID,START_TIME,END_TIME) values ('12','12','2','2','2','1',to_timestamp('24/06/21 19:00:00,000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/06/21 20:52:00,000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into HR.SEANCES (ID,FILM_ID,SCREENING_ROOM_ID,WORKER_ID,TECHNOLOGY_ID,PROMOTION_ID,START_TIME,END_TIME) values ('13','13','1','1','1','1',to_timestamp('24/06/22 12:00:00,000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/06/22 13:38:00,000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into HR.SEANCES (ID,FILM_ID,SCREENING_ROOM_ID,WORKER_ID,TECHNOLOGY_ID,PROMOTION_ID,START_TIME,END_TIME) values ('14','14','2','2','2','1',to_timestamp('24/06/22 16:00:00,000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/06/22 18:14:00,000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into HR.SEANCES (ID,FILM_ID,SCREENING_ROOM_ID,WORKER_ID,TECHNOLOGY_ID,PROMOTION_ID,START_TIME,END_TIME) values ('15','15','1','1','1','1',to_timestamp('24/06/22 19:00:00,000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/06/22 21:20:00,000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into HR.SEANCES (ID,FILM_ID,SCREENING_ROOM_ID,WORKER_ID,TECHNOLOGY_ID,PROMOTION_ID,START_TIME,END_TIME) values ('16','16','2','2','2','1',to_timestamp('24/06/23 12:00:00,000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/06/23 13:38:00,000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into HR.SEANCES (ID,FILM_ID,SCREENING_ROOM_ID,WORKER_ID,TECHNOLOGY_ID,PROMOTION_ID,START_TIME,END_TIME) values ('17','17','1','1','1','1',to_timestamp('24/06/23 16:00:00,000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/06/23 17:28:00,000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into HR.SEANCES (ID,FILM_ID,SCREENING_ROOM_ID,WORKER_ID,TECHNOLOGY_ID,PROMOTION_ID,START_TIME,END_TIME) values ('18','18','2','2','2','1',to_timestamp('24/06/23 19:00:00,000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/06/23 21:24:00,000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into HR.SEANCES (ID,FILM_ID,SCREENING_ROOM_ID,WORKER_ID,TECHNOLOGY_ID,PROMOTION_ID,START_TIME,END_TIME) values ('19','19','1','1','1','1',to_timestamp('24/06/24 12:00:00,000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/06/24 14:16:00,000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into HR.SEANCES (ID,FILM_ID,SCREENING_ROOM_ID,WORKER_ID,TECHNOLOGY_ID,PROMOTION_ID,START_TIME,END_TIME) values ('20','20','2','2','2','1',to_timestamp('24/06/24 16:00:00,000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/06/24 17:51:00,000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into HR.SEANCES (ID,FILM_ID,SCREENING_ROOM_ID,WORKER_ID,TECHNOLOGY_ID,PROMOTION_ID,START_TIME,END_TIME) values ('21','21','1','1','1','1',to_timestamp('24/06/24 19:00:00,000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/06/24 21:08:00,000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into HR.SEANCES (ID,FILM_ID,SCREENING_ROOM_ID,WORKER_ID,TECHNOLOGY_ID,PROMOTION_ID,START_TIME,END_TIME) values ('22','22','2','2','2','1',to_timestamp('24/06/25 12:00:00,000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/06/25 14:01:00,000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into HR.SEANCES (ID,FILM_ID,SCREENING_ROOM_ID,WORKER_ID,TECHNOLOGY_ID,PROMOTION_ID,START_TIME,END_TIME) values ('23','23','1','1','1','1',to_timestamp('24/06/25 16:00:00,000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/06/25 17:47:00,000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into HR.SEANCES (ID,FILM_ID,SCREENING_ROOM_ID,WORKER_ID,TECHNOLOGY_ID,PROMOTION_ID,START_TIME,END_TIME) values ('24','24','2','2','2','1',to_timestamp('24/06/25 19:00:00,000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/06/25 22:15:00,000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into HR.SEANCES (ID,FILM_ID,SCREENING_ROOM_ID,WORKER_ID,TECHNOLOGY_ID,PROMOTION_ID,START_TIME,END_TIME) values ('25','25','1','1','1','1',to_timestamp('24/06/26 12:00:00,000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/06/26 13:38:00,000000000','RR/MM/DD HH24:MI:SSXFF'));
REM INSERTING into HR.SEATS
SET DEFINE OFF;
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('1','1','1','1','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('2','1','1','2','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('3','1','1','3','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('4','1','1','4','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('5','1','1','5','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('6','1','1','6','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('7','1','1','7','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('8','1','1','8','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('9','1','1','9','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('10','1','1','10','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('11','1','2','1','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('12','1','2','2','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('13','1','2','3','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('14','1','2','4','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('15','1','2','5','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('16','1','2','6','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('17','1','2','7','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('18','1','2','8','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('19','1','2','9','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('20','1','2','10','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('21','1','3','1','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('22','1','3','2','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('23','1','3','3','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('24','1','3','4','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('25','1','3','5','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('26','1','3','6','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('27','1','3','7','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('28','1','3','8','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('29','1','3','9','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('30','1','3','10','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('31','1','4','1','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('32','1','4','2','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('33','1','4','3','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('34','1','4','4','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('35','1','4','5','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('36','1','4','6','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('37','1','4','7','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('38','1','4','8','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('39','1','4','9','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('40','1','4','10','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('41','1','5','1','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('42','1','5','2','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('43','1','5','3','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('44','1','5','4','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('45','1','5','5','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('46','1','5','6','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('47','1','5','7','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('48','1','5','8','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('49','1','5','9','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('50','1','5','10','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('51','1','6','1','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('52','1','6','2','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('53','1','6','3','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('54','1','6','4','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('55','1','6','5','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('56','1','6','6','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('57','1','6','7','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('58','1','6','8','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('59','1','6','9','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('60','1','6','10','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('61','1','7','1','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('62','1','7','2','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('63','1','7','3','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('64','1','7','4','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('65','1','7','5','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('66','1','7','6','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('67','1','7','7','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('68','1','7','8','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('69','1','7','9','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('70','1','7','10','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('71','1','8','1','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('72','1','8','2','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('73','1','8','3','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('74','1','8','4','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('75','1','8','5','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('76','1','8','6','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('77','1','8','7','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('78','1','8','8','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('79','1','8','9','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('80','1','8','10','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('81','1','9','1','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('82','1','9','2','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('83','1','9','3','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('84','1','9','4','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('85','1','9','5','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('86','1','9','6','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('87','1','9','7','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('88','1','9','8','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('89','1','9','9','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('90','1','9','10','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('91','1','10','1','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('92','1','10','2','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('93','1','10','3','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('94','1','10','4','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('95','1','10','5','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('96','1','10','6','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('97','1','10','7','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('98','1','10','8','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('99','1','10','9','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('100','1','10','10','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('101','2','1','1','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('102','2','1','2','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('103','2','1','3','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('104','2','1','4','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('105','2','1','5','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('106','2','1','6','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('107','2','1','7','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('108','2','1','8','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('109','2','1','9','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('110','2','1','10','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('111','2','2','1','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('112','2','2','2','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('113','2','2','3','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('114','2','2','4','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('115','2','2','5','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('116','2','2','6','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('117','2','2','7','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('118','2','2','8','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('119','2','2','9','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('120','2','2','10','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('121','2','3','1','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('122','2','3','2','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('123','2','3','3','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('124','2','3','4','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('125','2','3','5','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('126','2','3','6','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('127','2','3','7','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('128','2','3','8','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('129','2','3','9','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('130','2','3','10','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('131','2','4','1','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('132','2','4','2','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('133','2','4','3','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('134','2','4','4','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('135','2','4','5','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('136','2','4','6','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('137','2','4','7','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('138','2','4','8','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('139','2','4','9','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('140','2','4','10','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('141','2','5','1','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('142','2','5','2','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('143','2','5','3','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('144','2','5','4','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('145','2','5','5','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('146','2','5','6','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('147','2','5','7','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('148','2','5','8','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('149','2','5','9','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('150','2','5','10','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('151','2','6','1','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('152','2','6','2','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('153','2','6','3','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('154','2','6','4','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('155','2','6','5','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('156','2','6','6','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('157','2','6','7','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('158','2','6','8','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('159','2','6','9','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('160','2','6','10','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('161','2','7','1','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('162','2','7','2','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('163','2','7','3','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('164','2','7','4','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('165','2','7','5','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('166','2','7','6','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('167','2','7','7','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('168','2','7','8','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('169','2','7','9','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('170','2','7','10','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('171','2','8','1','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('172','2','8','2','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('173','2','8','3','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('174','2','8','4','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('175','2','8','5','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('176','2','8','6','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('177','2','8','7','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('178','2','8','8','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('179','2','8','9','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('180','2','8','10','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('181','2','9','1','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('182','2','9','2','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('183','2','9','3','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('184','2','9','4','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('185','2','9','5','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('186','2','9','6','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('187','2','9','7','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('188','2','9','8','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('189','2','9','9','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('190','2','9','10','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('191','2','10','1','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('192','2','10','2','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('193','2','10','3','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('194','2','10','4','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('195','2','10','5','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('196','2','10','6','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('197','2','10','7','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('198','2','10','8','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('199','2','10','9','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('200','2','10','10','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('201','2','11','1','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('202','2','11','2','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('203','2','11','3','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('204','2','11','4','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('205','2','11','5','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('206','2','11','6','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('207','2','11','7','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('208','2','11','8','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('209','2','11','9','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('210','2','11','10','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('211','2','12','1','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('212','2','12','2','T');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('213','2','12','3','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('214','2','12','4','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('215','2','12','5','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('216','2','12','6','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('217','2','12','7','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('218','2','12','8','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('219','2','12','9','N');
Insert into HR.SEATS (ID,SCREENING_ROOM_ID,ROW_NUMBER,SEAT_IN_ROW,VIP) values ('220','2','12','10','N');
REM INSERTING into HR.SESSIONS
SET DEFINE OFF;
REM INSERTING into HR.TECHNOLOGIES
SET DEFINE OFF;
Insert into HR.TECHNOLOGIES (ID,NAME) values ('1','IMAX');
Insert into HR.TECHNOLOGIES (ID,NAME) values ('2','3D');
REM INSERTING into HR.TICKETS
SET DEFINE OFF;
REM INSERTING into HR.USERS
SET DEFINE OFF;
Insert into HR.USERS (ID,NAME,SURNAME,EMAIL,PHONE_NUMBER,ROLE,PASSWORD) values ('1','admin','admin','admin@example.com','123456789','admin','$2y$12$3Ud8yDI5iCGSRnZMp9TsNuRSi8ey6OfORtcQ0VnjrHOIYjJsX0.da');
Insert into HR.USERS (ID,NAME,SURNAME,EMAIL,PHONE_NUMBER,ROLE,PASSWORD) values ('2','Adam','Nowak','adam@example.com','987654321','user','$2y$12$wNa4EH2aTrB4mh/ofqKNqO9c11.psRJi854duNwJiTsSA5dts0p3W');
Insert into HR.USERS (ID,NAME,SURNAME,EMAIL,PHONE_NUMBER,ROLE,PASSWORD) values ('3','Alicja','Korzenna','alicja@example.com','456123789','user','$2y$12$wcHcPlBUTRsF8fwyITTRh.fGEUDpQEYoxkdggb2QYdxEk44odwSPW');
Insert into HR.USERS (ID,NAME,SURNAME,EMAIL,PHONE_NUMBER,ROLE,PASSWORD) values ('4','Jerzy','D¹browicz','jerzy@example.com','789456123','user','$2y$12$mhWRPsvSmrb/1EZ4vGUsWenndqgPl3u02XCKhaYG6faFJQqLY/3Cy');
Insert into HR.USERS (ID,NAME,SURNAME,EMAIL,PHONE_NUMBER,ROLE,PASSWORD) values ('5','Katarzyna','Siewierska','katarzyna@example.com','321654987','user','$2y$12$yF2i9fiZx48..B/W9bOI.uK897fDRm7JCCajHqon0kfz5quGCIoDq');
REM INSERTING into HR.VOUCHERS
SET DEFINE OFF;
Insert into HR.VOUCHERS (ID,NAME,DISCOUNT) values ('1','Voucher1','10');
Insert into HR.VOUCHERS (ID,NAME,DISCOUNT) values ('2','Voucher2','15');
Insert into HR.VOUCHERS (ID,NAME,DISCOUNT) values ('3','Voucher3','20');
REM INSERTING into HR.WORKERS
SET DEFINE OFF;
Insert into HR.WORKERS (ID,NAME,SURNAME) values ('1','Bogdan','Niemojewski');
Insert into HR.WORKERS (ID,NAME,SURNAME) values ('2','Malwina','Bielecka');
Insert into HR.WORKERS (ID,NAME,SURNAME) values ('3','Florian','Kwaœniak');
--------------------------------------------------------
--  DDL for Index CACHE_KEY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."CACHE_KEY_PK" ON "HR"."CACHE" ("KEY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index CACHE_LOCKS_KEY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."CACHE_LOCKS_KEY_PK" ON "HR"."CACHE_LOCKS" ("KEY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index FAILED_JOBS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."FAILED_JOBS_ID_PK" ON "HR"."FAILED_JOBS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index FAILED_JOBS_UUID_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."FAILED_JOBS_UUID_UK" ON "HR"."FAILED_JOBS" ("UUID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index FILMS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."FILMS_ID_PK" ON "HR"."FILMS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index JOB_BATCHES_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."JOB_BATCHES_ID_PK" ON "HR"."JOB_BATCHES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index JOBS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."JOBS_ID_PK" ON "HR"."JOBS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index JOBS_QUEUE_INDEX
--------------------------------------------------------

  CREATE INDEX "HR"."JOBS_QUEUE_INDEX" ON "HR"."JOBS" ("QUEUE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index MIGRATIONS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."MIGRATIONS_ID_PK" ON "HR"."MIGRATIONS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index PASSWORD_RESET_TOKENS_EMAIL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."PASSWORD_RESET_TOKENS_EMAIL_PK" ON "HR"."PASSWORD_RESET_TOKENS" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index PRODUCTS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."PRODUCTS_ID_PK" ON "HR"."PRODUCTS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index PROMOTIONS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."PROMOTIONS_ID_PK" ON "HR"."PROMOTIONS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index RESERVATION_PRODUCTS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."RESERVATION_PRODUCTS_ID_PK" ON "HR"."RESERVATION_PRODUCTS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index RESERVATION_SEATS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."RESERVATION_SEATS_ID_PK" ON "HR"."RESERVATION_SEATS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index RESERVATIONS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."RESERVATIONS_ID_PK" ON "HR"."RESERVATIONS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index SCREENING_ROOMS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SCREENING_ROOMS_ID_PK" ON "HR"."SCREENING_ROOMS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index SEANCES_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SEANCES_ID_PK" ON "HR"."SEANCES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index SEATS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SEATS_ID_PK" ON "HR"."SEATS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index SESSIONS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SESSIONS_ID_PK" ON "HR"."SESSIONS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index SESSIONS_LAST_ACTIVITY_INDEX
--------------------------------------------------------

  CREATE INDEX "HR"."SESSIONS_LAST_ACTIVITY_INDEX" ON "HR"."SESSIONS" ("LAST_ACTIVITY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index SESSIONS_USER_ID_INDEX
--------------------------------------------------------

  CREATE INDEX "HR"."SESSIONS_USER_ID_INDEX" ON "HR"."SESSIONS" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000086620C00004$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_IL0000086620C00004$$" ON "HR"."SESSIONS" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000086620C00005$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_IL0000086620C00005$$" ON "HR"."SESSIONS" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000086628C00002$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_IL0000086628C00002$$" ON "HR"."CACHE" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000086634C00003$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_IL0000086634C00003$$" ON "HR"."JOBS" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000086640C00006$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_IL0000086640C00006$$" ON "HR"."JOB_BATCHES" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000086640C00007$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_IL0000086640C00007$$" ON "HR"."JOB_BATCHES" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000086646C00003$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_IL0000086646C00003$$" ON "HR"."FAILED_JOBS" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000086646C00004$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_IL0000086646C00004$$" ON "HR"."FAILED_JOBS" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000086646C00005$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_IL0000086646C00005$$" ON "HR"."FAILED_JOBS" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000086646C00006$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_IL0000086646C00006$$" ON "HR"."FAILED_JOBS" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index TECHNOLOGIES_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."TECHNOLOGIES_ID_PK" ON "HR"."TECHNOLOGIES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index TECHNOLOGIES_NAME_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."TECHNOLOGIES_NAME_UK" ON "HR"."TECHNOLOGIES" ("NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index TICKETS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."TICKETS_ID_PK" ON "HR"."TICKETS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index USERS_EMAIL_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."USERS_EMAIL_UK" ON "HR"."USERS" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index USERS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."USERS_ID_PK" ON "HR"."USERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index VOUCHERS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."VOUCHERS_ID_PK" ON "HR"."VOUCHERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index WORKERS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."WORKERS_ID_PK" ON "HR"."WORKERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index CACHE_KEY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."CACHE_KEY_PK" ON "HR"."CACHE" ("KEY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index CACHE_LOCKS_KEY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."CACHE_LOCKS_KEY_PK" ON "HR"."CACHE_LOCKS" ("KEY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index FAILED_JOBS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."FAILED_JOBS_ID_PK" ON "HR"."FAILED_JOBS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index FAILED_JOBS_UUID_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."FAILED_JOBS_UUID_UK" ON "HR"."FAILED_JOBS" ("UUID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index FILMS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."FILMS_ID_PK" ON "HR"."FILMS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index JOB_BATCHES_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."JOB_BATCHES_ID_PK" ON "HR"."JOB_BATCHES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index JOBS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."JOBS_ID_PK" ON "HR"."JOBS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index JOBS_QUEUE_INDEX
--------------------------------------------------------

  CREATE INDEX "HR"."JOBS_QUEUE_INDEX" ON "HR"."JOBS" ("QUEUE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index MIGRATIONS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."MIGRATIONS_ID_PK" ON "HR"."MIGRATIONS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index PASSWORD_RESET_TOKENS_EMAIL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."PASSWORD_RESET_TOKENS_EMAIL_PK" ON "HR"."PASSWORD_RESET_TOKENS" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index PRODUCTS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."PRODUCTS_ID_PK" ON "HR"."PRODUCTS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index PROMOTIONS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."PROMOTIONS_ID_PK" ON "HR"."PROMOTIONS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index RESERVATION_PRODUCTS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."RESERVATION_PRODUCTS_ID_PK" ON "HR"."RESERVATION_PRODUCTS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index RESERVATIONS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."RESERVATIONS_ID_PK" ON "HR"."RESERVATIONS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index RESERVATION_SEATS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."RESERVATION_SEATS_ID_PK" ON "HR"."RESERVATION_SEATS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index SCREENING_ROOMS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SCREENING_ROOMS_ID_PK" ON "HR"."SCREENING_ROOMS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index SEANCES_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SEANCES_ID_PK" ON "HR"."SEANCES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index SEATS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SEATS_ID_PK" ON "HR"."SEATS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index SESSIONS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SESSIONS_ID_PK" ON "HR"."SESSIONS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index SESSIONS_USER_ID_INDEX
--------------------------------------------------------

  CREATE INDEX "HR"."SESSIONS_USER_ID_INDEX" ON "HR"."SESSIONS" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index SESSIONS_LAST_ACTIVITY_INDEX
--------------------------------------------------------

  CREATE INDEX "HR"."SESSIONS_LAST_ACTIVITY_INDEX" ON "HR"."SESSIONS" ("LAST_ACTIVITY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index TECHNOLOGIES_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."TECHNOLOGIES_ID_PK" ON "HR"."TECHNOLOGIES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index TECHNOLOGIES_NAME_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."TECHNOLOGIES_NAME_UK" ON "HR"."TECHNOLOGIES" ("NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index TICKETS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."TICKETS_ID_PK" ON "HR"."TICKETS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index USERS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."USERS_ID_PK" ON "HR"."USERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index USERS_EMAIL_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."USERS_EMAIL_UK" ON "HR"."USERS" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index VOUCHERS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."VOUCHERS_ID_PK" ON "HR"."VOUCHERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index WORKERS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."WORKERS_ID_PK" ON "HR"."WORKERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Trigger FAILED_JOBS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."FAILED_JOBS_ID_TRG" 
            before insert on FAILED_JOBS
            for each row
                begin
            if :new.ID is null then
                select failed_jobs_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."FAILED_JOBS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger FILMS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."FILMS_ID_TRG" 
            before insert on FILMS
            for each row
                begin
            if :new.ID is null then
                select films_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."FILMS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger JOBS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."JOBS_ID_TRG" 
            before insert on JOBS
            for each row
                begin
            if :new.ID is null then
                select jobs_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."JOBS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MIGRATIONS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."MIGRATIONS_ID_TRG" 
            before insert on MIGRATIONS
            for each row
                begin
            if :new.ID is null then
                select migrations_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."MIGRATIONS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PRODUCTS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."PRODUCTS_ID_TRG" 
            before insert on PRODUCTS
            for each row
                begin
            if :new.ID is null then
                select products_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."PRODUCTS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PROMOTIONS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."PROMOTIONS_ID_TRG" 
            before insert on PROMOTIONS
            for each row
                begin
            if :new.ID is null then
                select promotions_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."PROMOTIONS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger RESERVATION_PRODUCTS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."RESERVATION_PRODUCTS_ID_TRG" 
            before insert on RESERVATION_PRODUCTS
            for each row
                begin
            if :new.ID is null then
                select reservation_products_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."RESERVATION_PRODUCTS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger RESERVATION_SEATS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."RESERVATION_SEATS_ID_TRG" 
            before insert on RESERVATION_SEATS
            for each row
                begin
            if :new.ID is null then
                select reservation_seats_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."RESERVATION_SEATS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger RESERVATIONS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."RESERVATIONS_ID_TRG" 
            before insert on RESERVATIONS
            for each row
                begin
            if :new.ID is null then
                select reservations_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."RESERVATIONS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SCREENING_ROOMS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."SCREENING_ROOMS_ID_TRG" 
            before insert on SCREENING_ROOMS
            for each row
                begin
            if :new.ID is null then
                select screening_rooms_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."SCREENING_ROOMS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SEANCES_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."SEANCES_ID_TRG" 
            before insert on SEANCES
            for each row
                begin
            if :new.ID is null then
                select seances_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."SEANCES_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SEATS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."SEATS_ID_TRG" 
            before insert on SEATS
            for each row
                begin
            if :new.ID is null then
                select seats_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."SEATS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TECHNOLOGIES_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."TECHNOLOGIES_ID_TRG" 
            before insert on TECHNOLOGIES
            for each row
                begin
            if :new.ID is null then
                select technologies_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."TECHNOLOGIES_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TICKETS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."TICKETS_ID_TRG" 
            before insert on TICKETS
            for each row
                begin
            if :new.ID is null then
                select tickets_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."TICKETS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_CHECK_DUPLICATE_RESERVATION_PRODUCT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."TRG_CHECK_DUPLICATE_RESERVATION_PRODUCT" 
BEFORE INSERT OR UPDATE ON reservation_products
FOR EACH ROW
DECLARE
    PRAGMA AUTONOMOUS_TRANSACTION;
    v_count NUMBER;
BEGIN
    -- Sprawdzenie, czy istnieje ju¿ rezerwacja z tym samym produktem
    IF :NEW.id IS NULL THEN
        -- Dla nowych rekordów (INSERT)
        SELECT COUNT(*)
        INTO v_count
        FROM reservation_products
        WHERE product_id = :NEW.product_id
        AND reservation_id = :NEW.reservation_id;
    ELSE
        -- Dla aktualizacji istniej¹cych rekordów (UPDATE)
        SELECT COUNT(*)
        INTO v_count
        FROM reservation_products
        WHERE product_id = :NEW.product_id
        AND reservation_id = :NEW.reservation_id
        AND id != :NEW.id;
    END IF;

    -- Jeœli istnieje, zg³oszenie wyj¹tku
    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Produkt ju¿ zarezerwowany dla tej rezerwacji.');
    END IF;

    -- Zakoñcz transakcjê
    COMMIT;
END;

/
ALTER TRIGGER "HR"."TRG_CHECK_DUPLICATE_RESERVATION_PRODUCT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_CHECK_DUPLICATE_RESERVATION_SEAT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."TRG_CHECK_DUPLICATE_RESERVATION_SEAT" 
BEFORE INSERT OR UPDATE ON reservation_seats
FOR EACH ROW
DECLARE
    PRAGMA AUTONOMOUS_TRANSACTION;
    v_count NUMBER;
BEGIN
    -- Sprawdzenie, czy istnieje ju¿ rezerwacja z tym samym miejscem
    IF :NEW.id IS NULL THEN
        -- Dla nowych rekordów (INSERT)
        SELECT COUNT(*)
        INTO v_count
        FROM reservation_seats
        WHERE seat_id = :NEW.seat_id
        AND reservation_id = :NEW.reservation_id;
    ELSE
        -- Dla aktualizacji istniej¹cych rekordów (UPDATE)
        SELECT COUNT(*)
        INTO v_count
        FROM reservation_seats
        WHERE seat_id = :NEW.seat_id
        AND reservation_id = :NEW.reservation_id
        AND id != :NEW.id;
    END IF;

    -- Jeœli istnieje, zg³oszenie wyj¹tku
    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Miejsce ju¿ zarezerwowane dla tej rezerwacji.');
    END IF;

    -- Zakoñcz transakcjê
    COMMIT;
END;

/
ALTER TRIGGER "HR"."TRG_CHECK_DUPLICATE_RESERVATION_SEAT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_CHECK_DUPLICATE_SEAT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."TRG_CHECK_DUPLICATE_SEAT" 
BEFORE INSERT OR UPDATE ON seats
FOR EACH ROW
DECLARE
    PRAGMA AUTONOMOUS_TRANSACTION;
    v_count NUMBER;
BEGIN
    -- Sprawdzenie, czy istnieje ju¿ miejsce o tym samym numerze rzêdu i miejscu w rzêdzie w tej samej sali
    IF :NEW.id IS NULL THEN
        -- Dla nowych rekordów (INSERT)
        SELECT COUNT(*)
        INTO v_count
        FROM seats
        WHERE screening_room_id = :NEW.screening_room_id
        AND row_number = :NEW.row_number
        AND seat_in_row = :NEW.seat_in_row;
    ELSE
        -- Dla aktualizacji istniej¹cych rekordów (UPDATE)
        SELECT COUNT(*)
        INTO v_count
        FROM seats
        WHERE screening_room_id = :NEW.screening_room_id
        AND row_number = :NEW.row_number
        AND seat_in_row = :NEW.seat_in_row
        AND id != :NEW.id;
    END IF;

    -- Jeœli istnieje, zg³oszenie wyj¹tku
    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Miejsce o tym samym numerze rzêdu i miejscu w rzêdzie ju¿ istnieje w tej sali kinowej.');
    END IF;
    -- Potwierdzenie niezale¿nej transakcji
    COMMIT;
END;

/
ALTER TRIGGER "HR"."TRG_CHECK_DUPLICATE_SEAT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_CHECK_SEANCE_OVERLAP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."TRG_CHECK_SEANCE_OVERLAP" 
BEFORE INSERT OR UPDATE ON seances
FOR EACH ROW
DECLARE
    v_count INTEGER;
PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM seances
    WHERE screening_room_id = :NEW.screening_room_id
      AND (
          (:NEW.start_time BETWEEN start_time AND end_time)
          OR (:NEW.end_time BETWEEN start_time AND end_time)
          OR (start_time BETWEEN :NEW.start_time AND :NEW.end_time)
          OR (end_time BETWEEN :NEW.start_time AND :NEW.end_time)
      )
      AND (:NEW.id IS NULL OR id != :NEW.id); -- Wyklucz bie¿¹cy rekord tylko w przypadku aktualizacji

    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Seans koliduje z innym seansem w tej samej sali kinowej.');
    END IF;
END;

/
ALTER TRIGGER "HR"."TRG_CHECK_SEANCE_OVERLAP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger USERS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."USERS_ID_TRG" 
            before insert on USERS
            for each row
                begin
            if :new.ID is null then
                select users_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."USERS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger VOUCHERS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."VOUCHERS_ID_TRG" 
            before insert on VOUCHERS
            for each row
                begin
            if :new.ID is null then
                select vouchers_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."VOUCHERS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger WORKERS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."WORKERS_ID_TRG" 
            before insert on WORKERS
            for each row
                begin
            if :new.ID is null then
                select workers_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."WORKERS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger FAILED_JOBS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."FAILED_JOBS_ID_TRG" 
            before insert on FAILED_JOBS
            for each row
                begin
            if :new.ID is null then
                select failed_jobs_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."FAILED_JOBS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger FILMS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."FILMS_ID_TRG" 
            before insert on FILMS
            for each row
                begin
            if :new.ID is null then
                select films_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."FILMS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger JOBS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."JOBS_ID_TRG" 
            before insert on JOBS
            for each row
                begin
            if :new.ID is null then
                select jobs_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."JOBS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MIGRATIONS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."MIGRATIONS_ID_TRG" 
            before insert on MIGRATIONS
            for each row
                begin
            if :new.ID is null then
                select migrations_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."MIGRATIONS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PRODUCTS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."PRODUCTS_ID_TRG" 
            before insert on PRODUCTS
            for each row
                begin
            if :new.ID is null then
                select products_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."PRODUCTS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PROMOTIONS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."PROMOTIONS_ID_TRG" 
            before insert on PROMOTIONS
            for each row
                begin
            if :new.ID is null then
                select promotions_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."PROMOTIONS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger RESERVATION_PRODUCTS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."RESERVATION_PRODUCTS_ID_TRG" 
            before insert on RESERVATION_PRODUCTS
            for each row
                begin
            if :new.ID is null then
                select reservation_products_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."RESERVATION_PRODUCTS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_CHECK_DUPLICATE_RESERVATION_PRODUCT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."TRG_CHECK_DUPLICATE_RESERVATION_PRODUCT" 
BEFORE INSERT OR UPDATE ON reservation_products
FOR EACH ROW
DECLARE
    PRAGMA AUTONOMOUS_TRANSACTION;
    v_count NUMBER;
BEGIN
    -- Sprawdzenie, czy istnieje ju¿ rezerwacja z tym samym produktem
    IF :NEW.id IS NULL THEN
        -- Dla nowych rekordów (INSERT)
        SELECT COUNT(*)
        INTO v_count
        FROM reservation_products
        WHERE product_id = :NEW.product_id
        AND reservation_id = :NEW.reservation_id;
    ELSE
        -- Dla aktualizacji istniej¹cych rekordów (UPDATE)
        SELECT COUNT(*)
        INTO v_count
        FROM reservation_products
        WHERE product_id = :NEW.product_id
        AND reservation_id = :NEW.reservation_id
        AND id != :NEW.id;
    END IF;

    -- Jeœli istnieje, zg³oszenie wyj¹tku
    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Produkt ju¿ zarezerwowany dla tej rezerwacji.');
    END IF;

    -- Zakoñcz transakcjê
    COMMIT;
END;

/
ALTER TRIGGER "HR"."TRG_CHECK_DUPLICATE_RESERVATION_PRODUCT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger RESERVATIONS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."RESERVATIONS_ID_TRG" 
            before insert on RESERVATIONS
            for each row
                begin
            if :new.ID is null then
                select reservations_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."RESERVATIONS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger RESERVATION_SEATS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."RESERVATION_SEATS_ID_TRG" 
            before insert on RESERVATION_SEATS
            for each row
                begin
            if :new.ID is null then
                select reservation_seats_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."RESERVATION_SEATS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_CHECK_DUPLICATE_RESERVATION_SEAT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."TRG_CHECK_DUPLICATE_RESERVATION_SEAT" 
BEFORE INSERT OR UPDATE ON reservation_seats
FOR EACH ROW
DECLARE
    PRAGMA AUTONOMOUS_TRANSACTION;
    v_count NUMBER;
BEGIN
    -- Sprawdzenie, czy istnieje ju¿ rezerwacja z tym samym miejscem
    IF :NEW.id IS NULL THEN
        -- Dla nowych rekordów (INSERT)
        SELECT COUNT(*)
        INTO v_count
        FROM reservation_seats
        WHERE seat_id = :NEW.seat_id
        AND reservation_id = :NEW.reservation_id;
    ELSE
        -- Dla aktualizacji istniej¹cych rekordów (UPDATE)
        SELECT COUNT(*)
        INTO v_count
        FROM reservation_seats
        WHERE seat_id = :NEW.seat_id
        AND reservation_id = :NEW.reservation_id
        AND id != :NEW.id;
    END IF;

    -- Jeœli istnieje, zg³oszenie wyj¹tku
    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Miejsce ju¿ zarezerwowane dla tej rezerwacji.');
    END IF;

    -- Zakoñcz transakcjê
    COMMIT;
END;

/
ALTER TRIGGER "HR"."TRG_CHECK_DUPLICATE_RESERVATION_SEAT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SCREENING_ROOMS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."SCREENING_ROOMS_ID_TRG" 
            before insert on SCREENING_ROOMS
            for each row
                begin
            if :new.ID is null then
                select screening_rooms_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."SCREENING_ROOMS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SEANCES_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."SEANCES_ID_TRG" 
            before insert on SEANCES
            for each row
                begin
            if :new.ID is null then
                select seances_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."SEANCES_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_CHECK_SEANCE_OVERLAP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."TRG_CHECK_SEANCE_OVERLAP" 
BEFORE INSERT OR UPDATE ON seances
FOR EACH ROW
DECLARE
    v_count INTEGER;
PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM seances
    WHERE screening_room_id = :NEW.screening_room_id
      AND (
          (:NEW.start_time BETWEEN start_time AND end_time)
          OR (:NEW.end_time BETWEEN start_time AND end_time)
          OR (start_time BETWEEN :NEW.start_time AND :NEW.end_time)
          OR (end_time BETWEEN :NEW.start_time AND :NEW.end_time)
      )
      AND (:NEW.id IS NULL OR id != :NEW.id); -- Wyklucz bie¿¹cy rekord tylko w przypadku aktualizacji

    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Seans koliduje z innym seansem w tej samej sali kinowej.');
    END IF;
END;

/
ALTER TRIGGER "HR"."TRG_CHECK_SEANCE_OVERLAP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SEATS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."SEATS_ID_TRG" 
            before insert on SEATS
            for each row
                begin
            if :new.ID is null then
                select seats_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."SEATS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_CHECK_DUPLICATE_SEAT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."TRG_CHECK_DUPLICATE_SEAT" 
BEFORE INSERT OR UPDATE ON seats
FOR EACH ROW
DECLARE
    PRAGMA AUTONOMOUS_TRANSACTION;
    v_count NUMBER;
BEGIN
    -- Sprawdzenie, czy istnieje ju¿ miejsce o tym samym numerze rzêdu i miejscu w rzêdzie w tej samej sali
    IF :NEW.id IS NULL THEN
        -- Dla nowych rekordów (INSERT)
        SELECT COUNT(*)
        INTO v_count
        FROM seats
        WHERE screening_room_id = :NEW.screening_room_id
        AND row_number = :NEW.row_number
        AND seat_in_row = :NEW.seat_in_row;
    ELSE
        -- Dla aktualizacji istniej¹cych rekordów (UPDATE)
        SELECT COUNT(*)
        INTO v_count
        FROM seats
        WHERE screening_room_id = :NEW.screening_room_id
        AND row_number = :NEW.row_number
        AND seat_in_row = :NEW.seat_in_row
        AND id != :NEW.id;
    END IF;

    -- Jeœli istnieje, zg³oszenie wyj¹tku
    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Miejsce o tym samym numerze rzêdu i miejscu w rzêdzie ju¿ istnieje w tej sali kinowej.');
    END IF;
    -- Potwierdzenie niezale¿nej transakcji
    COMMIT;
END;

/
ALTER TRIGGER "HR"."TRG_CHECK_DUPLICATE_SEAT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TECHNOLOGIES_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."TECHNOLOGIES_ID_TRG" 
            before insert on TECHNOLOGIES
            for each row
                begin
            if :new.ID is null then
                select technologies_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."TECHNOLOGIES_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TICKETS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."TICKETS_ID_TRG" 
            before insert on TICKETS
            for each row
                begin
            if :new.ID is null then
                select tickets_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."TICKETS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger USERS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."USERS_ID_TRG" 
            before insert on USERS
            for each row
                begin
            if :new.ID is null then
                select users_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."USERS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger VOUCHERS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."VOUCHERS_ID_TRG" 
            before insert on VOUCHERS
            for each row
                begin
            if :new.ID is null then
                select vouchers_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."VOUCHERS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger WORKERS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."WORKERS_ID_TRG" 
            before insert on WORKERS
            for each row
                begin
            if :new.ID is null then
                select workers_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "HR"."WORKERS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Procedure ADD_FILM
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."ADD_FILM" (
    p_name IN VARCHAR2,
    p_description IN VARCHAR2,
    p_duration IN VARCHAR2,
    p_genre IN VARCHAR2,
    p_img IN VARCHAR2)
IS
BEGIN
    INSERT INTO films (name, description, duration, genre, img)
    VALUES (p_name, p_description, p_duration, p_genre, p_img);
END;

/
--------------------------------------------------------
--  DDL for Procedure ADD_JOB_HISTORY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."ADD_JOB_HISTORY" 
  (  p_emp_id          job_history.employee_id%type
   , p_start_date      job_history.start_date%type
   , p_end_date        job_history.end_date%type
   , p_job_id          job_history.job_id%type
   , p_department_id   job_history.department_id%type
   )
IS
BEGIN
  INSERT INTO job_history (employee_id, start_date, end_date,
                           job_id, department_id)
    VALUES(p_emp_id, p_start_date, p_end_date, p_job_id, p_department_id);
END add_job_history;

/
--------------------------------------------------------
--  DDL for Procedure ADD_PRODUCT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."ADD_PRODUCT" (
    p_name IN VARCHAR2,
    p_price IN NUMBER)
IS
BEGIN
    INSERT INTO products (name, price)
    VALUES (p_name, p_price);
END;

/
--------------------------------------------------------
--  DDL for Procedure ADD_PROMOTION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."ADD_PROMOTION" (
    p_discount IN NUMBER,
    p_start_time IN TIMESTAMP,
    p_end_time IN TIMESTAMP)
IS
BEGIN
    INSERT INTO promotions (discount, start_time, end_time)
    VALUES (p_discount, p_start_time, p_end_time);
END;

/
--------------------------------------------------------
--  DDL for Procedure ADD_RESERVATION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."ADD_RESERVATION" (
    p_seance_id IN NUMBER,
    p_user_id IN NUMBER)
IS
BEGIN
    INSERT INTO reservations (seance_id, user_id)
    VALUES (p_seance_id, p_user_id);
END;

/
--------------------------------------------------------
--  DDL for Procedure ADD_RESERVATION_PRODUCT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."ADD_RESERVATION_PRODUCT" (
    p_product_id IN NUMBER,
    p_reservation_id IN NUMBER)
IS
BEGIN
    INSERT INTO reservation_products (product_id, reservation_id)
    VALUES (p_product_id, p_reservation_id);
END;

/
--------------------------------------------------------
--  DDL for Procedure ADD_RESERVATION_SEAT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."ADD_RESERVATION_SEAT" (
    p_reservation_id IN NUMBER,
    p_seat_id IN NUMBER)
IS
BEGIN
    INSERT INTO reservation_seats (reservation_id, seat_id)
    VALUES (p_reservation_id, p_seat_id);
END;

/
--------------------------------------------------------
--  DDL for Procedure ADD_RESERVATION_WITH_SEATS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."ADD_RESERVATION_WITH_SEATS" (
    p_seance_id IN NUMBER,
    p_user_id IN NUMBER,
    p_seats IN reservation_seats_tab_type, -- zak³adaj¹c, ¿e stworzyliœmy typ tablicowy dla miejsc
    p_reservation_id OUT NUMBER
) IS
    v_count NUMBER;
BEGIN
    -- Dodaj rezerwacjê
    INSERT INTO reservations (seance_id, user_id)
    VALUES (p_seance_id, p_user_id)
    RETURNING id INTO p_reservation_id;

    -- Dodaj miejsca do rezerwacji
    FOR i IN 1..p_seats.COUNT LOOP
        INSERT INTO reservation_seats (reservation_id, seat_id)
        VALUES (p_reservation_id, p_seats(i));
    END LOOP;

    -- SprawdŸ, czy rezerwacja ma przypisane miejsca
    SELECT COUNT(*)
    INTO v_count
    FROM reservation_seats
    WHERE reservation_id = p_reservation_id;

    IF v_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Rezerwacja musi zawieraæ co najmniej jedno miejsce.');
    END IF;
END;

/
--------------------------------------------------------
--  DDL for Procedure ADD_SCREENING_ROOM
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."ADD_SCREENING_ROOM" (
    p_seats IN NUMBER,
    p_number_of_rows IN NUMBER,
    p_price_for_seat IN NUMBER)
IS
BEGIN
    INSERT INTO screening_rooms (seats, number_of_rows, price_for_seat)
    VALUES (p_seats, p_number_of_rows, p_price_for_seat);
END;

/
--------------------------------------------------------
--  DDL for Procedure ADD_SEANCE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."ADD_SEANCE" (
    p_film_id IN NUMBER,
    p_screening_room_id IN NUMBER,
    p_worker_id IN NUMBER,
    p_technology_id IN NUMBER,
    p_promotion_id IN NUMBER,
    p_start_time IN TIMESTAMP,
    p_end_time IN TIMESTAMP)
IS
BEGIN
    INSERT INTO seances (film_id, screening_room_id, worker_id, technology_id, promotion_id, start_time, end_time)
    VALUES (p_film_id, p_screening_room_id, p_worker_id, p_technology_id, p_promotion_id, p_start_time, p_end_time);
END;

/
--------------------------------------------------------
--  DDL for Procedure ADD_SEAT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."ADD_SEAT" (
    p_screening_room_id IN NUMBER,
    p_row_number IN NUMBER,
    p_seat_in_row IN NUMBER,
    p_vip IN CHAR)
IS
BEGIN
    INSERT INTO seats (screening_room_id, row_number, seat_in_row, vip)
    VALUES (p_screening_room_id, p_row_number, p_seat_in_row, p_vip);
END;

/
--------------------------------------------------------
--  DDL for Procedure ADD_TECHNOLOGY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."ADD_TECHNOLOGY" (
    p_name IN VARCHAR2)
IS
BEGIN
    INSERT INTO technologies (name)
    VALUES (p_name);
END;

/
--------------------------------------------------------
--  DDL for Procedure ADD_TICKET
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."ADD_TICKET" (
    p_reservation_id IN NUMBER,
    p_voucher_id IN NUMBER,
    p_price IN NUMBER)
IS
BEGIN
    INSERT INTO tickets (reservation_id, voucher_id, price)
    VALUES (p_reservation_id, p_voucher_id, p_price);
END;

/
--------------------------------------------------------
--  DDL for Procedure ADD_USER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."ADD_USER" (
    p_name IN VARCHAR2,
    p_surname IN VARCHAR2,
    p_email IN VARCHAR2,
    p_phone_number IN VARCHAR2,
    p_password IN VARCHAR2)
IS
BEGIN
    INSERT INTO users (name, surname, email, phone_number, password)
    VALUES (p_name, p_surname, p_email, p_phone_number, p_password);
END;

/
--------------------------------------------------------
--  DDL for Procedure ADD_VOUCHER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."ADD_VOUCHER" (
    p_name IN VARCHAR2,
    p_discount IN NUMBER)
IS
BEGIN
    INSERT INTO vouchers (name, discount)
    VALUES (p_name, p_discount);
END;

/
--------------------------------------------------------
--  DDL for Procedure ADD_WORKER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."ADD_WORKER" (
    p_name IN VARCHAR2,
    p_surname IN VARCHAR2)
IS
BEGIN
    INSERT INTO workers (name, surname)
    VALUES (p_name, p_surname);
END;

/
--------------------------------------------------------
--  DDL for Procedure DELETE_FILM
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."DELETE_FILM" (
    p_film_id IN NUMBER)
IS
BEGIN
    DELETE FROM films WHERE id = p_film_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure DELETE_OLD_SEANCES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."DELETE_OLD_SEANCES" IS
BEGIN
    DELETE FROM SEANCES
    WHERE END_TIME <= SYSDATE;
END;

/
--------------------------------------------------------
--  DDL for Procedure DELETE_PRODUCT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."DELETE_PRODUCT" (
    p_product_id IN NUMBER)
IS
BEGIN
    DELETE FROM products WHERE id = p_product_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure DELETE_PROMOTION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."DELETE_PROMOTION" (
    p_promotion_id IN NUMBER)
IS
BEGIN
    DELETE FROM promotions WHERE id = p_promotion_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure DELETE_RESERVATION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."DELETE_RESERVATION" (
    p_reservation_id IN NUMBER)
IS
BEGIN
    DELETE FROM reservations WHERE id = p_reservation_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure DELETE_RESERVATION_PRODUCT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."DELETE_RESERVATION_PRODUCT" (
    p_product_id IN NUMBER,
    p_reservation_id IN NUMBER)
IS
BEGIN
    DELETE FROM reservation_products 
    WHERE product_id = p_product_id 
    AND reservation_id = p_reservation_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure DELETE_RESERVATION_SEAT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."DELETE_RESERVATION_SEAT" (
    p_reservation_seat_id IN NUMBER)
IS
BEGIN
    DELETE FROM reservation_seats WHERE id = p_reservation_seat_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure DELETE_SCREENING_ROOM
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."DELETE_SCREENING_ROOM" (
    p_screening_room_id IN NUMBER)
IS
BEGIN
    DELETE FROM screening_rooms WHERE id = p_screening_room_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure DELETE_SEANCE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."DELETE_SEANCE" (
    p_seance_id IN NUMBER)
IS
BEGIN
    DELETE FROM seances WHERE id = p_seance_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure DELETE_SEAT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."DELETE_SEAT" (
    p_seat_id IN NUMBER)
IS
BEGIN
    DELETE FROM seats WHERE id = p_seat_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure DELETE_TECHNOLOGY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."DELETE_TECHNOLOGY" (
    p_technology_id IN NUMBER)
IS
BEGIN
    DELETE FROM technologies WHERE id = p_technology_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure DELETE_TICKET
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."DELETE_TICKET" (
    p_ticket_id IN NUMBER)
IS
BEGIN
    DELETE FROM tickets WHERE id = p_ticket_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure DELETE_USER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."DELETE_USER" (
    p_user_id IN NUMBER)
IS
BEGIN
    DELETE FROM users WHERE id = p_user_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure DELETE_VOUCHER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."DELETE_VOUCHER" (
    p_voucher_id IN NUMBER)
IS
BEGIN
    DELETE FROM vouchers WHERE id = p_voucher_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure DELETE_WORKER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."DELETE_WORKER" (
    p_worker_id IN NUMBER)
IS
BEGIN
    DELETE FROM workers WHERE id = p_worker_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure GET_FILM
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."GET_FILM" (
    p_film_id IN NUMBER,
    p_film OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN p_film FOR
    SELECT * FROM films WHERE id = p_film_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure GET_PRODUCT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."GET_PRODUCT" (
    p_product_id IN NUMBER,
    p_product OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN p_product FOR
    SELECT * FROM products WHERE id = p_product_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure GET_PROMOTION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."GET_PROMOTION" (
    p_promotion_id IN NUMBER,
    p_promotion OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN p_promotion FOR
    SELECT * FROM promotions WHERE id = p_promotion_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure GET_RESERVATION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."GET_RESERVATION" (
    p_reservation_id IN NUMBER,
    p_reservation OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN p_reservation FOR
    SELECT * FROM reservations WHERE id = p_reservation_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure GET_RESERVATION_PRODUCT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."GET_RESERVATION_PRODUCT" (
    p_product_id IN NUMBER,
    p_reservation_id IN NUMBER,
    p_reservation_product OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN p_reservation_product FOR
    SELECT * FROM reservation_products 
    WHERE product_id = p_product_id 
    AND reservation_id = p_reservation_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure GET_RESERVATION_SEAT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."GET_RESERVATION_SEAT" (
    p_reservation_seat_id IN NUMBER,
    p_reservation_seat OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN p_reservation_seat FOR
    SELECT * FROM reservation_seats WHERE id = p_reservation_seat_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure GET_SCREENING_ROOM
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."GET_SCREENING_ROOM" (
    p_screening_room_id IN NUMBER,
    p_screening_room OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN p_screening_room FOR
    SELECT * FROM screening_rooms WHERE id = p_screening_room_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure GET_SEANCE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."GET_SEANCE" (
    p_seance_id IN NUMBER,
    p_seance OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN p_seance FOR
    SELECT * FROM seances WHERE id = p_seance_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure GET_SEANCES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."GET_SEANCES" (p_cursor OUT SYS_REFCURSOR) IS
BEGIN
    OPEN p_cursor FOR SELECT * FROM seances;
END;

/
--------------------------------------------------------
--  DDL for Procedure GET_SEAT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."GET_SEAT" (
    p_seat_id IN NUMBER,
    p_seat OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN p_seat FOR
    SELECT * FROM seats WHERE id = p_seat_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure GET_TECHNOLOGY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."GET_TECHNOLOGY" (
    p_technology_id IN NUMBER,
    p_technology OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN p_technology FOR
    SELECT * FROM technologies WHERE id = p_technology_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure GET_TICKET
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."GET_TICKET" (
    p_ticket_id IN NUMBER,
    p_ticket OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN p_ticket FOR
    SELECT * FROM tickets WHERE id = p_ticket_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure GET_USER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."GET_USER" (
    p_user_id IN NUMBER,
    p_user OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN p_user FOR
    SELECT * FROM users WHERE id = p_user_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure GET_VOUCHER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."GET_VOUCHER" (
    p_voucher_id IN NUMBER,
    p_voucher OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN p_voucher FOR
    SELECT * FROM vouchers WHERE id = p_voucher_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure GET_WORKER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."GET_WORKER" (
    p_worker_id IN NUMBER,
    p_worker OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN p_worker FOR
    SELECT * FROM workers WHERE id = p_worker_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_FILM
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."UPDATE_FILM" (
    p_film_id IN NUMBER,
    p_name IN VARCHAR2,
    p_description IN VARCHAR2,
    p_duration IN VARCHAR2,
    p_genre IN VARCHAR2,
    p_img IN VARCHAR2)
IS
BEGIN
    UPDATE films
    SET name = p_name,
        description = p_description,
        duration = p_duration,
        genre = p_genre,
        img = p_img
    WHERE id = p_film_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_PRODUCT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."UPDATE_PRODUCT" (
    p_product_id IN NUMBER,
    p_name IN VARCHAR2,
    p_price IN NUMBER)
IS
BEGIN
    UPDATE products
    SET name = p_name,
        price = p_price
    WHERE id = p_product_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_PROMOTION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."UPDATE_PROMOTION" (
    p_promotion_id IN NUMBER,
    p_discount IN NUMBER,
    p_start_time IN TIMESTAMP,
    p_end_time IN TIMESTAMP)
IS
BEGIN
    UPDATE promotions
    SET discount = p_discount,
        start_time = p_start_time,
        end_time = p_end_time
    WHERE id = p_promotion_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_RESERVATION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."UPDATE_RESERVATION" (
    p_reservation_id IN NUMBER,
    p_seance_id IN NUMBER,
    p_user_id IN NUMBER)
IS
BEGIN
    UPDATE reservations
    SET seance_id = p_seance_id,
        user_id = p_user_id
    WHERE id = p_reservation_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_RESERVATION_PRODUCT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."UPDATE_RESERVATION_PRODUCT" (
    p_reservation_product_id IN NUMBER,
    p_product_id IN NUMBER,
    p_reservation_id IN NUMBER)
IS
BEGIN
    UPDATE reservation_products
    SET product_id = p_product_id,
        reservation_id = p_reservation_id
    WHERE id = p_reservation_product_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_RESERVATION_SEAT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."UPDATE_RESERVATION_SEAT" (
    p_reservation_seat_id IN NUMBER,
    p_reservation_id IN NUMBER,
    p_seat_id IN NUMBER)
IS
BEGIN
    UPDATE reservation_seats
    SET reservation_id = p_reservation_id,
        seat_id = p_seat_id
    WHERE id = p_reservation_seat_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_SCREENING_ROOM
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."UPDATE_SCREENING_ROOM" (
    p_screening_room_id IN NUMBER,
    p_seats IN NUMBER,
    p_number_of_rows IN NUMBER,
    p_price_for_seat IN NUMBER)
IS
BEGIN
    UPDATE screening_rooms
    SET seats = p_seats,
        number_of_rows = p_number_of_rows,
        price_for_seat = p_price_for_seat
    WHERE id = p_screening_room_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_SEANCE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."UPDATE_SEANCE" (
    p_seance_id IN NUMBER,
    p_film_id IN NUMBER,
    p_screening_room_id IN NUMBER,
    p_worker_id IN NUMBER,
    p_technology_id IN NUMBER,
    p_promotion_id IN NUMBER,
    p_start_time IN TIMESTAMP,
    p_end_time IN TIMESTAMP)
IS
BEGIN
    UPDATE seances
    SET film_id = p_film_id,
        screening_room_id = p_screening_room_id,
        worker_id = p_worker_id,
        technology_id = p_technology_id,
        promotion_id = p_promotion_id,
        start_time = p_start_time,
        end_time = p_end_time
    WHERE id = p_seance_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_SEAT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."UPDATE_SEAT" (
    p_seat_id IN NUMBER,
    p_screening_room_id IN NUMBER,
    p_row_number IN NUMBER,
    p_seat_in_row IN NUMBER,
    p_vip IN CHAR)
IS
BEGIN
    UPDATE seats
    SET screening_room_id = p_screening_room_id,
        row_number = p_row_number,
        seat_in_row = p_seat_in_row,
        vip = p_vip
    WHERE id = p_seat_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_TECHNOLOGY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."UPDATE_TECHNOLOGY" (
    p_technology_id IN NUMBER,
    p_name IN VARCHAR2)
IS
BEGIN
    UPDATE technologies
    SET name = p_name
    WHERE id = p_technology_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_TICKET
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."UPDATE_TICKET" (
    p_ticket_id IN NUMBER,
    p_reservation_id IN NUMBER,
    p_voucher_id IN NUMBER,
    p_price IN NUMBER)
IS
BEGIN
    UPDATE tickets
    SET reservation_id = p_reservation_id,
        voucher_id = p_voucher_id,
        price = p_price
    WHERE id = p_ticket_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_USER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."UPDATE_USER" (
    p_user_id IN NUMBER,
    p_name IN VARCHAR2,
    p_surname IN VARCHAR2,
    p_email IN VARCHAR2,
    p_phone_number IN VARCHAR2,
    p_password IN VARCHAR2)
IS
BEGIN
    UPDATE users
    SET name = p_name,
        surname = p_surname,
        email = p_email,
        phone_number = p_phone_number,
        password = p_password
    WHERE id = p_user_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_VOUCHER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."UPDATE_VOUCHER" (
    p_voucher_id IN NUMBER,
    p_name IN VARCHAR2,
    p_discount IN NUMBER)
IS
BEGIN
    UPDATE vouchers
    SET name = p_name,
        discount = p_discount
    WHERE id = p_voucher_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_WORKER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."UPDATE_WORKER" (
    p_worker_id IN NUMBER,
    p_name IN VARCHAR2,
    p_surname IN VARCHAR2)
IS
BEGIN
    UPDATE workers
    SET name = p_name,
        surname = p_surname
    WHERE id = p_worker_id;
END;

/
--------------------------------------------------------
--  DDL for Package PRODUCT_PKG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "HR"."PRODUCT_PKG" IS
    PROCEDURE add_product(p_name IN VARCHAR2, p_price IN NUMBER);
    PROCEDURE get_all_products(p_products OUT SYS_REFCURSOR);
    PROCEDURE get_product(p_product_id IN NUMBER, p_product OUT SYS_REFCURSOR);
    PROCEDURE update_product(p_product_id IN NUMBER, p_name IN VARCHAR2, p_price IN NUMBER);
    PROCEDURE delete_product(p_product_id IN NUMBER);
END product_pkg;

/
--------------------------------------------------------
--  DDL for Package USER_PKG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "HR"."USER_PKG" AS
    PROCEDURE add_user(
        p_name IN VARCHAR2,
        p_surname IN VARCHAR2,
        p_email IN VARCHAR2,
        p_phone_number IN VARCHAR2,
        p_password IN VARCHAR2
    );

    PROCEDURE get_user(
        p_user_id IN NUMBER,
        p_user OUT SYS_REFCURSOR
    );

    PROCEDURE get_all_users(
        p_users OUT SYS_REFCURSOR
    );

    PROCEDURE update_user(
        p_user_id IN NUMBER,
        p_name IN VARCHAR2,
        p_surname IN VARCHAR2,
        p_email IN VARCHAR2,
        p_phone_number IN VARCHAR2,
        p_password IN VARCHAR2
    );

    PROCEDURE delete_user(
        p_user_id IN NUMBER
    );
END user_pkg;

/
--------------------------------------------------------
--  DDL for Package Body PRODUCT_PKG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "HR"."PRODUCT_PKG" IS
    PROCEDURE add_product(p_name IN VARCHAR2, p_price IN NUMBER) IS
    BEGIN
        INSERT INTO products (id, name, price) VALUES (products_id_seq.NEXTVAL, p_name, p_price);
    END add_product;

    PROCEDURE get_all_products(p_products OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_products FOR SELECT id, name, price FROM products;
    END get_all_products;

    PROCEDURE get_product(p_product_id IN NUMBER, p_product OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_product FOR SELECT id, name, price FROM products WHERE id = p_product_id;
    END get_product;

    PROCEDURE update_product(p_product_id IN NUMBER, p_name IN VARCHAR2, p_price IN NUMBER) IS
    BEGIN
        UPDATE products
        SET name = p_name, price = p_price
        WHERE id = p_product_id;
    END update_product;

    PROCEDURE delete_product(p_product_id IN NUMBER) IS
    BEGIN
        DELETE FROM products WHERE id = p_product_id;
    END delete_product;
END product_pkg;

/
--------------------------------------------------------
--  DDL for Package Body USER_PKG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "HR"."USER_PKG" AS
    PROCEDURE add_user(
        p_name IN VARCHAR2,
        p_surname IN VARCHAR2,
        p_email IN VARCHAR2,
        p_phone_number IN VARCHAR2,
        p_password IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO users (id, name, surname, email, phone_number, password)
        VALUES (users_id_seq.NEXTVAL, p_name, p_surname, p_email, p_phone_number, p_password);
    END add_user;

    PROCEDURE get_user(
        p_user_id IN NUMBER,
        p_user OUT SYS_REFCURSOR
    ) IS
    BEGIN
        OPEN p_user FOR
        SELECT * FROM users WHERE id = p_user_id;
    END get_user;

    PROCEDURE get_all_users(
        p_users OUT SYS_REFCURSOR
    ) IS
    BEGIN
        OPEN p_users FOR
        SELECT * FROM users;
    END get_all_users;

    PROCEDURE update_user(
        p_user_id IN NUMBER,
        p_name IN VARCHAR2,
        p_surname IN VARCHAR2,
        p_email IN VARCHAR2,
        p_phone_number IN VARCHAR2,
        p_password IN VARCHAR2
    ) IS
    BEGIN
        UPDATE users
        SET name = p_name,
            surname = p_surname,
            email = p_email,
            phone_number = p_phone_number,
            password = p_password
        WHERE id = p_user_id;
    END update_user;

    PROCEDURE delete_user(
        p_user_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM users WHERE id = p_user_id;
    END delete_user;
END user_pkg;

/
--------------------------------------------------------
--  DDL for Function CALCULATE_TICKET_PRICE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "HR"."CALCULATE_TICKET_PRICE" (
    p_seance_id IN NUMBER,
    p_seat_id IN NUMBER
) RETURN ticket_price_info_tab PIPELINED IS
    v_base_price NUMBER;
    v_discount NUMBER;
    v_final_price NUMBER;
BEGIN
    SELECT CASE 
               WHEN s.vip = 'T' THEN sr.price_for_seat * 2 
               ELSE sr.price_for_seat 
           END AS base_price,
           (CASE 
               WHEN s.vip = 'T' THEN sr.price_for_seat * 2 
               ELSE sr.price_for_seat 
           END * COALESCE(p.discount, 0) / 100) AS discount,
           (CASE 
               WHEN s.vip = 'T' THEN sr.price_for_seat * 2 
               ELSE sr.price_for_seat 
           END - (CASE 
               WHEN s.vip = 'T' THEN sr.price_for_seat * 2 
               ELSE sr.price_for_seat 
           END * COALESCE(p.discount, 0) / 100)) AS final_price
    INTO v_base_price, v_discount, v_final_price
    FROM seats s
    JOIN screening_rooms sr ON sr.id = s.screening_room_id
    LEFT JOIN seances sc ON sc.screening_room_id = sr.id
    LEFT JOIN promotions p ON p.id = sc.promotion_id
    WHERE s.id = p_seat_id AND sc.id = p_seance_id;

    PIPE ROW (ticket_price_info(v_base_price, v_discount, v_final_price));

    RETURN;
END;

/
--------------------------------------------------------
--  Constraints for Table CACHE
--------------------------------------------------------

  ALTER TABLE "HR"."CACHE" MODIFY ("KEY" NOT NULL ENABLE);
  ALTER TABLE "HR"."CACHE" MODIFY ("VALUE" NOT NULL ENABLE);
  ALTER TABLE "HR"."CACHE" MODIFY ("EXPIRATION" NOT NULL ENABLE);
  ALTER TABLE "HR"."CACHE" ADD CONSTRAINT "CACHE_KEY_PK" PRIMARY KEY ("KEY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CACHE_LOCKS
--------------------------------------------------------

  ALTER TABLE "HR"."CACHE_LOCKS" MODIFY ("KEY" NOT NULL ENABLE);
  ALTER TABLE "HR"."CACHE_LOCKS" MODIFY ("OWNER" NOT NULL ENABLE);
  ALTER TABLE "HR"."CACHE_LOCKS" MODIFY ("EXPIRATION" NOT NULL ENABLE);
  ALTER TABLE "HR"."CACHE_LOCKS" ADD CONSTRAINT "CACHE_LOCKS_KEY_PK" PRIMARY KEY ("KEY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FAILED_JOBS
--------------------------------------------------------

  ALTER TABLE "HR"."FAILED_JOBS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."FAILED_JOBS" MODIFY ("UUID" NOT NULL ENABLE);
  ALTER TABLE "HR"."FAILED_JOBS" MODIFY ("CONNECTION" NOT NULL ENABLE);
  ALTER TABLE "HR"."FAILED_JOBS" MODIFY ("QUEUE" NOT NULL ENABLE);
  ALTER TABLE "HR"."FAILED_JOBS" MODIFY ("PAYLOAD" NOT NULL ENABLE);
  ALTER TABLE "HR"."FAILED_JOBS" MODIFY ("EXCEPTION" NOT NULL ENABLE);
  ALTER TABLE "HR"."FAILED_JOBS" MODIFY ("FAILED_AT" NOT NULL ENABLE);
  ALTER TABLE "HR"."FAILED_JOBS" ADD CONSTRAINT "FAILED_JOBS_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX"  ENABLE;
  ALTER TABLE "HR"."FAILED_JOBS" ADD CONSTRAINT "FAILED_JOBS_UUID_UK" UNIQUE ("UUID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FILMS
--------------------------------------------------------

  ALTER TABLE "HR"."FILMS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."FILMS" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."FILMS" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "HR"."FILMS" MODIFY ("DURATION" NOT NULL ENABLE);
  ALTER TABLE "HR"."FILMS" MODIFY ("GENRE" NOT NULL ENABLE);
  ALTER TABLE "HR"."FILMS" MODIFY ("IMG" NOT NULL ENABLE);
  ALTER TABLE "HR"."FILMS" ADD CONSTRAINT "FILMS_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JOB_BATCHES
--------------------------------------------------------

  ALTER TABLE "HR"."JOB_BATCHES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."JOB_BATCHES" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."JOB_BATCHES" MODIFY ("TOTAL_JOBS" NOT NULL ENABLE);
  ALTER TABLE "HR"."JOB_BATCHES" MODIFY ("PENDING_JOBS" NOT NULL ENABLE);
  ALTER TABLE "HR"."JOB_BATCHES" MODIFY ("FAILED_JOBS" NOT NULL ENABLE);
  ALTER TABLE "HR"."JOB_BATCHES" MODIFY ("FAILED_JOB_IDS" NOT NULL ENABLE);
  ALTER TABLE "HR"."JOB_BATCHES" MODIFY ("CREATED_AT" NOT NULL ENABLE);
  ALTER TABLE "HR"."JOB_BATCHES" ADD CONSTRAINT "JOB_BATCHES_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JOBS
--------------------------------------------------------

  ALTER TABLE "HR"."JOBS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."JOBS" MODIFY ("QUEUE" NOT NULL ENABLE);
  ALTER TABLE "HR"."JOBS" MODIFY ("PAYLOAD" NOT NULL ENABLE);
  ALTER TABLE "HR"."JOBS" MODIFY ("ATTEMPTS" NOT NULL ENABLE);
  ALTER TABLE "HR"."JOBS" MODIFY ("AVAILABLE_AT" NOT NULL ENABLE);
  ALTER TABLE "HR"."JOBS" MODIFY ("CREATED_AT" NOT NULL ENABLE);
  ALTER TABLE "HR"."JOBS" ADD CONSTRAINT "JOBS_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MIGRATIONS
--------------------------------------------------------

  ALTER TABLE "HR"."MIGRATIONS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."MIGRATIONS" MODIFY ("MIGRATION" NOT NULL ENABLE);
  ALTER TABLE "HR"."MIGRATIONS" MODIFY ("BATCH" NOT NULL ENABLE);
  ALTER TABLE "HR"."MIGRATIONS" ADD CONSTRAINT "MIGRATIONS_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PASSWORD_RESET_TOKENS
--------------------------------------------------------

  ALTER TABLE "HR"."PASSWORD_RESET_TOKENS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "HR"."PASSWORD_RESET_TOKENS" MODIFY ("TOKEN" NOT NULL ENABLE);
  ALTER TABLE "HR"."PASSWORD_RESET_TOKENS" ADD CONSTRAINT "PASSWORD_RESET_TOKENS_EMAIL_PK" PRIMARY KEY ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCTS
--------------------------------------------------------

  ALTER TABLE "HR"."PRODUCTS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."PRODUCTS" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."PRODUCTS" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "HR"."PRODUCTS" ADD CONSTRAINT "PRODUCTS_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROMOTIONS
--------------------------------------------------------

  ALTER TABLE "HR"."PROMOTIONS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."PROMOTIONS" MODIFY ("DISCOUNT" NOT NULL ENABLE);
  ALTER TABLE "HR"."PROMOTIONS" MODIFY ("START_TIME" NOT NULL ENABLE);
  ALTER TABLE "HR"."PROMOTIONS" MODIFY ("END_TIME" NOT NULL ENABLE);
  ALTER TABLE "HR"."PROMOTIONS" ADD CONSTRAINT "PROMOTIONS_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RESERVATION_PRODUCTS
--------------------------------------------------------

  ALTER TABLE "HR"."RESERVATION_PRODUCTS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."RESERVATION_PRODUCTS" MODIFY ("RESERVATION_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."RESERVATION_PRODUCTS" MODIFY ("PRODUCT_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."RESERVATION_PRODUCTS" ADD CONSTRAINT "RESERVATION_PRODUCTS_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RESERVATIONS
--------------------------------------------------------

  ALTER TABLE "HR"."RESERVATIONS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."RESERVATIONS" MODIFY ("SEANCE_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."RESERVATIONS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."RESERVATIONS" ADD CONSTRAINT "RESERVATIONS_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RESERVATION_SEATS
--------------------------------------------------------

  ALTER TABLE "HR"."RESERVATION_SEATS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."RESERVATION_SEATS" MODIFY ("RESERVATION_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."RESERVATION_SEATS" MODIFY ("SEAT_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."RESERVATION_SEATS" ADD CONSTRAINT "RESERVATION_SEATS_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SCREENING_ROOMS
--------------------------------------------------------

  ALTER TABLE "HR"."SCREENING_ROOMS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."SCREENING_ROOMS" MODIFY ("SEATS" NOT NULL ENABLE);
  ALTER TABLE "HR"."SCREENING_ROOMS" MODIFY ("NUMBER_OF_ROWS" NOT NULL ENABLE);
  ALTER TABLE "HR"."SCREENING_ROOMS" MODIFY ("PRICE_FOR_SEAT" NOT NULL ENABLE);
  ALTER TABLE "HR"."SCREENING_ROOMS" ADD CONSTRAINT "SCREENING_ROOMS_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SEANCES
--------------------------------------------------------

  ALTER TABLE "HR"."SEANCES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."SEANCES" MODIFY ("FILM_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."SEANCES" MODIFY ("SCREENING_ROOM_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."SEANCES" MODIFY ("WORKER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."SEANCES" MODIFY ("TECHNOLOGY_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."SEANCES" MODIFY ("START_TIME" NOT NULL ENABLE);
  ALTER TABLE "HR"."SEANCES" MODIFY ("END_TIME" NOT NULL ENABLE);
  ALTER TABLE "HR"."SEANCES" ADD CONSTRAINT "SEANCES_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SEATS
--------------------------------------------------------

  ALTER TABLE "HR"."SEATS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."SEATS" MODIFY ("SCREENING_ROOM_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."SEATS" MODIFY ("ROW_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "HR"."SEATS" MODIFY ("SEAT_IN_ROW" NOT NULL ENABLE);
  ALTER TABLE "HR"."SEATS" MODIFY ("VIP" NOT NULL ENABLE);
  ALTER TABLE "HR"."SEATS" ADD CONSTRAINT "SEATS_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SESSIONS
--------------------------------------------------------

  ALTER TABLE "HR"."SESSIONS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."SESSIONS" MODIFY ("PAYLOAD" NOT NULL ENABLE);
  ALTER TABLE "HR"."SESSIONS" MODIFY ("LAST_ACTIVITY" NOT NULL ENABLE);
  ALTER TABLE "HR"."SESSIONS" ADD CONSTRAINT "SESSIONS_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TECHNOLOGIES
--------------------------------------------------------

  ALTER TABLE "HR"."TECHNOLOGIES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."TECHNOLOGIES" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."TECHNOLOGIES" ADD CONSTRAINT "TECHNOLOGIES_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
  ALTER TABLE "HR"."TECHNOLOGIES" ADD CONSTRAINT "TECHNOLOGIES_NAME_UK" UNIQUE ("NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TICKETS
--------------------------------------------------------

  ALTER TABLE "HR"."TICKETS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."TICKETS" MODIFY ("RESERVATION_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."TICKETS" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "HR"."TICKETS" ADD CONSTRAINT "TICKETS_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "HR"."USERS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."USERS" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."USERS" MODIFY ("SURNAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."USERS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "HR"."USERS" MODIFY ("PHONE_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "HR"."USERS" MODIFY ("ROLE" NOT NULL ENABLE);
  ALTER TABLE "HR"."USERS" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "HR"."USERS" ADD CONSTRAINT "USERS_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
  ALTER TABLE "HR"."USERS" ADD CONSTRAINT "USERS_EMAIL_UK" UNIQUE ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table VOUCHERS
--------------------------------------------------------

  ALTER TABLE "HR"."VOUCHERS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."VOUCHERS" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."VOUCHERS" MODIFY ("DISCOUNT" NOT NULL ENABLE);
  ALTER TABLE "HR"."VOUCHERS" ADD CONSTRAINT "VOUCHERS_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table WORKERS
--------------------------------------------------------

  ALTER TABLE "HR"."WORKERS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."WORKERS" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."WORKERS" MODIFY ("SURNAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."WORKERS" ADD CONSTRAINT "WORKERS_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RESERVATION_PRODUCTS
--------------------------------------------------------

  ALTER TABLE "HR"."RESERVATION_PRODUCTS" ADD CONSTRAINT "RESERVAT_PRODU_RESERVAT_ID_FK" FOREIGN KEY ("RESERVATION_ID")
	  REFERENCES "HR"."RESERVATIONS" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "HR"."RESERVATION_PRODUCTS" ADD CONSTRAINT "RESERVATI_PRODUC_PRODU_ID_FK" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "HR"."PRODUCTS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RESERVATIONS
--------------------------------------------------------

  ALTER TABLE "HR"."RESERVATIONS" ADD CONSTRAINT "RESERVATIONS_SEANCE_ID_FK" FOREIGN KEY ("SEANCE_ID")
	  REFERENCES "HR"."SEANCES" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "HR"."RESERVATIONS" ADD CONSTRAINT "RESERVATIONS_USER_ID_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "HR"."USERS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RESERVATION_SEATS
--------------------------------------------------------

  ALTER TABLE "HR"."RESERVATION_SEATS" ADD CONSTRAINT "RESERVATI_SEA_RESERVATI_ID_FK" FOREIGN KEY ("RESERVATION_ID")
	  REFERENCES "HR"."RESERVATIONS" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "HR"."RESERVATION_SEATS" ADD CONSTRAINT "RESERVATION_SEATS_SEAT_ID_FK" FOREIGN KEY ("SEAT_ID")
	  REFERENCES "HR"."SEATS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SEANCES
--------------------------------------------------------

  ALTER TABLE "HR"."SEANCES" ADD CONSTRAINT "SEANCES_FILM_ID_FK" FOREIGN KEY ("FILM_ID")
	  REFERENCES "HR"."FILMS" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "HR"."SEANCES" ADD CONSTRAINT "SEANCES_SCREENING_ROOM_ID_FK" FOREIGN KEY ("SCREENING_ROOM_ID")
	  REFERENCES "HR"."SCREENING_ROOMS" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "HR"."SEANCES" ADD CONSTRAINT "SEANCES_WORKER_ID_FK" FOREIGN KEY ("WORKER_ID")
	  REFERENCES "HR"."WORKERS" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "HR"."SEANCES" ADD CONSTRAINT "SEANCES_TECHNOLOGY_ID_FK" FOREIGN KEY ("TECHNOLOGY_ID")
	  REFERENCES "HR"."TECHNOLOGIES" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "HR"."SEANCES" ADD CONSTRAINT "SEANCES_PROMOTION_ID_FK" FOREIGN KEY ("PROMOTION_ID")
	  REFERENCES "HR"."PROMOTIONS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SEATS
--------------------------------------------------------

  ALTER TABLE "HR"."SEATS" ADD CONSTRAINT "SEATS_SCREENING_ROOM_ID_FK" FOREIGN KEY ("SCREENING_ROOM_ID")
	  REFERENCES "HR"."SCREENING_ROOMS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TICKETS
--------------------------------------------------------

  ALTER TABLE "HR"."TICKETS" ADD CONSTRAINT "TICKETS_RESERVATION_ID_FK" FOREIGN KEY ("RESERVATION_ID")
	  REFERENCES "HR"."RESERVATIONS" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "HR"."TICKETS" ADD CONSTRAINT "TICKETS_VOUCHER_ID_FK" FOREIGN KEY ("VOUCHER_ID")
	  REFERENCES "HR"."VOUCHERS" ("ID") ON DELETE CASCADE ENABLE;
