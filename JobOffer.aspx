<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JobOffer.aspx.cs" Inherits="JobOffer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Job Network</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 289px;
        }
        .auto-style2 {
            width: 395px;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            width: 395px;
            text-align: right;
            color: #FFFFFF;
        }
        .auto-style5 {
            font-size: x-large;
            color: #FFFFFF;
        }
    </style>
    <script language="javascript">
    function offerFunction()
{
alert("SuccessFully Updated Your Offer");
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
<body onload="startTime()" style="background-color:dodgerblue;width:100%">
    <h1><center style="color: #FFFFFF">Online Job Network</center></h1>
    <div style="margin-left:68%">
        &nbsp;<span class="auto-style11"><span class="auto-style1"><strong style="font-size: x-large; color: #FFFFFF; text-align: left">Clock</strong></span><span class="auto-style5">:</span></span>
        <asp:Label ID="txt" runat="server" Text="Label" style="font-weight: 700; font-size: x-large; color: #FFFFFF"></asp:Label>
    </div>

    <div style="background-color:royalblue; width: 60%; margin-left:20%;height:304px">

    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">Profession:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1p" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Country:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2c" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Company:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox3co" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Number of Vacant post:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox4n" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Starting Salary:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox5s" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Deadline:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Address:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Contact&nbsp; Number: </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Email Address:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="ButtonUp" runat="server" OnClick="ButtonUp_Click" Text="Update" OnClientClick="offerFunction()" />
                </td>
            </tr>
        </table>
    </form>
        </div>
</body>
</html>
