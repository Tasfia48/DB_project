<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_login.aspx.cs" Inherits="Admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     

    <title>Online Job Network</title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
            height: 262px;
        }
        .auto-style3 {
            width: 156px;
            font-size: medium;
            color: #FFFFFF;
        }
        .auto-style4 {
            font-size: medium;
        }
        .auto-style5 {
            width: 255px;
        }
        .auto-style6 {
            width: 255px;
            text-align: left;
        }
        .auto-style7 {
            font-size: medium;
            text-align: left;
            width: 521px;
        }
        .auto-style8 {
            width: 521px;
            text-align: left;
        }
        .auto-style11 {
            font-size: x-large;
            color: #FFFFFF;
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
    <div style="margin-left:68%">
        <span class="auto-style11"><span class="auto-style1"><strong style="font-size: x-large; color: #FFFFFF">Clock</strong></span>:</span>
        <asp:Label ID="txt" runat="server" Text="Label" style="font-weight: 700; font-size: x-large; color: #FFFFFF"></asp:Label>
    </div>
    <div style="background-color:royalblue; width: 60%; margin-left:20%;height:304px">
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <strong style="color: #FFFFFF">Admin Login</strong><table class="auto-style2">
            <tr>
                <td class="auto-style3">User Name:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1UNAd" runat="server" CssClass="auto-style4" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter correct User Name" ControlToValidate="TextBox1UNAd"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2PassAd" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                    <span class="auto-style4"></td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter correct password" ControlToValidate="TextBox2PassAd"></asp:RequiredFieldValidator>
                    </span></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log In" />
                    <span class="auto-style4"></td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:CheckBox ID="RM" runat="server" Text="Remember Me" style="color: #FFFFFF" />
                    <span class="auto-style4"></td>
                <td class="auto-style8"></span></td>
            </tr>
        </table>
    
    </div>
    </form>
        </div>
</body>
</html>
