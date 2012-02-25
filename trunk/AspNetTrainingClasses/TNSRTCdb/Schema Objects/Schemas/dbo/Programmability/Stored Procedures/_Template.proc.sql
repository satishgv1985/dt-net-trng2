--IF EXISTS(SELECT * FROM sys.objects WHERE type='p' and name='_ProcedureName')
--DROP PROCEDURE _ProcedureName
--GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE _ProcedureName
	-- Add the parameters for the stored procedure here
	@param int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
END
GO
