CREATE TABLE MealDishes
(
MealDishesId INT PRIMARY KEY IDENTITY(1,1),
MealId INT ,
MenuItemId INT,
Quantity NVARCHAR(60), 
IsActive BIT,
CreatedBy NVARCHAR(200),
CreatedOn DATETIME,
UpdatedBy NVARCHAR(200),
UpdatedOn DATETIME
);