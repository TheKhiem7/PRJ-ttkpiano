CREATE DATABASE Khiemnvd_SU24
GO

USE [Khiemnvd_SU24]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/7/2024 11:40:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](100) NOT NULL,
	[description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 7/7/2024 11:40:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[course_id] [int] IDENTITY(1,1) NOT NULL,
	[course_name] [nvarchar](100) NOT NULL,
	[description] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[tuition_fee] [float] NULL,
	[startDate] [date] NULL,
	[endDate] [date] NULL,
	[quantity] [int] NULL,
	[status] [int] NULL,
	[category_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/7/2024 11:40:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[order_date] [date] NULL,
	[total_money] [float] NOT NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 7/7/2024 11:40:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[course_id] [int] NOT NULL,
	[order_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[course_id] ASC,
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 7/7/2024 11:40:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[lastname] [nvarchar](50) NULL,
	[isAdmin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([category_id], [category_name], [description]) VALUES (1, N'Piano', N'Piano courses for all levels')
INSERT [dbo].[Category] ([category_id], [category_name], [description]) VALUES (2, N'Guitar', N'Guitar courses for all levels')
INSERT [dbo].[Category] ([category_id], [category_name], [description]) VALUES (3, N'Singing', N'Singing courses for all levels')
INSERT [dbo].[Category] ([category_id], [category_name], [description]) VALUES (4, N'Music Theory', N'Music Theory courses for all levels')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([course_id], [course_name], [description], [image], [tuition_fee], [startDate], [endDate], [quantity], [status], [category_id]) VALUES (1, N'Introductory Piano Course', N'This beginner-level course is ideal for those with no previous piano experience.', N'https://img.freepik.com/free-photo/closeup-classic-grand-piano_181624-14319.jpg', 50, CAST(N'2024-07-08' AS Date), CAST(N'2024-08-08' AS Date), 20, 1, 1)
INSERT [dbo].[Course] ([course_id], [course_name], [description], [image], [tuition_fee], [startDate], [endDate], [quantity], [status], [category_id]) VALUES (2, N'Piano for Intermediate Learners', N'A course tailored for students with some prior piano knowledge.', N'https://img.freepik.com/free-photo/front-view-musician-playing-keyboards_23-2148673542.jpg', 150, CAST(N'2024-08-15' AS Date), CAST(N'2024-09-15' AS Date), 15, 1, 1)
INSERT [dbo].[Course] ([course_id], [course_name], [description], [image], [tuition_fee], [startDate], [endDate], [quantity], [status], [category_id]) VALUES (3, N'Beginner Guitar Course', N'Designed for newcomers to the guitar, with no prior experience required.', N'https://img.freepik.com/free-photo/beautiful-casual-asian-woman-enjoy-practicing-piano-relax-happiness-home-background_609648-1593.jpg
', 120, CAST(N'2024-07-10' AS Date), CAST(N'2024-08-10' AS Date), 25, 1, 2)
INSERT [dbo].[Course] ([course_id], [course_name], [description], [image], [tuition_fee], [startDate], [endDate], [quantity], [status], [category_id]) VALUES (4, N'Children''s Piano Lessons', N'Suitable for kids aged 5-10, introducing them to piano basics.', N'https://img.freepik.com/free-photo/high-angle-hands-playing-piano_23-2150060689.jpg
', 80, CAST(N'2024-07-12' AS Date), CAST(N'2024-08-12' AS Date), 18, 1, 1)
INSERT [dbo].[Course] ([course_id], [course_name], [description], [image], [tuition_fee], [startDate], [endDate], [quantity], [status], [category_id]) VALUES (5, N'Intermediate Guitar Course', N'For students who have some experience with guitar playing.', N'https://img.freepik.com/premium-photo/classic-grand-piano-classical-style-room-interior-musical-instrument_981082-136.jpg
', 140, CAST(N'2024-07-17' AS Date), CAST(N'2024-08-17' AS Date), 20, 1, 2)
INSERT [dbo].[Course] ([course_id], [course_name], [description], [image], [tuition_fee], [startDate], [endDate], [quantity], [status], [category_id]) VALUES (6, N'Basic Vocal Techniques', N'Aimed at beginners looking to learn proper singing techniques.', N'https://img.freepik.com/premium-photo/close-up-musician-playing-piano-keyboard_28914-15155.jpg', 120, CAST(N'2024-07-19' AS Date), CAST(N'2024-08-19' AS Date), 22, 1, 3)
INSERT [dbo].[Course] ([course_id], [course_name], [description], [image], [tuition_fee], [startDate], [endDate], [quantity], [status], [category_id]) VALUES (7, N'Introduction to Music Theory', N'Covers the fundamentals of music theory, including notation, chords, and scales.', N'https://img.freepik.com/free-photo/piano-keys-closeup-blurred-background-with-bokeh_169016-42652.jpg?ga=GA1.1.41694259.1720365750&semt=sph', 90, CAST(N'2024-07-24' AS Date), CAST(N'2024-08-24' AS Date), 20, 1, 4)
INSERT [dbo].[Course] ([course_id], [course_name], [description], [image], [tuition_fee], [startDate], [endDate], [quantity], [status], [category_id]) VALUES (8, N'Advanced Guitar Skills', N'A course for experienced guitarists seeking to enhance their skills.', N'https://img.freepik.com/free-photo/female-hands-play-musical-keys-soft-focus_169016-16984.jpg?ga=GA1.1.41694259.1720365750&semt=sph', 200, CAST(N'2024-07-31' AS Date), CAST(N'2024-08-31' AS Date), 15, 1, 2)
INSERT [dbo].[Course] ([course_id], [course_name], [description], [image], [tuition_fee], [startDate], [endDate], [quantity], [status], [category_id]) VALUES (9, N'Beginner Songwriting', N'Teaches the basics of writing lyrics and melodies.', N'https://img.freepik.com/free-photo/soothing-sounds-from-piano-creating-harmonious-melody_157027-4217.jpg?ga=GA1.1.41694259.1720365750&semt=sph', 110, CAST(N'2024-08-07' AS Date), CAST(N'2024-09-07' AS Date), 18, 1, 3)
INSERT [dbo].[Course] ([course_id], [course_name], [description], [image], [tuition_fee], [startDate], [endDate], [quantity], [status], [category_id]) VALUES (10, N'Music Production Basics', N'Introduces the essentials of music production, including recording software and MIDI instruments.', N'https://img.freepik.com/free-photo/mid-section-female-student-playing-piano_107420-64887.jpg?ga=GA1.1.41694259.1720365750&semt=sph', 130, CAST(N'2024-08-14' AS Date), CAST(N'2024-09-14' AS Date), 20, 1, 3)
INSERT [dbo].[Course] ([course_id], [course_name], [description], [image], [tuition_fee], [startDate], [endDate], [quantity], [status], [category_id]) VALUES (11, N'Jazz Piano Fundamentals', N'An introduction to jazz piano, focusing on improvisation and comping.', N'https://img.freepik.com/free-photo/top-view-hands-playing-piano_1232-355.jpg?ga=GA1.1.41694259.1720365750&semt=sph', 150, CAST(N'2024-08-21' AS Date), CAST(N'2024-09-21' AS Date), 15, 1, 1)
INSERT [dbo].[Course] ([course_id], [course_name], [description], [image], [tuition_fee], [startDate], [endDate], [quantity], [status], [category_id]) VALUES (12, N'Electric Guitar Basics', N'Covers the basics of playing electric guitar, including techniques and effects.', N'https://img.freepik.com/premium-photo/classic-black-piano-middle-empty-big-room_800563-4232.jpg?ga=GA1.1.41694259.1720365750&semt=sph', 170, CAST(N'2024-08-28' AS Date), CAST(N'2024-09-28' AS Date), 22, 1, 2)
INSERT [dbo].[Course] ([course_id], [course_name], [description], [image], [tuition_fee], [startDate], [endDate], [quantity], [status], [category_id]) VALUES (13, N'History of Music', N'Provides an overview of music history from the Renaissance to the modern era.', N'https://img.freepik.com/free-photo/portrait-smiling-young-woman-standing-man-playing-piano-near-window_23-2148047590.jpg?ga=GA1.1.41694259.1720365750&semt=sph', 100, CAST(N'2024-09-04' AS Date), CAST(N'2024-10-04' AS Date), 20, 1, 4)
INSERT [dbo].[Course] ([course_id], [course_name], [description], [image], [tuition_fee], [startDate], [endDate], [quantity], [status], [category_id]) VALUES (14, N'Music Industry Essentials', N'Teaches the basics of the music business, including marketing, promotion, and management.', N'https://img.freepik.com/free-photo/pianist-guitarist-are-playing_169016-10733.jpg?ga=GA1.1.41694259.1720365750&semt=sph', 120, CAST(N'2024-09-11' AS Date), CAST(N'2024-10-11' AS Date), 18, 1, 4)
INSERT [dbo].[Course] ([course_id], [course_name], [description], [image], [tuition_fee], [startDate], [endDate], [quantity], [status], [category_id]) VALUES (15, N'Piano Lessons for Adults', N'Designed for adults who want to learn piano.', N'https://img.freepik.com/free-photo/woman-playing-piano_107420-12168.jpg?ga=GA1.1.41694259.1720365750&semt=sph', 120, CAST(N'2024-09-18' AS Date), CAST(N'2024-10-18' AS Date), 20, 1, 1)
INSERT [dbo].[Course] ([course_id], [course_name], [description], [image], [tuition_fee], [startDate], [endDate], [quantity], [status], [category_id]) VALUES (16, N'Guitar Lessons for Kids', N'Suitable for children aged 5-10, introducing them to guitar basics.', N'https://img.freepik.com/premium-photo/beautiful-piano-concert-hall_756748-37943.jpg?ga=GA1.1.41694259.1720365750&semt=sph', 80, CAST(N'2024-09-25' AS Date), CAST(N'2024-10-25' AS Date), 15, 1, 2)
INSERT [dbo].[Course] ([course_id], [course_name], [description], [image], [tuition_fee], [startDate], [endDate], [quantity], [status], [category_id]) VALUES (17, N'Vocal Performance Skills', N'Helps develop vocal and performance techniques.', N'https://img.freepik.com/free-photo/close-up-synthesizer-piano-key-beautiful-stage-lighting_169016-13784.jpg?ga=GA1.1.41694259.1720365750&semt=sph', 150, CAST(N'2024-10-02' AS Date), CAST(N'2024-11-02' AS Date), 22, 1, 3)
INSERT [dbo].[Course] ([course_id], [course_name], [description], [image], [tuition_fee], [startDate], [endDate], [quantity], [status], [category_id]) VALUES (18, N'Intermediate Music Theory', N'Builds on basic music theory knowledge with more advanced concepts.', N'https://img.freepik.com/free-photo/electronic-piano-guitar-room-interior_169016-20864.jpg?ga=GA1.1.41694259.1720365750&semt=sph', 110, CAST(N'2024-10-09' AS Date), CAST(N'2024-11-09' AS Date), 20, 1, 4)
INSERT [dbo].[Course] ([course_id], [course_name], [description], [image], [tuition_fee], [startDate], [endDate], [quantity], [status], [category_id]) VALUES (19, N'Bass Guitar Fundamentals', N'Teaches the basics of playing bass guitar, covering techniques and styles.', N'https://img.freepik.com/free-photo/medium-shot-artist-playing-piano_23-2149247210.jpg?ga=GA1.1.41694259.1720365750&semt=sph', 140, CAST(N'2024-10-16' AS Date), CAST(N'2024-11-16' AS Date), 18, 1, 2)
INSERT [dbo].[Course] ([course_id], [course_name], [description], [image], [tuition_fee], [startDate], [endDate], [quantity], [status], [category_id]) VALUES (20, N'Advanced Songwriting', N'Focuses on advancing songwriting skills, including melody, harmony, and lyrics.', N'https://img.freepik.com/free-photo/night-performance-piano-near-flame-generative-ai_188544-7781.jpg?ga=GA1.1.41694259.1720365750&semt=sph', 130, CAST(N'2024-10-23' AS Date), CAST(N'2024-11-23' AS Date), 15, 1, 3)
INSERT [dbo].[Course] ([course_id], [course_name], [description], [image], [tuition_fee], [startDate], [endDate], [quantity], [status], [category_id]) VALUES (21, N'Intermediate Music Production', N'Enhances basic music production skills with advanced techniques.', N'https://img.freepik.com/free-photo/young-woman-playing-piano-outdoors_23-2149140657.jpg?ga=GA1.1.41694259.1720365750&semt=sph', 150, CAST(N'2024-10-30' AS Date), CAST(N'2024-11-30' AS Date), 20, 1, 3)
INSERT [dbo].[Course] ([course_id], [course_name], [description], [image], [tuition_fee], [startDate], [endDate], [quantity], [status], [category_id]) VALUES (22, N'Jazz Improvisation Basics', N'Introduces the basics of jazz improvisation, including melody and solo creation.', N'https://img.freepik.com/free-photo/female-student-playing-piano_107420-64902.jpg?ga=GA1.1.41694259.1720365750&semt=sph', 170, CAST(N'2024-11-06' AS Date), CAST(N'2024-12-06' AS Date), 18, 1, 1)
INSERT [dbo].[Course] ([course_id], [course_name], [description], [image], [tuition_fee], [startDate], [endDate], [quantity], [status], [category_id]) VALUES (23, N'Music Composition Fundamentals', N'Teaches the basics of composing music, including writing melodies, harmonies, and rhythms.', N'https://img.freepik.com/free-photo/side-view-man-playing-piano_23-2150060701.jpg?ga=GA1.1.41694259.1720365750&semt=sph', 190, CAST(N'2024-11-13' AS Date), CAST(N'2024-12-13' AS Date), 22, 1, 4)
INSERT [dbo].[Course] ([course_id], [course_name], [description], [image], [tuition_fee], [startDate], [endDate], [quantity], [status], [category_id]) VALUES (24, N'Introduction to Music Therapy', N'Covers the principles and practice of music therapy.', N'https://img.freepik.com/free-photo/piano-keys-closeup-blurred-background-with-bokeh_169016-43165.jpg?ga=GA1.1.41694259.1720365750&semt=sph', 110, CAST(N'2024-11-20' AS Date), CAST(N'2024-12-20' AS Date), 20, 1, 4)
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total_money], [status]) VALUES (1, 2, CAST(N'2024-07-07' AS Date), 10000, 1)
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total_money], [status]) VALUES (2, 2, CAST(N'2024-07-07' AS Date), 10000, 1)
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total_money], [status]) VALUES (3, 2, CAST(N'2024-07-07' AS Date), 180, 1)
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total_money], [status]) VALUES (4, 2, CAST(N'2024-07-07' AS Date), 100, 1)
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total_money], [status]) VALUES (5, 2, CAST(N'2024-07-07' AS Date), 100, 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderDetail] ([course_id], [order_id], [quantity], [price]) VALUES (1, 4, 20, 100)
INSERT [dbo].[OrderDetail] ([course_id], [order_id], [quantity], [price]) VALUES (1, 5, 20, 100)
INSERT [dbo].[OrderDetail] ([course_id], [order_id], [quantity], [price]) VALUES (5, 3, 20, 180)
INSERT [dbo].[OrderDetail] ([course_id], [order_id], [quantity], [price]) VALUES (25, 1, 4, 10000)
INSERT [dbo].[OrderDetail] ([course_id], [order_id], [quantity], [price]) VALUES (25, 2, 1, 10000)
GO
SET IDENTITY_INSERT [dbo].[Registration] ON 

INSERT [dbo].[Registration] ([user_id], [username], [password], [lastname], [isAdmin]) VALUES (1, N'ttkpiano', N'123456', N'TTK Piano', 1)
INSERT [dbo].[Registration] ([user_id], [username], [password], [lastname], [isAdmin]) VALUES (2, N'johndoe', N'password123', N'John Doe', 0)
INSERT [dbo].[Registration] ([user_id], [username], [password], [lastname], [isAdmin]) VALUES (3, N'janedoe', N'password456', N'Jane Doe', 0)
INSERT [dbo].[Registration] ([user_id], [username], [password], [lastname], [isAdmin]) VALUES (4, N'admin', N'admin', N'admin', 1)
INSERT [dbo].[Registration] ([user_id], [username], [password], [lastname], [isAdmin]) VALUES (5, N'khiem', N'2468', N'KhiemDuy', 0)
INSERT [dbo].[Registration] ([user_id], [username], [password], [lastname], [isAdmin]) VALUES (6, N'hao', N'1357', N'Quoc Hao', 0)
INSERT [dbo].[Registration] ([user_id], [username], [password], [lastname], [isAdmin]) VALUES (7, N'long', N'1452', N'Nguyen Long', 0)
INSERT [dbo].[Registration] ([user_id], [username], [password], [lastname], [isAdmin]) VALUES (8, N'hao', N'1357', N'Quoc Hao', 0)
INSERT [dbo].[Registration] ([user_id], [username], [password], [lastname], [isAdmin]) VALUES (9, N'trang', N'9753', N'Trang Nguyen', 0)
INSERT [dbo].[Registration] ([user_id], [username], [password], [lastname], [isAdmin]) VALUES (10, N'tuan', N'8642', N'Tuan Pham', 0)
INSERT [dbo].[Registration] ([user_id], [username], [password], [lastname], [isAdmin]) VALUES (11, N'minh', N'4826', N'Minh Le', 0)
INSERT [dbo].[Registration] ([user_id], [username], [password], [lastname], [isAdmin]) VALUES (12, N'phuc', N'3579', N'Phuc Bui', 0)
INSERT [dbo].[Registration] ([user_id], [username], [password], [lastname], [isAdmin]) VALUES (13, N'viet', N'7623', N'Viet Nguyen', 0)
INSERT [dbo].[Registration] ([user_id], [username], [password], [lastname], [isAdmin]) VALUES (14, N'anh', N'9513', N'Anh Tran', 0)
SET IDENTITY_INSERT [dbo].[Registration] OFF
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([category_id])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Registration] ([user_id])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([order_id])
GO
