using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;

public partial class email : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
            
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string body = "From:" + TextBox1.Text + "\n";
        body += "Subject:" + TextBox4.Text + "\n";
        body += "Message:" + TextBox5.Text + "\n";
        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            
            smtp.Credentials = new NetworkCredential(TextBox1.Text, TextBox2.Text);
            smtp.Timeout = 20000;
        }
        smtp.Send(TextBox1.Text, DropDownList1.Text, TextBox4.Text, body);
        Label1.Text = "email is sent";
    }
}