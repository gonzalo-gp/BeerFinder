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
    [AlcoholPercentage] DECIMAL(14, 2) NULL, 
    [ImageUrl] NVARCHAR(250) NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [EAN] NVARCHAR(250) NULL, 
    [ExternalProductId] NVARCHAR(250) NULL, 
    [StockStatus] NVARCHAR(250) NULL, 
    [Shelf] NVARCHAR(250) NULL
)
