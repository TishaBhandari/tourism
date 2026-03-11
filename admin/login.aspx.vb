Imports System.Data
Imports System.Data.SqlClient
Partial Class admin_login
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Priyam\Documents\dbMain.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
    Dim cmd As SqlCommand
    Dim dr As SqlDataReader
    Dim adp As SqlDataAdapter

    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogin.Click
        cn.Open()
        cmd = New SqlCommand("select * from adm_login where email='" + txtEmail.Text + "' and password='" + txtPwd.Text + "'", cn)
        dr = cmd.ExecuteReader()
        If dr.HasRows Then
            dr.Read()
            Session("adminName") = dr("email")
            Response.Redirect("category.aspx")
        Else
            MsgBox("Invalid Email or Password")
        End If
        cn.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("adminName") <> Nothing Then
            Response.Redirect("category.aspx")
        End If
    End Sub
End Class
