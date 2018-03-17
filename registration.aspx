<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Job Network</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 261px;
        }
        .auto-style3 {
            width: 261px;
            text-align: right;
        }
        .auto-style4 {
            width: 189px;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style6 {
            text-decoration: underline;
            font-size: x-large;
        }
        .auto-style7 {
            width: 261px;
            text-align: right;
            height: 47px;
            font-weight: bold;
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style8 {
            width: 189px;
            height: 47px;
        }
        .auto-style9 {
            height: 47px;
        }
        .auto-style12 {
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style13 {
            width: 261px;
            text-align: right;
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style14 {
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style15 {
            width: 261px;
            text-align: right;
            font-weight: bold;
            font-size: large;
            color: #FFFFFF;
        }
        #Reset1 {
            color: #0000FF;
            font-weight: 700;
        }
    </style>
    <script language="javascript">
       function regFunction()
{
alert("Registration Successful");
}
</script>
    <script>
        function startTime() {
            var today = new Date();
            var h = today.getHours();
            var m = today.getMinutes();
            var s = today.getSeconds();
            m = checkTime(m);
            s = checkTime(s);
            document.getElementById('txt').innerHTML =
            h + ":" + m + ":" + s;
            var t = setTimeout(startTime, 500);
        }
        function checkTime(i) {
            if (i < 10) { i = "0" + i };  // add zero in front of numbers < 10
            return i;
        }
</script>
</head>

<body style="background-color:dodgerblue">

    <form id="form1" runat="server">
    <h1><font color="white"><center>Online Job Network</center>
            
            </font></h1>
        <div style="margin-left:68%">
        &nbsp;<span class="auto-style11"><span class="auto-style1"><strong style="font-size: x-large; color: #FFFFFF; text-align: left">Clock</strong></span><span class="auto-style12">:</span></span>
        <asp:Label ID="txt" runat="server" Text="Label" style="font-weight: 700; font-size: x-large; color: #FFFFFF"></asp:Label>
    </div>
        
       <div style="background-color:royalblue; width: 60%; margin-left:20%;height:304px">        
        <div>
    
        <div class="auto-style5">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style6"><strong style="color: #FFFFFF">Registration Page 
            <br />
            </strong></span>
        </div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style13"><strong>User name:</strong></td>
                <td class="auto-style4">
                    <asp:TextBox ID="un" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="un" ErrorMessage="User Name is required "></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><strong><span class="auto-style14">Email</span></strong><span class="auto-style14">:</span></td>
                <td class="auto-style4">
                    <asp:TextBox ID="email" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="Email is required "></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Enter a valid Email Address" ForeColor="#0000CC" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">Password:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="pass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="pass" ErrorMessage="password is required "></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Confirm password:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="conpass" runat="server" Height="18px" TextMode="Password" Width="180px"></asp:TextBox>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="conpass" ErrorMessage="confirm the password"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass" ControlToValidate="conpass" ErrorMessage="Both password must be same" ForeColor="Blue"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">Country:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="country" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="country" ErrorMessage="select your country"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" OnClientClick="regFunction()" style="font-weight: 700; color: #0000FF" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>

    </form>
    </div>
</body>
</html>
