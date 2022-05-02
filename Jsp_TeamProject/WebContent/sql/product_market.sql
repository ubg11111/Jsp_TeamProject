create table product_market(
   pnum number(10) primary key,				-- 상품 번호
   pname varchar2(50) not null,				-- 상품명
   pcategory varchar2(10) not null,			-- 카테고리 코드
   pspec varchar2(30),						-- 상품 스펙
   pimage varchar2(100),					-- 상품 이미지
   pqty number (10) default 0,				-- 수량
   price number(10) default 0,				-- 가격
   pcompany varchar2(20),					-- 제조사
   pdetails varchar2(1000),					-- 설명
   pinputdate date,							-- 입고일
   pdiscount varchar2(5) default 0,			-- 할인율
);

insert into product_market values(1,'딸기','010001','국산','',1,3500,'삼성식품','국산딸기입니다.',sysdate, default);