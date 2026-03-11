<%@ Page Title="" Language="VB" MasterPageFile="~/admin/admin.master" AutoEventWireup="false" CodeFile="category.aspx.vb" Inherits="admin_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="border border-dark mt-5 p-3">
    <h3 class="text-center pb-4">Category</h3>
    <div class="pb-3">
        <asp:Label class="pb-2" ID="lblId" runat="server" Text="Enter Category Id :"></asp:Label>
        <asp:TextBox ID="txtId" runat="server" class="form-control"></asp:TextBox>
    </div>
    <div class="pb-3">
        <asp:Label class="pb-2" ID="lblName" runat="server" Text="Enter Category Name :"></asp:Label>
        <asp:TextBox ID="txtName" runat="server" class="form-control"></asp:TextBox>
    </div>
    <div class="d-flex">
        <asp:Button ID="btnInsert" class="w-25 d-block mx-auto btn btn-primary" runat="server" Text="Insert"></asp:Button>
        <asp:Button ID="btnUpdate" class="w-25 d-block mx-auto btn btn-primary" runat="server" Text="Update"></asp:Button>
        <asp:Button ID="btnDelete" class="w-25 d-block mx-auto btn btn-primary" runat="server" Text="Delete"></asp:Button>
    </div>
</section>

    <asp:GridView ID="grdshow" AutoGenerateColumns="false" runat="server" CssClass="table mt-5 table-light table-hover">
        <Columns>
            <asp:BoundField HeaderText="ID" DataField="cid"/>
            <asp:BoundField HeaderText="Category Name" DataField="cname"/>
        </Columns>
    </asp:GridView>
</asp:Content>

