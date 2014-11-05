
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged
        Dim searchWord As String
        searchWord = "Select * From weijli_flower where (name Like '%" + TextBox1.Text + "%')"
        SqlDataSource1.SelectCommand = searchWord
    End Sub
End Class
