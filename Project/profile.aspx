<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Project.profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Music Connect</title>
    <style>
          .header{
            
            background:rgb(128, 255, 128);
            margin:0px,auto;
            position:fixed;
            width:100%;
            top:0;
            left:0;
            
        }
        .header h1{
            margin-left:265px;
        }
        *{
  margin:0px;
  padding:0px;
  font-family:sans-serif;
  
}
#sidebar{
  position:fixed;
  width:250px;
  height:100%;
  background:#151719;
  left:-250px;
  transition:all 500ms linear;
}
#sidebar.active{
  left:0px;
}
#sidebar ul li{
  color:rgba(230,230,230,0.9);
  list-style:none;
  padding:15px 10px;
  border-bottom:1px solid rgba(100,100,100,0.3)
}
#sidebar .toggle-bar{
  position:absolute;
  left:280px;
  top:50px;
}
#sidebar .toggle-bar span{
  display:block;
  width:30px;
  height:5px;
  background:#151719;
  margin:3px 0px;
}
#dropdown{
  display: none
}
#dropdown.active{
  display:block;
}

    </style>
    <script>
function toggleSidebar(){
  document.getElementById("sidebar").classList.toggle('active');
}
  document.getElementById("menu").addEventListner("click",openMenu);
function openMenu(){
  document.getElementById("dropdown").classList.toggle("active");
}
function myFunction(){
  location.replace("form.html");
}
</script>
</head>
<body>
      <div class="header">
    <h1>Music Connect</h1>
     </div>
<div id="sidebar">
  <div class="toggle-bar" onclick="toggleSidebar()">
    <span></span>
    <span></span>
    <span></span>
  </div> 
<ul runat="server">
    <li>
         <asp:Image ID="Image1" runat="server" Height="180px" ImageUrl="" Width="180px"  style="border-radius: 50%;" BorderStyle="Double" />
    </li>
    <li>
        <asp:Label ID="Label1" runat="server" Text="" Width="170px"></asp:Label>
    </li>
    <li>
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    </li>
  <li id="menu" onclick="openMenu()"><h3>Account</h3>
    <ul id="dropdown" class="active">
      <li><a href="">Edit Profile</a></li>
      <li><a href="login.aspx" style="text-decoration: none">logout</a></li>
  </ul>
  </li>
  <li>Contact Us</li>
</ul>
</div>
   
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [User_info] WHERE [Email] = @Email" InsertCommand="INSERT INTO [User_info] ([FirstName], [LastName], [Email], [Password], [DOB_Date], [DOB_Month], [DOB_Year], [Gender], [MusicGenre], [image]) VALUES (@FirstName, @LastName, @Email, @Password, @DOB_Date, @DOB_Month, @DOB_Year, @Gender, @MusicGenre, @image)" SelectCommand="SELECT * FROM [User_info] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [User_info] SET [FirstName] = @FirstName, [LastName] = @LastName, [Password] = @Password, [DOB_Date] = @DOB_Date, [DOB_Month] = @DOB_Month, [DOB_Year] = @DOB_Year, [Gender] = @Gender, [MusicGenre] = @MusicGenre, [image] = @image WHERE [Email] = @Email">
        <DeleteParameters>
            <asp:Parameter Name="Email" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="DOB_Date" Type="String" />
            <asp:Parameter Name="DOB_Month" Type="String" />
            <asp:Parameter Name="DOB_Year" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="MusicGenre" Type="String" />
            <asp:Parameter Name="image" Type="Object" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="Email" SessionField="username" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="DOB_Date" Type="String" />
            <asp:Parameter Name="DOB_Month" Type="String" />
            <asp:Parameter Name="DOB_Year" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="MusicGenre" Type="String" />
            <asp:Parameter Name="image" Type="Object" />
            <asp:Parameter Name="Email" Type="String" />
        </UpdateParameters>
      </asp:SqlDataSource>
</body>
</html>
