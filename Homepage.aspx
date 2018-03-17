<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<!DOCTYPE html>

<html>
<head>
    <title>
        Online Job Network
        
    </title>
    <link rel="stylesheet" type="text/css" href="7u.css" />

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <style type="text/css">
        .btn {
            width: 0px;
            height: 18px;
        }
    </style>
</head>
<body>


    <form id="form1" runat="server">


    <div class="absolute1">
        <img src="3710772.jpg" style="width:157px;height:228px;">
        <ul class="ul1">
            <li><a href="#home">Home</a></li>
            <li><a href="myprofile.aspx">My Profile</a></li>
            <li><a href="#Job Catagory">Job catagories</a></li>
            <li><a href="#companies">search company</a></li>
            <li><a href="jobnews.aspx">Job News</a></li>
            <li><a href="#Admin contact">Contact</a></li>
            <li><a href="feedback.aspx">Feedback</a></li>
            <li><a href="#about page">About</a></li>
            <li><asp:Button ID="Logout" runat="server" Text="Logout" OnClick="Logout_Click" style="text-align: center" BackColor="#3366FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Width="157px" />
                </li>
        </ul>
        <img src="preview.png" style="width:157px;height:228px;">
    </div>
    <div class="background">
        <div class="transbox">
            <p style="color:#006400"><b><center><i><font size="5">Pleasure In The Job Puts Perfection In The Work!!!</font></i></center></b></p>
        </div>
    </div>

    <div class="div6">
        <p class="ex2">
            Most reliable site for job seaching!!
            <img src="Find-A-Job-Keyboard.jpg" margin="40px" width="90px" align:"center" height:"80px">
        </p>
    </div>
    <div class="div4">
        <p style="color:navy">
            Framgia Bangladesh Limited
            <br>
            <font size="6">Technical Lead</font>
        </p>
        <p style="color:white">
            <u>Educational Qualification:</u><br>
            B.Sc in CSE<br>
            <u>The applicants should have experience in the following area(s):</u><br>
            Programmer/Software Engineer, Project Manager (IT System), Software Architect, Software Implementation, Technical Lead (Software), Team Leader (Software)
            <u>The applicants should have experience in the following business area(s):</u><br>
            BPO/ Data Entry Firm, IT Enabled Service <br>
            <u>DEADLINE:</u><br>
            01-01-2016
        </p>
    </div>
    <div class="div3">
        <p style="color:navy">
            Adaptive Enterprise Limited
            <br>
            <font size="6">Android Developer</font>
        </p>
        <p style="color:white">
            <u>Educational Qualification:</u><br>
            B.Sc in Computer Science/Equivalent Degree<br>
            <u>The applicants should have experience in the following area(s):</u><br>
            Mobile apps developer<br>
            <u>The applicants should have experience in the following business area(s):</u><br>
            Software Company <br>
            <u>DEADLINE:</u><br>
            01-03-2016
        </p>
    </div>
    <div class="div1">
        <p style="color:navy">
            Intraco Group
            <br>
            <font size="6">Social Media Specialist</font>
        </p>
        <p style="color:white">
            <u>Educational Qualification:</u><br>
            Graduate from any reputed University of Bangladesh<br>
            we are looking for a social media Executive who will work on managing multi brands online presence on social media,
            She/ he MUST have Experience of 3 years in the field of social media optimization with some online influence in his circle.
            And have command in Engish language.
            <br>
            <u>DEADLINE:</u><br>
            01-03-2016
        </p>
    </div>
    <div class="div8">

        <img src="business-man-resume.jpg" style="width:530px;height:318px;">
    </div>
    <div class="absolute2">
        <img src="Fotolia_44799684_M.jpg" style="width:300px;height:228px;">
        <div class="container-1">
            
            
            <span class="icon"><i class="fa fa-search"></i></span>
            &nbsp;<div class="container">
                <asp:Button ID="ButtonPro" runat="server" Text="Search by Profession" OnClick="ButtonPro_Click" Width="180px" />
            </div>
        </div>
        <div class="container-1">
            <span class="icon"><i class="fa fa-search"></i></span>
            &nbsp;<div class="container">
                <asp:Button ID="ButtonCon" runat="server" Text="Search by Country" OnClick="ButtonCon_Click" Width="180px" />
            </div>
        </div>
        <div class="container-1">
            <span class="icon"><i class="fa fa-search"></i></span>&nbsp;<div class="container">
                <asp:Button ID="Button5" runat="server" Text="Button" />
            </div>
        </div>

        <br>
        <br>
        <img src="DreamJobSign.jpg" style="width:300px;height:228px;">
    </div>
    <div class="div5">

        <h1><font color="white">Online Job Network<br />
            <asp:Label runat="server" Text="welcome...." ID="welcome"></asp:Label>
            </font></h1>
    </div>
    <div class="div2"><center>&copy;1307048</center></div>
    </form>
</body>

</html>
