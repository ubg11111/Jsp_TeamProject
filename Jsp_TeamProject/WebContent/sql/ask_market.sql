CREATE TABLE ASK_MARKET (
	ASK_NO NUMBER(5) PRIMARY KEY,			-- 게시판 글번호
    ASK_USERID VARCHAR2(30) NOT NULL,		-- 문의자 아이디
    ASK_TITLE VARCHAR2(30) NOT NULL,		-- 글 제목
    ASK_CONTENT VARCHAR2(1000) NOT NULL,	-- 글 내용
    ASK_IMAGE VARCHAR2(100),				-- 이미지
    ASK_DATE DATE,							-- 게시판 글 작성일자
    ASK_STATUS CHAR(1) CHECK(ASK_STATUS IN ('0', '1')), -- 답변상태
    ASK_REPLY VARCHAR2(1000),    -- 답변내용
    ASK_REPLYDATE DATE -- 답변일자
);

INSERT INTO ASK_MARKET VALUES(1, 'wonbin', 'test_제목1', 'test_내용1', '', SYSDATE, 1, '해당 문의의 답변 내용입니다.', SYSDATE);