/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 16.1 		*/
/*  Created On : 04-led-2024 14:04:23 				*/
/*  DBMS       : PostgreSQL 						*/
/* ---------------------------------------------------- */

/* Drop Sequences for Autonumber Columns */

DROP SEQUENCE IF EXISTS usertraits_usertraitsid_seq
;

/* Drop Tables */

DROP TABLE IF EXISTS "Usertraits" CASCADE
;

/* Create Tables */

CREATE TABLE "Usertraits"
(
	"Value" varchar(100) NULL,
	"UsertraitsID" integer NOT NULL   DEFAULT NEXTVAL(('"usertraits_usertraitsid_seq"'::text)::regclass),
	"TraitID" integer NULL,
	"UserID" integer NULL
)
;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE "Usertraits" ADD CONSTRAINT "PK_Usertraits"
	PRIMARY KEY ("UsertraitsID")
;

/* Create Foreign Key Constraints */

ALTER TABLE "Usertraits" ADD CONSTRAINT "FK_Usertraits_Trait"
	FOREIGN KEY ("TraitID") REFERENCES "Trait" ("TraitID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Usertraits" ADD CONSTRAINT "FK_Usertraits_User"
	FOREIGN KEY ("UserID") REFERENCES "User" ("UserID") ON DELETE No Action ON UPDATE No Action
;

/* Create Table Comments, Sequences for Autonumber Columns */

CREATE SEQUENCE usertraits_usertraitsid_seq INCREMENT 1 START 1
;