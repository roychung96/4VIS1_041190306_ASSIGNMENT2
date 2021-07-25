/* Q1 a)*/
CREATE TABLE [dbo].[Viewer] (
    [Id]            INT            NOT NULL IDENTITY,
    [title_Name]    NVARCHAR(50)     NULL,
    [release_Year]  INT            NULL,
    [release_Month] NCHAR (10)     NULL,
    [game_Platform] NVARCHAR (MAX) NULL,
    [designers]     NVARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


/* Q1 b)*/
SELECT * FROM [dbo].[Table] 
WHERE NOT release_Year= 2012 AND release_Year= 2018

/* Q1 c)*/
UPDATE [dbo].[Table]
SET game_Platform = 'PlayStation'
WHERE release_Year > 2012;

/* Q1 d)*/
DELETE FROM [dbo].[Table];
