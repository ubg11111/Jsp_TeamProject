-- ask_market 테이블 생성

CREATE TABLE ASK_MARKET (
	ask_no number(5) primary key,			-- 게시판 글번호
    ask_userId varchar2(30) not null,		-- 문의자 아이디
    ASK_TITLE VARCHAR2(30) NOT NULL,		-- 글 제목
    ASK_CONTENT VARCHAR2(1000) NOT NULL,	-- 글 내용
    ASK_IMAGE VARCHAR2(100),				-- 이미지
    ASK_PWD VARCHAR2(30) NOT NULL,			-- 비밀번호
    ask_date date,							-- 게시판 글 작성일자
    ask_group number(5),					-- 게시판 글 그룹
	ask_step number(5),						-- 게시판 글 답변 단계
	ask_indent number(5)					-- 게시판 답변글 들여쓰기
);