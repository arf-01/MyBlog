using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyBlog
{
    public partial class WebForm3 : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string strcon = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

                SqlConnection con = new SqlConnection(strcon);
                
                   con.Open();

                    SqlCommand cmd = new SqlCommand("INSERT INTO Table_1 ([post]) VALUES (@post);", con);
                    cmd.Parameters.AddWithValue("@post", HiddenField1.Value.Trim());

                    cmd.ExecuteNonQuery();

                    con.Close();
                


                TextBox1.Text = "";
                Response.Write("<script>alert('Blog post added successfully!');</script>");
            }
            catch (Exception ex)
            {
               
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }

    }
}