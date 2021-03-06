
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 08/15/2013 11:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 08/15/2013 11:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_OAuthMembership](
	[Provider] [nvarchar](30) NOT NULL,
	[ProviderUserId] [nvarchar](100) NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Provider] ASC,
	[ProviderUserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[webpages_OAuthMembership] ([Provider], [ProviderUserId], [UserId]) VALUES (N'google', N'https://www.google.com/accounts/o8/id?id=AItOawmUgiTFnVhqJ6n7rhAIS0Y0Qb3YZ_x7e1w', 2)
INSERT [dbo].[webpages_OAuthMembership] ([Provider], [ProviderUserId], [UserId]) VALUES (N'twitter', N'540238566', 1)
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 08/15/2013 11:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Membership](
	[UserId] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[ConfirmationToken] [nvarchar](128) NULL,
	[IsConfirmed] [bit] NULL,
	[LastPasswordFailureDate] [datetime] NULL,
	[PasswordFailuresSinceLastSuccess] [int] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordChangedDate] [datetime] NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[PasswordVerificationToken] [nvarchar](128) NULL,
	[PasswordVerificationTokenExpirationDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 08/15/2013 11:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](56) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlayerUnit]    Script Date: 08/15/2013 11:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PlayerUnit](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[MaxHealth] [int] NOT NULL,
	[Icon] [varchar](50) NOT NULL,
	[IsRebel] [bit] NOT NULL,
 CONSTRAINT [PK_PlayerUnit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PlayerUnit] ([Id], [Name], [MaxHealth], [Icon], [IsRebel]) VALUES (N'eec3a968-31f2-48ae-a41d-0920f6ec63a0', N'empire4', 3, N'empire4', 0)
INSERT [dbo].[PlayerUnit] ([Id], [Name], [MaxHealth], [Icon], [IsRebel]) VALUES (N'2f312b6d-bd20-4b4b-91c8-1076eef11b16', N'rebel2', 3, N'rebel2', 1)
INSERT [dbo].[PlayerUnit] ([Id], [Name], [MaxHealth], [Icon], [IsRebel]) VALUES (N'2ce3278a-9112-42ec-99a4-10e2b238cb3d', N'rebel9', 1, N'rebel9', 1)
INSERT [dbo].[PlayerUnit] ([Id], [Name], [MaxHealth], [Icon], [IsRebel]) VALUES (N'dc4e7c44-c70d-4da6-acd1-12ea137091ac', N'rebel12', 3, N'rebel12', 1)
INSERT [dbo].[PlayerUnit] ([Id], [Name], [MaxHealth], [Icon], [IsRebel]) VALUES (N'f8e781e2-1603-46cb-a04d-23f05e7b2e1b', N'empire12', 1, N'empire12', 0)
INSERT [dbo].[PlayerUnit] ([Id], [Name], [MaxHealth], [Icon], [IsRebel]) VALUES (N'df2f3d67-3e99-421a-bd67-2ccb2cefcb38', N'rebel1', 4, N'rebel1', 1)
INSERT [dbo].[PlayerUnit] ([Id], [Name], [MaxHealth], [Icon], [IsRebel]) VALUES (N'dc7b1d77-5ccf-4a7c-bf26-36b3f52e1a89', N'empire7', 4, N'empire7', 0)
INSERT [dbo].[PlayerUnit] ([Id], [Name], [MaxHealth], [Icon], [IsRebel]) VALUES (N'cf255359-d251-4002-8a40-384fe79fc3e9', N'empire11', 1, N'empire11', 0)
INSERT [dbo].[PlayerUnit] ([Id], [Name], [MaxHealth], [Icon], [IsRebel]) VALUES (N'1e6de0fc-5e91-4846-9828-4de6d3bd7a80', N'empire1', 3, N'empire1', 0)
INSERT [dbo].[PlayerUnit] ([Id], [Name], [MaxHealth], [Icon], [IsRebel]) VALUES (N'00fdbb72-2956-4872-bcd6-59823d54c746', N'empire10', 1, N'empire10', 0)
INSERT [dbo].[PlayerUnit] ([Id], [Name], [MaxHealth], [Icon], [IsRebel]) VALUES (N'6cbf0761-0204-4acd-af28-60c5a2dd5a0a', N'rebel8', 1, N'rebel8', 1)
INSERT [dbo].[PlayerUnit] ([Id], [Name], [MaxHealth], [Icon], [IsRebel]) VALUES (N'0d23d5f4-2801-48f7-a9f4-610481698ae7', N'rebel5', 6, N'rebel5', 1)
INSERT [dbo].[PlayerUnit] ([Id], [Name], [MaxHealth], [Icon], [IsRebel]) VALUES (N'a5063583-89c9-4a09-ac13-66480ed4f8ea', N'empire5', 2, N'empire5', 0)
INSERT [dbo].[PlayerUnit] ([Id], [Name], [MaxHealth], [Icon], [IsRebel]) VALUES (N'5a6f99ed-cd7b-4b01-9617-6b514b2332b1', N'empire3', 3, N'empire3', 0)
INSERT [dbo].[PlayerUnit] ([Id], [Name], [MaxHealth], [Icon], [IsRebel]) VALUES (N'e47c7677-bcd4-4f0f-8204-b28c8aea96f0', N'rebel10', 3, N'rebel10', 1)
INSERT [dbo].[PlayerUnit] ([Id], [Name], [MaxHealth], [Icon], [IsRebel]) VALUES (N'674eafd8-947e-4eb5-9487-c32747352128', N'rebel7', 1, N'rebel7', 1)
INSERT [dbo].[PlayerUnit] ([Id], [Name], [MaxHealth], [Icon], [IsRebel]) VALUES (N'13b29e6f-d092-4754-b235-c8b95e5747f5', N'rebel6', 4, N'rebel4', 1)
INSERT [dbo].[PlayerUnit] ([Id], [Name], [MaxHealth], [Icon], [IsRebel]) VALUES (N'0d71f5fd-7f2a-4762-9307-cb8da039faef', N'empire6', 6, N'empire6', 0)
INSERT [dbo].[PlayerUnit] ([Id], [Name], [MaxHealth], [Icon], [IsRebel]) VALUES (N'96e5250e-8fff-4f62-889f-d400ab27ee05', N'rebel11', 1, N'rebel11', 1)
INSERT [dbo].[PlayerUnit] ([Id], [Name], [MaxHealth], [Icon], [IsRebel]) VALUES (N'88512268-3324-4b65-90c7-d440fb7254d8', N'empire8', 4, N'empire8', 0)
INSERT [dbo].[PlayerUnit] ([Id], [Name], [MaxHealth], [Icon], [IsRebel]) VALUES (N'01ce1e04-5e32-442d-ae8a-e3e61759bf06', N'empire9', 1, N'empire9', 0)
INSERT [dbo].[PlayerUnit] ([Id], [Name], [MaxHealth], [Icon], [IsRebel]) VALUES (N'8fb87369-bd6d-4cb4-b253-eb0c5da49d31', N'rebel3', 3, N'rebel3', 1)
INSERT [dbo].[PlayerUnit] ([Id], [Name], [MaxHealth], [Icon], [IsRebel]) VALUES (N'5fc37567-8e88-4481-800b-eb879d96ac0b', N'rebel4', 3, N'rebel4', 1)
INSERT [dbo].[PlayerUnit] ([Id], [Name], [MaxHealth], [Icon], [IsRebel]) VALUES (N'342b635d-74bb-42dc-8984-fc7ede1246d7', N'empire2', 4, N'empire2', 0)
/****** Object:  Table [dbo].[PlayerNotification]    Script Date: 08/15/2013 11:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PlayerNotification](
	[Id] [uniqueidentifier] NOT NULL,
	[PlayerId] [uniqueidentifier] NOT NULL,
	[MatchId] [uniqueidentifier] NOT NULL,
	[NotificationType] [varchar](50) NOT NULL,
	[OtherPlayer] [uniqueidentifier] NULL,
	[Row] [int] NULL,
	[Col] [int] NULL,
 CONSTRAINT [PK_PlayerNotification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Player]    Script Date: 08/15/2013 11:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Player](
	[Id] [uniqueidentifier] NOT NULL,
	[DisplayName] [varchar](50) NOT NULL,
	[LiveId] [varchar](250) NOT NULL,
	[Avatar] [varchar](50) NOT NULL,
	[Wins] [int] NOT NULL,
	[Losses] [int] NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[IsOnline] [bit] NOT NULL,
	[LastActivity] [datetime] NOT NULL,
	[Location] [geography] NULL,
	[ClientId] [varchar](50) NULL,
 CONSTRAINT [PK_Player] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Match]    Script Date: 08/15/2013 11:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Match](
	[Id] [uniqueidentifier] NOT NULL,
	[Player1] [uniqueidentifier] NOT NULL,
	[Player2] [uniqueidentifier] NOT NULL,
	[Turn] [uniqueidentifier] NOT NULL,
	[Player1Ready] [bit] NOT NULL,
	[Player2Ready] [bit] NOT NULL,
	[Initialized] [bit] NOT NULL,
	[MatchEnded] [bit] NOT NULL,
	[Winner] [uniqueidentifier] NOT NULL,
	[PlayingNow] [bit] NOT NULL,
 CONSTRAINT [PK_Match] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 08/15/2013 11:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_UsersInRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Challenge]    Script Date: 08/15/2013 11:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Challenge](
	[Id] [uniqueidentifier] NOT NULL,
	[Player1] [uniqueidentifier] NOT NULL,
	[Player2] [uniqueidentifier] NOT NULL,
	[Accepted] [bit] NOT NULL,
 CONSTRAINT [PK_Challenge] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatchUnit]    Script Date: 08/15/2013 11:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MatchUnit](
	[Id] [uniqueidentifier] NOT NULL,
	[MatchId] [uniqueidentifier] NOT NULL,
	[PlayerId] [uniqueidentifier] NOT NULL,
	[UnitId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[MaxHealth] [int] NOT NULL,
	[Health] [int] NOT NULL,
	[Row] [int] NOT NULL,
	[Col] [int] NOT NULL,
 CONSTRAINT [PK_MatchUnit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[PlayerRank]    Script Date: 08/15/2013 11:24:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PlayerRank]
AS
SELECT     *, (Wins+Losses)/Wins as Ratio


FROM         dbo.Player
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Player"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PlayerRank'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PlayerRank'
GO
/****** Object:  Default [DF_Challenge_Accepted]    Script Date: 08/15/2013 11:24:11 ******/
ALTER TABLE [dbo].[Challenge] ADD  CONSTRAINT [DF_Challenge_Accepted]  DEFAULT ((0)) FOR [Accepted]
GO
/****** Object:  Default [DF_Match_Player1Ready]    Script Date: 08/15/2013 11:24:11 ******/
ALTER TABLE [dbo].[Match] ADD  CONSTRAINT [DF_Match_Player1Ready]  DEFAULT ((0)) FOR [Player1Ready]
GO
/****** Object:  Default [DF_Match_Player2Ready]    Script Date: 08/15/2013 11:24:11 ******/
ALTER TABLE [dbo].[Match] ADD  CONSTRAINT [DF_Match_Player2Ready]  DEFAULT ((0)) FOR [Player2Ready]
GO
/****** Object:  Default [DF_Match_Initialized]    Script Date: 08/15/2013 11:24:11 ******/
ALTER TABLE [dbo].[Match] ADD  CONSTRAINT [DF_Match_Initialized]  DEFAULT ((0)) FOR [Initialized]
GO
/****** Object:  Default [DF_Match_MatchEnded]    Script Date: 08/15/2013 11:24:11 ******/
ALTER TABLE [dbo].[Match] ADD  CONSTRAINT [DF_Match_MatchEnded]  DEFAULT ((0)) FOR [MatchEnded]
GO
/****** Object:  Default [DF_Match_PlayingNow]    Script Date: 08/15/2013 11:24:11 ******/
ALTER TABLE [dbo].[Match] ADD  CONSTRAINT [DF_Match_PlayingNow]  DEFAULT ((0)) FOR [PlayingNow]
GO
/****** Object:  Default [DF_Player_IsOnline]    Script Date: 08/15/2013 11:24:11 ******/
ALTER TABLE [dbo].[Player] ADD  CONSTRAINT [DF_Player_IsOnline]  DEFAULT ((0)) FOR [IsOnline]
GO
/****** Object:  Default [DF_PlayerUnit_IsRebel]    Script Date: 08/15/2013 11:24:11 ******/
ALTER TABLE [dbo].[PlayerUnit] ADD  CONSTRAINT [DF_PlayerUnit_IsRebel]  DEFAULT ((0)) FOR [IsRebel]
GO
/****** Object:  Default [DF__webpages___IsCon__0BC6C43E]    Script Date: 08/15/2013 11:24:11 ******/
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [IsConfirmed]
GO
/****** Object:  Default [DF__webpages___Passw__0CBAE877]    Script Date: 08/15/2013 11:24:11 ******/
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [PasswordFailuresSinceLastSuccess]
GO
/****** Object:  ForeignKey [FK_Challenge_Player]    Script Date: 08/15/2013 11:24:11 ******/
ALTER TABLE [dbo].[Challenge]  WITH CHECK ADD  CONSTRAINT [FK_Challenge_Player] FOREIGN KEY([Player1])
REFERENCES [dbo].[Player] ([Id])
GO
ALTER TABLE [dbo].[Challenge] CHECK CONSTRAINT [FK_Challenge_Player]
GO
/****** Object:  ForeignKey [FK_Challenge_Player1]    Script Date: 08/15/2013 11:24:11 ******/
ALTER TABLE [dbo].[Challenge]  WITH CHECK ADD  CONSTRAINT [FK_Challenge_Player1] FOREIGN KEY([Player2])
REFERENCES [dbo].[Player] ([Id])
GO
ALTER TABLE [dbo].[Challenge] CHECK CONSTRAINT [FK_Challenge_Player1]
GO
/****** Object:  ForeignKey [FK_MatchUnit_Match]    Script Date: 08/15/2013 11:24:11 ******/
ALTER TABLE [dbo].[MatchUnit]  WITH CHECK ADD  CONSTRAINT [FK_MatchUnit_Match] FOREIGN KEY([MatchId])
REFERENCES [dbo].[Match] ([Id])
GO
ALTER TABLE [dbo].[MatchUnit] CHECK CONSTRAINT [FK_MatchUnit_Match]
GO
/****** Object:  ForeignKey [fk_RoleId]    Script Date: 08/15/2013 11:24:11 ******/
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[webpages_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_RoleId]
GO
/****** Object:  ForeignKey [fk_UserId]    Script Date: 08/15/2013 11:24:11 ******/
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_UserId]
GO
