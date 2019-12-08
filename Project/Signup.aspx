<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Project.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Music Connect</title>
 
    <style>
        body{
	background-image:url(./image1.jfif);
	height:100vh;
	background-size: cover;
	background-position: center;
    background-repeat:no-repeat;
	
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
.form {
	font-family: 'Mukta', sans-serif;
    color:#B8B8B8;
	position: relative;
	z-index: 1;
    top:20%;
	background:rgba(30,30,30, 0.9);
	max-width: 360px;
	margin: 0 auto 100px;
	padding: 45px;
	
}
        .auto-style2 {
            height: 26px;
            width: 985px;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            height: 26px;
            width: 260px;
        }
        .auto-style5 {
            width: 260px;
        }
        .auto-style6 {
            width: 985px;
        }
        .auto-style7 {
            margin-left: 0px;
        }
        .auto-style9 {
            height: 26px;
            width: 97px;
        }
        .auto-style10 {
            height: 26px;
            width: 93px;
        }
        .auto-style11 {
            height: 24px;
            width: 118px;
        }
        .auto-style12 {
            width: 260px;
            height: 29px;
        }
        .auto-style13 {
            width: 985px;
            height: 29px;
        }
        .auto-style14 {
            width: 260px;
            height: 33px;
        }
        .auto-style15 {
            width: 985px;
            height: 33px;
        }
        .auto-style16 {
            margin-left: 5px;
        }
        .auto-style17 {
            height: 26px;
            width: 64px;
        }
        .auto-style18 {
            margin-left: 6px;
        }
    </style>
</head>

<body>
   
        <div class="header">
    <h1>Music Connect</h1>
     </div>
    
    
    <form id="form1" runat="server" class="form">
        <div>
            <table class="auto-style3">
                <tr>
                    <td class="auto-style4">First Name</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style7"></asp:TextBox></td>
                   
                </tr>
                <tr>
                    <td class="auto-style12">Last Name</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style14">Email </td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Email" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                    &nbsp;<asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    </td>
                  
                </tr>
                <tr>
                    <td class="auto-style14">

                        Password</td>
                    <td class="auto-style15">

                        <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" ></asp:TextBox>

                    </td>
                    
                </tr> 
                  <tr>
                    <td class="auto-style5">

                        Retype Password</td>
                    <td class="auto-style6">

                        <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" ></asp:TextBox>

                    </td>
                    
                </tr>  
                    
                </table>
            <table>
                <tr>
                    <td class="auto-style11">

                        Age</td>
                    <td class="auto-style9">

                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style16">
                            <asp:ListItem>January</asp:ListItem>
                            <asp:ListItem>February</asp:ListItem>
                            <asp:ListItem>March</asp:ListItem>
                            <asp:ListItem>April</asp:ListItem>
                            <asp:ListItem>May</asp:ListItem>
                            <asp:ListItem>June</asp:ListItem>
                            <asp:ListItem>July</asp:ListItem>
                            <asp:ListItem>August</asp:ListItem>
                            <asp:ListItem>September</asp:ListItem>
                            <asp:ListItem>October</asp:ListItem>
                            <asp:ListItem>November</asp:ListItem>
                            <asp:ListItem>December</asp:ListItem>
                            <asp:ListItem>Month</asp:ListItem>
                        </asp:DropDownList>

                    </td>
                     <td class="auto-style17">

                         <asp:DropDownList ID="DropDownList2" runat="server">
                             <asp:ListItem>Day</asp:ListItem>
                         </asp:DropDownList>
                    </td>
                    <td class="auto-style10">

                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style7">
                            <asp:ListItem>Year</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>

                    </td>
                </tr>
                </table>
            <table>
                <tr>
                    <td class="auto-style4">

                        Gender</td>
                    <td class="auto-style2">

                        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="auto-style16">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>

                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style12">

                        Music Genre</td>
                    <td class="auto-style13">

                        <asp:DropDownList ID="DropDownList5" runat="server" CssClass="auto-style18">
                            <asp:ListItem>Classical</asp:ListItem>
                            <asp:ListItem>Rock</asp:ListItem>
                            <asp:ListItem>Pop</asp:ListItem>
                            <asp:ListItem>Jazz</asp:ListItem>
                            <asp:ListItem>Hip Hop</asp:ListItem>
                            <asp:ListItem>Folk</asp:ListItem>
                            <asp:ListItem>Electronic Dance</asp:ListItem>
                            <asp:ListItem>Blues</asp:ListItem>
                            <asp:ListItem>Instrumental</asp:ListItem>
                            <asp:ListItem>Techno</asp:ListItem>
                            <asp:ListItem>Rap</asp:ListItem>
                            <asp:ListItem>Trance</asp:ListItem>
                            <asp:ListItem>RnB</asp:ListItem>
                            <asp:ListItem>Soul</asp:ListItem>
                            <asp:ListItem>Country</asp:ListItem>
                        </asp:DropDownList>

                    </td>
                </tr>
            
            </table>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
            <br />
            To login to your account&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Sign-in" PostBackUrl="~/login.aspx" />
            <br />
            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [User_info]">
            </asp:SqlDataSource>
        </div>
    </form>
    </body>
</html>
