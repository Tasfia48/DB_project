﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Admin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie userCookie;
        userCookie = Request.Cookies["Preferences"];

        if (userCookie != null)
        {
            if (!userCookie.Value.Equals(-1))
            {
                Session.Clear();
                Session["Login"] = TextBox1UNAd.Text.Trim();
                Response.Redirect("admin_homepage.aspx");
            }
        }
    }
    

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["newDATABASEConnectionString"].ConnectionString);
        conn.Open();
        string checkuser = "select count(*) from AdTable1 where UsernameAd='" + TextBox1UNAd.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkPasswordQuery = "select PasswordAd from AdTable1 where UsernameAd='" + TextBox1UNAd.Text + "'";
            SqlCommand passCom = new SqlCommand(checkPasswordQuery, conn);
            string password = passCom.ExecuteScalar().ToString().Replace(" ", "");
            if (password == TextBox2PassAd.Text)
            {
                Session["New"] = TextBox1UNAd.Text;
                Response.Write("password is correct");
                Session["login"] = TextBox1UNAd.Text.Trim();
                if (RM.Checked == true)
                {
                    HttpCookie userCookie;
                    userCookie = Request.Cookies["Preferences"];
                    if (userCookie == null)
                    {
                        userCookie = new HttpCookie("Preferences");
                        userCookie.Expires = DateTime.Now.AddMonths(1);
                        Response.Cookies.Add(userCookie);
                    }
                }
                Response.Redirect("admin_homepage.aspx");

            }
            else
            {
                Response.Write("password is incorrect");
            }
        }
        else
        {
            Response.Write("Username is not correct");
        }

    }
}
