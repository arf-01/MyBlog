<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="MyBlog.WebForm3" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CKEditor 5 Integration</title>

    <script src="https://cdn.ckeditor.com/ckeditor5/39.0.0/classic/ckeditor.js"></script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Add a new blog...</h3>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

     <asp:HiddenField ID="HiddenField1" runat="server" />


    
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="id" CssClass="table" OnRowCommand="GridView1_RowCommand">
        <Columns>
         
            <asp:BoundField DataField="id" HeaderText="Blog ID" />

            <asp:BoundField DataField="post" HeaderText="Content" />

            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="EditButton" runat="server" Text="Edit" CommandName="Edit" CommandArgument='<%# Eval("id") %>'></asp:LinkButton>
                    <asp:LinkButton ID="DeleteButton" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%# Eval("id") %>' OnClientClick="return confirm('Are you sure you want to delete this post?');"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

    

    <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
     <script type="text/javascript">
         ClassicEditor
             .create(document.querySelector('#<%= TextBox1.ClientID %>'))
            .then(editor => {
            
                editor.model.document.on('change:data', () => {
                    document.getElementById('<%= HiddenField1.ClientID %>').value = editor.getData();
                });
            })
             .catch(error => {
                 console.error(error);
             });
    </script>
         
    
</asp:Content>
