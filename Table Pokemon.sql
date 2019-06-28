SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pokemon](
	[PokemonID] [int] IDENTITY(1,1) NOT NULL,
	[PokemonNumber] [int] NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Description] [varchar](max) NULL,
	[Height] [decimal](6, 2) NULL,
	[Weight] [decimal](6, 2) NULL,
	[GenderID] [int] NULL,
	[TypeID] [int] NULL,
	[TypeID2] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Pokemon] ADD PRIMARY KEY CLUSTERED 
(
	[PokemonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Pokemon]  WITH CHECK ADD FOREIGN KEY([GenderID])
REFERENCES [dbo].[Genders] ([GenderID])
GO
ALTER TABLE [dbo].[Pokemon]  WITH CHECK ADD FOREIGN KEY([TypeID])
REFERENCES [dbo].[Types] ([TypeID])
GO
ALTER TABLE [dbo].[Pokemon]  WITH CHECK ADD FOREIGN KEY([TypeID2])
REFERENCES [dbo].[Types] ([TypeID])
GO
