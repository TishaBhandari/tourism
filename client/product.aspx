<%@ Page Title="" Language="VB" MasterPageFile="~/client/client.master" AutoEventWireup="false" CodeFile="product.aspx.vb" Inherits="client_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
    <div class="row">
        <asp:DataList ID="dtList" runat="server" RepeatColumns="3" RepeatDirection="Horizontal">
            <ItemTemplate>
                <table>
                    <tr>
                        <td>
                            <asp:Image ID="Image2" Width="200px" Height="200px" ImageUrl='<%# "~/images/"+Eval("pimg") %>' runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" CssClass="mt-2 text-center mx-auto d-block" runat="server" Text='<%# "Name : "+Eval("pname") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" CssClass="mt-2 text-center mx-auto d-block" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
</div>

</asp:Content>

