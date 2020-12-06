
/* Drop Tables */

DROP TABLE Allergy CASCADE CONSTRAINTS;
DROP TABLE auth CASCADE CONSTRAINTS;
DROP TABLE chat CASCADE CONSTRAINTS;
DROP TABLE Follow CASCADE CONSTRAINTS;
DROP TABLE foodType CASCADE CONSTRAINTS;
DROP TABLE mrCommentReport CASCADE CONSTRAINTS;
DROP TABLE mrComment CASCADE CONSTRAINTS;
DROP TABLE mrLike CASCADE CONSTRAINTS;
DROP TABLE mrIngredient CASCADE CONSTRAINTS;
DROP TABLE MyRecipeBBS CASCADE CONSTRAINTS;
DROP TABLE sIngreBBSReport CASCADE CONSTRAINTS;
DROP TABLE shareIngredientBBS CASCADE CONSTRAINTS;
DROP TABLE Member CASCADE CONSTRAINTS;
DROP TABLE searchword CASCADE CONSTRAINTS;
DROP TABLE tipBBS CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE Allergy
(
	allergy varchar2(20),
	email varchar2(50) NOT NULL
);


CREATE TABLE auth
(
	auth_no number NOT NULL,
	authority varchar2(15) DEFAULT 'ROLE_USER',
	enabled number DEFAULT 1,
	email varchar2(50) NOT NULL,
	PRIMARY KEY (auth_no)
);
CREATE SEQUENCE SEQ_AUTH_NO NOCACHE NOCYCLE;

CREATE TABLE chat
(
	chat_no number NOT NULL,
	chat_text nvarchar2(500) NOT NULL,
	chat_datetime date DEFAULT SYSDATE,
	email varchar2(50) NOT NULL,
	si_no number NOT NULL,
	PRIMARY KEY (chat_no)
);
CREATE SEQUENCE SEQ_CHAT_NO NOCACHE NOCYCLE;

CREATE TABLE Follow
(
	f_no number NOT NULL,
	f_datetime date DEFAULT SYSDATE,
	mr_no number NOT NULL,
	email varchar2(50) NOT NULL,
	PRIMARY KEY (f_no)
);
CREATE SEQUENCE SEQ_F_NO NOCACHE NOCYCLE;

CREATE TABLE foodType
(
	foodType varchar2(10) NOT NULL,
	mr_no number NOT NULL
);


CREATE TABLE Member
(
	email varchar2(50) NOT NULL,
	username varchar2(20) NOT NULL,
	password varchar2(25) NOT NULL,
	address varchar2(50) NOT NULL,
	PRIMARY KEY (email)
);


CREATE TABLE mrComment
(
	cmm_no number NOT NULL,
	cmm_content nvarchar2(300) NOT NULL,
	cmm_datetime date DEFAULT SYSDATE,
	mr_no number NOT NULL,
	email varchar2(50) NOT NULL,
	PRIMARY KEY (cmm_no)
);
CREATE SEQUENCE SEQ_CMM_NO NOCACHE NOCYCLE;

CREATE TABLE mrCommentReport
(
	cr_no number NOT NULL,
	cr_reason varchar2(20) NOT NULL,
	cr_datetime date DEFAULT SYSDATE,
	cmm_no number NOT NULL,
	email varchar2(50) NOT NULL,
	PRIMARY KEY (cr_no)
);
CREATE SEQUENCE SEQ_CR_NO NOCACHE NOCYCLE;

CREATE TABLE mrIngredient
(
	ingredient varchar2(20) NOT NULL,
	mr_no number NOT NULL
);


CREATE TABLE mrLike
(
	like_no number NOT NULL,
	like_datetime date DEFAULT SYSDATE,
	mr_no number NOT NULL,
	email varchar2(50) NOT NULL,
	PRIMARY KEY (like_no)
);
CREATE SEQUENCE SEQ_LIKE_NO NOCACHE NOCYCLE;

CREATE TABLE MyRecipeBBS
(
	mr_no number NOT NULL,
	mr_title varchar2(100) NOT NULL,
	mr_content nvarchar2(2000) NOT NULL,
	mr_postdate date DEFAULT SYSDATE,
	mr_visitcount number DEFAULT 0,
	mr_attachfile nvarchar2(500),
	email varchar2(50) NOT NULL,
	PRIMARY KEY (mr_no)
);
CREATE SEQUENCE SEQ_MR_NO NOCACHE NOCYCLE;

CREATE TABLE searchword
(
	search_no number NOT NULL,
	search_postdate date DEFAULT SYSDATE,
	searchword varchar2(150) NOT NULL,
	PRIMARY KEY (search_no)
);
CREATE SEQUENCE SEQ_SEARCH_NO NOCACHE NOCYCLE;

CREATE TABLE shareIngredientBBS
(
	si_no number NOT NULL,
	si_title varchar2(50) NOT NULL,
	si_content nvarchar2(1000) NOT NULL,
	si_postdate date DEFAULT SYSDATE,
	si_ingtype varchar2(10) NOT NULL,
	si_attachfile varchar2(150),
	email varchar2(50) NOT NULL,
	PRIMARY KEY (si_no)
);
CREATE SEQUENCE SEQ_SI_NO NOCACHE NOCYCLE;

CREATE TABLE sIngreBBSReport
(
	sr_no number NOT NULL,
	sr_reason varchar2(20) NOT NULL,
	sr_datetime date DEFAULT SYSDATE,
	email varchar2(50) NOT NULL,
	si_no number NOT NULL,
	PRIMARY KEY (sr_no)
);
CREATE SEQUENCE SEQ_SR_NO NOCACHE NOCYCLE;

CREATE TABLE tipBBS
(
	tip_no number NOT NULL,
	tip_title varchar2(50) NOT NULL,
	tip_content nvarchar2(2000) NOT NULL,
	tip_attachFile nvarchar2(300),
	tip_postdate date DEFAULT SYSDATE,
	PRIMARY KEY (tip_no)
);
CREATE SEQUENCE SEQ_TIP_NO NOCACHE NOCYCLE;


/* Create Foreign Keys */

ALTER TABLE Allergy
	ADD FOREIGN KEY (email)
	REFERENCES Member (email)
;


ALTER TABLE auth
	ADD FOREIGN KEY (email)
	REFERENCES Member (email)
;


ALTER TABLE chat
	ADD FOREIGN KEY (email)
	REFERENCES Member (email)
;


ALTER TABLE Follow
	ADD FOREIGN KEY (email)
	REFERENCES Member (email)
;


ALTER TABLE mrComment
	ADD FOREIGN KEY (email)
	REFERENCES Member (email)
;


ALTER TABLE mrCommentReport
	ADD FOREIGN KEY (email)
	REFERENCES Member (email)
;


ALTER TABLE mrLike
	ADD FOREIGN KEY (email)
	REFERENCES Member (email)
;


ALTER TABLE MyRecipeBBS
	ADD FOREIGN KEY (email)
	REFERENCES Member (email)
;


ALTER TABLE shareIngredientBBS
	ADD FOREIGN KEY (email)
	REFERENCES Member (email)
;


ALTER TABLE sIngreBBSReport
	ADD FOREIGN KEY (email)
	REFERENCES Member (email)
;


ALTER TABLE mrCommentReport
	ADD FOREIGN KEY (cmm_no)
	REFERENCES mrComment (cmm_no)
;


ALTER TABLE Follow
	ADD FOREIGN KEY (mr_no)
	REFERENCES MyRecipeBBS (mr_no)
;


ALTER TABLE foodType
	ADD FOREIGN KEY (mr_no)
	REFERENCES MyRecipeBBS (mr_no)
;


ALTER TABLE mrComment
	ADD FOREIGN KEY (mr_no)
	REFERENCES MyRecipeBBS (mr_no)
;


ALTER TABLE mrIngredient
	ADD FOREIGN KEY (mr_no)
	REFERENCES MyRecipeBBS (mr_no)
;


ALTER TABLE mrLike
	ADD FOREIGN KEY (mr_no)
	REFERENCES MyRecipeBBS (mr_no)
;


ALTER TABLE chat
	ADD FOREIGN KEY (si_no)
	REFERENCES shareIngredientBBS (si_no)
;


ALTER TABLE sIngreBBSReport
	ADD FOREIGN KEY (si_no)
	REFERENCES shareIngredientBBS (si_no)
;



