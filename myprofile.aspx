<%@ Page Language="C#" AutoEventWireup="true" CodeFile="myprofile.aspx.cs" Inherits="myprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 303px;
            font-size: large;
            font-weight: bold;
            color: #FFFFFF;
        }
        .auto-style3 {
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style4 {
            width: 303px;
            height: 16px;
            font-size: large;
            font-weight: bold;
            color: #FFFFFF;
        }
        .auto-style5 {
            height: 16px;
        }
        .auto-style6 {
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style7 {
            height: 16px;
            font-weight: bold;
        }
        .auto-style8 {
            font-size: large;
            font-weight: bold;
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
<body onload="startTime()" style="background-color:dodgerblue;width:100%">
    <h1><center style="color: #FFFFFF">Online Job Network</center></h1>
    <div style="margin-left:68%">
        &nbsp;<span class="auto-style11"><span class="auto-style1"><strong style="font-size: x-large; color: #FFFFFF; text-align: left">Clock</strong></span><span class="auto-style3">:</span></span>
        <asp:Label ID="txt" runat="server" Text="Label" style="font-weight: 700; font-size: x-large; color: #FFFFFF"></asp:Label>
    </div>
    <div style="background-color:royalblue; width: 60%; margin-left:20%;height:304px">


 
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Labelpro" runat="server" Text="welcome......"></asp:Label>
    
    </div>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">User Name:</td>
                    <td class="auto-style7">
                        <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style6"></asp:Label>
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style2">Email:</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Label" CssClass="auto-style8"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Country:</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Label" CssClass="auto-style8"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
        </div>
</body>
</html>
