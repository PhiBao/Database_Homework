INSERT INTO dbo.LOAIMATHANG
VALUES  ('MH001', 'Quan ao'), ('MH002', 'My pham'), ('MH003', 'Do gia dung'), ('MH004', 'Do dien tu');

INSERT INTO dbo.KHUVUC
VALUES ('KV001', 'Son Tra'), ('KV002', 'Lien Chieu'), ('KV003', 'Ngu Hanh Son'), ('KV004', 'Hai Chau'), ('KV005', 'Thanh Khe');

INSERT INTO dbo.KHOANGTHOIGIAN
VALUES ('TG001', '7h - 9h AM'), ('TG002', '9h - 11h AM'), ('TG003', '1h - 3h PM'), ('TG004', '3h - 5h PM'), ('TG005', '7h - 9h30 PM');

INSERT INTO dbo.DICHVU
VALUES ('DV001', 'Giao hang nguoi nhan tra tien phi'), ('DV002', 'Giao hang nguoi gui tra tien phi'), ('DV003', 'Giao hang cong ich (khong tinh phi)');

INSERT INTO dbo.THANHVIENGIAOHANG
VALUES ('TV0001', 'Nguyen Van A', '11/20/1995', 'Nam', '0905111111', '23 Ong Ich Khiem'),
('TV0002', 'Nguyen Thi B', '12/26/1992', 'Nu', '0905111112', '234 Ton Duc Thang'),
('TV0003', 'Nguyen Thi C', '11/30/1990', 'Nu', '0905111113', '45 Hoang Dieu'),
('TV0004', 'Nguyen Van D', '7/8/1995', 'Nam', '0905111114', '23/33 Ngu Hang Son'),
('TV0005', 'Nguyen Van E', '2/4/1991', 'Nam', '0905111115', '56 Dinh Thi Dieu');

INSERT INTO dbo.DANGKYGIAOHANG
VALUES ('TV0001', 'TG004'), ('TV0002', 'TG005'), ('TV0003', 'TG001'), ('TV0003', 'TG002'), ('TV0003', 'TG003');

INSERT INTO dbo.KHACHHANG
VALUES ('KH001', 'KV001', 'Le Thi A', 'Cua Hang 1', '0905111111', 'alethi@gmail.com', '80 Pham Phu Thai'),
('KH002', 'KV001', 'Nguyen Van B', 'Cua Hang 2', '0905111112', 'bnguyenvan@gmail.com', '100 Phan Tu'),
('KH003', 'KV002', 'Le Thi B', 'Cua Hang 3', '0905111113', 'blethi@gmail.com', '23 An Thuong 18'),
('KH004', 'KV002', 'Nguyen Van C', 'Cua Hang 4', '0905111114', 'cnguyenvan@gmail.com', '67 Ngo The Thai'),
('KH005', 'KV001', 'Le Thi D', 'Cua Hang 5', '0905111115', 'dlethi@gmail.com', '100 Chau Thi Vinh Te');

INSERT INTO dbo.DONHANG_GIAOHANG
VALUES ('DH0001', 'KH001', 'TV0001', 'DV001', 'KV001', 'Pham Van A', '30 Hoang Van Thu', '0905111111', 'TG004', '10/10/2016', 'Tien mat', 'Da phe duyet', 'Da giao hang'),
('DH0002', 'KH001', 'TV0002', 'DV001', 'KV005', 'Pham Van B', '15 Le Dinh Ly', '0905111112', 'TG005', '12/23/2016', 'Tien mat', 'Da phe duyet', 'Chua giao hang'),
('DH0003', 'KH002', 'TV0003', 'DV001', 'KV005', 'Pham Van C', '23 Le Dinh Duong', '0905111113', 'TG001', '7/8/2017', 'Tien mat', 'Da phe duyet', 'Da giao hang'),
('DH0004', 'KH003', 'TV0004', 'DV003', 'KV002', 'Pham Van D', '45 Pham Phu Thai', '0905111114', 'TG002', '10/11/2015', 'Chuyen khoang', 'Da phe duyet', 'Da giao hang'),
('DH0005', 'KH003', 'TV0005', 'DV003', 'KV003', 'Pham Van E', '78 Hoang Dieu', '0905111115', 'TG003', '4/4/2017', 'Chuyen khoang', 'Chua phe duyet', '');

INSERT INTO dbo.CHITIET_DONHANG
VALUES ('DH0001', 'Ao len', '2', '0.5', 'MH001', '200,000'),
('DH0001', 'Quan au', '1', '0.25', 'MH001', '350,000'),
('DH0002', 'Ao thun', '1', '0.25', 'MH001', '1,000,000'),
('DH0002', 'Ao Khoac', '3', '0.25', 'MH001', '2,000,000'),
('DH0003', 'Sua duong the', '2', '0.25', 'MH002', '780,000'),
('DH0003', 'Kem tay da chet', '3', '0.5', 'MH002', '150,000'),
('DH0001', 'Kem duong ban dem', '4', '0.25', 'MH002', '900,000');
