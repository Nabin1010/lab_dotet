USE ApexRestaurantDB;
CREATE TABLE Meals
(
    Id INT PRIMARY KEY IDENTITY(1,1),
    StaffId INT,
    CustomerId INT,
    Date_of_Meal DATETIME,
    Cost_of_Meal NVARCHAR(50),
    IsActive BIT,
    CreatedBy NVARCHAR(200),
    CreatedOn DATETIME,
    UpdatedBy NVARCHAR(200),
    UpdatedOn DATETIME
);