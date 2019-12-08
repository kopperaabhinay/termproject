<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Project.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .table{
            margin-top:35px;

        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:FileUpload ID="FileUpload1" runat="server" />
    &nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="edit profile picture" OnClick="Button1_Click" />
&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
&nbsp;<br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Email" DataSourceID="SqlDataSource2" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="485px">
        <Fields>
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" ReadOnly="True" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="DOB_Date" HeaderText="DOB_Date" SortExpression="DOB_Date" />
            <asp:BoundField DataField="DOB_Month" HeaderText="DOB_Month" SortExpression="DOB_Month" />
            <asp:BoundField DataField="DOB_Year" HeaderText="DOB_Year" SortExpression="DOB_Year" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="MusicGenre" HeaderText="MusicGenre" SortExpression="MusicGenre" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
    </asp:DetailsView>
    </br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [User_info] WHERE [Email] = @Email" InsertCommand="INSERT INTO [User_info] ([FirstName], [LastName], [Email], [Password], [DOB_Date], [DOB_Month], [DOB_Year], [Gender], [MusicGenre]) VALUES (@FirstName, @LastName, @Email, @Password, @DOB_Date, @DOB_Month, @DOB_Year, @Gender, @MusicGenre)" SelectCommand="SELECT [FirstName], [LastName], [Email], [Password], [DOB_Date], [DOB_Month], [DOB_Year], [Gender], [MusicGenre] FROM [User_info]" UpdateCommand="UPDATE [User_info] SET [FirstName] = @FirstName, [LastName] = @LastName, [Password] = @Password, [DOB_Date] = @DOB_Date, [DOB_Month] = @DOB_Month, [DOB_Year] = @DOB_Year, [Gender] = @Gender, [MusicGenre] = @MusicGenre WHERE [Email] = @Email">
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
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="DOB_Date" Type="String" />
            <asp:Parameter Name="DOB_Month" Type="String" />
            <asp:Parameter Name="DOB_Year" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="MusicGenre" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
