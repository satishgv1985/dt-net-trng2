CREATE TABLE [dbo].[tblUser] (
    [userId]    INT            IDENTITY (1, 1) NOT NULL,
    [userName]  VARCHAR (50)   NULL,
    [password]  NVARCHAR (50)  NULL,
    [firstName] VARCHAR (50)   NULL,
    [lastName]  VARCHAR (50)   NULL,
	[roleId] int NULL DEFAULT(-1),
    [address]   NVARCHAR (100) NULL,
    [stateId]    INT            NULL,
	[emailId]	 VARCHAR (50)   NULL,
	[dateModified] DateTime    NULL DEFAULT (getutcdate())
);
