<%@ Page Title="" Language="C#" MasterPageFile="~/Kereta.Master" AutoEventWireup="true" CodeBehind="Output.aspx.cs" Inherits="CarsProject.Output" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        color: #FF66FF;
        font-size: x-large;
        text-decoration: underline;
        text-align: left;
    }
    .auto-style10 {
        color: #FF66FF;
        font-size: x-large;
        text-align: left;
    }
    .auto-style11 {
        color: #FF66FF;
        font-size: x-large;
    }
    .auto-style12 {
        font-size: small;
        margin-left: 0px;
    }
        .auto-style13 {
            color: #FF66FF;
            font-size: xx-large;
            width: 1435px;
            height: 1px;
        }
        .auto-style14 {
            color: #FF66FF;
            font-size: xx-large;
            width: 1443px;
            height: 77px;
        }
        .auto-style15 {
            color: #FF66FF;
            font-size: xx-large;
            width: 1435px;
            height: 125px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style15">
    ORDER CONFIRMED !</p>
<p class="auto-style14">
    THANK YOU
    <asp:Label ID="lblname" runat="server"></asp:Label>
&nbsp;FOR YOUR PURCHASE !</p>
<p class="auto-style9">
    Order Details</p>
<p class="auto-style10">
    Name :<asp:Label ID="lblname2" runat="server"></asp:Label>
</p>
<p class="auto-style10">
    Car Bought :<asp:Label ID="lblcar" runat="server"></asp:Label>
</p>
<p class="auto-style10">
    Contacts :
    <asp:Label ID="lblcontacts" runat="server"></asp:Label>
</p>
<p class="auto-style10">
    Total Price :<asp:Label ID="lblprice" runat="server"></asp:Label>
</p>
<p class="auto-style11">
            <asp:Button ID="Button1" runat="server" BackColor="Fuchsia" BorderColor="#660066" BorderStyle="Outset" CssClass="auto-style12" Font-Names="Copperplate Gothic Bold" ForeColor="#660066" Text="Check Buyer Records" Width="220px" Height="22px" OnClick="Button1_Click" />
        </p>
<p class="auto-style13">
    &nbsp;</p>
</asp:Content>
