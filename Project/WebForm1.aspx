<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Project.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style1 {
            height: 25px;
        }
        .auto-style3 {
        height: 25px;
        width: 376px;
    }
        .auto-style4 {
            text-align:center;
            margin-top:15px;
            margin-left:300px;
        width: 731px;
    }
        .border{
            margin-left:530px;
            border-radius:30px;

        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Width="270px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
&nbsp;&nbsp;
    <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
    </br>
    <asp:Label ID="Label1" runat="server" Text="" Height="180px" Width="180px" CssClass="border" ></asp:Label>
    <table class="auto-style4">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
            </td>
           
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                </td>
            <td class="auto-style1">
                <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                </td>
            <td class="auto-style1">
                <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
            </td>
            
        </tr>
    </table>
</asp:Content>
