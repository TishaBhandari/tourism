
Partial Class admin_admin
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("adminName") Is Nothing Then
            Response.Redirect("login.aspx")
        End If
        lblmsg.Text = Session("adminName")
    End Sub

    Protected Sub btnLogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogout.Click
        Session.Abandon()
        Response.Redirect("login.aspx")
    End Sub
End Class

