<%@ Page Title="" Language="VB" MasterPageFile="~/admin/admin.master" AutoEventWireup="false" CodeFile="product.aspx.vb" Inherits="admin_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="border border-dark mt-5 p-3">
    <h3 class="text-center pb-4">Category</h3>
    <div class="pb-3">
        <asp:Label class="pb-2" ID="lblPro" runat="server" Text="Enter Product Id :"></asp:Label>
        <asp:TextBox ID="txtPid" runat="server" class="form-control"></asp:TextBox>
    </div>
    <div class="pb-3">
        <asp:Label class="pb-2" ID="lblName" runat="server" Text="Enter Product Name :"></asp:Label>
        <asp:TextBox ID="txtPname" runat="server" class="form-control"></asp:TextBox>
    </div>
    <div class="pb-3">
        <asp:Label class="pb-2" ID="Label1" runat="server" Text="Enter Product Description :"></asp:Label>
        <asp:TextBox ID="txtDescription" runat="server" class="form-control"></asp:TextBox>
    </div>
    <div class="pb-3">
        <asp:Label class="pb-2" ID="Label2" runat="server" Text="Enter Price :"></asp:Label>
        <asp:TextBox ID="txtPrice" runat="server" class="form-control"></asp:TextBox>
    </div>
    <div class="pb-3">
        <asp:Label class="pb-2" ID="Label3" runat="server" Text="Select Category :"></asp:Label>
        <asp:DropDownList ID="drpList" class="form-control" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="cname" DataValueField="cname"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:dbMainConnectionString %>" 
            SelectCommand="SELECT * FROM [tblCategory]"></asp:SqlDataSource>
    </div>
    <div class="pb-3">
        <asp:Label class="pb-2" ID="Label4" runat="server" Text="Choose Product Image:"></asp:Label>
        <asp:FileUpload ID="fup" runat="server"></asp:FileUpload>
    </div>
    <div class="d-flex">
        <asp:Button ID="btnInsert" class="w-25 d-block mx-auto btn btn-primary" runat="server" Text="Insert"></asp:Button>
        <asp:Button ID="btnUpdate" class="w-25 d-block mx-auto btn btn-primary" runat="server" Text="Update"></asp:Button>
        <asp:Button ID="btnDelete" class="w-25 d-block mx-auto btn btn-primary" runat="server" Text="Delete"></asp:Button>
    </div>
</section>
<h2>Gridview</h2>
<asp:GridView ID="grdshow" AutoGenerateColumns="false" runat="server" CssClass="table mt-5 table-light table-hover">
        <Columns>
            <asp:BoundField HeaderText="Product Name" DataField="pname"/>
            <asp:BoundField HeaderText="Description" DataField="description"/>
            <asp:BoundField HeaderText="Price" DataField="price"/>
            <asp:BoundField HeaderText="Category" DataField="cname"/>
            <asp:TemplateField HeaderText="Image">
                <ItemTemplate>
                    <asp:Image ID="Image1" height="200px" Width="200px" ImageUrl='<%# "~/images/"+Eval("pimg") %>' runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <h2>Repeater</h2>
    <table class="table mt-5 table-light table-hover">
        <asp:Repeater ID="rptr" runat="server">
            <HeaderTemplate>
                <tr>
                    <th>Pid</th>
                    <th>Pname</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Category Name</th>
                    <th>Product Image</th>
                </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%# Eval("pid")%></td>
                    <td><%# Eval("pname")%></td>
                    <td><%# Eval("description")%></td>
                    <td><%# Eval("price")%></td>
                    <td><%# Eval("cname")%></td>
                    <td>
                        <asp:Image ID="Image2" height="200px" Width="200px" ImageUrl='<%# "~/images/"+Eval("pimg") %>' runat="server" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>

