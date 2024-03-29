USE [fuck]
GO
/****** Object:  Table [dbo].[ApplicationHasDoctor]    Script Date: 3/2/2024 4:07:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationHasDoctor](
	[ApplicationId] [int] NOT NULL,
	[DoctorId] [int] NOT NULL,
 CONSTRAINT [PK_ApplicationHasDoctor] PRIMARY KEY CLUSTERED 
(
	[ApplicationId] ASC,
	[DoctorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationHasService]    Script Date: 3/2/2024 4:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationHasService](
	[ApplicationId] [int] NOT NULL,
	[ServiceId] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_ApplicationHasService] PRIMARY KEY CLUSTERED 
(
	[ApplicationId] ASC,
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationStatus]    Script Date: 3/2/2024 4:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationStatus](
	[Id] [int] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ApplicationStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationType]    Script Date: 3/2/2024 4:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationType](
	[Id] [int] NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ApplicationType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoctorTookCard]    Script Date: 3/2/2024 4:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoctorTookCard](
	[Id] [int] NOT NULL,
	[DoctorId] [int] NOT NULL,
	[CardId] [int] NOT NULL,
	[DateTaken] [datetime] NOT NULL,
	[DateReturned] [datetime] NULL,
	[ApplicationId] [int] NOT NULL,
 CONSTRAINT [PK_DoctorTookCard] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalCard]    Script Date: 3/2/2024 4:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalCard](
	[Id] [int] NOT NULL,
	[PersonId] [int] NOT NULL,
	[Number] [nvarchar](50) NOT NULL,
	[InRotation] [bit] NOT NULL,
 CONSTRAINT [PK_MedicalCard] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PatientApplication]    Script Date: 3/2/2024 4:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientApplication](
	[Id] [int] NOT NULL,
	[PatientId] [int] NOT NULL,
	[TypeId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[Description] [nvarchar](max) NOT NULL,
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_PatientApplication] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[People]    Script Date: 3/2/2024 4:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NULL,
	[InsuranceNumber] [nvarchar](50) NOT NULL,
	[PassportNum] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceList]    Script Date: 3/2/2024 4:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceList](
	[Id] [int] NOT NULL,
	[Service] [nvarchar](50) NOT NULL,
	[Price] [decimal](18, 4) NOT NULL,
 CONSTRAINT [PK_ServiceList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 3/2/2024 4:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[PassportNum] [nvarchar](50) NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffRole]    Script Date: 3/2/2024 4:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffRole](
	[Id] [int] NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_StaffRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 3/2/2024 4:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] NOT NULL,
	[StaffId] [int] NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ApplicationHasDoctor]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationHasDoctor_PatientApplication] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[PatientApplication] ([Id])
GO
ALTER TABLE [dbo].[ApplicationHasDoctor] CHECK CONSTRAINT [FK_ApplicationHasDoctor_PatientApplication]
GO
ALTER TABLE [dbo].[ApplicationHasDoctor]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationHasDoctor_User] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[ApplicationHasDoctor] CHECK CONSTRAINT [FK_ApplicationHasDoctor_User]
GO
ALTER TABLE [dbo].[ApplicationHasService]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationHasService_PatientApplication] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[PatientApplication] ([Id])
GO
ALTER TABLE [dbo].[ApplicationHasService] CHECK CONSTRAINT [FK_ApplicationHasService_PatientApplication]
GO
ALTER TABLE [dbo].[ApplicationHasService]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationHasService_ServiceList] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[ServiceList] ([Id])
GO
ALTER TABLE [dbo].[ApplicationHasService] CHECK CONSTRAINT [FK_ApplicationHasService_ServiceList]
GO
ALTER TABLE [dbo].[DoctorTookCard]  WITH CHECK ADD  CONSTRAINT [FK_DoctorTookCard_MedicalCard] FOREIGN KEY([CardId])
REFERENCES [dbo].[MedicalCard] ([Id])
GO
ALTER TABLE [dbo].[DoctorTookCard] CHECK CONSTRAINT [FK_DoctorTookCard_MedicalCard]
GO
ALTER TABLE [dbo].[DoctorTookCard]  WITH CHECK ADD  CONSTRAINT [FK_DoctorTookCard_PatientApplication] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[PatientApplication] ([Id])
GO
ALTER TABLE [dbo].[DoctorTookCard] CHECK CONSTRAINT [FK_DoctorTookCard_PatientApplication]
GO
ALTER TABLE [dbo].[DoctorTookCard]  WITH CHECK ADD  CONSTRAINT [FK_DoctorTookCard_User] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[DoctorTookCard] CHECK CONSTRAINT [FK_DoctorTookCard_User]
GO
ALTER TABLE [dbo].[MedicalCard]  WITH CHECK ADD  CONSTRAINT [FK_MedicalCard_People] FOREIGN KEY([PersonId])
REFERENCES [dbo].[People] ([Id])
GO
ALTER TABLE [dbo].[MedicalCard] CHECK CONSTRAINT [FK_MedicalCard_People]
GO
ALTER TABLE [dbo].[PatientApplication]  WITH CHECK ADD  CONSTRAINT [FK_PatientApplication_ApplicationStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[ApplicationStatus] ([Id])
GO
ALTER TABLE [dbo].[PatientApplication] CHECK CONSTRAINT [FK_PatientApplication_ApplicationStatus]
GO
ALTER TABLE [dbo].[PatientApplication]  WITH CHECK ADD  CONSTRAINT [FK_PatientApplication_ApplicationType] FOREIGN KEY([TypeId])
REFERENCES [dbo].[ApplicationType] ([Id])
GO
ALTER TABLE [dbo].[PatientApplication] CHECK CONSTRAINT [FK_PatientApplication_ApplicationType]
GO
ALTER TABLE [dbo].[PatientApplication]  WITH CHECK ADD  CONSTRAINT [FK_PatientApplication_People] FOREIGN KEY([PatientId])
REFERENCES [dbo].[People] ([Id])
GO
ALTER TABLE [dbo].[PatientApplication] CHECK CONSTRAINT [FK_PatientApplication_People]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_People] FOREIGN KEY([StaffId])
REFERENCES [dbo].[People] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_People]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_StaffRole] FOREIGN KEY([RoleId])
REFERENCES [dbo].[StaffRole] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_StaffRole]
GO
