<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="admin_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    Name :
                </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Contact No :
                </td>
                <td>
                    <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Image :
                </td>
                <td>
                    <asp:FileUpload ID="fileImg" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan=2>
                    <asp:Button ID="btnSubmit" runat="server" Text="Insert" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
