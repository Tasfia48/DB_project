using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class Homepage : System.Web.UI.Page
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
    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Clear();

        HttpCookie myCookie = new HttpCookie("Preferences");
        myCookie.Expires = DateTime.Now.AddDays(-1d);
        Response.Cookies.Add(myCookie);
        Response.Redirect("main_homepage.aspx");
    }
    protected void ButtonPro_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void ButtonCon_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default2.aspx");
    }
}