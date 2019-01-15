USE [Splito]
GO

/****** Object:  StoredProcedure [dbo].[SplitSummary]    Script Date: 1/15/2019 12:23:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[SplitSummary]
@User_Id Int

As 
Begin

		Declare 
		@PaidAmt decimal(18,2),
		@Up_Id int,
		@ShareAmt decimal(18,2),
		@Us_Id int,
		@SummaryAmt decimal(18,2),
		@Iterration int,
		@Expense_id int
		SET @Expense_id=1
		
		select @PaidAmt=sum(Amount),@Up_Id=[User_id] from PaidBy_Mapping  where [user_id]=@User_Id group by [user_id]
		select @ShareAmt=sum(Amount),@Us_Id=[user_id] from SplitBy_Mapping where [user_id]=@User_Id group by [user_id]
		SET @SummaryAmt= @PaidAmt-@ShareAmt

		PRINT 'Paid amount : '  + cast(@PaidAmt  as varchar(20))
		PRINT 'Share Amount : ' + cast(@ShareAmt  as varchar(20))

		If (@PaidAmt is Null)
		  Begin
		  SET @PaidAmt=0.0
		  SET @SummaryAmt= @PaidAmt-@ShareAmt
		  PRINT 'User  ' + cast(@User_Id as varchar(20)) +' Need to pay amount '+cast(@ShareAmt  as varchar(20))
		  End
		ELSE
			   BEGIN
					SET @SummaryAmt= @PaidAmt-@ShareAmt
					IF @SummaryAmt<0
					Begin
					PRINT 'User ' + cast(@User_Id as varchar(20)) +' Need to pay amount '+cast(abs(@SummaryAmt)  as varchar(20))
					END
					Else IF @SummaryAmt>0
					BEGIN
					PRINT 'User  ' + cast(@User_Id as varchar(20)) +' Will get '+cast(@SummaryAmt  as varchar(20))
					END

				END
	
End

GO


