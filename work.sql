USE [Staff_db]
GO
/****** Object:  Table [dbo].[staff_tb]    Script Date: 02/13/2022 20:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[staff_tb](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mname] [varchar](20) NULL,
	[memail] [varchar](30) NULL,
	[mphone] [varchar](10) NULL,
	[mpay] [varchar](20) NULL,
	[mcity] [varchar](10) NULL,
	[mrole] [varchar](20) NULL,
	[mstatus] [varchar](5) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[admin_tb]    Script Date: 02/13/2022 20:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin_tb](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[aname] [varchar](20) NULL,
	[aemail] [varchar](20) NULL,
	[apassword] [varchar](20) NULL,
	[aphone] [varchar](10) NULL,
	[created_at]  AS (getdate())
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[View_staff]    Script Date: 02/13/2022 20:27:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[View_staff]
as begin
select id As ID, mname As Name,memail As Email,mphone As Phone,mpay As Pay,mcity As City,mrole As MRole from staff_tb
 end;
GO
/****** Object:  StoredProcedure [dbo].[staff_view_sp]    Script Date: 02/13/2022 20:27:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[staff_view_sp]
 as begin
 select mname As Name,memail As Email,mphone As Phone,mpay As Pay,mcity As City,mrole As MRole from staff_tb
 end;
GO
/****** Object:  StoredProcedure [dbo].[add_staff_sp]    Script Date: 02/13/2022 20:27:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[add_staff_sp]
(
   @mn varchar(20),
   @me varchar(30),
   @mpn varchar(20),
   @mpy varchar(20),
   @mct varchar(20),
   @mrole varchar(20)
 )
 as begin
 insert into staff_tb(mname,memail,mphone,mpay,mcity,mrole)values(@mn,@me,@mpn,@mpy,@mct,@mrole)
 end;
GO
/****** Object:  StoredProcedure [dbo].[sp_staff_edit]    Script Date: 02/13/2022 20:27:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_staff_edit]
(
  @id int,
  @nm varchar(20),
  @ml varchar(30),
  @pn varchar(10),
  @py varchar(20),
  @ct varchar(20),
  @mr varchar(20)
)
as begin
update staff_tb set mname=@nm,memail=@ml,mphone=@pn,mpay=@py,mcity=@ct,mrole=@mr where id=@id
end;
GO
/****** Object:  StoredProcedure [dbo].[Edit_Sp2]    Script Date: 02/13/2022 20:27:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Edit_Sp2]
 (
   @mid varchar(10)
  ) 
 as begin
 select * from staff_tb where id=@mid
 end;
GO
/****** Object:  StoredProcedure [dbo].[edit_sp]    Script Date: 02/13/2022 20:27:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[edit_sp]
(
  @name varchar(30)
 )
 as begin
 select * from staff_tb where mname=@name
 end;
GO
