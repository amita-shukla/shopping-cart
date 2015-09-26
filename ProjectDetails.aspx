<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageLoggedUser.master" AutoEventWireup="true" CodeFile="ProjectDetails.aspx.cs" Inherits="ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<p>
This project is an implementation of a Shopping Cart System that lets shoppers collect items into a shopping cart,
edit the quantity of each item or delete the item altogether.
</p>
<p>
Any anonymous user is welocmed by a login screen. Only a registered user can add items into the shopping cart. The user is taken to the home page 
only if user credentials (username and password) match. A new user can, anyways, create an account, with a username that is available.
It is mandatory to have a password length of minimum 7 characters with atleast one non-alpha numeric character.
Once a user is created, he is redirected to the home screen. 
</p>
<p>
The home screen contains the details of each project
</p>
</asp:Content>

