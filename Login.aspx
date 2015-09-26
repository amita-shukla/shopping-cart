<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAnonymous.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Login ID="Login1" runat="server" CreateUserText="Create User" 
            CreateUserUrl="~/Registration.aspx" DestinationPageUrl="~/Home.aspx" 
            DisplayRememberMe="False" TitleText="Log In To Proceed!!" 
        CssClass="center" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderStyle="Solid" 
        BorderWidth="1px" Font-Names="Verdana" Font-Size="1em" Height="267px" 
        Width="277px" BorderPadding="4" ForeColor="#333333" TextLayout="TextOnTop">
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <LoginButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" 
            BorderWidth="1px" Font-Names="Verdana" Font-Size="1em" ForeColor="#990000" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFFF" 
            Font-Size="1em" />
        </asp:Login>
</asp:Content>

