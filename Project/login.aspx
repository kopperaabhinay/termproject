<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Project.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
	background-image: url(./image1.jfif);
	height:100vh;
	background-size: cover;
	background-position: center;
    background-repeat:no-repeat;
	
}
.form {
	font-family: 'Mukta', sans-serif;
    color:#B8B8B8;
	position: relative;
	z-index: 1;
    top:18%;
	background:rgba(30,30,30, 0.9);
	max-width: 460px;
	margin: 0 auto 100px;
	padding: 45px;
	text-align: center;
}
        .auto-style1 {
            margin-right: 0px;
        }
            .header{
            
            background:rgb(128, 255, 128);
            margin:0px,auto;
            position:fixed;
            width:100%;
            top:0;
            left:0;
            
        }
        .header h1{
            margin-left:30px;
        }
    </style>
    
    
</head>
<body>
     <div class="header">
    <h1>Music Connect</h1>
     </div>

    <form id="form1" runat="server" class="form">
        
        <p>
            <asp:Image ID="Image1" runat="server" CssClass="auto-style1" Height="55px" ImageUrl="~/logo.jpg" Width="156px" />
        </p>
        <h3>Music Connect</h3>
        <h3>Connecting Music listeners to various genres of music</h3>
        <div>
            Username&nbsp; <asp:TextBox ID="TextBox1" runat="server" Width="358px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            &nbsp;<asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <br />
            Password&nbsp; <asp:TextBox ID="TextBox2" runat="server" Width="358px" TextMode="Password"></asp:TextBox>
            &nbsp;<asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <br />


            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign-In" />


            &nbsp;&nbsp;&nbsp;


            <asp:Button ID="Button2" runat="server" Text="Sign-up" PostBackUrl="~/Signup.aspx" />
            <br />
            <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Email], [Password] FROM [User_info]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>


