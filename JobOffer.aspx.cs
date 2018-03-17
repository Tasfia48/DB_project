using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class JobOffer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonUp_Click(object sender, EventArgs e)
    {
        try
        {
           
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["newDatabaseConnectionString"].ConnectionString);
            conn.Open();
            string insertQuary = "insert into jobTable (Profession,country,Company,vacancies,Starting_salary,Deadline,Address,contact_number,email) values(@pro ,@con ,@com ,@vac ,@ss,@dl,@ad,@cn,@em)";
            SqlCommand com = new SqlCommand(insertQuary, conn);

            
            com.Parameters.AddWithValue("@pro", TextBox1p.Text);
            com.Parameters.AddWithValue("@con", TextBox2c.Text);
            com.Parameters.AddWithValue("@com", TextBox3co.Text);
            com.Parameters.AddWithValue("@vac", TextBox4n.Text);
            com.Parameters.AddWithValue("@ss", TextBox5s.Text);
            com.Parameters.AddWithValue("@dl", TextBox1.Text);
            com.Parameters.AddWithValue("@ad", TextBox2.Text);
            com.Parameters.AddWithValue("@cn", TextBox3.Text);
            com.Parameters.AddWithValue("@em", TextBox4.Text);

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