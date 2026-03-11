Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Partial Class client_product
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Priyam\Documents\dbMain.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim adp As New SqlDataAdapter
    Dim ds As New DataSet
    Public Sub fillrptr()
        ds.Clear()
        cn.Open()
        cmd = New SqlCommand("select * from tblproduct", cn)
        adp = New SqlDataAdapter(cmd)
        adp.Fill(ds)
        cn.Close()
        dtList.DataSource = ds
        dtList.DataBind()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        fillrptr()
    End Sub
End Class
