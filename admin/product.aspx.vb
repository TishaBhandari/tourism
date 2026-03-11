Imports System.Data
Imports System.Data.SqlClient
Imports System.IO

Partial Class admin_product
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Priyam\Documents\dbMain.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim adp As New SqlDataAdapter
    Dim ds As New DataSet

    Protected Sub btnInsert_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnInsert.Click
        cn.Open()
        fup.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(fup.FileName))
        cmd = New SqlCommand("insert into tblproduct values('" + txtPname.Text + "','" + txtDescription.Text + "','" + txtPrice.Text + "','" + drpList.SelectedValue + "','" + fup.FileName + "')", cn)
        cmd.ExecuteNonQuery()
        cn.Close()
        Response.Redirect("product.aspx")
    End Sub

    Public Sub fillgrid()

        cn.Open()
        ds.Clear()
        cmd = New SqlCommand("select* from tblproduct", cn)
        adp = New SqlDataAdapter(cmd)
        adp.Fill(ds)
        cn.Close()
        grdshow.DataSource = ds
        grdshow.DataBind()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        fillgrid()
        fillrptr()
    End Sub

    Public Sub fillrptr()
        ds.Clear()
        cn.Open()
        cmd = New SqlCommand("select * from tblproduct", cn)
        adp = New SqlDataAdapter(cmd)
        adp.Fill(ds)
        cn.Close()
        rptr.DataSource = ds
        rptr.DataBind()
    End Sub
End Class
