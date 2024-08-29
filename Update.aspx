<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="MyBlog.WebForm6" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CKEditor 5 Integration</title>
    <script src="https://cdn.ckeditor.com/ckeditor5/39.0.0/classic/ckeditor.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Edit Blog Post</h3>
    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
    <asp:HiddenField ID="HiddenField1" runat="server" />
    <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />
    <script type="text/javascript">
        document.addEventListener('DOMContentLoaded', function () {
            ClassicEditor
                .create(document.querySelector('#<%= TextBox2.ClientID %>'))
                .then(editor => {
                   
                    editor.setData(document.querySelector('#<%= TextBox2.ClientID %>').value);
                    
                    editor.model.document.on('change:data', () => {
                        document.getElementById('<%= HiddenField1.ClientID %>').value = editor.getData();
                    });
                })
                .catch(error => {
                    console.error(error);
                });
        });
    </script>
</asp:Content>