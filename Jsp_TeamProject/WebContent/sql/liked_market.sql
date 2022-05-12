-- liked_market 테이블 생성

create table liked_market(
	liked_num number(5) primary key,	-- 찜 번호
	liked_pnum number(5) not null,		-- 상품 제품 번호
	liked_userId varchar2(30) not null,	-- 사용자 아이디
	liked_pname varchar2(100) not null,	-- 상품 이름
	liked_price number(8) not null,		-- 상품 가격
	liked_pimage varchar2(500)			-- 상품 이미지
);