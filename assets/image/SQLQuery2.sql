CREATE DATABASE QLCH
CREATE TABLE KHACH1
(
    ma_khach nvarchar(8),
    ten_kh nvarchar(50),
    diachi_kh nvarchar(50),
)
CREATE TABLE DONHANG1
(
    so_don nvarchar(8),
    ma_khach nvarchar(8),
    ngay_don date
)
CREATE TABLE DONGDON1
(
    so_don nvarchar(8),
    ma_hang nvarchar(8),
    so_luongd int
)
CREATE TABLE PHIEUGIAO1
(
    so_phieu int,
    ma_khach nvarchar(8),
    ngay_giao date,
    noi_giao nvarchar(50),
    tong_tien int
)
CREATE TABLE DONGPHIEU1
(
    so_phieu int,
    ma_hang nvarchar(8),
    don_gia int,
    so_luonggi int
)
CREATE TABLE HANG1
(
    ma_hang nvarchar(8),
    ten_hang nvarchar(30),
    mota_hang nvarchar(50),
    don_vi nvarchar(30)
)

INSERT INTO KHACH1 Values('KH001', N'Đào Minh Thư', N'Đại học Quốc Gia')
INSERT INTO KHACH1 Values('KH002', N'Nguyễn Liên Dung', N'BNC')
INSERT INTO KHACH1 Values('KH003', N'Phạm Hoàng Nhung', N'Đại học Thủy Lợi')
INSERT INTO KHACH1 Values('KH004', N'Trịnh Hồng Cường','')
INSERT INTO KHACH1 Values('KH005', N'Nguyễn Văn Hải', N'Đại học Thủy Lợi')

INSERT INTO DONHANG1 Values('DH001','KH001','2002-3-22')
INSERT INTO DONHANG1 Values('DH002','KH001','2003-7-13')
INSERT INTO DONHANG1 Values('DH003','KH002','2002-12-24')

INSERT INTO HANG1 Values('H001', N'Hoa loa kèn', N'Hoa trắng, to', N'Bông')
INSERT INTO HANG1 Values('H002', N'Hoa hồng', N'Nhiều màu', N'Bông')
INSERT INTO HANG1 Values('H003', N'Hoa lan','', N'Cành')

INSERT INTO PHIEUGIAO1 Values(001, 'KH001', '2021-3-22', N'Hà Nội', 7000)
INSERT INTO PHIEUGIAO1 Values(002, 'KH003', '2021-8-13', N'TP Vinh', 100000)
INSERT INTO PHIEUGIAO1 Values(003, 'KH004', '2021-10-20', N'Hà Đông', 20000)
INSERT INTO PHIEUGIAO1 Values(004, 'KH005', '2021-12-24', N'Triều Khúc', 30000)
INSERT INTO PHIEUGIAO1 Values(005, 'KH002', '2021-12-25', N'Sài Gòn', 400000)

INSERT INTO DONGPHIEU1 Values(003, 'H001', 20000, 10)
INSERT INTO DONGPHIEU1 Values(002, 'H003', 10000, 9)
INSERT INTO DONGPHIEU1 Values(001, 'H002', 7000, 8)
INSERT INTO DONGPHIEU1 Values(005, 'H003', 100000, 7)
INSERT INTO DONGPHIEU1 Values(004, 'H001', 50000, 6)

DELETE FROM HANG1 WHERE ma_hang ='H001'

DELETE FROM KHACH1 WHERE diachi_kh = N'Đại học Thủy Lợi'

DELETE FROM KHACH1 WHERE ten_kh = N'Trịnh Hồng Cường'



UPDATE KHACH1 SET diachi_kh = N'Đại học Quốc Gia' WHERE ma_khach = 'KH002'

UPDATE HANG1 SET ten_hang = N'Hoa phong lan' , mota_hang =N'Hàng nhập khẩu từ Đà Lạt' WHERE ten_hang = 'Hoa lan'

SELECT * FROM KHACH1
SELECT * FROM HANG1
SELECT * FROM DONHANG1

SELECT ten_kh, diachi_kh from KHACH1
SELECT ten_hang, mota_hang, don_vi from HANG1

SELECT don_vi FROM HANG1

SELECT ten_hang FROM HANG1

SELECT diachi_kh FROM KHACH1

SELECT DONGPHIEU1.so_phieu, DONGPHIEU1.ma_hang, DONGPHIEU1.don_gia, DONGPHIEU1.so_luonggi, DONGPHIEU1.don_gia*DONGPHIEU1.so_luonggi thanh_tien  FROM PHIEUGIAO1,DONGPHIEU1 WHERE PHIEUGIAO1.so_phieu = DONGPHIEU1.so_phieu

SELECT * FROM HANG1 ORDER by ma_hang DESC

SELECT * FROM PHIEUGIAO1 ORDER BY tong_tien ASC
SELECT * FROM PHIEUGIAO1 ORDER BY tong_tien DESC

SELECT * FROM KHACH1 where diachi_kh Like N'Đại học Quốc Gia'
 
SELECT so_phieu, ma_khach  FROM PHIEUGIAO1 WHERE tong_tien >=100 ORDER BY tong_tien DESC

SELECT so_don, DONHANG1.ma_khach, ten_kh, diachi_kh, ngay_don FROM DONHANG1,KHACH1 WHERE KHACH1.ma_khach = DONHANG1.ma_khach AND ngay_don ='2002-03-22'
