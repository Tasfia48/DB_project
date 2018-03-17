using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net;
using System.Net.Mail;

public partial class delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        MailMessage msg =new MailMessage();
        msg.From= new MailAddress("mashiat1998@gmail.com");
        msg.To.Add(TextBox1.Text);
        msg.Subject = TextBox3.Text;
        msg.Body= TextBox4.Text;
        msg.IsBodyHtml = true;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
        NetworkCred.UserName = "mashiat1998@gmail.com";
        NetworkCred.Password = "saminzawad";
        smtp.UseDefaultCredentials = true;
        smtp.Credentials = NetworkCred;
        smtp.Port = 587;
        smtp.EnableSsl = true;
        smtp.Send(msg);
        Label1.Text = "Email has been sent!!!....";


    }
}