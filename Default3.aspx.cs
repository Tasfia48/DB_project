using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["newDatabaseConnectionString"].ConnectionString);
            conn.Open();
            SqlDataAdapter sda= new SqlDataAdapter("DELETE FROM jobTable where ID='" + DropDownList1.Text + "'",conn);
            
            sda.SelectCommand.ExecuteNonQuery();
            

            Response.Redirect("jobnews.aspx");
            Response.Write("Deletion is successful");
           

            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        try
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["newDatabaseConnectionString"].ConnectionString);
            conn.Open();
            SqlDataAdapter sda = new SqlDataAdapter("UPDATE jobTable SET Profession='" + TextBox1.Text + "',Company='" + TextBox2.Text + "',vacancies='" + TextBox3.Text + "',country='" + TextBox4.Text + "',Starting_salary='" + TextBox5.Text + "',Deadline='" + TextBox6.Text + "',Address='" + TextBox7.Text +"',contact_number='" + TextBox8.Text + "',email='" + TextBox9.Text + "'WHERE ID='" + DropDownList1.Text + "'", conn);

            sda.SelectCommand.ExecuteNonQuery();


            Response.Redirect("jobnews.aspx");
            Response.Write("Update is successful");


            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }    
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
         
    }
}