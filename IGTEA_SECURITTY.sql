USE IGTEA;
GO 

CREATE LOGIN igtea_admin   WITH PASSWORD = 'Admin@cisco';
CREATE LOGIN igtea_staff   WITH PASSWORD = 'Staff@class';
CREATE LOGIN igtea_viewer  WITH PASSWORD = 'Viewer@nibm';
GO

CREATE USER AdminUser  FOR LOGIN igtea_admin;
CREATE USER StaffUser  FOR LOGIN igtea_staff;
CREATE USER ViewerUser FOR LOGIN igtea_viewer;
GO

CREATE ROLE AdminRole;
CREATE ROLE StaffRole;
CREATE ROLE ViewerRole;
GO

ALTER ROLE AdminRole  ADD MEMBER AdminUser;
ALTER ROLE StaffRole  ADD MEMBER StaffUser;
ALTER ROLE ViewerRole ADD MEMBER ViewerUser;
GO

ALTER ROLE db_owner ADD MEMBER AdminUser;
GO

GRANT SELECT ON SCHEMA :: dbo TO StaffRole;
GRANT INSERT, UPDATE ON Orders     TO StaffRole;
GRANT INSERT, UPDATE ON OrderItem  TO StaffRole;
GRANT INSERT, UPDATE ON Payment    TO StaffRole;
GRANT INSERT, UPDATE ON Delivery   TO StaffRole;
GO

GRANT SELECT ON SCHEMA :: dbo TO ViewerRole;
GO

SELECT r.name AS RoleName, m.name AS MemberName
FROM sys.database_role_members drm
JOIN sys.database_principals r ON drm.role_principal_id = r.principal_id
JOIN sys.database_principals m ON drm.member_principal_id = m.principal_id;
GO

