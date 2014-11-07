
Partial Class Master
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim currentDate As Date = Date.Now

        Label1.Text = String.Format("{0:MM/dd/yyyy}", currentDate)
    End Sub
End Class

