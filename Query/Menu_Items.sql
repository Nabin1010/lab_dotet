USE ApexRestaurantDB;
CREATE TABLE MenuItem
(
    MenuItemId INT PRIMARY KEY IDENTITY(1,1),
    Id INT,
    Menu_Items_Name NVARCHAR(200),
    IsActive BIT,
    CreatedBy NVARCHAR(200),
    CreatedOn DATETIME,
    UpdatedBy NVARCHAR(200),
    UpdatedOn DATETIME
);