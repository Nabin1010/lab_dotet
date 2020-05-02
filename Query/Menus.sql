USE ApexRestaurantDB;
CREATE TABLE Menus
(
    Id INT PRIMARY KEY IDENTITY(1,1),
    Menu_Name NVARCHAR(200),
    Available_Date_From DATETIME,
    Available_Date_To DATETIME,
    IsActive BIT,
    CreatedBy NVARCHAR(200),
    CreatedOn DATETIME,
    UpdatedBy NVARCHAR(200),
    UpdatedOn DATETIME
);