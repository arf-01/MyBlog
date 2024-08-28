<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MyBlog.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- No additional content needed here for this example -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-4">
        <asp:ListView ID="ListView2" runat="server">
            <ItemTemplate>
                <div class="list-group">
                    <div class="list-group-item">
                        <asp:Literal ID="LiteralPost" runat="server" Text='<%# Eval("post") %>'></asp:Literal>

                       

                    </div>
                </div>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>
