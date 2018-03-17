using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
{ }
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
  
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection x = new SqlConnection(ConfigurationManager.ConnectionStrings["newDatabaseConnectionString"].ConnectionString);
        string str = "select * from jobTable where (country like '%' + @search + '%')";
        SqlCommand xp = new SqlCommand(str, x);
        xp.Parameters.Add("@search", SqlDbType.NVarChar).Value = DropDownList1.Text;
        x.Open();
        xp.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = xp;
        DataSet ds = new DataSet();
        da.Fill(ds, "country");
        grd.DataSource = ds;
        grd.DataBind();
        x.Close();
         
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Homepage.aspx");
    }
}
