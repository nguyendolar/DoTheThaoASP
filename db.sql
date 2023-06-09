USE [master]
GO
/****** Object:  Database [webbandothethao]    Script Date: 9/17/2022 4:15:37 PM ******/
CREATE DATABASE [webbandothethao]
 
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [webbandothethao].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [webbandothethao] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [webbandothethao] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [webbandothethao] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [webbandothethao] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [webbandothethao] SET ARITHABORT OFF 
GO
ALTER DATABASE [webbandothethao] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [webbandothethao] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [webbandothethao] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [webbandothethao] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [webbandothethao] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [webbandothethao] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [webbandothethao] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [webbandothethao] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [webbandothethao] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [webbandothethao] SET  ENABLE_BROKER 
GO
ALTER DATABASE [webbandothethao] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [webbandothethao] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [webbandothethao] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [webbandothethao] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [webbandothethao] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [webbandothethao] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [webbandothethao] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [webbandothethao] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [webbandothethao] SET  MULTI_USER 
GO
ALTER DATABASE [webbandothethao] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [webbandothethao] SET DB_CHAINING OFF 
GO
ALTER DATABASE [webbandothethao] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [webbandothethao] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [webbandothethao] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [webbandothethao] SET QUERY_STORE = OFF
GO
USE [webbandothethao]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 9/17/2022 4:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Username] [nvarchar](400) NOT NULL,
	[Passwords] [nvarchar](400) NOT NULL,
	[Name] [nvarchar](45) NOT NULL,
	[Picture] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 9/17/2022 4:15:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Picture] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 9/17/2022 4:15:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DateImport] [datetime] NULL,
	[Title] [nvarchar](max) NULL,
	[ShortTitle] [nvarchar](max) NULL,
	[Picture] [nvarchar](200) NULL,
	[Describe] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 9/17/2022 4:15:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[MenuID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 9/17/2022 4:15:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](400) NOT NULL,
	[Passwords] [nvarchar](400) NOT NULL,
	[Name] [nvarchar](45) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[EmailAddress] [char](100) NULL,
	[Phone] [varchar](15) NULL,
	[Picture] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 9/17/2022 4:15:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[PurcharsePrice] [decimal](18, 0) NULL,
	[SellPrice] [decimal](18, 0) NOT NULL,
	[DateImport] [datetime] NULL,
	[Quantity] [int] NULL,
	[TypeID] [bigint] NULL,
	[BrandID] [bigint] NULL,
	[Picture] [nvarchar](200) NULL,
	[Active] [bit] NULL,
	[ShortTitle] [nvarchar](max) NULL,
	[Describe] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemType]    Script Date: 9/17/2022 4:15:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemType](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](30) NOT NULL,
	[MenuID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 9/17/2022 4:15:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NULL,
	[Link] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 9/17/2022 4:15:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Orderdate] [datetime] NULL,
	[Deliverystatus] [bit] NULL,
	[Deliverydate] [datetime] NULL,
	[Status] [bit] NULL,
	[Totalprice] [decimal](18, 0) NULL,
	[CustomerID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 9/17/2022 4:15:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ItemId] [bigint] NULL,
	[OrderID] [bigint] NULL,
	[Totalprice] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 9/17/2022 4:15:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Payprices] [decimal](18, 0) NULL,
	[OrderID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([Username], [Passwords], [Name], [Picture]) VALUES (N'Admin', N'1', N'Nguyen Van Admin', N'hinh.png')
GO
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([ID], [Picture]) VALUES (1, N'hero-banner-03.jpg')
INSERT [dbo].[Banner] ([ID], [Picture]) VALUES (2, N'hero-banner-01-1.jpg')
SET IDENTITY_INSERT [dbo].[Banner] OFF
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([ID], [DateImport], [Title], [ShortTitle], [Picture], [Describe]) VALUES (1, CAST(N'2022-07-09T00:00:00.000' AS DateTime), N'Yeezy Boost 350 V2 Yeezreel', N'Chính thức mở bán ngày 14/12 với mức giá là 220 USD. Nếu muốn mua đôi giày này, bạn phải đến trực tiếp cửa hàng được định sẵn tại hai thành phố Hồ Chí Minh và Hà Nội để ghi phiếu may mắn, và chờ đợi kết quả bốc thăm từ hãng. Đây là hình thức khác hẳn với kiểu điểm danh ghi số tạo ra những hàng chờ dài tại nhiều điểm bán như trước đây.', N'yeezy-boost-350-v2-yeezreel-chinh-thuc-len-ke-ngay-1412-medium.jpg', N'Yeezy Boost 350 V2 Yeezreel chính thức lên kệ ngày 14/12')
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([ID], [Name], [MenuID]) VALUES (6, N'Nam', 1)
INSERT [dbo].[Brand] ([ID], [Name], [MenuID]) VALUES (7, N'Nữ', 1)
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([ID], [Username], [Passwords], [Name], [Address], [EmailAddress], [Phone], [Picture]) VALUES (7, N'levanb', N'levanb', N'Lê Văn B', N'Hà Nội', N'levanb@gmail.com                                                                                    ', N'0394073752', NULL)
INSERT [dbo].[Customer] ([ID], [Username], [Passwords], [Name], [Address], [EmailAddress], [Phone], [Picture]) VALUES (8, N'buiquanghuy', N'quanghuy123', N'Bùi Quang HUy', N'Hà Nội', N'quanghuy@gmail.com                                                                                  ', N'0394512417', NULL)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Item] ON 

INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (1, N'Bộ Bơi Áo Liền Quần', CAST(200000 AS Decimal(18, 0)), CAST(300000 AS Decimal(18, 0)), CAST(N'2022-09-12T00:00:00.000' AS DateTime), 40, 3, 6, N'shopping (1).png', 1, N'Bộ bơi liền thân phần áo là chất mỏng chống nắng', N'<p class="p1" style="box-sizing: border-box; margin: 20px 0px; color: #465566; font-family: Nunito; font-size: 16px; background-color: #ffffff;">Phần quần l&agrave; chất liệu giữ nhiệt d&agrave;y 1.5mm gi&uacute;p giữ ấm phần th&acirc;n dưới (từ bụng trở xuống)</p>
<p class="p1" style="box-sizing: border-box; margin: 20px 0px; color: #465566; font-family: Nunito; font-size: 16px; background-color: #ffffff;">&Aacute;o bơi liền th&acirc;n cho nam nữ, chất liệu &aacute;o polyester pha sợi chun tổng hợp, t&aacute;c dụng tr&aacute;nh &aacute;nh nắng mặt trời</p>
<p class="p1" style="box-sizing: border-box; margin: 20px 0px; color: #465566; font-family: Nunito; font-size: 16px; background-color: #ffffff;">Hoặc c&aacute; độc, sứa biển khi bơi m&ocirc;i trường biển</p>
<p class="p1" style="box-sizing: border-box; margin: 20px 0px; color: #465566; font-family: Nunito; font-size: 16px; background-color: #ffffff;">Đồng thời giữ nhiệt khi bơi trời lạnh hoặc trời tối, th&iacute;ch hợp với người l&agrave;m việc trong nước trong thời gian d&agrave;i hoặc l&agrave; gi&aacute;o vi&ecirc;n dạy bơi.</p>
<p class="p1" style="box-sizing: border-box; margin: 20px 0px; color: #465566; font-family: Nunito; font-size: 16px; background-color: #ffffff;">Một phần nữa do ng&agrave;y nay c&aacute;c bể đếu sử dụng một số h&oacute;a chất trong bể bơi, n&ecirc;n việc đen da do h&oacute;a chất bể bơi l&agrave; kh&oacute; tr&aacute;nh khỏi.</p>
<p class="p1" style="box-sizing: border-box; margin: 20px 0px; color: #465566; font-family: Nunito; font-size: 16px; background-color: #ffffff;">Biện ph&aacute;p hữu &iacute;ch khi gặp trường hợp n&agrave;y l&agrave; ta sử dụng c&aacute;c bộ bơi che k&iacute;n nhiều phần cơ thể hơn, nhằm phần n&agrave;o hạn chế t&aacute;c dụng kh&ocirc;ng tốt của clo trong bể bơi.</p>
<p class="p1" style="box-sizing: border-box; margin: 20px 0px; color: #465566; font-family: Nunito; font-size: 16px; background-color: #ffffff;">Bảng size nam S tới 2XL(kg)</p>
<p class="p1" style="box-sizing: border-box; margin: 20px 0px; color: #465566; font-family: Nunito; font-size: 16px; background-color: #ffffff;"><span class="Apple-converted-space" style="box-sizing: border-box;">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>S (50-65)&nbsp;<span class="Apple-converted-space" style="box-sizing: border-box;">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>M(58-72)<span class="Apple-converted-space" style="box-sizing: border-box;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>L(66-81)&nbsp;<span class="Apple-converted-space" style="box-sizing: border-box;">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>XL(72-87)<span class="Apple-converted-space" style="box-sizing: border-box;">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>2XL(80-95)</p>
<figure id="attachment_8483" class="wp-caption alignnone" style="box-sizing: border-box; margin: 20px 0px; max-width: 100%; color: #465566; font-family: Nunito; font-size: 16px; background-color: #ffffff; width: 586px;" aria-describedby="caption-attachment-8483"><img class="size-full wp-image-8483 lazyloaded" style="box-sizing: border-box; height: auto; max-width: 100%; vertical-align: middle;" src="https://kinhboi.com/wp-content/uploads/2019/03/kttcom-ao-boi-nu-2489.jpg" sizes="(max-width: 586px) 100vw, 586px" srcset="https://kinhboi.com/wp-content/uploads/2019/03/kttcom-ao-boi-nu-2489.jpg 586w, https://kinhboi.com/wp-content/uploads/2019/03/kttcom-ao-boi-nu-2489-408x612.jpg 408w, https://kinhboi.com/wp-content/uploads/2019/03/kttcom-ao-boi-nu-2489-200x300.jpg 200w" alt="Bộ Bơi &Aacute;o Liền Quần 606 Đen Ghi D&agrave;i Tay" width="586" height="879" data-ll-status="loaded" />
<figcaption id="caption-attachment-8483" class="wp-caption-text" style="box-sizing: border-box;">Bộ Bơi &Aacute;o Liền Quần 606 Đen Ghi D&agrave;i Tay</figcaption>
</figure>
<figure id="attachment_8484" class="wp-caption alignnone" style="box-sizing: border-box; margin: 20px 0px; max-width: 100%; color: #465566; font-family: Nunito; font-size: 16px; background-color: #ffffff; width: 586px;" aria-describedby="caption-attachment-8484"><img class="size-full wp-image-8484 lazyloaded" style="box-sizing: border-box; height: auto; max-width: 100%; vertical-align: middle;" src="https://kinhboi.com/wp-content/uploads/2019/03/kttcom-ao-boi-nu-2490.jpg" sizes="(max-width: 586px) 100vw, 586px" srcset="https://kinhboi.com/wp-content/uploads/2019/03/kttcom-ao-boi-nu-2490.jpg 586w, https://kinhboi.com/wp-content/uploads/2019/03/kttcom-ao-boi-nu-2490-408x612.jpg 408w, https://kinhboi.com/wp-content/uploads/2019/03/kttcom-ao-boi-nu-2490-200x300.jpg 200w" alt="Bộ Bơi &Aacute;o Liền Quần 606 Đen Ghi D&agrave;i Tay" width="586" height="879" data-ll-status="loaded" />
<figcaption id="caption-attachment-8484" class="wp-caption-text" style="box-sizing: border-box;">Bộ Bơi &Aacute;o Liền Quần 606 Đen Ghi D&agrave;i Tay</figcaption>
</figure>
<figure id="attachment_8485" class="wp-caption alignnone" style="box-sizing: border-box; margin: 20px 0px; max-width: 100%; color: #465566; font-family: Nunito; font-size: 16px; background-color: #ffffff; width: 576px;" aria-describedby="caption-attachment-8485"><img class="size-full wp-image-8485 lazyloaded" style="box-sizing: border-box; height: auto; max-width: 100%; vertical-align: middle;" src="https://kinhboi.com/wp-content/uploads/2019/03/kttcom-ao-boi-nu-2491.jpg" sizes="(max-width: 576px) 100vw, 576px" srcset="https://kinhboi.com/wp-content/uploads/2019/03/kttcom-ao-boi-nu-2491.jpg 576w, https://kinhboi.com/wp-content/uploads/2019/03/kttcom-ao-boi-nu-2491-408x623.jpg 408w, https://kinhboi.com/wp-content/uploads/2019/03/kttcom-ao-boi-nu-2491-197x300.jpg 197w" alt="Bộ Bơi &Aacute;o Liền Quần 606 Đen Ghi D&agrave;i Tay" width="576" height="879" data-ll-status="loaded" /></figure>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (2, N'Áo Cầu Lông CL061', CAST(200000 AS Decimal(18, 0)), CAST(299000 AS Decimal(18, 0)), CAST(N'2022-09-12T00:00:00.000' AS DateTime), 40, 2, 7, N'CL061-300x300.png', 1, N'Áo cầu lông Lining được sản xuất chuẩn size châu á, với công nghệ 100% Polyester', N'<p style="box-sizing: border-box; margin: 0px 0px 10px; font-size: 14px; color: #3a3a3a; text-align: justify; background-color: #ffffff; line-height: 20px !important; font-family: Arial !important;">● &Aacute;o cầu l&ocirc;ng Lining được sản xuất chuẩn size ch&acirc;u &aacute;, với c&ocirc;ng nghệ 100% Polyester thun lạnh mang lại cảm gi&aacute;c thoải m&aacute;i, tho&aacute;ng kh&iacute;, nhanh kh&ocirc;. Mặc rất nhẹ v&agrave; b&ecirc;n đem lại cảm gi&aacute;c dễ chịu v&agrave; chuy&ecirc;n nghiệp cho người chơi thể thao.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; font-size: 14px; color: #3a3a3a; text-align: justify; background-color: #ffffff; line-height: 20px !important; font-family: Arial !important;">● Chất liệu: 100% Polyester</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; font-size: 14px; color: #3a3a3a; text-align: justify; background-color: #ffffff; line-height: 20px !important; font-family: Arial !important;">● Độ đ&agrave;n hồi: Co d&atilde;n</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; font-size: 14px; color: #3a3a3a; text-align: justify; background-color: #ffffff; line-height: 20px !important; font-family: Arial !important;">● Thương hiệu:&nbsp;Lining</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; font-size: 14px; color: #3a3a3a; text-align: justify; background-color: #ffffff; line-height: 20px !important; font-family: Arial !important;">● Sản xuất: Trung Quốc</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; font-size: 14px; color: #3a3a3a; text-align: justify; background-color: #ffffff; line-height: 20px !important; font-family: Arial !important;">● H&igrave;nh ảnh: Mẫu thật</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; font-size: 14px; color: #3a3a3a; text-align: justify; background-color: #ffffff; line-height: 20px !important; font-family: Arial !important;">​​​​<img style="box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; padding: 5px 0px; height: 918px; width: 1302px; line-height: 20px !important;" src="https://aocaulong.com/Uploads/images/Screenshot_6(3).png" alt="&Aacute;o Cầu L&ocirc;ng Lining 6243" /></p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (3, N'Set Đồ Tập Gym Nữ', CAST(400000 AS Decimal(18, 0)), CAST(550000 AS Decimal(18, 0)), CAST(N'2022-09-12T00:00:00.000' AS DateTime), 40, 4, 7, N'download (3).jpg', 1, N'Sắm ngay set đồ tập gym nữ Misshine hàng dệt Quảng Châu cao cấp tại KiwiSport nào', N'<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #777777; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;"><span style="box-sizing: border-box; font-size: 17.6px;"><em style="box-sizing: border-box;"><span style="box-sizing: border-box; font-weight: bolder;">Set Đồ Tập Gym Nữ Misshine Chất Dệt Cao Cấp&nbsp;</span>Được B&aacute;n Tại KiwiSport.vn Với :</em></span></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #777777; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;"><span style="box-sizing: border-box; font-size: 17.6px;">▶️ M&agrave;u phối đẹp m&ecirc; mẫn, cực quyến rũ nhưng cũng đủ k&iacute;n đ&aacute;o để chị em mặc khi tập. Mood ngực rất &ecirc;m v&agrave; &ocirc;m trọn v&ograve;ng 1 tạo sự thoải m&aacute;i.</span><br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-size: 17.6px;">▶️ Sử dụng chất dệt cao cấp, mềm, mịn, co gi&atilde;n gấp 5 lần với c&aacute;c chất liệu kh&aacute;c. Thấm h&uacute;t mồ h&ocirc;i tốt kh&ocirc;ng để lại m&ugrave;i cơ thể v&agrave; si&ecirc;u bền.</span><br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-size: 17.6px;">▶️ Set đồ dệt c&oacute; 2 size S/M v&agrave; L/XL ( 45kg tới 65kg ). Thiết kế cạp quần cao &ocirc;m v&ograve;ng 2 &ecirc;m &aacute;i v&agrave; che đi mỡ th&ugrave;a kh&ocirc;ng m&ocirc;ng muốn, n&acirc;ng m&ocirc;ng.<br style="box-sizing: border-box;" />▶️ Mua đồ thể thao nữ tại Kiwi Sport bạn ho&agrave;n to&agrave;n được kiểm tra h&agrave;ng trước khi nhận v&agrave; y&ecirc;n t&acirc;m về chất lượng, gi&aacute; cả.</span><br style="box-sizing: border-box;" /><span style="box-sizing: border-box; font-size: 17.6px;">▶️ Giao h&agrave;ng cực k&igrave; nhanh ch&oacute;ng tr&ecirc;n to&agrave;n quốc, h&agrave;ng lu&ocirc;n c&oacute; sẵn. KiwiSport tự h&agrave;o với chất lượng cao, gi&aacute; rẻ, tư vấn nhiệt t&iacute;nh v&agrave; rất nhiều ưu đ&atilde;i cho kh&aacute;ch quen.</span></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #777777; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;"><span style="box-sizing: border-box; font-size: 17.6px;">Sẵn s&agrave;ng mua h&agrave;ng ngay n&agrave;o !</span></p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (4, N'Áo Không Logo', CAST(200000 AS Decimal(18, 0)), CAST(300000 AS Decimal(18, 0)), CAST(N'2022-09-12T00:00:00.000' AS DateTime), 37, 1, 6, N'GhepAnh-Leicester-City-03-300x300.jpg', 1, N'Áo Bóng Đá Không Logo Haza HA-04 Màu Xanh MC Đẹp', N'<figure id="attachment_3377" class="wp-caption aligncenter" style="box-sizing: border-box; display: block; margin-top: 0px; margin-bottom: 2em; clear: both; max-width: 100%; color: #777777; font-family: Roboto, sans-serif; background-color: #ffffff; width: 600px;" aria-describedby="caption-attachment-3377"><img class="wp-image-3377 size-full" style="box-sizing: border-box; height: auto; max-width: 100%; border-style: none; display: inline-block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1;" src="https://hazasport.com/wp-content/uploads/2022/06/Ghep-Anh-AoKhongLogo-Haza-HA-04-XanhMc.jpg" sizes="(max-width: 600px) 100vw, 600px" srcset="https://hazasport.com/wp-content/uploads/2022/06/Ghep-Anh-AoKhongLogo-Haza-HA-04-XanhMc.jpg 600w, https://hazasport.com/wp-content/uploads/2022/06/Ghep-Anh-AoKhongLogo-Haza-HA-04-XanhMc-400x400.jpg 400w, https://hazasport.com/wp-content/uploads/2022/06/Ghep-Anh-AoKhongLogo-Haza-HA-04-XanhMc-280x280.jpg 280w, https://hazasport.com/wp-content/uploads/2022/06/Ghep-Anh-AoKhongLogo-Haza-HA-04-XanhMc-300x300.jpg 300w, https://hazasport.com/wp-content/uploads/2022/06/Ghep-Anh-AoKhongLogo-Haza-HA-04-XanhMc-100x100.jpg 100w" alt="" width="600" height="600" />
<figcaption id="caption-attachment-3377" class="wp-caption-text" style="box-sizing: border-box; padding: 0.4em; font-size: 0.9em; background: rgba(0, 0, 0, 0.05); font-style: italic;">&aacute;o b&oacute;ng đ&aacute; m&agrave;u xanh mc đẹp</figcaption>
</figure>
<figure id="attachment_3378" class="wp-caption aligncenter" style="box-sizing: border-box; display: block; margin-top: 0px; margin-bottom: 2em; clear: both; max-width: 100%; color: #777777; font-family: Roboto, sans-serif; background-color: #ffffff; width: 600px;" aria-describedby="caption-attachment-3378"><img class="wp-image-3378 size-full" style="box-sizing: border-box; height: auto; max-width: 100%; border-style: none; display: inline-block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1;" src="https://hazasport.com/wp-content/uploads/2022/06/1Ghep-Anh-AoKhongLogo-Haza-HA-04-TongHop-1.jpg" sizes="(max-width: 600px) 100vw, 600px" srcset="https://hazasport.com/wp-content/uploads/2022/06/1Ghep-Anh-AoKhongLogo-Haza-HA-04-TongHop-1.jpg 600w, https://hazasport.com/wp-content/uploads/2022/06/1Ghep-Anh-AoKhongLogo-Haza-HA-04-TongHop-1-400x400.jpg 400w, https://hazasport.com/wp-content/uploads/2022/06/1Ghep-Anh-AoKhongLogo-Haza-HA-04-TongHop-1-280x280.jpg 280w, https://hazasport.com/wp-content/uploads/2022/06/1Ghep-Anh-AoKhongLogo-Haza-HA-04-TongHop-1-300x300.jpg 300w, https://hazasport.com/wp-content/uploads/2022/06/1Ghep-Anh-AoKhongLogo-Haza-HA-04-TongHop-1-100x100.jpg 100w" alt="" width="600" height="600" />
<figcaption id="caption-attachment-3378" class="wp-caption-text" style="box-sizing: border-box; padding: 0.4em; font-size: 0.9em; background: rgba(0, 0, 0, 0.05); font-style: italic;">&aacute;o b&oacute;ng đ&aacute; thiết kế mới nhất 2022</figcaption>
</figure>
<figure id="attachment_3379" class="wp-caption aligncenter" style="box-sizing: border-box; display: block; margin-top: 0px; margin-bottom: 2em; clear: both; max-width: 100%; color: #777777; font-family: Roboto, sans-serif; background-color: #ffffff; width: 600px;" aria-describedby="caption-attachment-3379"><img class="wp-image-3379 size-full" style="box-sizing: border-box; height: auto; max-width: 100%; border-style: none; display: inline-block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1;" src="https://hazasport.com/wp-content/uploads/2022/06/Ghep-Anh-AoKhongLogo-Haza-HA-04-XanhMc-1.jpg" sizes="(max-width: 600px) 100vw, 600px" srcset="https://hazasport.com/wp-content/uploads/2022/06/Ghep-Anh-AoKhongLogo-Haza-HA-04-XanhMc-1.jpg 600w, https://hazasport.com/wp-content/uploads/2022/06/Ghep-Anh-AoKhongLogo-Haza-HA-04-XanhMc-1-400x400.jpg 400w, https://hazasport.com/wp-content/uploads/2022/06/Ghep-Anh-AoKhongLogo-Haza-HA-04-XanhMc-1-280x280.jpg 280w, https://hazasport.com/wp-content/uploads/2022/06/Ghep-Anh-AoKhongLogo-Haza-HA-04-XanhMc-1-300x300.jpg 300w, https://hazasport.com/wp-content/uploads/2022/06/Ghep-Anh-AoKhongLogo-Haza-HA-04-XanhMc-1-100x100.jpg 100w" alt="" width="600" height="600" /></figure>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (5, N'Túi đeo chạy bộ', CAST(200000 AS Decimal(18, 0)), CAST(249000 AS Decimal(18, 0)), CAST(N'2022-09-12T00:00:00.000' AS DateTime), 37, 10, 7, N'13a46b18b49fd2a4586a3ba05f09499f.jpg', 1, N'Túi đeo chạy bộ, túi đeo hông, đeo bụng hỗ trợ chạy bộ, tập thể thao', N'<p style="box-sizing: border-box; margin: 5px 0px 12px; line-height: 21px; color: #242424; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: #ffffff;">Th&ocirc;ng tin chi tiết T&uacute;i đeo chạy bộ, t&uacute;i đeo h&ocirc;ng, đeo bụng hỗ trợ chạy bộ, tập thể thao:<br style="box-sizing: border-box;" />- Chất liệu: Lycra 2 lớp - K&iacute;ch thước ngăn ch&iacute;nh: 18x10cm<br style="box-sizing: border-box;" />- T&uacute;i gồm 3 ngăn:<br style="box-sizing: border-box;" />+ 1 ngăn ch&iacute;nh<br style="box-sizing: border-box;" />+ 1 ngăn nhỏ đựng ch&igrave;a kh&oacute;a,<br style="box-sizing: border-box;" />+ 1 chỗ đựng nước<br style="box-sizing: border-box;" />- M&agrave;u sắc: đen, xanh dương, xanh l&aacute;, cam, hồng</p>
<p style="box-sizing: border-box; margin: 5px 0px 12px; line-height: 21px; color: #242424; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: #ffffff;">Hướng dẫn sử dụng T&uacute;i đeo chạy bộ, t&uacute;i đeo h&ocirc;ng, đeo bụng hỗ trợ chạy bộ, tập thể thao:<br style="box-sizing: border-box;" />- T&uacute;i đeo chạy bộ sử dụng chất liệu lycra 2 lớp n&ecirc;n c&ograve;n c&oacute; t&iacute;nh năng chống nước, thiết kế gọn nhẹ.<br style="box-sizing: border-box;" />- T&uacute;i đeo h&ocirc;ng t&iacute;ch hợp dải phản quang gi&uacute;p tập luyện an to&agrave;n hơn trong điều kiện &aacute;nh s&aacute;ng thấp.<br style="box-sizing: border-box;" />- T&uacute;i đeo bụng c&oacute; d&acirc;y đai chắc chắn c&oacute; thể điểu chỉnh k&iacute;ch thước ph&ugrave; hợp với v&ograve;ng bụng.<br style="box-sizing: border-box;" />- Phần tiếp x&uacute;c với bụng được l&oacute;t lớp đệm xốp &ecirc;m tạo độ b&aacute;m v&agrave;o bụng kh&ocirc;ng bị trơn hay tuột v&agrave; gi&uacute;p đeo t&uacute;i thoải m&aacute;i<br style="box-sizing: border-box;" />- C&oacute; lỗ nghe nhạc gi&uacute;p bạn c&oacute; thể dễ d&agrave;ng đeo tai nghe khi chạy bộ v&agrave; tập luyện.</p>
<p style="box-sizing: border-box; margin: 5px 0px 12px; line-height: 21px; color: #242424; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: #ffffff;">Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (6, N'Ztaur Run', CAST(400000 AS Decimal(18, 0)), CAST(550000 AS Decimal(18, 0)), CAST(N'2022-09-12T00:00:00.000' AS DateTime), 35, 6, 6, N'shopping (2).png', 1, N'Reebok ZTAUR được thiết kế có đế giữa mềm bằng xốp mang lại sự thoải mái tuyệt đối. Các rãnh Flex bao phủ toàn bộ chiều dài', N'<div class="section-with-image" style="box-sizing: border-box; font-family: NeuePlak, sans-serif; word-break: break-word; font-size: 14px; background-color: #ffffff;">
<div class="ant-row ant-row-center" style="box-sizing: border-box; font-family: var(--font-family); display: flex; flex-flow: row wrap; justify-content: center; margin-left: -10px; margin-right: -10px; row-gap: 20px;">
<div class="ant-col ant-col-sm-24 ant-col-md-24 ant-col-lg-24 ant-col-xl-12" style="box-sizing: border-box; font-family: var(--font-family); position: relative; max-width: 50%; min-height: 1px; flex: 0 0 50%; padding-left: 10px; padding-right: 10px;">
<div class="section-infor" style="box-sizing: border-box; font-family: var(--font-family); display: flex; flex-direction: column; -webkit-box-pack: center; justify-content: center; height: 323.688px;">
<div style="box-sizing: border-box; font-family: var(--font-family);">
<h5 style="box-sizing: border-box; margin: 15px 0px 0px; color: rgba(0, 0, 0, 0.85); padding: 0px; font-size: var(--font-size-xl); line-height: 20px; text-transform: uppercase; font-family: var(--font-title)  !important; font-weight: normal !important;">GI&Agrave;Y THỂ THAO REEBOK ZTAUR RUN</h5>
</div>
<div style="box-sizing: border-box; font-family: var(--font-family);">
<p style="box-sizing: border-box; font-family: var(--font-family); margin: 15px 0px 0px; padding: 0px; font-size: var(--font-size-l);">Reebok ZTAUR được thiết kế c&oacute; đế giữa mềm bằng xốp mang lại sự thoải m&aacute;i tuyệt đối. C&aacute;c r&atilde;nh Flex bao phủ to&agrave;n bộ chiều d&agrave;i của đế ngo&agrave;i để tăng cường t&iacute;nh linh hoạt. V&ugrave;ng đế ngo&agrave;i cao su th&ecirc;m độ b&aacute;m v&agrave; lực k&eacute;o tr&ecirc;n c&aacute;c bề mặt kh&ocirc;ng bằng phẳng.</p>
</div>
</div>
</div>
<div class="ant-col ant-col-sm-24 ant-col-md-24 ant-col-lg-24 ant-col-xl-12" style="box-sizing: border-box; font-family: var(--font-family); position: relative; max-width: 50%; min-height: 1px; flex: 0 0 50%; padding-left: 10px; padding-right: 10px;"><img style="box-sizing: border-box; font-family: var(--font-family); vertical-align: middle; border-style: none; margin: 0px; padding: 0px; display: block; max-width: 100%; width: 323.688px; height: 323.688px; object-fit: contain;" src="https://image.hsv-tech.io/400x0/reebok/g/5/g57777_smc_ecom.jpg" alt="product-describe" /></div>
</div>
</div>
<div class="pb-30 mt-10 bullets-section" style="box-sizing: border-box; font-family: NeuePlak, sans-serif; margin-top: 10px; padding-bottom: 30px; word-break: break-word; visibility: hidden; height: 0px; font-size: 14px; background-color: #ffffff;">
<div class="ant-row" style="box-sizing: border-box; font-family: var(--font-family); display: flex; flex-flow: row wrap; margin-left: -10px; margin-right: -10px; row-gap: 20px;">
<div class="ant-col ant-col-md-24" style="box-sizing: border-box; font-family: var(--font-family); position: relative; max-width: 100%; min-height: 1px; flex: 0 0 100%; padding-left: 10px; padding-right: 10px;">
<div class="ant-space ant-space-vertical" style="box-sizing: border-box; font-family: var(--font-family); display: inline-flex; flex-direction: column; gap: 16px;">
<div class="ant-space-item" style="box-sizing: border-box; font-family: var(--font-family);">
<div style="box-sizing: border-box; font-family: var(--font-family);">
<div class="ant-row" style="box-sizing: border-box; font-family: var(--font-family); display: flex; flex-flow: row wrap; margin-left: -8px; margin-right: -8px; row-gap: 16px;">
<div class="ant-col ant-col-md-24" style="box-sizing: border-box; font-family: var(--font-family); position: relative; max-width: 100%; min-height: 1px; flex: 0 0 100%; padding-left: 8px; padding-right: 8px;">
<div class="d-flex" style="box-sizing: border-box; font-family: var(--font-family); display: flex;">
<div class="mr-10 size-l" style="box-sizing: border-box; font-family: var(--font-family); line-height: 22px; font-size: var(--font-size-l)  !important; margin-right: 10px;">&nbsp;</div>
<div style="box-sizing: border-box; font-family: var(--font-family);">
<ul>
<li style="box-sizing: border-box; font-family: var(--font-family); font-size: var(--font-size-m); list-style: none;">&nbsp;</li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="mt-30 pt-10 bullets-section" style="box-sizing: border-box; font-family: NeuePlak, sans-serif; margin-top: 30px; padding-top: 10px; word-break: break-word; visibility: visible; height: auto; font-size: 14px; background-color: #ffffff;">
<div style="box-sizing: border-box; font-family: var(--font-family);">
<h5 style="box-sizing: border-box; margin: 15px 0px 0px; color: rgba(0, 0, 0, 0.85); padding: 0px; font-size: var(--font-size-xl); line-height: 20px; text-transform: uppercase; font-family: var(--font-title)  !important; font-weight: normal !important;">TH&Ocirc;NG SỐ</h5>
</div>
<div class="ant-row" style="box-sizing: border-box; font-family: var(--font-family); display: flex; flex-flow: row wrap; margin-left: -10px; margin-right: -10px; row-gap: 20px;">
<div class="ant-col ant-col-md-24" style="box-sizing: border-box; font-family: var(--font-family); position: relative; max-width: 100%; min-height: 1px; flex: 0 0 100%; padding-left: 10px; padding-right: 10px;">&nbsp;</div>
</div>
</div>
<div class="pb-30 mt-10 bullets-section" style="box-sizing: border-box; font-family: NeuePlak, sans-serif; margin-top: 10px; padding-bottom: 30px; word-break: break-word; visibility: visible; height: auto; font-size: 14px; background-color: #ffffff;">
<div class="ant-row" style="box-sizing: border-box; font-family: var(--font-family); display: flex; flex-flow: row wrap; margin-left: -10px; margin-right: -10px; row-gap: 20px;">
<div class="ant-col ant-col-md-12" style="box-sizing: border-box; font-family: var(--font-family); position: relative; max-width: 50%; min-height: 1px; flex: 0 0 50%; padding-left: 10px; padding-right: 10px;">
<div class="ant-space ant-space-vertical" style="box-sizing: border-box; font-family: var(--font-family); display: inline-flex; flex-direction: column; gap: 16px;">
<div class="ant-space-item" style="box-sizing: border-box; font-family: var(--font-family);">
<div style="box-sizing: border-box; font-family: var(--font-family);">
<div class="ant-row" style="box-sizing: border-box; font-family: var(--font-family); display: flex; flex-flow: row wrap; margin-left: -8px; margin-right: -8px; row-gap: 16px;">
<div class="ant-col ant-col-md-24" style="box-sizing: border-box; font-family: var(--font-family); position: relative; max-width: 100%; min-height: 1px; flex: 0 0 100%; padding-left: 8px; padding-right: 8px;">
<div class="d-flex" style="box-sizing: border-box; font-family: var(--font-family); display: flex;">
<div class="mr-10 size-l" style="box-sizing: border-box; font-family: var(--font-family); line-height: 22px; font-size: var(--font-size-l)  !important; margin-right: 10px;">&bull;</div>
<div style="box-sizing: border-box; font-family: var(--font-family);">
<ul>
<li style="box-sizing: border-box; font-family: var(--font-family); font-size: var(--font-size-m); list-style: none;">Phần tr&ecirc;n được chế tạo từ vải dệt dạng lưới, đem lại cảm gi&aacute;c tho&aacute;ng m&aacute;t tự nhi&ecirc;n.</li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="ant-space-item" style="box-sizing: border-box; font-family: var(--font-family);">
<div style="box-sizing: border-box; font-family: var(--font-family);">
<div class="ant-row" style="box-sizing: border-box; font-family: var(--font-family); display: flex; flex-flow: row wrap; margin-left: -8px; margin-right: -8px; row-gap: 16px;">
<div class="ant-col ant-col-md-24" style="box-sizing: border-box; font-family: var(--font-family); position: relative; max-width: 100%; min-height: 1px; flex: 0 0 100%; padding-left: 8px; padding-right: 8px;">
<div class="d-flex" style="box-sizing: border-box; font-family: var(--font-family); display: flex;">
<div class="mr-10 size-l" style="box-sizing: border-box; font-family: var(--font-family); line-height: 22px; font-size: var(--font-size-l)  !important; margin-right: 10px;">&bull;</div>
<div style="box-sizing: border-box; font-family: var(--font-family);">
<ul>
<li style="box-sizing: border-box; font-family: var(--font-family); font-size: var(--font-size-m); list-style: none;">Được thiết kế cho: Tập luyện đa năng</li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="ant-space-item" style="box-sizing: border-box; font-family: var(--font-family);">
<div style="box-sizing: border-box; font-family: var(--font-family);">
<div class="ant-row" style="box-sizing: border-box; font-family: var(--font-family); display: flex; flex-flow: row wrap; margin-left: -8px; margin-right: -8px; row-gap: 16px;">
<div class="ant-col ant-col-md-24" style="box-sizing: border-box; font-family: var(--font-family); position: relative; max-width: 100%; min-height: 1px; flex: 0 0 100%; padding-left: 8px; padding-right: 8px;">
<div class="d-flex" style="box-sizing: border-box; font-family: var(--font-family); display: flex;">
<div class="mr-10 size-l" style="box-sizing: border-box; font-family: var(--font-family); line-height: 22px; font-size: var(--font-size-l)  !important; margin-right: 10px;">&bull;</div>
<div style="box-sizing: border-box; font-family: var(--font-family);">
<ul>
<li style="box-sizing: border-box; font-family: var(--font-family); font-size: var(--font-size-m); list-style: none;">C&aacute;c r&atilde;nh Flex bao phủ to&agrave;n bộ chiều d&agrave;i của đế ngo&agrave;i để tăng cường t&iacute;nh linh hoạt v&agrave; độ b&aacute;m</li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="ant-space-item" style="box-sizing: border-box; font-family: var(--font-family);">
<div style="box-sizing: border-box; font-family: var(--font-family);">
<div class="ant-row" style="box-sizing: border-box; font-family: var(--font-family); display: flex; flex-flow: row wrap; margin-left: -8px; margin-right: -8px; row-gap: 16px;">
<div class="ant-col ant-col-md-24" style="box-sizing: border-box; font-family: var(--font-family); position: relative; max-width: 100%; min-height: 1px; flex: 0 0 100%; padding-left: 8px; padding-right: 8px;">
<div class="d-flex" style="box-sizing: border-box; font-family: var(--font-family); display: flex;">
<div class="mr-10 size-l" style="box-sizing: border-box; font-family: var(--font-family); line-height: 22px; font-size: var(--font-size-l)  !important; margin-right: 10px;">&bull;</div>
<div style="box-sizing: border-box; font-family: var(--font-family);">
<ul>
<li style="box-sizing: border-box; font-family: var(--font-family); font-size: var(--font-size-m); list-style: none;">G57777</li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="ant-col ant-col-md-12" style="box-sizing: border-box; font-family: var(--font-family); position: relative; max-width: 50%; min-height: 1px; flex: 0 0 50%; padding-left: 10px; padding-right: 10px;">
<div class="ant-space ant-space-vertical" style="box-sizing: border-box; font-family: var(--font-family); display: inline-flex; flex-direction: column; gap: 16px;">
<div class="ant-space-item" style="box-sizing: border-box; font-family: var(--font-family);">
<div style="box-sizing: border-box; font-family: var(--font-family);">
<div class="ant-row" style="box-sizing: border-box; font-family: var(--font-family); display: flex; flex-flow: row wrap; margin-left: -8px; margin-right: -8px; row-gap: 16px;">
<div class="ant-col ant-col-md-24" style="box-sizing: border-box; font-family: var(--font-family); position: relative; max-width: 100%; min-height: 1px; flex: 0 0 100%; padding-left: 8px; padding-right: 8px;">
<div class="d-flex" style="box-sizing: border-box; font-family: var(--font-family); display: flex;">
<div class="mr-10 size-l" style="box-sizing: border-box; font-family: var(--font-family); line-height: 22px; font-size: var(--font-size-l)  !important; margin-right: 10px;">&bull;</div>
<div style="box-sizing: border-box; font-family: var(--font-family);">
<ul>
<li style="box-sizing: border-box; font-family: var(--font-family); font-size: var(--font-size-m); list-style: none;">Fit</li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="ant-space-item" style="box-sizing: border-box; font-family: var(--font-family);">
<div style="box-sizing: border-box; font-family: var(--font-family);">
<div class="ant-row" style="box-sizing: border-box; font-family: var(--font-family); display: flex; flex-flow: row wrap; margin-left: -8px; margin-right: -8px; row-gap: 16px;">
<div class="ant-col ant-col-md-24" style="box-sizing: border-box; font-family: var(--font-family); position: relative; max-width: 100%; min-height: 1px; flex: 0 0 100%; padding-left: 8px; padding-right: 8px;">
<div class="d-flex" style="box-sizing: border-box; font-family: var(--font-family); display: flex;">
<div class="mr-10 size-l" style="box-sizing: border-box; font-family: var(--font-family); line-height: 22px; font-size: var(--font-size-l)  !important; margin-right: 10px;">&bull;</div>
<div style="box-sizing: border-box; font-family: var(--font-family);">
<ul>
<li style="box-sizing: border-box; font-family: var(--font-family); font-size: var(--font-size-m); list-style: none;">Technology</li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="ant-space-item" style="box-sizing: border-box; font-family: var(--font-family);">
<div style="box-sizing: border-box; font-family: var(--font-family);">
<div class="ant-row" style="box-sizing: border-box; font-family: var(--font-family); display: flex; flex-flow: row wrap; margin-left: -8px; margin-right: -8px; row-gap: 16px;">
<div class="ant-col ant-col-md-24" style="box-sizing: border-box; font-family: var(--font-family); position: relative; max-width: 100%; min-height: 1px; flex: 0 0 100%; padding-left: 8px; padding-right: 8px;">
<div class="d-flex" style="box-sizing: border-box; font-family: var(--font-family); display: flex;">
<div class="mr-10 size-l" style="box-sizing: border-box; font-family: var(--font-family); line-height: 22px; font-size: var(--font-size-l)  !important; margin-right: 10px;">&bull;</div>
<div style="box-sizing: border-box; font-family: var(--font-family);">
<ul>
<li style="box-sizing: border-box; font-family: var(--font-family); font-size: var(--font-size-m); list-style: none;">Product Code</li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (7, N'Giày Kawasaki', CAST(200000 AS Decimal(18, 0)), CAST(415000 AS Decimal(18, 0)), CAST(N'2022-09-12T00:00:00.000' AS DateTime), 12, 7, 7, N'7d95d34d5c356bb349b78c0f2fe27a49.png', 1, N'Giày Cầu lông Kawasaki K063 - Tặng kèm bình làm sạch giày cao cấp', N'<p style="box-sizing: border-box; margin: 5px 0px 12px; line-height: 21px; color: #242424; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: #ffffff;">-Kawasaki l&agrave; một thương hiệu Thể thao nối tiếng đến từ NHẬT BẢN.<br style="box-sizing: border-box;" />- C&aacute;c sản phẩm gi&agrave;y của thương hiệu n&agrave;y c&oacute; thiết kế bắt mắt với khả năng vượt trội trong m&ocirc;i trường thể thao đặc biệt l&agrave; d&agrave;nh cho bộ m&ocirc;n cầu l&ocirc;ng.<br style="box-sizing: border-box;" />- Điểm cộng đối với thương hiệu Kawasaki được thể hiện với thiết kế kh&ocirc;ng chỉ đa dạng về kiểu d&aacute;ng m&agrave; c&ograve;n c&oacute; nhiều m&agrave;u sắc kh&aacute;c nhau ph&ugrave; hợp với mọi độ tuổi chơi thể thao.<br style="box-sizing: border-box;" />- Gi&agrave;y thể thao Kawasaki ch&iacute;nh h&atilde;ng c&oacute; chất liệu da b&oacute;ng m&eacute;p ngo&agrave;i gi&uacute;p tăng độ bền khi cọ s&aacute;t. - Cổ gi&agrave;y &ocirc;m kh&iacute;t tạo cảm gi&aacute;c an to&agrave;n khi di chuyển, trong khi đ&oacute; đế gi&agrave;y c&oacute; đệm kh&iacute; tạo độ &ecirc;m trong qu&aacute; tr&igrave;nh bật nảy, di chuyển khi chơi cầu l&ocirc;ng.<br style="box-sizing: border-box;" />- Gi&agrave;y thể thao cầu l&ocirc;ng Kawasaki ch&iacute;nh h&atilde;ng được thiết kế đặc biệt với c&aacute;c th&agrave;nh phần như PU leather, Eva, Rubber gi&uacute;p đ&ocirc;i gi&agrave;y bền v&agrave; mềm hơn so với c&aacute;c thương hiệu cầu l&ocirc;ng kh&aacute;c.</p>
<p style="box-sizing: border-box; margin: 5px 0px 12px; line-height: 21px; color: #242424; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: #ffffff;"><picture class="webpimg-container" style="box-sizing: border-box;"><source style="box-sizing: border-box;" srcset="https://salt.tikicdn.com/cache/w750/ts/tmp/f2/6f/8b/f25d4968da73026f4a6aa2b4d49f5787.jpg.webp 1x, https://salt.tikicdn.com/cache/w750/ts/tmp/f2/6f/8b/f25d4968da73026f4a6aa2b4d49f5787.jpg.webp 2x" type="image/webp" /><img class="WebpImg__StyledImg-sc-h3ozu8-0 fWjUGo" style="box-sizing: border-box; border-style: none; max-width: 100%; object-fit: contain; display: block; margin: 0px auto;" src="https://salt.tikicdn.com/ts/tmp/f2/6f/8b/f25d4968da73026f4a6aa2b4d49f5787.jpg" srcset="https://salt.tikicdn.com/cache/w750/ts/tmp/f2/6f/8b/f25d4968da73026f4a6aa2b4d49f5787.jpg 1x, https://salt.tikicdn.com/cache/w750/ts/tmp/f2/6f/8b/f25d4968da73026f4a6aa2b4d49f5787.jpg 2x" alt="" width="550" height="287" /></picture></p>
<p style="box-sizing: border-box; margin: 5px 0px 12px; line-height: 21px; color: #242424; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: #ffffff;">Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>
<p>&nbsp;</p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (12, N'Giày đá banh đinh', CAST(200000 AS Decimal(18, 0)), CAST(250000 AS Decimal(18, 0)), CAST(N'2022-09-12T00:00:00.000' AS DateTime), 12, 5, 6, N'shoppin1g.png', 1, N'Giày đá bóng, giày đá banh đinh lớn đá sân cỏ tự nhiên chất liệu cao cấp, êm chân, thoải mái vận động', N'<h2 class="pdp-mod-section-title outer-title" style="margin: 0px; padding: 0px 24px; font-weight: 500; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: #212121; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; height: 52px; background: #fafafa;" data-spm-anchor-id="a2o4n.pdp_revamp.0.i1.16816ba6fJQ3rs">M&ocirc; tả sản phẩm Gi&agrave;y đ&aacute; b&oacute;ng, gi&agrave;y đ&aacute; banh đinh lớn đ&aacute; s&acirc;n cỏ tự nhi&ecirc;n ch&acirc;́t li&ecirc;̣u cao c&acirc;́p, &ecirc;m ch&acirc;n, thoải mái v&acirc;̣n đ&ocirc;̣ng</h2>
<div class="pdp-product-detail" style="margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, ''Helvetica Neue'', Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" data-spm="product_detail">
<div class="pdp-product-desc " style="margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden; box-sizing: border-box;">
<div class="html-content pdp-product-highlights" style="margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid #eff0f5; overflow: hidden;">
<ul style="margin: 0px; padding: 0px; list-style: none; overflow: hidden; column-count: 2; column-gap: 32px;">
<li style="margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid; column-span: all;">gi&agrave;y đ&aacute; b&oacute;ng đinh lớn,đinh caođ&aacute; s&acirc;n cỏ tự nhi&ecirc;nđ&atilde; kh&acirc;u quanh mũiđế trong si&ecirc;u h&oacute;t</li>
</ul>
</div>
<div class="html-content detail-content" style="margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 1.3; border-bottom: 1px solid #eff0f5; white-space: break-spaces;"><span style="margin: 0px; padding: 0px; font-family: none;">TH&Ocirc;NG TIN CHI TI&Ecirc;́T SẢN PH&Acirc;̉MLoại sản ph&acirc;̉m: Gi&agrave;y đ&aacute; b&oacute;ng, gi&agrave;y đ&aacute; banh đinh lớn đ&aacute; s&acirc;n cỏ tự nhi&ecirc;n ch&acirc;́t li&ecirc;̣u cao c&acirc;́p, &ecirc;m ch&acirc;n, thoải mái v&acirc;̣n đ&ocirc;̣ng gi&agrave;y đ&aacute; b&oacute;ng đinh lớn,đinh cao đ&aacute; s&acirc;n cỏ tự nhi&ecirc;n đ&atilde; kh&acirc;u quanh mũi đế trong si&ecirc;u h&oacute;t ￼</span></div>
<div class="pdp-mod-specification" style="margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid #eff0f5; font-size: 14px;">
<h2 class="pdp-mod-section-title " style="margin: 0px; padding: 0px; font-weight: 500; font-family: Roboto-Medium; font-size: 16px; line-height: 19px; color: #212121; letter-spacing: 0px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;" data-spm-anchor-id="a2o4n.pdp_revamp.product_detail.i0.16816ba6fJQ3rs">Đặc t&iacute;nh sản phẩm Gi&agrave;y đ&aacute; b&oacute;ng, gi&agrave;y đ&aacute; banh đinh lớn đ&aacute; s&acirc;n cỏ tự nhi&ecirc;n ch&acirc;́t li&ecirc;̣u cao c&acirc;́p, &ecirc;m ch&acirc;n, thoải mái v&acirc;̣n đ&ocirc;̣ng</h2>
<div class="pdp-general-features" style="margin: 0px; padding: 0px;">
<ul class="specification-keys" style="margin: 16px -15px 0px; padding: 0px; list-style: none; height: auto; box-sizing: border-box;">
<li class="key-li" style="margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; box-sizing: border-box; width: 490px; vertical-align: top; line-height: 18px;"><span class="key-title" style="margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: #757575; word-break: break-word;">Thương hiệu</span>
<div class="key-value" style="margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;">No Brand</div>
</li>
<li class="key-li" style="margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; box-sizing: border-box; width: 490px; vertical-align: top; line-height: 18px;"><span class="key-title" style="margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: #757575; word-break: break-word;">SKU</span>
<div class="key-value" style="margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;">371936608_VNAMZ-6071625670</div>
</li>
<li class="key-li" style="margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; box-sizing: border-box; width: 490px; vertical-align: top; line-height: 18px;"><span class="key-title" style="margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: #757575; word-break: break-word;">Chất liệu thể thao</span>
<div class="key-value" style="margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;" data-spm-anchor-id="a2o4n.pdp_revamp.product_detail.i1.16816ba6fJQ3rs">Plastic</div>
</li>
<li class="key-li" style="margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; box-sizing: border-box; width: 490px; vertical-align: top; line-height: 18px;"><span class="key-title" style="margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: #757575; word-break: break-word;">Loại ch&iacute;nh s&aacute;ch bảo h&agrave;nh</span>
<div class="key-value" style="margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;">Bằng H&oacute;a đơn mua h&agrave;ng</div>
</li>
<li class="key-li" style="margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; box-sizing: border-box; width: 490px; vertical-align: top; line-height: 18px;"><span class="key-title" style="margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: #757575; word-break: break-word;">Thời gian bảo h&agrave;nh</span>
<div class="key-value" style="margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;">1 th&aacute;ng</div>
</li>
</ul>
</div>
</div>
</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (15, N'Găng Tay Tập Gym', CAST(60000 AS Decimal(18, 0)), CAST(95000 AS Decimal(18, 0)), CAST(N'2022-09-12T00:00:00.000' AS DateTime), 9, 9, 6, N'shopping (3).png', 1, N'Găng Tay Tập Gym Harbinger Men’s Flexfit', N'<div id="thong-tin-sp" class="thong-tin-san-pham" style="box-sizing: border-box; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;">
<h3 class="tieu-de thong-tin-sp" style="box-sizing: border-box; width: 1020px; margin-top: 0px; margin-bottom: 0px; text-rendering: optimizespeed; font-size: 1.25em; font-family: Roboto, sans-serif; padding: 10px; border-bottom: 1px solid #e9e9e9; background: #efefef;">Th&ocirc;ng tin sản phẩm</h3>
<div class="row-info" style="box-sizing: border-box; border-bottom: 1px solid #e9e9e9; padding: 10px 7px; display: inline-flex; clear: both; width: 1020px;">
<div class="left" style="box-sizing: border-box; left: 0px; display: inline-block; float: left; padding-right: 10px; font-weight: 600; width: 432.578px;">Thương hiệu</div>
<div class="right" style="box-sizing: border-box; right: 0px; display: inline-block; float: left; padding-left: 10px; width: 573.406px;">Harbinger</div>
</div>
&nbsp;
<div class="row-info" style="box-sizing: border-box; border-bottom: 1px solid #e9e9e9; padding: 10px 7px; display: inline-flex; clear: both; width: 1020px;">
<div class="left" style="box-sizing: border-box; left: 0px; display: inline-block; float: left; padding-right: 10px; font-weight: 600; width: 432.578px;">Xuất xứ thương hiệu</div>
<div class="right" style="box-sizing: border-box; right: 0px; display: inline-block; float: left; padding-left: 10px; width: 573.406px;">Mỹ</div>
</div>
&nbsp;
<div class="row-info" style="box-sizing: border-box; border-bottom: 1px solid #e9e9e9; padding: 10px 7px; display: inline-flex; clear: both; width: 1020px;">
<div class="left" style="box-sizing: border-box; left: 0px; display: inline-block; float: left; padding-right: 10px; font-weight: 600; width: 432.578px;">Bảo h&agrave;nh</div>
<div class="right" style="box-sizing: border-box; right: 0px; display: inline-block; float: left; padding-left: 10px; width: 573.406px;">6 th&aacute;ng</div>
</div>
&nbsp;
<div class="row-info" style="box-sizing: border-box; border-bottom: 1px solid #e9e9e9; padding: 10px 7px; display: inline-flex; clear: both; width: 1020px;">
<div class="left" style="box-sizing: border-box; left: 0px; display: inline-block; float: left; padding-right: 10px; font-weight: 600; width: 432.578px;">Chất liệu</div>
<div class="right" style="box-sizing: border-box; right: 0px; display: inline-block; float: left; padding-left: 10px; width: 573.406px;">55% Leather; 35% Polyester Knit; 5% Nylon; 5% Spandex.</div>
</div>
&nbsp;
<div class="row-info" style="box-sizing: border-box; border-bottom: 1px solid #e9e9e9; padding: 10px 7px; display: inline-flex; clear: both; width: 1020px;">
<div class="left" style="box-sizing: border-box; left: 0px; display: inline-block; float: left; padding-right: 10px; font-weight: 600; width: 432.578px;">Th&agrave;nh phần chi tiết</div>
<div class="right" style="box-sizing: border-box; right: 0px; display: inline-block; float: left; padding-left: 10px; width: 573.406px;"><img style="box-sizing: border-box; border-style: none; max-width: 100%; height: auto; display: inline-block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1;" src="https://fittobe.vn/wp-content/uploads/2020/09/Huong-dan-chon-size-gang-tay.jpg" /></div>
</div>
</div>
<div class="woocommerce-tabs wc-tabs-wrapper container tabbed-content" style="box-sizing: border-box; width: 1020px; margin-left: auto; margin-right: auto; padding: 30px 0px; max-width: 1050px; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: row wrap; border-top: 1px solid #ececec; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;">
<ul class="tabs wc-tabs product-tabs small-nav-collapse nav nav-uppercase nav-line-grow nav-left" style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin: -31px 0px 0px; padding: 0px; width: 1020px; position: relative; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: row wrap; -webkit-box-align: center; align-items: center; -webkit-box-pack: start; justify-content: flex-start;" role="tablist">
<li id="tab-title-description" class="description_tab active" style="box-sizing: border-box; display: inline-block; list-style: none; padding: 0px; position: relative; transition: background-color 0.3s ease 0s; margin: 0px 7px 0px 0px !important;" role="tab" aria-controls="tab-description"><a style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgba(17, 17, 17, 0.85); text-decoration-line: none; padding: 10px 0px; display: inline-flex; flex-wrap: wrap; -webkit-box-align: center; align-items: center; transition: all 0.2s ease 0s; letter-spacing: 0.02em; font-weight: bolder; font-size: 0.9em; font-family: roboto, sans-serif;" href="https://fittobe.vn/san-pham/gang-tay-tap-gym-harbinger-mens-flexfit/?gclid=CjwKCAjw4JWZBhApEiwAtJUN0EXd6nZzHE4HedUt8WcOm3trDZiIZSjeKFm3sOmIGmBK0fz5cVp5HRoCVH4QAvD_BwE#tab-description">M&ocirc; tả</a></li>
<li id="tab-title-additional_information" class="additional_information_tab" style="box-sizing: border-box; margin: 0px 7px; display: inline-block; list-style: none; padding: 0px; position: relative; transition: background-color 0.3s ease 0s;" role="tab" aria-controls="tab-additional_information"><a style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: #000000; text-decoration-line: none; padding: 10px 0px; display: inline-flex; flex-wrap: wrap; -webkit-box-align: center; align-items: center; transition: all 0.2s ease 0s; letter-spacing: 0.02em; font-weight: bolder; font-size: 0.9em; font-family: roboto, sans-serif;" href="https://fittobe.vn/san-pham/gang-tay-tap-gym-harbinger-mens-flexfit/?gclid=CjwKCAjw4JWZBhApEiwAtJUN0EXd6nZzHE4HedUt8WcOm3trDZiIZSjeKFm3sOmIGmBK0fz5cVp5HRoCVH4QAvD_BwE#tab-additional_information">Th&ocirc;ng tin bổ sung</a></li>
<li id="tab-title-reviews" class="reviews_tab" style="box-sizing: border-box; display: inline-block; list-style: none; padding: 0px; position: relative; transition: background-color 0.3s ease 0s; margin: 0px 0px !important 0px 7px;" role="tab" aria-controls="tab-reviews"><a style="box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: #000000; text-decoration-line: none; padding: 10px 0px; display: inline-flex; flex-wrap: wrap; -webkit-box-align: center; align-items: center; transition: all 0.2s ease 0s; letter-spacing: 0.02em; font-weight: bolder; font-size: 0.9em; font-family: roboto, sans-serif;" href="https://fittobe.vn/san-pham/gang-tay-tap-gym-harbinger-mens-flexfit/?gclid=CjwKCAjw4JWZBhApEiwAtJUN0EXd6nZzHE4HedUt8WcOm3trDZiIZSjeKFm3sOmIGmBK0fz5cVp5HRoCVH4QAvD_BwE#tab-reviews">Đ&aacute;nh gi&aacute; (0)</a></li>
</ul>
<div class="tab-panels" style="box-sizing: border-box; padding-top: 1em; width: 1020px;">
<div id="tab-description" class="woocommerce-Tabs-panel woocommerce-Tabs-panel--description panel entry-content active" style="box-sizing: border-box; padding: 0px;" role="tabpanel" aria-labelledby="tab-title-description">
<p style="box-sizing: border-box; margin-bottom: 0.5em; margin-top: 0px; margin-right: -0.5em;">Găng tay tập gym&nbsp;<span style="box-sizing: border-box; font-weight: bolder;">Harbinger Men&rsquo;s Flexfit</span>&nbsp;bảo vệ &frac12; ng&oacute;n tay l&agrave; lựa chọn ho&agrave;n hảo của c&aacute;c gymer khi đến ph&ograve;ng tập bởi 3 thiết kế độc đ&aacute;o dưới đ&acirc;y:</p>
<p style="box-sizing: border-box; margin-bottom: 0.5em; margin-top: 0px; margin-right: -0.5em;"><span style="box-sizing: border-box; font-weight: bolder;">Lớp đệm&nbsp;</span></p>
<p style="box-sizing: border-box; margin-bottom: 0.5em; margin-top: 0px; margin-right: -0.5em;"><img class="lazy-load  wp-image-5333 aligncenter" style="box-sizing: border-box; height: auto; max-width: 100%; border-style: none; display: block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1; clear: both; background-color: rgba(0, 0, 0, 0.03); margin: 0px auto;" src="data:image/svg+xml,%3Csvg%20viewBox%3D%220%200%20398%20224%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3C%2Fsvg%3E" sizes="(max-width: 398px) 100vw, 398px" srcset="" alt="" width="398" height="224" data-src="https://fittobe.vn/wp-content/uploads/2020/09/1-711x400.png" data-srcset="https://fittobe.vn/wp-content/uploads/2020/09/1-711x400.png 711w, https://fittobe.vn/wp-content/uploads/2020/09/1-1400x788.png 1400w, https://fittobe.vn/wp-content/uploads/2020/09/1-768x432.png 768w, https://fittobe.vn/wp-content/uploads/2020/09/1-1536x864.png 1536w, https://fittobe.vn/wp-content/uploads/2020/09/1-600x338.png 600w, https://fittobe.vn/wp-content/uploads/2020/09/1.png 1920w" /></p>
<p style="box-sizing: border-box; margin-bottom: 0.5em; margin-top: 0px; margin-right: -0.5em;">Sản phẩm c&oacute; lớp đệm TechGel &trade; v&agrave; BiFlex &trade; giảm cảm gi&aacute;c đau r&aacute;t v&agrave; hạn chế xuất hiện c&aacute;c vết chai tay khi tập luyện. Những lớp đệm n&agrave;y c&oacute; độ nh&aacute;m v&agrave; độ d&agrave;y vừa phải cho ph&eacute;p người d&ugrave;ng cảm gi&aacute;c cầm nắm tốt, tăng độ ma s&aacute;t với c&aacute;c bề mặt kim loại trơn của dụng cụ thể thao, gi&uacute;p c&aacute;c gymer n&acirc;ng được mức tạ cao hơn b&igrave;nh thường.</p>
<p style="box-sizing: border-box; margin-bottom: 0.5em; margin-top: 0px; margin-right: -0.5em;"><span style="box-sizing: border-box; font-weight: bolder;">Chất liệu&nbsp;</span></p>
<p style="box-sizing: border-box; margin-bottom: 0.5em; margin-top: 0px; margin-right: -0.5em;"><img class="lazy-load  wp-image-5334 aligncenter" style="box-sizing: border-box; height: auto; max-width: 100%; border-style: none; display: block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1; clear: both; background-color: rgba(0, 0, 0, 0.03); margin: 0px auto;" src="data:image/svg+xml,%3Csvg%20viewBox%3D%220%200%20395%20222%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3C%2Fsvg%3E" sizes="(max-width: 395px) 100vw, 395px" srcset="" alt="" width="395" height="222" data-src="https://fittobe.vn/wp-content/uploads/2020/09/2-711x400.png" data-srcset="https://fittobe.vn/wp-content/uploads/2020/09/2-711x400.png 711w, https://fittobe.vn/wp-content/uploads/2020/09/2-1400x788.png 1400w, https://fittobe.vn/wp-content/uploads/2020/09/2-768x432.png 768w, https://fittobe.vn/wp-content/uploads/2020/09/2-1536x864.png 1536w, https://fittobe.vn/wp-content/uploads/2020/09/2-600x338.png 600w, https://fittobe.vn/wp-content/uploads/2020/09/2.png 1920w" /></p>
</div>
</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (16, N'Đai lưng thể thao', CAST(10000 AS Decimal(18, 0)), CAST(15000 AS Decimal(18, 0)), CAST(N'2022-09-12T00:00:00.000' AS DateTime), 21, 8, 6, N'oqd1628846169.jpg', 1, N'Đai lưng thể thao Có nam châm Hỗ trợ cột sống, thoát vị đĩa đệm', N'<p><span style="color: rgba(0, 0, 0, 0.8); font-family: ''Helvetica Neue'', Helvetica, Arial, 文泉驛正黑, ''WenQuanYi Zen Hei'', ''Hiragino Sans GB'', ''儷黑 Pro'', ''LiHei Pro'', ''Heiti TC'', 微軟正黑體, ''Microsoft JhengHei UI'', ''Microsoft JhengHei'', sans-serif; font-size: 14px; white-space: pre-wrap; background-color: #ffffff;">Đai lưng cho người bị tho&aacute;t vị đĩa đệm l&agrave; một dụng cụ hỗ trợ chữa trị gi&uacute;p l&agrave;m giảm c&aacute;c cơn đau nhức do bệnh g&acirc;y ra một c&aacute;ch hiệu quả. V&agrave; hiện nay b&ecirc;n cạnh việc sử dụng c&aacute;c loại thuốc đ&ocirc;ng y, t&acirc;y y th&igrave; d&ugrave;ng th&ecirc;m đai lưng sẽ g&oacute;p phần r&uacute;t ngắn thời gian chữa bệnh, gi&uacute;p bệnh nhanh khỏi hơn. - C&ocirc;ng dụng tuyệt vời đầu ti&ecirc;n m&agrave; chiếc đai lưng chữa tho&aacute;t vị mang lại đ&oacute; ch&iacute;nh l&agrave; l&agrave;m giảm c&aacute;c cơn đau nhức do bệnh g&acirc;y ra l&agrave;m cho bạn thấy thoải m&aacute;i về dễ chịu hơn. - Cải thiện t&igrave;nh trạng tho&aacute;t vị, hỗ trợ trong việc điều chỉnh c&aacute;c khớp v&agrave; đĩa đệm. - C&oacute; khả năng gi&uacute;p khớp được phục hồi tốt hơn - Nhất l&agrave; với bệnh nh&acirc;n sau khi được phẫu thuật đĩa đệm c&oacute; thể sử dụng đai lưng để hỗ trợ phục hồi cột sống thắt lưng. - Gi&uacute;p người bệnh vận động dễ d&agrave;ng v&agrave; thoải m&aacute;i hơn&hellip;. Với nguy&ecirc;n l&yacute; hoạt động l&agrave; cố định v&agrave; phục hồi đĩa đệm đ&atilde; bị tho&aacute;t ra trở lại vị tr&iacute; ban đầu, b&ecirc;n cạnh đ&oacute; sử dụng đai lưng giữ cho v&ugrave;ng xương sống lu&ocirc;n được ổn định, bạn c&oacute; thể l&agrave;m thực hiện ngay tại nh&agrave; m&agrave; kh&ocirc;ng cần đến ph&ograve;ng kh&aacute;m hay bệnh viện. Đai thắt lưng nam ch&acirc;m một trong c&aacute;c đai thắt lưng đơn giản nhất tr&ecirc;n thị trường, nhưng n&oacute; cũng l&agrave; một trong những đai thắt lưng hiệu quả nhất c&oacute; t&aacute;c dụng hỗ trợ, giảm đau thắt lưng dưới m&atilde;n t&iacute;nh. Đai thắt lưng nam ch&acirc;m NMT c&oacute; t&aacute;c dụng giảm đau bằng 2 c&aacute;ch: Thứ nhất, hỗ trợ lưng dưới, giảm căng cơ, phục hồi &nbsp;tư thế đ&uacute;ng. Thứ hai v&agrave; quan trọng hơn, đai thắt lưng nam ch&acirc;m NMT c&oacute; một loạt c&aacute;c nam ch&acirc;m ẩn trong sợi vải đ&agrave;n hồi d&agrave;y do đ&oacute; gần như ngay lập tức l&agrave;m ấm l&ecirc;n những v&ugrave;ng nẹp lưng hỗ trợ, v&agrave; c&aacute;c nam ch&acirc;m tạo ra một từ trường hoạt động c&ugrave;ng một c&aacute;ch như c&aacute;c kim ch&acirc;m ch&acirc;m cứu, gi&uacute;p giải ph&oacute;ng v&agrave; thong tho&aacute;ng năng lượng v&ugrave;ng thắt lưng. Sản phẩm hỗ trợ l&yacute; tưởng cho người bị đau mỏi thắt lưng, vi&ecirc;m khớp T&aacute;c dụng giảm đau, ấm cơ bắp v&agrave; ngăn ngừa co thắt, l&yacute; tưởng cho c&aacute;c trường hợp bong g&acirc;n, căng cơ v&agrave; tho&aacute;i h&oacute;a khớp. Được thiết kế để cung cấp hỗ trợ trong qu&aacute; tr&igrave;nh hoạt động để gi&uacute;p giảm đau lưng Trong 15-30 ph&uacute;t sau khi sử dụng bạn sẽ cảm nhận được hiệu ứng nhiệt &amp; ch&acirc;m cứu Trọng lượng nhẹ với chất liệu tho&aacute;ng c&oacute; thể sử dụng thoải m&aacute;i suốt cả ng&agrave;y</span></p>')
SET IDENTITY_INSERT [dbo].[Item] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemType] ON 

INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (1, N'Bóng đá', 2)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (2, N'Cầu lông', 2)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (3, N'Bơi lội', 2)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (4, N'Gym', 2)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (5, N'Bóng đá', 3)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (6, N'Bóng chuyền', 3)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (7, N'Cầu lông', 3)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (8, N'Đai lưng', 4)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (9, N'Găng tay', 4)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (10, N'Túi đeo', 4)
SET IDENTITY_INSERT [dbo].[ItemType] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (1, N'Thời trang', NULL)
INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (2, N'Áo Quần', NULL)
INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (3, N'Giày', NULL)
INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (4, N'Phụ kiện', NULL)
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Customer__536C85E467C5E0D9]    Script Date: 9/17/2022 4:15:38 PM ******/
ALTER TABLE [dbo].[Customer] ADD UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Item] ADD  DEFAULT (getdate()) FOR [DateImport]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT (getdate()) FOR [Orderdate]
GO
ALTER TABLE [dbo].[Brand]  WITH CHECK ADD FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([ID])
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([ID])
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([TypeID])
REFERENCES [dbo].[ItemType] ([ID])
GO
ALTER TABLE [dbo].[ItemType]  WITH CHECK ADD FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([ID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
GO
USE [master]
GO
ALTER DATABASE [webbandothethao] SET  READ_WRITE 
GO
