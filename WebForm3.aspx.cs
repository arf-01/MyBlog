using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
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

            if (!IsPostBack)
            {
                BindGridView();
            }

        }


        private void BindGridView()
        { 
            SqlConnection con = new SqlConnection(strcon) ;
            
                SqlCommand cmd = new SqlCommand("SELECT id, post FROM Table_1 ", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "Delete")
            {
                SqlConnection con = new SqlConnection(strcon);

                SqlCommand cmd = new SqlCommand("DELETE FROM  Table_1 WHERE id = @id", con);
                cmd.Parameters.AddWithValue("@id", id);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/WebForm1.aspx");

            }
            
        }

       


        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //string strcon = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

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