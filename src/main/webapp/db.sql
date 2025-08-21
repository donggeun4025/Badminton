create table tbl_cust_202301(
	cust_no char(4) not null primary key,	--고객번호
	cust_name varchar2(14),					--고객이름
	cust_tele varchar2(11)					--전화번호
);

insert into tbl_cust_202301 values('1001', '박선수', '01011112222');
insert into tbl_cust_202301 values('1002', '백선수', '01011113333');
insert into tbl_cust_202301 values('1003', '채선수', '01011114444');
insert into tbl_cust_202301 values('1004', '임선수', '01011115555');
insert into tbl_cust_202301 values('1005', '한선수', '01011116666');

------------------

create table tbl_court_202301(
	court_no char(4) not null primary key,	--코트번호
	used_flag char(1)						--사용현황
);

insert into tbl_court_202301 values('C001', 'N');
insert into tbl_court_202301 values('C002', 'N');
insert into tbl_court_202301 values('C003', 'N');
insert into tbl_court_202301 values('C004', 'N');
insert into tbl_court_202301 values('C005', 'N');
insert into tbl_court_202301 values('C006', 'N');
insert into tbl_court_202301 values('C007', 'N');
insert into tbl_court_202301 values('C008', 'N');
insert into tbl_court_202301 values('C009', 'N');
-------------------------------

create table tbl_resv_202301(
	resv_no char(8) not null primary key,	--예약번호
	resv_date char(8),						--예약날짜
	court_no char(4),						--코트번호
	cust_no char(4)							--고객번호
);

insert into TBL_RESV_202301 values('20230001', '20230101', 'C001', '1005');
insert into TBL_RESV_202301 values('20230002', '20230101', 'C002', '1004');
insert into TBL_RESV_202301 values('20230003', '20230101', 'C003', '1003');
insert into TBL_RESV_202301 values('20230004', '20230101', 'C004', '1002');
insert into TBL_RESV_202301 values('20230005', '20230101', 'C005', '1001');
--------------------------------------------------------------------------
select * from TBL_RESV_202301

--------------------------------------------------------------------------
select cu.cust_no, cu.cust_name, re.resv_date, re.court_no
from tbl_resv_202301 re, tbl_cust_202301 cu
where cu.cust_no = re.cust_no and cu.cust_no =?


select cu.cust_no, cu.cust_name, count(*)
from tbl_cust_202301 cu, tbl_resv_202301 re
where cu.cust_no = re.cust_no
group by cu.cust_no, cu.cust_name
order by cu.cust_no