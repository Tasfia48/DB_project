<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userspage.aspx.cs" Inherits="userspage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Job Network</title>
</head>
<body style="background-color:dodgerblue">
    <h1><font color="white"><center>Online Job Network</center>
            
            </font></h1>
    <form id="form1" runat="server">
    <div style="height: 82px;margin-left:30%">
    
        <asp:Label ID="welcome" runat="server" Text="Registration is Completed!!" style="font-size: xx-large; color: #FFFFFF"></asp:Label>
        <br />
        <asp:Button ID="Buttonlogout" runat="server" OnClick="Buttonlogout_Click" Text="Back to home" style="font-size: large; font-weight: 700; color: #0000CC" />
    
    </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
