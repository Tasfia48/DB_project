using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            welcome.Text += Session["New"].ToString();
        }
        else
            Response.Redirect("main_homepage.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        {
            try
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["newDatabaseConnectionString"].ConnectionString);
                conn.Open();
                string insertQuary = "insert into commentTable (UserName,Email,Comment) values(@un,@em,@cm)";
                SqlCommand com = new SqlCommand(insertQuary, conn);


                com.Parameters.AddWithValue("@un", TextBox1.Text);
                com.Parameters.AddWithValue("@em", TextBox2.Text);
                com.Parameters.AddWithValue("@cm", TextBox3.Text);
              
                

                com.ExecuteNonQuery();

                Response.Redirect("jobnews.aspx");
                Response.Write("Registration is successful");

                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("main_homepage.aspx");
    }
}