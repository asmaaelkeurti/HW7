
Partial Class detail
    Inherits System.Web.UI.Page

    Protected Sub CancelButton_Click(sender As Object, e As EventArgs)
        Response.Redirect("./select.aspx")
    End Sub

   
    Protected Sub FormView1_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormView1.ItemDeleted
        Response.Redirect("./select.aspx")
    End Sub
End Class
