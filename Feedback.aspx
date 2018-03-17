<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<!DOCTYPE html>
<script runat="server">

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 378px;
        }
        .auto-style2 {
            width: 207px;
            height: 58px;
        }
        .auto-style3 {
            width: 237px;
            height: 58px;
        }
        .auto-style12 {
            height: 72px;
            font-weight: 700;
            color: #FFFFFF;
        }
        .auto-style13 {
            font-size: x-large;
            font-weight: bold;
            color: #FFFFFF;
        }
        .auto-style15 {
            height: 109px;
        }
        .auto-style18 {
            width: 207px;
            height: 109px;
            text-align: right;
            font-size: x-large;
            color: #FFFFFF;
            font-weight: bold;
        }
        .auto-style19 {
            width: 237px;
            height: 109px;
        }
        #form1 {
            height: 402px;
        }
        .auto-style20 {
            height: 58px;
        }
        .auto-style21 {
            width: 207px;
            height: 72px;
            text-align: right;
            font-size: x-large;
            color: #FFFFFF;
            font-weight: bold;
        }
        .auto-style22 {
            width: 237px;
            height: 72px;
        }
        .auto-style23 {
            width: 207px;
            height: 56px;
            text-align: right;
            font-size: x-large;
            color: #FFFFFF;
            font-weight: bold;
        }
        .auto-style24 {
            width: 237px;
            height: 56px;
        }
        .auto-style25 {
            height: 56px;
        }
        .auto-style26 {
            font-size: medium;
            font-weight: bold;
            color: #000066;
        }
    </style>
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
<body onload="startTime()" style="background-color:dodgerblue">
    <div class="div5">
    <h1><font color="white"><center>Online Job Network</center>
            
            </font></h1>
        </div>
        <div style="background-color:royalblue; width: 60%; margin-left:20%;height:464px">

    <form id="form1" runat="server">
    <div>
    
    &nbsp;&nbsp;
        <asp:Label ID="welcome" runat="server" Text="Welcome...." CssClass="auto-style13"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="txt" runat="server" Text="Label" CssClass="auto-style13"></asp:Label>
    
        <br />
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style23">User Name:</td>
                <td class="auto-style24">
                    <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style25"></td>
            </tr>
            <tr>
                <td class="auto-style21">Email:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBox2" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter a Valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">Comment:</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Height="100px" style="margin-bottom: 71px" Width="180px" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Back to Home" CssClass="auto-style26" />
                </td>
                <td class="auto-style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Comment" CssClass="auto-style26" />
                </td>
                <td class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Log out" CssClass="auto-style26" OnClick="Button3_Click" />
                </td>
            </tr>
        </table>
    </form>
            </div>
</body>
</html>
