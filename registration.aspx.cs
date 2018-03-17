using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["newDATABASEConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from dataTable_1 where username='" + un.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                Response.Write("User Already Exicts");
            }
            


        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newGUID = Guid.NewGuid();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["newDatabaseConnectionString"].ConnectionString);
            conn.Open();
            string insertQuary = "insert into dataTable_1 (ID,username,email,password,country) values(@ID,@Uname ,@email ,@password ,@country)";
            SqlCommand com = new SqlCommand(insertQuary, conn);
           
            com.Parameters.AddWithValue("@ID", newGUID.ToString());
            com.Parameters.AddWithValue("@Uname", un.Text);
            com.Parameters.AddWithValue("@email", email.Text);
            com.Parameters.AddWithValue("@password", pass.Text);
            com.Parameters.AddWithValue("@country", country.Text);

            com.ExecuteNonQuery();

            Response.Redirect("userspage.aspx");
            Response.Write("Registration is successful");

            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }

   
}