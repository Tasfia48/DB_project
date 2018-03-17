using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userspage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Buttonlogout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("main_homepage.aspx");


    }
}