<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />

    
        <asp:DropDownList ID="Textbox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="country" DataValueField="country">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:newDATABASEConnectionString %>" SelectCommand="SELECT [country] FROM [jobTable]"></asp:SqlDataSource>

    
    </div>
        <br />
        <br />
        <asp:GridView ID="grd" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
