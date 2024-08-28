using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace MyBlog
{
    public partial class WebForm1 : Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindListView();
            }
        }

        private void BindListView()
        {
            SqlConnection con = new SqlConnection(strcon);
            
                con.Open();

                
                SqlDataAdapter da = new SqlDataAdapter("SELECT [post] FROM Table_1", con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                
                ListView2.DataSource = dt;
                ListView2.DataBind();

                con.Close();
            
        }
    }
}
