using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyBlog
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            if (!IsPostBack)
            {
                string content = string.Empty;
                SqlConnection con = new SqlConnection(strcon);
                
                    SqlCommand cmd = new SqlCommand("SELECT post FROM Table_1 WHERE Id = @Id", con);
                    cmd.Parameters.AddWithValue("@Id", id);
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        content = reader["post"].ToString();
                  //  Response.Write("Content from database: " + content);
                    TextBox2.Text = content;
                }
                    con.Close();
                


            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string updatedContent = HiddenField1.Value;
            int id = Convert.ToInt32(Request.QueryString["id"]);
            string strcon = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            string query = "UPDATE Table_1 SET post = @Post WHERE Id = @Id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Post", updatedContent);
            cmd.Parameters.AddWithValue("@Id", id);
           
            
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
           

        }
    }
}