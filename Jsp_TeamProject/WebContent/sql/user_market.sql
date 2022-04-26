create table user_market(
    user_id varchar(30) primary key,        -- 회원 아이디
    user_pwd varchar2(30) not null,         -- 회원 비밀번호
    user_name varchar2(50) not null,        -- 회원 이름
    user_gender varchar2(20),               -- 회원 성별
    user_email varchar2(200),               -- 회원 이메일
    user_zip_code NUMBER(10) not null,    	-- 회원 우편번호
    user_address varchar2(200) not null,    -- 회원 주소
    user_phone varchar2(30),                -- 회원 전화번호
    user_date date,                         -- 회원 가입일
    user_update date                        -- 회원 수정일
);