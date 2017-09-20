
IF OBJECT_ID('uspCau1','P') IS NOT NULL
	DROP PROC uspCau1
GO

CREATE PROC uspCau1
	@a float = 0,
	@b float = 0,
	@tong float = 0 OUT
AS
	--RETURN @a + @b
	SET @tong = @a + @b
GO

--Chay
DECLARE @tong float ,@x float = 4.5, @y float = 2.3
EXEC  uspCau1 @x, @y, @tong OUT
PRINT N'Tổng hai số ' + CAST(@x AS nvarchar) + ' và ' + CAST(@y AS nvarchar) + ' là: ' + CAST(@tong AS nvarchar) 