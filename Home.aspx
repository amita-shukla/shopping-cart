<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageLoggedUser.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title> Home </title>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server"  >

    <asp:DataList ID="DataList1" runat="server" DataKeyField="Product Id" DataSourceID="SqlDataSource1" 
        RepeatColumns="3" RepeatDirection="Horizontal" CellPadding="4" 
        CssClass="center" ForeColor="#333333" >
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <ItemTemplate>
            <br />
            Product Name:
            <asp:Label ID="Product_NameLabel" runat="server" 
                Text='<%# Eval("[Product Name]") %>' />
            <br />         
            
          <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' />             
            <br />
            Price: Rs.
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" 
                Text='<%# Eval("Description") %>' />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Add To My Cart" 
                onclick="Button1_Click" CommandArgument='<%# Eval("[Product Id]") %>' />
                
            <br />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ShoppingCart1ConnectionString %>" 
        SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
    <br />
    <div class="center" >
    <asp:Button ID="Button2" runat="server" Text="View My Cart" 
        onclick="Button2_Click"/>
       </div>
</asp:Content>

