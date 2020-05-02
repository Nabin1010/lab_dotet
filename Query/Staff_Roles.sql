USE ApexRestaurantDB;

CREATE TABLE StaffRoles
(
    Staff_Roles_Id INT PRIMARY KEY IDENTITY(1,1),
    Staff_Roles_Description NVARCHAR(200),
    IsActive BIT,
    CreatedBy NVARCHAR(200),
    CreatedOn DATETIME,
    UpdatedBy NVARCHAR(200),
    UpdatedOn DATETIME
);