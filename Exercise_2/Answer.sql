--Task 1--
DELETE FROM dbo.DON_VI_UNG_HO
WHERE TenNganHang = 'DongABank'

--Task 2--
UPDATE dbo.HINH_THUC_UH
SET TenHinhThucUngHo = 'Mi an lien'
WHERE TenHinhThucUngHo = 'Mi tom'

--Task 3--
SELECT dbo.HO_DAN.*
FROM dbo.HO_DAN
WHERE HoTenChuHo LIKE 'Ph%' AND LEN(HoTenChuHo) <= 30

--Task 4--
SELECT *
FROM dbo.DOT_NHAN_UNG_HO
WHERE YEAR(NgayNhanUngHo) = '2015' AND MaHoDan LIKE '%1'

--Task 5--
SELECT dbo.DOT_UNG_HO.MaDVUH, HoTenNguoiDaiDien, MaDotUngHo, NgayUngHo
FROM dbo.DOT_UNG_HO INNER JOIN dbo.DON_VI_UNG_HO
ON dbo.DOT_UNG_HO.MaDVUH = dbo.DON_VI_UNG_HO.MaDVUH
WHERE NgayUngHo <= '2016-04-30'
ORDER BY NgayUngHo DESC, HoTenNguoiDaiDien ASC

--Task 6--
SELECT dbo.HO_DAN.*
FROM dbo.HO_DAN
WHERE LaHoNgheo = 'Dung'
AND MaHoDan NOT IN (SELECT MaHoDan FROM dbo.DOT_NHAN_UNG_HO)

--Task 7--
 SELECT DISTINCT(HoTenChuHo)
 FROM dbo.HO_DAN

 SELECT HoTenChuHo
 FROM dbo.HO_DAN
 GROUP BY HoTenChuHo

 --Task 8--
 SELECT dbo.HO_DAN.MaHoDan, HoTenChuHo, ToDanPho, KhoiHoacThon,
 dbo.DOT_NHAN_UNG_HO.MaDotNhanUngHo, NgayNhanUngHo, MaHinhThucUH,SoLuongNhanUngHo, DonViTinh
 FROM dbo.HO_DAN LEFT JOIN dbo.DOT_NHAN_UNG_HO ON dbo.HO_DAN.MaHoDan = dbo.DOT_NHAN_UNG_HO.MaHoDan
 JOIN dbo.CHI_TIET_NHAN_UNG_HO ON dbo.DOT_NHAN_UNG_HO.MaDotNhanUngHo = dbo.CHI_TIET_NHAN_UNG_HO.MaDotNhanUngHo

 --Task 9--
 SELECT dbo.DON_VI_UNG_HO.MaDVUH
 FROM dbo.DON_VI_UNG_HO JOIN dbo.DOT_UNG_HO ON dbo.DON_VI_UNG_HO.MaDVUH = dbo.DOT_UNG_HO.MaDVUH
 JOIN dbo.CHI_TIET_UNG_HO ON dbo.DOT_UNG_HO.MaDotUngHo = dbo.CHI_TIET_UNG_HO.MaDotUngHo
 JOIN dbo.HINH_THUC_UH ON dbo.CHI_TIET_UNG_HO.MaHinhThucUH = dbo.HINH_THUC_UH.MaHinhThucUH
 WHERE TenHinhThucUngHo = 'Mi an lien' AND YEAR(NgayUngHo) = '2016'
 GROUP BY dbo.DON_VI_UNG_HO.MaDVUH
 HAVING COUNT(dbo.DOT_UNG_HO.MaDotUngHo) >= 5

 --Task 10--
 SELECT dbo.HO_DAN.*
 FROM dbo.HO_DAN JOIN dbo.DOT_NHAN_UNG_HO ON dbo.HO_DAN.MaHoDan = dbo.DOT_NHAN_UNG_HO.MaHoDan
 JOIN dbo.CHI_TIET_NHAN_UNG_HO ON dbo.DOT_NHAN_UNG_HO.MaDotNhanUngHo = dbo.CHI_TIET_NHAN_UNG_HO.MaDotNhanUngHo
 JOIN dbo.HINH_THUC_UH ON dbo.CHI_TIET_NHAN_UNG_HO.MaHinhThucUH = dbo.HINH_THUC_UH.MaHinhThucUH
 WHERE TenHinhThucUngHo = 'Mi an lien'
 EXCEPT
 SELECT dbo.HO_DAN.*
 FROM dbo.HO_DAN JOIN dbo.DOT_NHAN_UNG_HO ON dbo.HO_DAN.MaHoDan = dbo.DOT_NHAN_UNG_HO.MaHoDan
 JOIN dbo.CHI_TIET_NHAN_UNG_HO ON dbo.DOT_NHAN_UNG_HO.MaDotNhanUngHo = dbo.CHI_TIET_NHAN_UNG_HO.MaDotNhanUngHo
 JOIN dbo.HINH_THUC_UH ON dbo.CHI_TIET_NHAN_UNG_HO.MaHinhThucUH = dbo.HINH_THUC_UH.MaHinhThucUH
 WHERE TenHinhThucUngHo = 'Gao'