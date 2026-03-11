Imports System.Data
Imports System.Data.SqlClient

Partial Class admin_category
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Priyam\Documents\dbMain.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim adp As New SqlDataAdapter
    Dim ds As New DataSet

    Protected Sub btnInsert_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnInsert.Click
        cn.Open()
        cmd = New SqlCommand("insert into tblCategory values('" + txtName.Text + "')", cn)
        cmd.ExecuteNonQuery()

        cn.Close()
        txtName.Text = ""
        Response.Redirect("category.aspx")
    End Sub

    Public Sub fillgrid()

        cn.Open()
        ds.Clear()
        cmd = New SqlCommand("select* from tblCategory", cn)
        adp = New SqlDataAdapter(cmd)
        adp.Fill(ds)
        cn.Close()
        grdshow.DataSource = ds
        grdshow.DataBind()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        fillgrid()
    End Sub
End Class
