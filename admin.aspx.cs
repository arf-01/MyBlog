using System;
using System.Configuration;
using System.Web.Security;
using System.Web.UI;

namespace MyBlog
{
    public partial class WebForm2 : Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim(); 
            string password = txtPassword.Text.Trim(); 

            if (IsValidUser(email, password))
            {
                FormsAuthentication.SetAuthCookie(email, false);
                Response.Redirect("WebForm3.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid login credentials');</script>");
            }
        }

        private bool IsValidUser(string email, string password)
        {
           
            return email == "adhroba@gmail.com" && password == "mynameis@siam007";
        }
    }
}
