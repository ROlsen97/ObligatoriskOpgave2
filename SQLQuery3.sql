SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


GO
CREATE TABLE [dbo].[Hotel] (
    [Id]            INT        NOT NULL PRIMARY KEY,
    [Name]          VARCHAR (70) NOT NULL,
    [Addresse]      VARCHAR (100) NOT NULL,
);


GO
CREATE TABLE [dbo].[Facilitet] (
    [Id]                INT        NOT NULL PRIMARY KEY,
    [Title]             NCHAR (70) NOT NULL,
);

GO
CREATE TABLE [dbo].[HotelFacilitet](
    [HotelId]		INT        NOT NULL,
    [FacilitetId]   INT        NOT NULL,
    PRIMARY KEY CLUSTERED ([HotelId] ASC, [FacilitetId] ASC), 
    FOREIGN KEY([HotelId]) REFERENCES [dbo].[Hotel] (Id), FOREIGN KEY([FacilitetId]) REFERENCES [dbo].[Facilitet](Id)
); 

INSERT INTO Hotel VALUES (1, N'Ruben Olsens Hotel', 'Universitetsparken 1j, 4000, Roskilde')
INSERT INTO [dbo].[Hotel] ([Id], [Name], [Addresse]) VALUES (2, N'Rasmuses Hotel', 'Dr.Jensensvej 1j, 4000, Roskilde, Danmark')
INSERT INTO [dbo].[Hotel] ([Id], [Name], [Addresse]) VALUES (3, N'Olivers Hotel', 'Dr.Hansensvej 1j, 4000, Roskilde, Danmark')
INSERT INTO [dbo].[Hotel] ([Id], [Name], [Addresse]) VALUES (4, N'Comwell', 'Dr.Nielsensvej 1j, 1000, København, Danmark')
INSERT INTO [dbo].[Hotel] ([Id], [Name], [Addresse]) VALUES (5, N'D angletere', 'Østerparken 10, 2630, Taastrup, Danmark')
INSERT INTO [dbo].[Hotel] ([Id], [Name], [Addresse]) VALUES (6, N'Scandic', 'Christiansensvej 1, 2200, Ballerup, Danmark')
INSERT INTO [dbo].[Hotel] ([Id], [Name], [Addresse]) VALUES (7, N'Jensens Hotel', 'Borger Christiansensvej 1, 1000, København, Danmark')
--INSERT INTO DemoHotel VALUES (7,'Scandic','Sdr. Ringvej 5, 4000 Roskilde');


INSERT INTO [dbo].[Facilitet] ([Id], [Title]) VALUES (1, N'Mini Golft')
INSERT INTO [dbo].[Facilitet] ([Id], [Title]) VALUES (2, N'Fitness')
INSERT INTO [dbo].[Facilitet] ([Id], [Title]) VALUES (3, N'Pool')
INSERT INTO [dbo].[Facilitet] ([Id], [Title]) VALUES (4, N'Svømmepool')
INSERT INTO [dbo].[Facilitet] ([Id], [Title]) VALUES (5, N'Massage')
INSERT INTO [dbo].[Facilitet] ([Id], [Title]) VALUES (6, N'Sauna')

--INSERT INTO HotelFacilitet VALUES (1,1);
INSERT INTO [dbo].HotelFacilitet ([HotelId],[FacilitetId]) VALUES ( 1,1);
INSERT INTO [dbo].HotelFacilitet ([HotelId],[FacilitetId]) VALUES ( 2,1); 
INSERT INTO [dbo].HotelFacilitet ([HotelId],[FacilitetId]) VALUES ( 3,1); 
INSERT INTO [dbo].HotelFacilitet ([HotelId],[FacilitetId]) VALUES ( 4,1); 
INSERT INTO [dbo].HotelFacilitet ([HotelId],[FacilitetId]) VALUES ( 5,1); 
INSERT INTO [dbo].HotelFacilitet ([HotelId],[FacilitetId]) VALUES ( 6,1); 
INSERT INTO [dbo].HotelFacilitet ([HotelId],[FacilitetId]) VALUES ( 7,1); 
INSERT INTO [dbo].HotelFacilitet ([HotelId],[FacilitetId]) VALUES ( 1,2); 
INSERT INTO [dbo].HotelFacilitet ([HotelId],[FacilitetId]) VALUES ( 2,2); 
INSERT INTO [dbo].HotelFacilitet ([HotelId],[FacilitetId]) VALUES ( 3,2); 
INSERT INTO [dbo].HotelFacilitet ([HotelId],[FacilitetId]) VALUES ( 4,2); 
INSERT INTO [dbo].HotelFacilitet ([HotelId],[FacilitetId]) VALUES ( 5,2); 
INSERT INTO [dbo].HotelFacilitet ([HotelId],[FacilitetId]) VALUES ( 6,2); 
INSERT INTO [dbo].HotelFacilitet ([HotelId],[FacilitetId]) VALUES ( 1,3); 
INSERT INTO [dbo].HotelFacilitet ([HotelId],[FacilitetId]) VALUES ( 2,3); 
INSERT INTO [dbo].HotelFacilitet ([HotelId],[FacilitetId]) VALUES ( 3,3); 
INSERT INTO [dbo].HotelFacilitet ([HotelId],[FacilitetId]) VALUES ( 4,3); 
INSERT INTO [dbo].HotelFacilitet ([HotelId],[FacilitetId]) VALUES ( 5,3); 
INSERT INTO [dbo].HotelFacilitet ([HotelId],[FacilitetId]) VALUES ( 1,4);
INSERT INTO [dbo].HotelFacilitet ([HotelId],[FacilitetId]) VALUES ( 2,4); 
INSERT INTO [dbo].HotelFacilitet ([HotelId],[FacilitetId]) VALUES ( 3,4); 
INSERT INTO [dbo].HotelFacilitet ([HotelId],[FacilitetId]) VALUES ( 4,4);
INSERT INTO [dbo].HotelFacilitet ([HotelId],[FacilitetId]) VALUES ( 1,5); 
INSERT INTO [dbo].HotelFacilitet ([HotelId],[FacilitetId]) VALUES ( 2,5); 
INSERT INTO [dbo].HotelFacilitet ([HotelId],[FacilitetId]) VALUES ( 3,5); 
INSERT INTO [dbo].HotelFacilitet ([HotelId],[FacilitetId]) VALUES ( 1,6);