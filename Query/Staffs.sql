USE ApexRestaurantDB;
CREATE TABLE Staffs
(
    Id INT PRIMARY KEY IDENTITY(1,1),
    Staff_Role_Id INT ,
    FirstName NVARCHAR(200),
    LastName NVARCHAR(200),
    Address NVARCHAR(500),
    PhoneRes NVARCHAR(50),
    PhoneMob NVARCHAR(50),
    EnrollDate DATETIME,
    IsActive BIT,
    CreatedBy NVARCHAR(200),
    CreatedOn DATETIME,
    UpdatedBy NVARCHAR(200),
    UpdatedOn DATETIME
);