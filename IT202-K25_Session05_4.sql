-- Giải pháp 1 (or): where status = 'KHACH_HUY' or status = 'QUAN_DONG_CUA' or ...
-- Giải pháp 2 (in): where status in ('KHACH_HUY', 'QUAN_DONG_CUA', 'KHONG_CO_TAI_XE', 'BOM_HANG')

-- Tiêu chí	     Giải pháp 1 (OR)	           Giải pháp 2 (IN)
-- Code sạch	       Kém                         Tốt
-- Mở rộng	        Khó quản lý                 Dễ quản lý 
-- Hiệu năng           Thấp	                       Cao

select order_id, status, created_at 
from Orders 
where status in ('KHACH_HUY', 'QUAN_DONG_CUA', 'KHONG_CO_TAI_XE', 'BOM_HANG')
order by created_at desc;