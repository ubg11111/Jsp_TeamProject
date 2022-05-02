
create table product_market(
   pnum number(10) primary key,				-- 상품 번호
   pname varchar2(50) not null,				-- 상품명
   pcategory_fk varchar2(10) not null,	    -- 카테고리 코드
   pcompany varchar2(50),					-- 제조사
   pimage varchar2(100),					-- 상품 이미지
   pqty number (10) default 0,				-- 수량
   price number(10) default 0,				-- 가격
   pspec varchar2(30),						-- 상품 스펙  
   pdetails varchar2(1000),					-- 상품 설명
   pinputdate date,							-- 상품 입고일
);
