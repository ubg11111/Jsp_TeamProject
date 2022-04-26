-- notice_market 테이블 생성

CREATE TABLE NOTICE_MARKET (
	NOTICE_NO NUMBER(5) primary key,
    notice_userId varchar2(30) not null,
    NOTICE_WRITER VARCHAR2(30) NOT NULL,
    NOTICE_TITLE VARCHAR2(200) NOT NULL,
    NOTICE_CONTENT VARCHAR2(1000) NOT NULL,
    NOTICE_PWD VARCHAR2(30),
    NOTICE_HIT NUMBER(5) DEFAULT 0,
    NOTICE_DATE DATE,
    NOTICE_UPDATE DATE
);