use hospital;

CREATE TABLE doctor (
	doc_id	int	NOT NULL,
	doc_name	varchar(10)	 NOT NULL,
	doc_phone	varchar(10)	NOT NULL,
	doc_email	varchar(20)	NULL,
	doc_major	varchar(10)	NOT NULL
);

CREATE TABLE diagnosis (
	dia_id	int	NOT NULL,
	dia_text	text	NOT NULL,
	dia_date	date	NOT NULL,
	doc_id	int	NOT NULL
);

CREATE TABLE patient (
	pat_id	int	NOT NULL,
	pat_name	varchar(10) NOT	NULL,
	pat_gen	int	NOT NULL,
	pat_phone	varchar(20)	NOT NULL,
	pat_partient	char(1)	NOT NULL,
	doc_id	int	NOT NULL
);

CREATE TABLE nurse (
	nur_id	int	NOT NULL,
	nur_partient	char(1)	NOT NULL,
	nur_phone	varchar(20)	NOT NULL,
	nur_email	varchar(30)	NOT NULL,
  nur_name  varchar(10) NOT NULL
);

ALTER TABLE doctor ADD CONSTRAINT PK_DOCTOR PRIMARY KEY (
	doc_id
);

ALTER TABLE diagnosis ADD CONSTRAINT PK_DIAGNOSIS PRIMARY KEY (
	dia_id
);

ALTER TABLE patient ADD CONSTRAINT PK_PATIENT PRIMARY KEY (
	pat_id
);

ALTER TABLE nurse ADD CONSTRAINT PK_NURSE PRIMARY KEY (
	nur_id
);


insert into doctor
VALUES
(101,'김수로','010-2323-2323','waterroad@naver.com','내과'),
(102,'김정수','010-1111-1111','kimint@naver.com','외과'),
(103,'김실수','010-1212-1212','kimdouble@naver.com','내과'),
(104,'최강철','010-3333-3333','iron@naver.com','비뇨기과'),
(105,'이광수','010-3434-3434','lightwater@naver.com','치과');


insert into nurse 
VALUES
(201,'D','010-2323-2323','kimmint@naver.com','김박하'),
(202,'A','010-1234-1234','kimcandy@naver.com','김사탕'),
(203,'B','010-4321-4321','kimnight@naver.com','김야근'),
(204,'C','010-3333-3333','gundae@naver.com','최당직'),
(205,'B','010-3434-3434','watermin@naver.com','이수민');


insert into patient 
VALUES
(1,'환자1','1','010-1111-2222','A','101'),
(2,'환자2','1','010-2222-3333','A','102'),
(3,'환자3','0','010-3333-4444','B','103'),
(4,'환자4','0','010-4444-5555','C','102'),
(5,'환자5','1','010-5555-6666','D','104');

