<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAnonymous.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
            CancelDestinationPageUrl="~/Login.aspx" 
            ContinueDestinationPageUrl="~/Home.aspx" 
            DuplicateUserNameErrorMessage="User Id not avialable. Please enter a different user name." 
            FinishDestinationPageUrl="~/Home.aspx" CssClass="center" 
            BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderStyle="Solid" BorderWidth="1px" 
            DisplayCancelButton="True" Font-Names="Verdana" Font-Size="1em" Height="387px" 
            Width="355px">
            <ContinueButtonStyle BackColor="White" BorderColor="#CC9966" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                ForeColor="#990000" />
            <CreateUserButtonStyle BackColor="White" BorderColor="#CC9966" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                ForeColor="#990000" />
            <TitleTextStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFFF" />
            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server" />
                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server" />
            </WizardSteps>
            <HeaderStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#333333" 
                HorizontalAlign="Center" BorderColor="#FFFBD6" BorderStyle="Solid" 
                BorderWidth="2px" Font-Size="1em" />
            <NavigationButtonStyle BackColor="White" BorderColor="#CC9966" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                ForeColor="#990000" />
            <SideBarButtonStyle 
                ForeColor="#FFFFFF" />
            <SideBarStyle BackColor="#990000" Font-Size="1em" 
                VerticalAlign="Top" />
        </asp:CreateUserWizard>
</asp:Content>

