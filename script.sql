USE [DBLuyenThiA1]
GO
/****** Object:  Table [dbo].[BaiThi]    Script Date: 27-Oct-18 3:06:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiThi](
	[MaNguoiDung] [int] NOT NULL,
	[MaDe] [int] NOT NULL,
	[NgayThi] [date] NOT NULL,
	[SoCauDung] [int] NULL,
	[KetQua] [nvarchar](50) NULL,
 CONSTRAINT [PK_BaiThi] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC,
	[MaDe] ASC,
	[NgayThi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CauHoi]    Script Date: 27-Oct-18 3:06:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CauHoi](
	[MaCauHoi] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [nvarchar](500) NULL,
	[HinhAnh] [image] NULL,
 CONSTRAINT [PK_CauHoi] PRIMARY KEY CLUSTERED 
(
	[MaCauHoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DapAn]    Script Date: 27-Oct-18 3:06:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DapAn](
	[MaDapAn] [int] IDENTITY(1,1) NOT NULL,
	[MaCauHoi] [int] NOT NULL,
	[NoiDungCauTraLoi] [nvarchar](500) NULL,
	[DapAn] [bit] NULL,
 CONSTRAINT [PK_DapAn] PRIMARY KEY CLUSTERED 
(
	[MaDapAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DeThi]    Script Date: 27-Oct-18 3:06:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeThi](
	[MaDe] [int] IDENTITY(1,1) NOT NULL,
	[SoDe] [int] NULL,
	[MaCauHoi] [int] NULL,
 CONSTRAINT [PK_DeThi] PRIMARY KEY CLUSTERED 
(
	[MaDe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ManHinh]    Script Date: 27-Oct-18 3:06:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManHinh](
	[MaManHinh] [int] NOT NULL,
	[TenManHinh] [nvarchar](50) NULL,
 CONSTRAINT [PK_ManHinh] PRIMARY KEY CLUSTERED 
(
	[MaManHinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 27-Oct-18 3:06:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[TenNguoiDung] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[SoDienThoai] [char](10) NULL,
	[TenDangNhap] [char](10) NULL,
	[MatKhau] [char](30) NULL,
	[MaQuyen] [char](10) NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 27-Oct-18 3:06:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[MaQuyen] [char](10) NOT NULL,
	[TenQuyen] [nvarchar](50) NULL,
	[MaManHinh] [int] NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CauHoi] ON 

INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [HinhAnh]) VALUES (1, N'Khái niệm "đường bộ" được hiểu như thế nào là đúng? Đường bộ gồm:', NULL)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [HinhAnh]) VALUES (2, N'“Vạch kẻ đường” được hiểu như thế nào là đúng?', NULL)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [HinhAnh]) VALUES (3, N'Khái niệm “Phần đường xe chạy” được hiểu như thế nào là đúng?', NULL)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [HinhAnh]) VALUES (4, N'Khái niệm “Làn đường” được hiểu như thế nào là đúng?', NULL)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [HinhAnh]) VALUES (5, N'Khái niệm “Đường phố” được hiểu như thế nào là đúng?', NULL)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [HinhAnh]) VALUES (6, N'Khái niệm “Dải phân cách” được hiểu như thế nào là đúng?', NULL)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [HinhAnh]) VALUES (7, N'Dải phân cách trên đường bộ có những loại nào?', NULL)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [HinhAnh]) VALUES (8, N'Khái niệm “đường ưu tiên” được hiểu như thế nào là đúng?', NULL)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [HinhAnh]) VALUES (9, N'Phương tiện giao thông đường bộ gồm những loại nào?', NULL)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [HinhAnh]) VALUES (10, N'Khái niệm “phương tiện giao thông cơ giới đường bộ” được hiểu như thế nào là đúng?', NULL)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [HinhAnh]) VALUES (11, N'
“Phương tiện tham gia giao thông đường bộ” gồm những loại nào? 
', NULL)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [HinhAnh]) VALUES (12, N'
“Người tham gia giao thông đường bộ” gồm những đối tượng nào? 
', NULL)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [HinhAnh]) VALUES (13, N'
Khái niệm “người điều khiển giao thông” được hiểu như thế nào là đúng? 
', NULL)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [HinhAnh]) VALUES (14, N'
Hành vi nào ghi ở dưới đây bị nghiêm cấm? 
', NULL)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [HinhAnh]) VALUES (15, N'Những hành vi nào ghi ở dưới đây bị nghiêm cấm? 
', NULL)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [HinhAnh]) VALUES (16, N'Người điều khiển phương tiện giao thông đường bộ mà trong cơ thể có chất ma túy có bị nghiêm cấm hay không? 
', NULL)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [HinhAnh]) VALUES (17, N'Người điều khiển xe ô tô, xe máy kéo, xe máy chuyên dùng trên đường mà trong máu hoặc hơi thở có nồng độ cồn vượt quá bao nhiêu thì bị cấm? 
', NULL)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [HinhAnh]) VALUES (18, N'Người điều khiển xe mô tô, xe gắn máy trên đường mà trong máu có nồng độ cồn vượt quá bao nhiêu thì bị cấm? 
', NULL)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [HinhAnh]) VALUES (19, N'Người điều khiển xe mô tô, xe gắn máy trên đường mà trong khí thở có nồng độ cồn vượt quá bao nhiêu thì bị cấm ? 
', NULL)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [HinhAnh]) VALUES (20, N'Hành vi giao xe cơ giới, xe máy chuyên dùng cho người không đủ điều kiện để điều khiển xe tham gia giao thông có bị nghiêm cấm hay không? 
', NULL)
SET IDENTITY_INSERT [dbo].[CauHoi] OFF
SET IDENTITY_INSERT [dbo].[DapAn] ON 

INSERT [dbo].[DapAn] ([MaDapAn], [MaCauHoi], [NoiDungCauTraLoi], [DapAn]) VALUES (1, 1, N'Đường bộ, cầu đường bộ.', 1)
INSERT [dbo].[DapAn] ([MaDapAn], [MaCauHoi], [NoiDungCauTraLoi], [DapAn]) VALUES (2, 1, N'Hầm đường bộ, bến phà đường bộ.', 1)
INSERT [dbo].[DapAn] ([MaDapAn], [MaCauHoi], [NoiDungCauTraLoi], [DapAn]) VALUES (3, 1, N'Đường, cầu đường bộ, hầm đường bộ, bến phà đường bộ và các công trình phụ trợ khác.', 0)
INSERT [dbo].[DapAn] ([MaDapAn], [MaCauHoi], [NoiDungCauTraLoi], [DapAn]) VALUES (4, 1, N'Đáp án khác', 0)
INSERT [dbo].[DapAn] ([MaDapAn], [MaCauHoi], [NoiDungCauTraLoi], [DapAn]) VALUES (5, 2, N'Vạch kẻ đường là vạch chỉ sự phân chia làn đường, vị trí hoặc hướng đi, vị trí dừng lại.', 1)
INSERT [dbo].[DapAn] ([MaDapAn], [MaCauHoi], [NoiDungCauTraLoi], [DapAn]) VALUES (6, 2, N'Vạch kẻ đường là vạch chỉ sự phân biệt vị trí dừng, đỗ trên đường.', 0)
INSERT [dbo].[DapAn] ([MaDapAn], [MaCauHoi], [NoiDungCauTraLoi], [DapAn]) VALUES (7, 2, N'Tất cả các ý nêu trên.', 0)
INSERT [dbo].[DapAn] ([MaDapAn], [MaCauHoi], [NoiDungCauTraLoi], [DapAn]) VALUES (8, 2, N'Đáp án khác', 0)
INSERT [dbo].[DapAn] ([MaDapAn], [MaCauHoi], [NoiDungCauTraLoi], [DapAn]) VALUES (9, 3, N'Là phần của đường bộ được sử dụng cho các phương tiện giao thông qua lại', 1)
INSERT [dbo].[DapAn] ([MaDapAn], [MaCauHoi], [NoiDungCauTraLoi], [DapAn]) VALUES (10, 3, N'Là phần của đường bộ được sử dụng cho các phương tiện giao thông qua lại, dải đất dọc hai bên đường để bảo đảm an toàn giao thông.', 0)
INSERT [dbo].[DapAn] ([MaDapAn], [MaCauHoi], [NoiDungCauTraLoi], [DapAn]) VALUES (11, 3, N'Là phần của đường bộ được sử dụng cho các phương tiện giao thông qua lại, các công trình, thiết bị phụ trợ khác, dải đất dọc hai bên đường để bảo đảm an toàn giao thông.', 0)
INSERT [dbo].[DapAn] ([MaDapAn], [MaCauHoi], [NoiDungCauTraLoi], [DapAn]) VALUES (12, 3, N'Đáp án khác', 0)
SET IDENTITY_INSERT [dbo].[DapAn] OFF
SET IDENTITY_INSERT [dbo].[DeThi] ON 

INSERT [dbo].[DeThi] ([MaDe], [SoDe], [MaCauHoi]) VALUES (1, 1, 1)
INSERT [dbo].[DeThi] ([MaDe], [SoDe], [MaCauHoi]) VALUES (2, 1, 2)
INSERT [dbo].[DeThi] ([MaDe], [SoDe], [MaCauHoi]) VALUES (3, 1, 3)
INSERT [dbo].[DeThi] ([MaDe], [SoDe], [MaCauHoi]) VALUES (4, 1, 4)
SET IDENTITY_INSERT [dbo].[DeThi] OFF
INSERT [dbo].[ManHinh] ([MaManHinh], [TenManHinh]) VALUES (1, N'Thi Bằng Lái')
INSERT [dbo].[ManHinh] ([MaManHinh], [TenManHinh]) VALUES (2, N'Thêm Câu Hỏi')
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [NgaySinh], [GioiTinh], [SoDienThoai], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (1, N'Nguyễn Văn A', CAST(0xAF150B00 AS Date), N'Nam', N'0987654321', N'nguyenvana', N'12345                         ', N'user      ')
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [NgaySinh], [GioiTinh], [SoDienThoai], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (2, N'Trần Thị B', CAST(0xC3150B00 AS Date), N'Nữ', N'0336784536', N'tranthib  ', N'54321                         ', N'admin     ')
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
INSERT [dbo].[PhanQuyen] ([MaQuyen], [TenQuyen], [MaManHinh]) VALUES (N'admin     ', N'Quản trị', 2)
INSERT [dbo].[PhanQuyen] ([MaQuyen], [TenQuyen], [MaManHinh]) VALUES (N'user      ', N'Người Dùng', 1)
ALTER TABLE [dbo].[BaiThi]  WITH CHECK ADD  CONSTRAINT [FK_BaiThi_DeThi] FOREIGN KEY([MaDe])
REFERENCES [dbo].[DeThi] ([MaDe])
GO
ALTER TABLE [dbo].[BaiThi] CHECK CONSTRAINT [FK_BaiThi_DeThi]
GO
ALTER TABLE [dbo].[BaiThi]  WITH CHECK ADD  CONSTRAINT [FK_BaiThi_NguoiDung] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[BaiThi] CHECK CONSTRAINT [FK_BaiThi_NguoiDung]
GO
ALTER TABLE [dbo].[DapAn]  WITH CHECK ADD  CONSTRAINT [FK_DapAn_CauHoi] FOREIGN KEY([MaCauHoi])
REFERENCES [dbo].[CauHoi] ([MaCauHoi])
GO
ALTER TABLE [dbo].[DapAn] CHECK CONSTRAINT [FK_DapAn_CauHoi]
GO
ALTER TABLE [dbo].[DeThi]  WITH CHECK ADD  CONSTRAINT [FK_DeThi_CauHoi] FOREIGN KEY([MaCauHoi])
REFERENCES [dbo].[CauHoi] ([MaCauHoi])
GO
ALTER TABLE [dbo].[DeThi] CHECK CONSTRAINT [FK_DeThi_CauHoi]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_PhanQuyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[PhanQuyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_PhanQuyen]
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyen_ManHinh] FOREIGN KEY([MaManHinh])
REFERENCES [dbo].[ManHinh] ([MaManHinh])
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_PhanQuyen_ManHinh]
GO
