USE QuanLiHangCuuTro

create table DON_VI_UNG_HO
(
MaDVUH NVARCHAR(10) NOT NULL,
HoTenNguoiDaiDien NVARCHAR(50) NOT NULL,
DiaChiNguoiDaiDien NVARCHAR(50) NOT NULL,
SoDienThoaiLienLac NUMERIC(10, 0) NOT NULL,
SoCMNDNguoiDaiDien NUMERIC(9, 0) NOT NULL,
SoTaiKhoanNganHang NUMERIC(8, 0) NOT NULL,
TenNganHang NVARCHAR(20) NOT NULL,
TenChuTKNganHang NVARCHAR(50) NOT NULL,
constraint PK_DON_VI_UNG_HO primary key(MaDVUH) 
)

create table DOT_UNG_HO
(
MaDotUngHo nvarchar(10) not null,
MaDVUH nvarchar(10) not null,
NgayHungHo date not null,
constraint PK_DOT_UNG_HO primary key(MaDotUngHo),
constraint FK_DOT_UNG_HO_MaDVUH
foreign key(MaDVUH)
references DON_VI_UNG_HO(MaDVUH)
ON DELETE CASCADE
ON UPDATE CASCADE
)

create table HINH_THUC_UH
(
MaHinhThucUH nvarchar(10) not null,
TenHinhThucUngHo nvarchar(20) not null,
constraint PK_HINH_THUC_UH primary key(MaHinhThucUH)
)

create table CHI_TIET_UNG_HO
(
MaDotUngHo nvarchar(10) not null,
MaHinhThucUH nvarchar(10) not null,
SoLuongUngHo bigint not null,
DonViTinh nvarchar(10) not null,
constraint PK_CHI_TIET_UNG_HO primary key(MaDotUngHo, MaHinhThucUH),
constraint FK_CHI_TIET_UNG_HO_MaDotUngHo
foreign key(MaDotUngHo)
references DOT_UNG_HO(MaDotUngHo)
ON DELETE CASCADE
ON UPDATE CASCADE,
constraint FK_CHI_TIET_UNG_HO_MaHinhThucUH
foreign key(MaHinhThucUH)
references HINH_THUC_UH(MaHinhThucUH)
ON DELETE CASCADE
ON UPDATE CASCADE
)

create table HO_DAN
(
MaHoDan nvarchar(10) not null,
HoTenChuHo nvarchar(50) not null,
ToDanPho tinyint not null,
KhoiHoacThon tinyint not null,
SoDienThoai numeric(10, 0) not null,
DiaChiNha nvarchar(50) not null,
SoNhanKhau tinyint not null,
DienGiaDinh nvarchar(50) not null,
LaHoNgheo nvarchar(10) not null,
constraint PK_HO_DAN primary key(MaHoDan)
)

create table DOT_NHAN_UNG_HO
(
MaDotNhanUngHo nvarchar(10) not null,
MaHoDan nvarchar(10) not null,
NgayNhanUngHo date not null,
constraint PK_DOT_NHAN_UNG_HO primary key(MaDotNhanUngHo),
constraint FK_DOT_NHAN_UNG_HO_MaHoDan
foreign key(MaHoDan)
references Ho_Dan(MaHoDan)
ON DELETE CASCADE
ON UPDATE CASCADE
)

create table CHI_TIET_NHAN_UNG_HO
(
MaDotNhanUngHo nvarchar(10) not null,
MaHinhThucUH nvarchar(10) not null,
SoLuongNhanUngHo bigint not null,
DonViTinh nvarchar(10) not null,
constraint PK_CHI_TIET_NHAN_UNG_HO primary key(MaDotNhanUngHo, MaHinhThucUH),
constraint FK_CHI_TIET_NHAN_UNG_HO_MaDotNhanUngHo
foreign key(MaDotNhanUngHo)
references DOT_NHAN_UNG_HO(MaDotNhanUngHo)
ON DELETE CASCADE
ON UPDATE CASCADE,
constraint FK_CHI_TIET_NHAN_UNG_HO_MaHinhThucUH
foreign key(MaHinhThucUH)
references HINH_THUC_UH(MaHinhThucUH)
ON DELETE CASCADE
ON UPDATE CASCADE,
)