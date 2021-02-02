CREATE TABLE [dbo].[Product]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Category] NVARCHAR(250) NULL, 
    [Type] NVARCHAR(250) NULL, 
    [Name] NVARCHAR(250) NULL, 
    [Volume] NVARCHAR(250) NULL, 
    [Producer] NVARCHAR(250) NULL, 
    [Country] NVARCHAR(250) NULL, 
    [IsEco] BIT NULL, 
    [AlcoholPercentage] INT NULL, 
    [ImageUrl] NVARCHAR(250) NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [EAN] NVARCHAR(250) NULL, 
    [ExternalProcductId] NVARCHAR(250) NULL
)
