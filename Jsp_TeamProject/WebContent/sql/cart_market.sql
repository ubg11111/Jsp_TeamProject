-- cart_market 테이블 생성

create table cart_market(
	cart_num number(5) primary key,		-- 카트 번호
	cart_pnum number(5) not null,		-- 상품 제품 번호
	cart_userId varchar2(30) not null,	-- 카트 사용자 아이디
	cart_pname varchar2(100) not null,	-- 상품 이름
	cart_pqty number(5) not null,		-- 상품 수량
	cart_price number(8) not null,		-- 상품 가격
	cart_pspec varchar2(20) not null,	-- 상품 스펙
	cart_pimage varchar2(500)			-- 상품 이미지
);

INSERT INTO cart_market VALUES ('1', '1', 'wonbin', 'top', '3', '3000', 'new', 'coffee.jpg');
INSERT INTO cart_market VALUES ('2', '1', 'wonbin', 'top', '3', '3000', 'new', 'coffee.jpg');
INSERT INTO cart_market VALUES ('3', '1', 'wonbin', 'top', '3', '3000', 'new', 'coffee.jpg');
INSERT INTO cart_market VALUES ('4', '1', 'wonbin', 'top', '3', '3000', 'new', 'coffee.jpg');
INSERT INTO cart_market VALUES ('5', '1', 'wonbin', 'top', '3', '3000', 'new', 'coffee.jpg');
INSERT INTO cart_market VALUES ('6', '1', 'wonbin', 'top', '3', '3000', 'new', 'coffee.jpg');
INSERT INTO cart_market VALUES ('7', '1', 'wonbin', 'top', '3', '3000', 'new', 'coffee.jpg');