using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class myprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            Labelpro.Text += Session["New"].ToString();


            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["newDATABASEConnectionString"].ConnectionString);
            conn.Open();
            string x = "select username from dataTable_1 where username='" + Session["New"].ToString() + "'";
            SqlCommand y = new SqlCommand(x, conn);
            string d = y.ExecuteScalar().ToString();
            Label1.Text = d;
            string xa = "select email from dataTable_1 where username='" + Session["New"].ToString() + "'";
            SqlCommand ya = new SqlCommand(xa, conn);
            string da = ya.ExecuteScalar().ToString();
            Label2.Text = da;
            string xb = "select country from dataTable_1 where username='" + Session["New"].ToString() + "'";
            SqlCommand yb = new SqlCommand(xb, conn);
            string db = yb.ExecuteScalar().ToString();
            Label3.Text = db;
            conn.Close();
            
        }
        else
            Response.Redirect("main_homepage.aspx");
    }
}