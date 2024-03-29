USE [fifness]
GO
/****** Object:  Table [dbo].[BAIVIET]    Script Date: 1/16/2021 1:18:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAIVIET](
	[MABV] [int] IDENTITY(1,1) NOT NULL,
	[TENBV] [ntext] NULL,
	[NOIDUNG] [ntext] NULL,
	[HINH] [varchar](100) NULL,
	[NGAYVIET] [datetime] NULL,
	[MACD] [int] NULL,
	[LANGUEGE] [char](2) NULL,
 CONSTRAINT [PK__BAIVIET__603FFF97F8BE6745] PRIMARY KEY CLUSTERED 
(
	[MABV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHUCVU]    Script Date: 1/16/2021 1:18:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUCVU](
	[MACV] [int] IDENTITY(1,1) NOT NULL,
	[TENCV] [nvarchar](50) NOT NULL,
	[MANV] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MACV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHUDE]    Script Date: 1/16/2021 1:18:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUDE](
	[MACD] [int] IDENTITY(1,1) NOT NULL,
	[TENCD] [nvarchar](100) NOT NULL,
	[MABV] [int] NULL,
	[MANV] [int] NULL,
 CONSTRAINT [PK__CHUDE__603F182A1E41BB7A] PRIMARY KEY CLUSTERED 
(
	[MACD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 1/16/2021 1:18:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [int] IDENTITY(1,1) NOT NULL,
	[TENKH] [nvarchar](100) NULL,
	[NGAYSINH] [datetime] NULL,
	[DIACHI] [nvarchar](100) NULL,
	[GIOITINH] [nchar](10) NULL,
	[MANV] [int] NULL,
	[MATV] [int] NULL,
	[NHANXET] [ntext] NULL,
	[HINH] [nvarchar](50) NULL,
	[MAKHID] [int] NULL,
 CONSTRAINT [PK__KHACHHAN__603F592C8FDB5017] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHUYENMAI]    Script Date: 1/16/2021 1:18:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUYENMAI](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TENKH] [nvarchar](50) NULL,
	[HINH] [nvarchar](100) NULL,
	[NOIDUNG] [nvarchar](170) NULL,
	[MAKH] [char](10) NULL,
	[GIAMGIA] [nchar](10) NULL,
 CONSTRAINT [PK_KHUYENMAI] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LANGUEGE]    Script Date: 1/16/2021 1:18:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LANGUEGE](
	[ID] [char](2) NOT NULL,
	[NAME] [nvarchar](50) NULL,
	[isDefault] [bit] NOT NULL,
 CONSTRAINT [PK_LANGUEGE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOGIN]    Script Date: 1/16/2021 1:18:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOGIN](
	[ID] [int] NOT NULL,
	[USERNAME] [varchar](50) NULL,
	[PASSWORD] [varchar](50) NULL,
	[EMAIL] [nvarchar](100) NULL,
 CONSTRAINT [PK_LOGIN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 1/16/2021 1:18:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MANV] [int] IDENTITY(1,1) NOT NULL,
	[TENNV] [nvarchar](50) NULL,
	[SDT] [varchar](10) NULL,
	[GIOITINH] [nchar](10) NULL,
	[DIACHI] [nvarchar](300) NULL,
	[HINH] [nvarchar](100) NULL,
	[MAKH] [int] NULL,
	[GIOITHIEU] [nvarchar](150) NULL,
	[MACV] [int] NULL,
	[HINHmh] [varchar](100) NULL,
	[LANGUEGE] [char](2) NULL,
 CONSTRAINT [PK__NHANVIEN__603F5114012C65D1] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUANGCAO]    Script Date: 1/16/2021 1:18:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUANGCAO](
	[MAQC] [int] IDENTITY(1,1) NOT NULL,
	[BAIVIET] [ntext] NULL,
	[MANV] [int] NULL,
 CONSTRAINT [PK__QUANGCAO__602379FDBBA5FED2] PRIMARY KEY CLUSTERED 
(
	[MAQC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THANHVIEN]    Script Date: 1/16/2021 1:18:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THANHVIEN](
	[MATV] [int] IDENTITY(1,1) NOT NULL,
	[LOAITV] [nvarchar](50) NULL,
	[MAKH] [int] NULL,
 CONSTRAINT [PK__THANHVIE__6023720985F9C22B] PRIMARY KEY CLUSTERED 
(
	[MATV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USER]    Script Date: 1/16/2021 1:18:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[USERNAME] [varchar](50) NULL,
	[PASSWORD] [varchar](50) NULL,
	[NHAPLAIPASSWORD] [varchar](50) NULL,
	[HOTEN] [nvarchar](50) NULL,
	[DIACHI] [nvarchar](50) NULL,
	[EMAIL] [varchar](50) NULL,
	[SDT] [nchar](10) NULL,
	[ThongBao] [nchar](10) NULL,
	[MANV] [int] NULL,
	[TRANGTHAI] [bit] NULL,
 CONSTRAINT [PK_USER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BAIVIET] ON 

INSERT [dbo].[BAIVIET] ([MABV], [TENBV], [NOIDUNG], [HINH], [NGAYVIET], [MACD], [LANGUEGE]) VALUES (2, N'DIỄN ĐÀN NUÔI DẠY', N'Diễn đàn là nơi giúp phụ huynh hiểu rõ hơn những vấn đề liên quan đến diễn biến tâm – sinh lý của trẻ để có thể cùng nhà trường nuôi dạy tốt hơn. Thông qua việc trao đổi với chuyên gia phụ huynh có thể nhận được những lời khuyên, tư vấn ở các lĩnh vực khác nhau như dinh dưỡng, phòng chống các bệnh thông thường, cách làm bạn và xây dựng mối quan hệ tích cực với con mình; từ đó giúp được con trong học tập và phát triển đúng cách.', N'bvbb1.jpg', CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[BAIVIET] ([MABV], [TENBV], [NOIDUNG], [HINH], [NGAYVIET], [MACD], [LANGUEGE]) VALUES (3, N'CLOTHES STUDY & GROCERIES STUDY: DẠY TRẺ MUA SẮM THÔNG MINH', N'Học sinh toàn Hệ thống Trường Mầm non Quốc tế KINDY CITY đang bước vào hai chủ đề học tập cuối cùng của năm học: CLOTHES STUDY & GROCERIES STUDY. Với các chủ đề này, trẻ sẽ được trang bị kiến thức cần thiết về tên gọi, chất liệu, màu.', N'bvbb2.jpg', CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[BAIVIET] ([MABV], [TENBV], [NOIDUNG], [HINH], [NGAYVIET], [MACD], [LANGUEGE]) VALUES (4, N'TRẢI NGHIỆM THẾ GIỚI ẢO 3D VỚI BẢNG TƯƠNG TÁC', N'“Nó thật xinh đẹp, sau này lớn lên con sẽ đến đó chơi” – đó là chia sẻ của một học sinh Hệ thống Trường Mầm non Quốc tế KINDY CITY sau khi được trải nghiệm thế giới ảo mô hình công viên Disney ở Mỹ. Hoạt động này đã tác động mạnh mẽ về […]', N'bvbb3.jpg', CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[BAIVIET] ([MABV], [TENBV], [NOIDUNG], [HINH], [NGAYVIET], [MACD], [LANGUEGE]) VALUES (5, N'YOGA ẤN ĐỘ CHO NGƯỜI MỚI BẮT ĐẦU', N'Không chỉ được biết đến rộng rãi mà yoga Ấn Độ còn là bộ môn được rất nhiều người yêu thích luyện tập hiện nay. Bởi bộ môn này không chỉ mang đến những lợi ích tuyệt vời cho sức khỏe mà còn giúp duy trì vóc dáng cân đối và thon gọn. Vậy để tìm hiểu chi tiết và đầy đủ hơn về yoga Ấn Độ cho người mới bắt đầu, các bạn hãy cùng dành thời gian theo dõi những chia sẻ thú vị sau đây của California Fitness nhé! ', N'bvpp4.jpg', CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[BAIVIET] ([MABV], [TENBV], [NOIDUNG], [HINH], [NGAYVIET], [MACD], [LANGUEGE]) VALUES (6, N'BỎ TÚI 4 MÓN ĂN GIẢM CÂN NGON MIỆNG MÀ LẠI HIỆU QUẢ CHO CÁC TÍN ĐỒ "MÊ ĂN" NHƯNG KHÔNG MUỐN TĂNG CÂN', N'Đây là một trong số những món ăn giảm cân mà bạn không thể bỏ qua trong thực đơn của mình. Tôm là loại thực phẩm có hàm lượng chất béo ít, ngoài ra tôm cung cấp protein rất tốt cho việc tái tạo cơ bắp. Đặc biệt, tôm chứa loại axit béo omega 3 đây là loại chất béo giúp đốt cháy lượng mỡ thừa trong cơ thể. Ngoài ra, khoai lang là loại củ thường được lựa chọn trong hầu hết các thực đơn giảm cân. Vì vậy, khi bạn kết hợp tôm hấp cùng khoai lang và bắp cải luộc sẽ là bữa ăn giàu dinh dưỡng mà không gây béo. ', N'bvbb5.jpg', CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[BAIVIET] ([MABV], [TENBV], [NOIDUNG], [HINH], [NGAYVIET], [MACD], [LANGUEGE]) VALUES (7, N'MÁCH NHỎ 3 BÀI TẬP GIẢM MỠ ĐÙI NHANH CHÓNG GIÚP BẠN SỞ HỮU ĐÔI CHÂN THON GỌN ĐÓN GIÁNG SINH VUI VẺ', N'Mỡ thừa vùng đùi luôn khiến các bạn nữ cảm thấy tự ti ngay cả khi diện những bộ đồ mà họ yêu thích. Bởi đây là vùng khuyết điểm rất khó hoặc sẽ mất rất nhiều thời gian để khắc phục nếu không có phương pháp giảm mỡ đùi phù hợp. Tuy nhiên, bạn không cần quá lo lắng về điều này bởi ngay trong bài viết sau đây, California Fitness sẽ mách nhỏ 3 bài tập giảm mỡ đùi nhanh chóng và hiệu quả nhất! ', N'bvbb6.jpg', CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[BAIVIET] ([MABV], [TENBV], [NOIDUNG], [HINH], [NGAYVIET], [MACD], [LANGUEGE]) VALUES (8, N'Không phải kiêng tinh bột với những phiên bản lành mạnh của cơm và bánh mì giúp bạn giảm cân', N'Thế nhưng, đối với những người con Việt Nam lớn lên với bao nhiêu món như cơm nhà, bánh mì đầu ngõ, phở trên đường lớn như chúng ta thì hầu như luôn bị “thập diện mai phục” bởi tinh bột. Tinh bột là một phần lớn trong khẩu phần ăn của những đứa trẻ châu Á mà nếu tách ra thì hẳn sẽ lấy đi đến 50% những gì ta ăn thường ngày. Trong thực tế, nhiều nhà khoa học cho biết chúng ta cần tinh bột để sống và thực hiện các hoạt động thường ngày. Thật dễ để gom hết các loại carbonhydrate thành một chữ “tinh bột” nhưng hiếm ai biết rằng chất xơ, vitamin và các chất khoáng cũng là một dạng carbonhydrate đấy. Những loại này khi vào cơ thể sẽ được chuyển hoá thành đường đa phức tạp, không dễ phân giải nên khiến cơ thể no lâu, có năng lượng trong thời gian dài.', N'bvbb7.jpg', CAST(N'2019-12-12T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[BAIVIET] ([MABV], [TENBV], [NOIDUNG], [HINH], [NGAYVIET], [MACD], [LANGUEGE]) VALUES (9, N'Với 10 thực đơn healthy này, bạn sẽ dễ dàng đổi bữa mà không lo béo, thậm chí còn giảm mỡ tăng cơ cực tốt.', N'Chế độ ăn uống lành mạnh đóng vai trò vô cùng quan trọng, giúp bạn không chỉ khỏe mạnh, xinh đẹp hơn mà còn là liều thuốc tăng sức đề kháng, chống chọi với nhiều loại virus, vi khuẩn. Đối với riêng người tập gym, việc ăn uống cần có chuẩn mực nhất định để giảm mỡ tăng cơ hiệu quả.Nhưng không phải ai cũng biết cách chọn lựa thực phẩm đúng để đạt được những mục đích ấy khi tập gym, hoặc ngay cả khi bạn muốn duy trì ăn lành mạnh lại giúp tăng cơ mà không tăng mỡ.Hiểu được những điều này, hôm nay, DR.FITNESS sẽ hướng dẫn bạn một số thực đơn giảm mỡ tăng cơ cực tốt, bạn sẽ không còn phải lo béo bụng và cũng đập tan suy nghĩ giảm cân là khổ nhé!', N'bvbb8.jpg', CAST(N'2019-12-12T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[BAIVIET] ([MABV], [TENBV], [NOIDUNG], [HINH], [NGAYVIET], [MACD], [LANGUEGE]) VALUES (10, N'Tổng hợp những loại đậu tốt cho việc tăng cân hiệu quả', N'Bạn đang muốn cải thiện thân hình cò hương của mình? vậy thì không thể bỏ qua thực phẩm giúp tăng cân bằng bột ngũ cốc làm từ đậu đen, đậu xanh, đậu nành, đậu đỏ và mè đen. Nếu các bạn nữ sử dụng thường xuyên và trong thời gian dài sẽ giúp tăng kích thước vòng 1 một cách đáng kể nhé.Bột ngũ cốt làm từ 5 loại đậu này tạo thành 1 thực phẩm bổ sung dinh dưỡng cho mọi đối tượng và mọi độ tuổi. Những người có thể trạng yếu, suy dinh dưỡng, suy nhược cơ thể… nên sổ sung bột ngũ cốc vào thực đơn hằng ngày của mình.Đậu chừa nhiều chất dinh dưỡng và chất chống ung thư, ngoài ra còn giúp tăng sức đề kháng cho cơ thể nhờ vào các dưỡng chất có trong đậu. Theo Geil, một chuyên gia dinh dưỡng nổi tiếng ở Đức, nếu ăn 250g đậu đã được nấu chín mỗi ngày trong vòng 6 tuần lễ, bạn có thể giảm đến 30% lượng cholesterol có trong máu mà không cần dung thêm bất cứ loại thuốc nào khác.', N'bv9.jpg', CAST(N'2019-12-12T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[BAIVIET] ([MABV], [TENBV], [NOIDUNG], [HINH], [NGAYVIET], [MACD], [LANGUEGE]) VALUES (11, N'Không phải kiêng tinh bột với những phiên bản lành mạnh của cơm và bánh mì giúp bạn giảm cân', N'Thế nhưng, đối với những người con Việt Nam lớn lên với bao nhiêu món như cơm nhà, bánh mì đầu ngõ, phở trên đường lớn như chúng ta thì hầu như luôn bị “thập diện mai phục” bởi tinh bột. Tinh bột là một phần lớn trong khẩu phần ăn của những đứa trẻ châu Á mà nếu tách ra thì hẳn sẽ lấy đi đến 50% những gì ta ăn thường ngày. Trong thực tế, nhiều nhà khoa học cho biết chúng ta cần tinh bột để sống và thực hiện các hoạt động thường ngày. Thật dễ để gom hết các loại carbonhydrate thành một chữ “tinh bột” nhưng hiếm ai biết rằng chất xơ, vitamin và các chất khoáng cũng là một dạng carbonhydrate đấy. Những loại này khi vào cơ thể sẽ được chuyển hoá thành đường đa phức tạp, không dễ phân giải nên khiến cơ thể no lâu, có năng lượng trong thời gian dài.', N'img/img_Content/d1.jpg', CAST(N'2019-12-12T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[BAIVIET] ([MABV], [TENBV], [NOIDUNG], [HINH], [NGAYVIET], [MACD], [LANGUEGE]) VALUES (12, N'Với 10 thực đơn healthy này, bạn sẽ dễ dàng đổi bữa mà không lo béo, thậm chí còn giảm mỡ tăng cơ cực tốt.', N'Chế độ ăn uống lành mạnh đóng vai trò vô cùng quan trọng, giúp bạn không chỉ khỏe mạnh, xinh đẹp hơn mà còn là liều thuốc tăng sức đề kháng, chống chọi với nhiều loại virus, vi khuẩn. Đối với riêng người tập gym, việc ăn uống cần có chuẩn mực nhất định để giảm mỡ tăng cơ hiệu quả.Nhưng không phải ai cũng biết cách chọn lựa thực phẩm đúng để đạt được những mục đích ấy khi tập gym, hoặc ngay cả khi bạn muốn duy trì ăn lành mạnh lại giúp tăng cơ mà không tăng mỡ.Hiểu được những điều này, hôm nay, DR.FITNESS sẽ hướng dẫn bạn một số thực đơn giảm mỡ tăng cơ cực tốt, bạn sẽ không còn phải lo béo bụng và cũng đập tan suy nghĩ giảm cân là khổ nhé!', N'img/img_Content/d2.jpg', CAST(N'2019-12-12T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[BAIVIET] ([MABV], [TENBV], [NOIDUNG], [HINH], [NGAYVIET], [MACD], [LANGUEGE]) VALUES (13, N'Tổng hợp những loại đậu tốt cho việc tăng cân hiệu quả', N'Bạn đang muốn cải thiện thân hình cò hương của mình? vậy thì không thể bỏ qua thực phẩm giúp tăng cân bằng bột ngũ cốc làm từ đậu đen, đậu xanh, đậu nành, đậu đỏ và mè đen. Nếu các bạn nữ sử dụng thường xuyên và trong thời gian dài sẽ giúp tăng kích thước vòng 1 một cách đáng kể nhé.Bột ngũ cốt làm từ 5 loại đậu này tạo thành 1 thực phẩm bổ sung dinh dưỡng cho mọi đối tượng và mọi độ tuổi. Những người có thể trạng yếu, suy dinh dưỡng, suy nhược cơ thể… nên sổ sung bột ngũ cốc vào thực đơn hằng ngày của mình.Đậu chừa nhiều chất dinh dưỡng và chất chống ung thư, ngoài ra còn giúp tăng sức đề kháng cho cơ thể nhờ vào các dưỡng chất có trong đậu. Theo Geil, một chuyên gia dinh dưỡng nổi tiếng ở Đức, nếu ăn 250g đậu đã được nấu chín mỗi ngày trong vòng 6 tuần lễ, bạn có thể giảm đến 30% lượng cholesterol có trong máu mà không cần dung thêm bất cứ loại thuốc nào khác.', N'bvbb3.jpg', CAST(N'2019-12-12T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[BAIVIET] ([MABV], [TENBV], [NOIDUNG], [HINH], [NGAYVIET], [MACD], [LANGUEGE]) VALUES (14, N'bí quyết giảm cân', N'bí quyết giảm cân', N'bvbb2.jpg', CAST(N'2020-02-03T00:12:00.000' AS DateTime), 2, NULL)
INSERT [dbo].[BAIVIET] ([MABV], [TENBV], [NOIDUNG], [HINH], [NGAYVIET], [MACD], [LANGUEGE]) VALUES (17, N'DIỄN ĐÀN NUÔI DẠY', N'Học sinh toàn Hệ thống Trường Mầm non Quốc tế KINDY CITY đang bước vào hai chủ đề học tập cuối cùng của năm học: CLOTHES STUDY & GROCERIES STUDY. Với các chủ đề này, trẻ sẽ được trang bị kiến thức cần thiết về tên gọi, chất liệu, màu.', N'bvbb1.jpg', NULL, 5, NULL)
INSERT [dbo].[BAIVIET] ([MABV], [TENBV], [NOIDUNG], [HINH], [NGAYVIET], [MACD], [LANGUEGE]) VALUES (19, N'Tuấn Khỉ bị tiêu diệt', N'Diễn đàn là nơi giúp phụ huynh hiểu rõ hơn những vấn đề liên quan đến diễn biến tâm – sinh lý của trẻ để có thể cùng nhà trường nuôi dạy tốt hơn. Thông qua việc trao đổi với chuyên gia phụ huynh có thể nhận được những lời khuyên, tư vấn ở các lĩnh vực khác nhau như dinh dưỡng, phòng chống các bệnh thông thường, cách làm bạn và xây dựng mối quan hệ tích cực với con mình; từ đó giúp được con trong học tập và phát triển đúng cách.', N'bvbb3.jpg', CAST(N'2019-01-02T00:00:00.000' AS DateTime), 4, NULL)
SET IDENTITY_INSERT [dbo].[BAIVIET] OFF
SET IDENTITY_INSERT [dbo].[CHUCVU] ON 

INSERT [dbo].[CHUCVU] ([MACV], [TENCV], [MANV]) VALUES (1, N'Quản Lý', NULL)
INSERT [dbo].[CHUCVU] ([MACV], [TENCV], [MANV]) VALUES (2, N'Thu Ngân', NULL)
INSERT [dbo].[CHUCVU] ([MACV], [TENCV], [MANV]) VALUES (3, N'Kế Toán', NULL)
INSERT [dbo].[CHUCVU] ([MACV], [TENCV], [MANV]) VALUES (4, N'Bảo Vệ', NULL)
SET IDENTITY_INSERT [dbo].[CHUCVU] OFF
SET IDENTITY_INSERT [dbo].[CHUDE] ON 

INSERT [dbo].[CHUDE] ([MACD], [TENCD], [MABV], [MANV]) VALUES (2, N'Câu chuyện của học viên', NULL, NULL)
INSERT [dbo].[CHUDE] ([MACD], [TENCD], [MABV], [MANV]) VALUES (3, N'Câu Chuyện Giảm Cân', NULL, NULL)
INSERT [dbo].[CHUDE] ([MACD], [TENCD], [MABV], [MANV]) VALUES (4, N'Chia sẻ của huấn luyện viên', NULL, NULL)
INSERT [dbo].[CHUDE] ([MACD], [TENCD], [MABV], [MANV]) VALUES (5, N'Giảm Cân Thành Công', NULL, NULL)
INSERT [dbo].[CHUDE] ([MACD], [TENCD], [MABV], [MANV]) VALUES (6, N'Kinh Nghiệm Bài Tập', NULL, NULL)
INSERT [dbo].[CHUDE] ([MACD], [TENCD], [MABV], [MANV]) VALUES (7, N'Kinh Ngiệm dinh dưỡng', NULL, NULL)
SET IDENTITY_INSERT [dbo].[CHUDE] OFF
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [NGAYSINH], [DIACHI], [GIOITINH], [MANV], [MATV], [NHANXET], [HINH], [MAKHID]) VALUES (1, N'Nguyễn Thị Ánh Ngọc', CAST(N'1996-12-12T00:00:00.000' AS DateTime), N'tp Hồ Chí Minh', N'Nữ        ', NULL, NULL, N'Giáo dục mầm non', N'khbb1.jpg', NULL)
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [NGAYSINH], [DIACHI], [GIOITINH], [MANV], [MATV], [NHANXET], [HINH], [MAKHID]) VALUES (2, N'Nguyễn Văn Anh', CAST(N'1997-05-23T00:00:00.000' AS DateTime), N'tp Hồ Chí Minh', N'Nam       ', NULL, NULL, N'Chăm sóc sau giờ học', N'khbb2.jpg', NULL)
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [NGAYSINH], [DIACHI], [GIOITINH], [MANV], [MATV], [NHANXET], [HINH], [MAKHID]) VALUES (3, N'Lê Nguyễn Việt Ánh', CAST(N'1995-07-29T00:00:00.000' AS DateTime), N'tp Hồ Chí Minh', N'Nữ        ', NULL, NULL, N'Ngày hội thứ 7', N'khbb3.jpg', NULL)
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [NGAYSINH], [DIACHI], [GIOITINH], [MANV], [MATV], [NHANXET], [HINH], [MAKHID]) VALUES (4, N'Nguyễn Văn Thành', CAST(N'1998-09-12T00:00:00.000' AS DateTime), N'tp Hồ Chí Minh', N'Nam       ', NULL, NULL, N'Từng tự ti vì thân hình “cây gậy”, 10x chia sẻ hành trình tăng hơn 10kg sau 3 tháng kiên trì theo đuổi #BTC21', N'kh4.jpg', NULL)
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [NGAYSINH], [DIACHI], [GIOITINH], [MANV], [MATV], [NHANXET], [HINH], [MAKHID]) VALUES (5, N'Lê Văn Sơn', CAST(N'1996-12-12T00:00:00.000' AS DateTime), N'tp Hồ Chí Minh', N'Nam       ', NULL, NULL, N'Bí quyết thoát cảnh “cò hương” tăng từ 47kg lên 53 kg để có thân hình chuẩn đồng hồ cát.', N'kh5.jpg                                           ', NULL)
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [NGAYSINH], [DIACHI], [GIOITINH], [MANV], [MATV], [NHANXET], [HINH], [MAKHID]) VALUES (6, N'Hồ Thị Ngọc Hương', CAST(N'1997-12-22T00:00:00.000' AS DateTime), N'tp Hồ Chí Minh', N'Nữ        ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [NGAYSINH], [DIACHI], [GIOITINH], [MANV], [MATV], [NHANXET], [HINH], [MAKHID]) VALUES (7, N'Hồ Anh Khoa', CAST(N'1996-11-07T00:00:00.000' AS DateTime), N'tp Hồ Chí Minh', N'Nam       ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [NGAYSINH], [DIACHI], [GIOITINH], [MANV], [MATV], [NHANXET], [HINH], [MAKHID]) VALUES (8, N'Nguyễn Văn Thọ', CAST(N'1996-12-12T00:00:00.000' AS DateTime), N'tp Hồ Chí Minh', N'Nam       ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [NGAYSINH], [DIACHI], [GIOITINH], [MANV], [MATV], [NHANXET], [HINH], [MAKHID]) VALUES (9, N'Nguyễn Văn Thọ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
SET IDENTITY_INSERT [dbo].[KHUYENMAI] ON 

INSERT [dbo].[KHUYENMAI] ([ID], [TENKH], [HINH], [NOIDUNG], [MAKH], [GIAMGIA]) VALUES (1, N'YOGA NIDRA – PHÉP MÀU ĐƯỢC CHỨNG MINH BỞI KHOA HỌC', N'kmbb6.jpg', N'Yoga Nidra – Một món quà “độc nhất vô nhị” Bất kỳ ai trong độ tuổi trên 8 tuổi đều có thể thực hành kỹ thuật này. Kết quả của việc luyện tập yoga nidra là bộ não sẽ được ', N'KJMTBURYTF', N'Giảm 10%  ')
INSERT [dbo].[KHUYENMAI] ([ID], [TENKH], [HINH], [NOIDUNG], [MAKH], [GIAMGIA]) VALUES (2, N'Chương trình: XÉT NGHIỆM MIỄN PHÍ – KIỂM TRA SỨC ', N'kmbb1.jpg', N'XÉT NGHIỆM MIỄN PHÍ, KIỂM TRA SỨC KHỎE 💗 Dành riêng cho người thân và bạn của Hội viên Dr. Fitness.   Lần đầu tiên, 8 giờ Thứ 7 – ngày 23/11/2019, người thân và bạn của ', N'KJTGYEMYTF', N'Giảm 10%  ')
INSERT [dbo].[KHUYENMAI] ([ID], [TENKH], [HINH], [NOIDUNG], [MAKH], [GIAMGIA]) VALUES (3, N'KHÁM PHÁ BÍ MẬT TRONG LỚP YOGA ĐẶC BIỆT – VISION', N'khmbb2.jpg', N'Ngoài việc giảm căng thẳng, rèn luyện cơ thể dẻo dai thì Yoga còn giúp bạn cải thiện và nâng cao sức khỏe cho đôi mắt. Hãy cùng tìm hiểu lợi ích của lớp Yoga đặc biệt lần', N'TOPHNTVHEN', N'Giảm 5%   ')
INSERT [dbo].[KHUYENMAI] ([ID], [TENKH], [HINH], [NOIDUNG], [MAKH], [GIAMGIA]) VALUES (4, N'TẬP ZUMBA VỚI HUẤN LUYỆN VIÊN QUỐC TẾ – TYLER LY', N'kmbb3.jpg', N'Không còn phải lo lắng về chất lượng bài tập Zumba, tập ở đâu mới chuẩn, tập thế nào cho hiệu quả. Hãy tới Dr. Fitness để trải nghiệm Zumba chuẩn Quốc tế ngay tại Việt Na', N'TQSHNURPBG', N'Giảm 5%   ')
INSERT [dbo].[KHUYENMAI] ([ID], [TENKH], [HINH], [NOIDUNG], [MAKH], [GIAMGIA]) VALUES (5, N'“SQUAT FOR FUN” THỬ THÁCH BẢN THÂN – NHẬN VÉ ', N'kmbb4.jpg', N'“SQUAT FOR FUN” là thử thách cá nhân. Bạn chỉ cần hoàn thành nhiệm vụ thử thách bạn sẽ nhận được cặp vé xem phim miễn phí Lotte Cinema. Đặc biệt khi bạn sẽ trở thành ngườ', N'YQBGYBEOPN', N'Giảm 10%  ')
INSERT [dbo].[KHUYENMAI] ([ID], [TENKH], [HINH], [NOIDUNG], [MAKH], [GIAMGIA]) VALUES (6, N'XÂY DỰNG THÓI QUEN TẬP LUYỆN -NHẬN NGAY PHẦN QUÀ ', N'kmbb5.jpg', N'Tập thể dục thực tế mang đến cho cơ thể vô vàn lợi ích thiết thực, chẳng hạn như kiểm soát cân nặng phòng ngừa tăng cân, hạn chế các bệnh liên quan tới béo phì và cải thi', N'MUTHBTIEAV', N'Giảm 10%  ')
INSERT [dbo].[KHUYENMAI] ([ID], [TENKH], [HINH], [NOIDUNG], [MAKH], [GIAMGIA]) VALUES (7, N'Giải pháp cho hệ xương khớp luôn chắc khỏe', N'kmbb6.jpg', N'Hiện nay, bệnh lý xương khớp xuất hiện ngày càng nhiều ở mọi đối tượng, không chỉ riêng những người cao tuổi. Các bệnh liên quan đến xương khớp sẽ dẫn đến tình trạng đau ', N'NIETBYQETG', N'5%        ')
SET IDENTITY_INSERT [dbo].[KHUYENMAI] OFF
INSERT [dbo].[LANGUEGE] ([ID], [NAME], [isDefault]) VALUES (N'en', N'Tiếng Anh', 0)
INSERT [dbo].[LANGUEGE] ([ID], [NAME], [isDefault]) VALUES (N'vi', N'Tiếng Việt', 1)
INSERT [dbo].[LOGIN] ([ID], [USERNAME], [PASSWORD], [EMAIL]) VALUES (0, N'admin', N'123', N'hong@gmail.com')
INSERT [dbo].[LOGIN] ([ID], [USERNAME], [PASSWORD], [EMAIL]) VALUES (1, N'admin', N'admin', NULL)
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON 

INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [SDT], [GIOITINH], [DIACHI], [HINH], [MAKH], [GIOITHIEU], [MACV], [HINHmh], [LANGUEGE]) VALUES (2, N'Hồ Thị Thủy Chung', N'123456789', N'Nữ        ', N'tp. Hồ Chí Minh', N'nv01.jpg ', 1, N'GVCN Lớp Hươu Cao Cổ', NULL, N'mh1.jpg', NULL)
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [SDT], [GIOITINH], [DIACHI], [HINH], [MAKH], [GIOITHIEU], [MACV], [HINHmh], [LANGUEGE]) VALUES (3, N'Nguyễn Thị Hà Tiên', N'1231046789', N'Nữ        ', N'tp. Hồ Chí Minh', N'nv02.jpg ', 1, N'GVCN Lớp Voi Trắng', NULL, N'mh2.jpg', NULL)
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [SDT], [GIOITINH], [DIACHI], [HINH], [MAKH], [GIOITHIEU], [MACV], [HINHmh], [LANGUEGE]) VALUES (4, N'Lâm Tấn Lộc', N'523456789', N'Nam       ', N'tp. Hồ Chí Minh', N'nv03.jpg ', 2, N'GVCN Lớp Voi Xám', NULL, N'mh3.jpg', NULL)
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [SDT], [GIOITINH], [DIACHI], [HINH], [MAKH], [GIOITHIEU], [MACV], [HINHmh], [LANGUEGE]) VALUES (5, N'Lê Nguyễn Ngân Hồ', N'123454219', N'Nữ        ', N'tp. Hồ Chí Minh', N'nv04.jpg ', 3, N'GVCN Lớp Gấu Pooh', NULL, N'mh4.jpg', NULL)
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [SDT], [GIOITINH], [DIACHI], [HINH], [MAKH], [GIOITHIEU], [MACV], [HINHmh], [LANGUEGE]) VALUES (6, N'Hồ Thị Minh Mẫn', N'078456789', N'Nữ        ', N'tp. Hồ Chí Minh', N'nv05.jpg', 1, N'GVCN Lớp Cá Voi Xanh', NULL, N'mh5.jpg', NULL)
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [SDT], [GIOITINH], [DIACHI], [HINH], [MAKH], [GIOITHIEU], [MACV], [HINHmh], [LANGUEGE]) VALUES (7, N'Nguyễn Trần Trung Nam', N'963478789', N'Nam       ', N'tp. Hồ Chí Minh', N'nv06.jpg ', 2, N'GVCN Lớp Bươm Bướn hồng', NULL, N'mh6.jpg', NULL)
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [SDT], [GIOITINH], [DIACHI], [HINH], [MAKH], [GIOITHIEU], [MACV], [HINHmh], [LANGUEGE]) VALUES (8, N'Nguyễn Văn Nam', N'456456789', N'Nam       ', N'tp. Hồ Chí Minh', N'nv007.jpg ', 1, N'GVCN Lớp Gấu Trúc', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
SET IDENTITY_INSERT [dbo].[THANHVIEN] ON 

INSERT [dbo].[THANHVIEN] ([MATV], [LOAITV], [MAKH]) VALUES (1, N'Khách Hàng', 4)
INSERT [dbo].[THANHVIEN] ([MATV], [LOAITV], [MAKH]) VALUES (2, N'Thường Niên', 3)
INSERT [dbo].[THANHVIEN] ([MATV], [LOAITV], [MAKH]) VALUES (3, N'Thân Thiết', 2)
INSERT [dbo].[THANHVIEN] ([MATV], [LOAITV], [MAKH]) VALUES (4, N'VIP', 1)
SET IDENTITY_INSERT [dbo].[THANHVIEN] OFF
SET IDENTITY_INSERT [dbo].[USER] ON 

INSERT [dbo].[USER] ([ID], [USERNAME], [PASSWORD], [NHAPLAIPASSWORD], [HOTEN], [DIACHI], [EMAIL], [SDT], [ThongBao], [MANV], [TRANGTHAI]) VALUES (1, N'admin', N'admin', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[USER] ([ID], [USERNAME], [PASSWORD], [NHAPLAIPASSWORD], [HOTEN], [DIACHI], [EMAIL], [SDT], [ThongBao], [MANV], [TRANGTHAI]) VALUES (3, N'hong', N'hong123', N'hong123', N'hong', N'tphcm', N'hong@gmail.com', N'1235648952', NULL, NULL, NULL)
INSERT [dbo].[USER] ([ID], [USERNAME], [PASSWORD], [NHAPLAIPASSWORD], [HOTEN], [DIACHI], [EMAIL], [SDT], [ThongBao], [MANV], [TRANGTHAI]) VALUES (4, N'ha', N'ha123456', N'ha123456', N'ha', N'tphcm', N'ha@gmail.com', N'4403257891', NULL, NULL, NULL)
INSERT [dbo].[USER] ([ID], [USERNAME], [PASSWORD], [NHAPLAIPASSWORD], [HOTEN], [DIACHI], [EMAIL], [SDT], [ThongBao], [MANV], [TRANGTHAI]) VALUES (5, N'ha', N'hahahaha', N'hahahaha', N'ha', N'tphcm', N'ha@gmail.com', N'7854692047', NULL, NULL, NULL)
INSERT [dbo].[USER] ([ID], [USERNAME], [PASSWORD], [NHAPLAIPASSWORD], [HOTEN], [DIACHI], [EMAIL], [SDT], [ThongBao], [MANV], [TRANGTHAI]) VALUES (6, N'hihi', N'hihi123', N'hihi123', N'hihi', N'tphcm', N'hihi@gmail.com', N'1235648958', NULL, NULL, NULL)
INSERT [dbo].[USER] ([ID], [USERNAME], [PASSWORD], [NHAPLAIPASSWORD], [HOTEN], [DIACHI], [EMAIL], [SDT], [ThongBao], [MANV], [TRANGTHAI]) VALUES (7, N'abc', N'abcabc', N'abcabc', N'nguyenbinh', N'tphcm', N'my@gmail.com', N'1235648952', NULL, NULL, NULL)
INSERT [dbo].[USER] ([ID], [USERNAME], [PASSWORD], [NHAPLAIPASSWORD], [HOTEN], [DIACHI], [EMAIL], [SDT], [ThongBao], [MANV], [TRANGTHAI]) VALUES (8, N'admin', N'hong123', N'hong123', N'nguyenbinh', N'tphcm', N'hong@gmail.com', N'1235648958', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[USER] OFF
ALTER TABLE [dbo].[BAIVIET] ADD  CONSTRAINT [DF_BAIVIET_LANGUEGE]  DEFAULT ((0)) FOR [LANGUEGE]
GO
ALTER TABLE [dbo].[LANGUEGE] ADD  CONSTRAINT [DF_LANGUEGE_isDefault]  DEFAULT ((0)) FOR [isDefault]
GO
ALTER TABLE [dbo].[BAIVIET]  WITH CHECK ADD  CONSTRAINT [FK_BAIVIET_CHUDE] FOREIGN KEY([MACD])
REFERENCES [dbo].[CHUDE] ([MACD])
GO
ALTER TABLE [dbo].[BAIVIET] CHECK CONSTRAINT [FK_BAIVIET_CHUDE]
GO
ALTER TABLE [dbo].[BAIVIET]  WITH CHECK ADD  CONSTRAINT [FK_BAIVIET_LANGUEGE] FOREIGN KEY([LANGUEGE])
REFERENCES [dbo].[LANGUEGE] ([ID])
GO
ALTER TABLE [dbo].[BAIVIET] CHECK CONSTRAINT [FK_BAIVIET_LANGUEGE]
GO
ALTER TABLE [dbo].[CHUDE]  WITH CHECK ADD  CONSTRAINT [FK_CHUDE_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[CHUDE] CHECK CONSTRAINT [FK_CHUDE_NHANVIEN]
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD  CONSTRAINT [FK_KHACHHANG_KHUYENMAI] FOREIGN KEY([MAKHID])
REFERENCES [dbo].[KHUYENMAI] ([ID])
GO
ALTER TABLE [dbo].[KHACHHANG] CHECK CONSTRAINT [FK_KHACHHANG_KHUYENMAI]
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD  CONSTRAINT [FK_KHACHHANG_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[KHACHHANG] CHECK CONSTRAINT [FK_KHACHHANG_NHANVIEN]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_CHUCVU] FOREIGN KEY([MACV])
REFERENCES [dbo].[CHUCVU] ([MACV])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_CHUCVU]
GO
ALTER TABLE [dbo].[QUANGCAO]  WITH CHECK ADD  CONSTRAINT [FK_QUANGCAO_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[QUANGCAO] CHECK CONSTRAINT [FK_QUANGCAO_NHANVIEN]
GO
ALTER TABLE [dbo].[THANHVIEN]  WITH CHECK ADD  CONSTRAINT [FK_THANHVIEN_KHACHHANG] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[THANHVIEN] CHECK CONSTRAINT [FK_THANHVIEN_KHACHHANG]
GO
