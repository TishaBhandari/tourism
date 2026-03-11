<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assets/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <section class="w-25 container border border-dark mt-5 p-3">
        <h3 class="text-center pb-4">Login</h3>
        <div class="pb-3">
            <asp:Label class="pb-2" ID="lblEmail" runat="server" Text="Enter Email Id :"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" class="form-control"></asp:TextBox>
            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" style="color:Red;font-size:20px"
                    ErrorMessage="Email Is Required" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="pb-3">
            <asp:Label class="pb-2" ID="lblPwd" runat="server" Text="Enter Password :"></asp:Label>
            <asp:TextBox ID="txtPwd" runat="server" class="form-control"></asp:TextBox>
            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" style="color:Red;font-size:20px"
                    ErrorMessage="Password Is Required" ControlToValidate="txtPwd"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="d-flex">
            <asp:Button ID="btnLogin" class="w-25 d-block mx-auto btn btn-primary" runat="server" Text="Login"></asp:Button>
        </div>
        </section>
    </form>
</body>
</html>
