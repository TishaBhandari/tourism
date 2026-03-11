Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Partial Class admin_Default
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Priyam\Documents\dbMain.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
    Dim cmd As New SqlCommand
    Dim adp As New SqlDataAdapter
    Dim ds As New DataSet
    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        cn.Open()
        fileImg.SaveAs(Server.MapPath("~/admin/assets/") + Path.GetFileName(fileImg.FileName))
        cmd = New SqlCommand("insert into tbldemo values('" + txtName.Text + "'," + txtContact.Text + ",'" + fileImg.FileName + "')", cn)
        If cmd.ExecuteNonQuery Then
            MsgBox("Inserted")
        End If
        cn.Close()
    End Sub
End Class
