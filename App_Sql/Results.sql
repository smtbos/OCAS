CREATE TABLE [dbo].[Results]
(
	[res_id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [res_title] NCHAR(50) NOT NULL, 
    [res_required] INT NOT NULL DEFAULT 0, 
    [res_status] INT NOT NULL DEFAULT 1
)
