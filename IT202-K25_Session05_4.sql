-- Giải pháp 1 (or): where status = 'KHACH_HUY' or status = 'QUAN_DONG_CUA' or ...
-- Giải pháp 2 (in): where status in ('KHACH_HUY', 'QUAN_DONG_CUA', 'KHONG_CO_TAI_XE', 'BOM_HANG')

-- Tiêu chí	     Giải pháp 1 (OR)	           Giải pháp 2 (IN)
-- Code sạch	       Kém                         Tốt
-- Mở rộng	        Khó quản lý                 Dễ quản lý 
-- Hiệu năng           Thấp	                       Cao

use db_demo;

create table Orders (
    order_id int,
    status varchar(50),
    created_at datetime
);

insert into Orders values
	(1, 'HOAN_THANH', '2024-06-01 10:00:00'),
	(2, 'KHACH_HUY', '2024-06-02 11:00:00'),
	(3, 'QUAN_DONG_CUA', '2024-06-03 12:00:00'),
	(4, 'DANG_GIAO', '2024-06-04 13:00:00'),
	(5, 'KHONG_CO_TAI_XE', '2024-06-05 14:00:00'),
	(6, 'BOM_HANG', '2024-06-06 15:00:00');

select order_id, status, created_at 
from Orders 
where status in ('KHACH_HUY', 'QUAN_DONG_CUA', 'KHONG_CO_TAI_XE', 'BOM_HANG')
order by created_at desc;