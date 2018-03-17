using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { }
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> GetCity(string prefixText)
    {
        DataTable dt = new DataTable();
        string constr = ConfigurationManager.ConnectionStrings["newDATABASEConnectionString"].ToString();
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from jobTable where Profession like @City+'%'", con);
        cmd.Parameters.AddWithValue("@City", prefixText);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(dt);
        List<string> CityNames = new List<string>();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            CityNames.Add(dt.Rows[i][1].ToString());
        }

        return CityNames;


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection x = new SqlConnection(ConfigurationManager.ConnectionStrings["newDatabaseConnectionString"].ConnectionString);
        string str = "select * from jobTable where (Profession like '%' + @search + '%')";
        SqlCommand xp = new SqlCommand(str, x);
        xp.Parameters.Add("@search", SqlDbType.NVarChar).Value = txtCity.Text;
        x.Open();
        xp.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = xp;
        DataSet ds = new DataSet();
        da.Fill(ds, "Profession");
        grd.DataSource = ds;
        grd.DataBind();
        x.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Homepage.aspx");
    }
}