--IF EXISTS(SELECT * FROM sys.objects WHERE type='p' and name='spInsertUser')
--DROP PROCEDURE spInsertUser
--GO
CREATE PROCEDURE spInsertUser
	@userName varchar(50), 
	@password varchar(50),
	@firstName varchar(50)

AS
BEGIN
	INSERT INTO tblUser([userName]
           ,[password]
           ,[firstName])
		   VALUES(@userName,@password,@firstName)
END
