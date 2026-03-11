<%@ Page Language="VB" AutoEventWireup="false" CodeFile="registration.aspx.vb" Inherits="admin_registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="assets/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <section class="w-50 container border border-dark mt-5 p-3">
        <h3 class="text-center pb-4">Category</h3>
        <div class="pb-3">
            <asp:Label class="pb-2" ID="lblUname" runat="server" Text="Enter User Name :"></asp:Label>
            <asp:TextBox ID="txtUname" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div class="pb-3">
            <asp:Label class="pb-2" ID="lblPwd" runat="server" Text="Enter Password :"></asp:Label>
            <asp:TextBox ID="txtPwd" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div class="pb-3">
            <asp:Label class="pb-2" ID="lblContact" runat="server" Text="Enter Contact No :"></asp:Label>
            <asp:TextBox ID="TextContact" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div>
            <asp:Label class="pb-2" ID="Lblgen" runat="server" Text="Choose Gender : "></asp:Label>
            <asp:RadioButton ID="rbtrMale" GroupName="gen" Text="Male" runat="server"></asp:RadioButton>
            <asp:RadioButton ID="rbtnFemale" GroupName="gen" Text="Female" runat="server"></asp:RadioButton>
        </div>
        <div class="d-flex">
            <asp:Button ID="btnReg" class="w-25 d-block mx-auto btn btn-primary" runat="server" Text="Register"></asp:Button>
        </div>
    </section>
    </form>
</body>
</html>
