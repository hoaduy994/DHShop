create database QLNV
create table NHANVIEN1
(
	MaNV nvarchar(8),
	Hoten nvarchar(30),
	Congviec nvarchar(50),
	Luong int,
	MaDV nvarchar(4),
	MaPT nvarchar(8)
)
create table DONVI1
(	
	MaDV nvarchar(4),
	TenDV nvarchar(50)
)
create table BACLUONG1
(	
	MaBac nvarchar(50),
	BacCao int,
	BacThap int
)
Insert into NHANVIEN1(MaNV,Hoten,Congviec,Luong,MaDV)values('NV001', N'Phạm Thị Nhàn', N'Thư Ký',500,'0001')
Insert into NHANVIEN1(MaNV,Hoten,Congviec,Luong,MaDV)values('NV002', N'Hoàng Thanh Vân', N'Giáo viên',600,'0001')
Insert into NHANVIEN1(MaNV,Hoten,Congviec,Luong,MaDV)values('NV003', N'Hoàng Thị Lan', N'Giáo viên',200,'0002')
Insert into NHANVIEN1(MaNV,Hoten,Congviec,Luong,MaDV)values('NV004', N'Đỗ Trung Dũng', N'Thư Ký',700,'0003')

Insert into DONVI1(MaDV,TenDV)values('0001','KHTN')
Insert into DONVI1(MaDV,TenDV)values('0002','DHTL')
Insert into DONVI1(MaDV,TenDV)values('0003','DHQG')

Insert into BACLUONG1(MaBac,BacThap,BacCao)values('1',400,500)
Insert into BACLUONG1(MaBac,BacThap,BacCao)values('2',501,600)
Insert into BACLUONG1(MaBac,BacThap,BacCao)values('3',601,800)

Select * from NHANVIEN1
Select * from DONVI1
Select * from BACLUONG1


Select HoTen, CongViec,Luong from NHANVIEN1
Select Distinct HoTen, CongViec,Luong from NHANVIEN1

Select HoTen,Luong*3 LuongQuy From NHANVIEN1
Order by Luong desc

select Hoten, Luong from NHANVIEN1 where Luong>300
select Hoten, Luong from NHANVIEN1 where Luong>300 and Congviec='Giáo viên'
select Hoten, Luong from NHANVIEN1 where Luong=300 or Luong=200 Or Luong=600
select Hoten, Luong from NHANVIEN1 where Luong>300 and Luong<600
select Hoten, Luong from NHANVIEN1 where Hoten like 'Hoàng%'