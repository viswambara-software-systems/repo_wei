﻿IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OfacResponses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OfacResponses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RequestId] [int] NOT NULL,
	[ResponseBody] [nvarchar](max) NULL,
	[Identifier] [nvarchar](255) NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL CONSTRAINT [DF_OfacResponses_CreatedDateTime]  DEFAULT (getdate()),
	[CreatedOper] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK__OfacResponses__014935CB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OfacResponses_RequestId]') AND parent_object_id = OBJECT_ID(N'[dbo].[OfacResponses]'))
ALTER TABLE [dbo].[OfacResponses]  WITH CHECK ADD  CONSTRAINT [FK_OfacResponses_RequestId] FOREIGN KEY([RequestId])
REFERENCES [dbo].[Requests] ([Id])

ALTER TABLE [dbo].[OfacResponses] CHECK CONSTRAINT [FK_OfacResponses_RequestId]