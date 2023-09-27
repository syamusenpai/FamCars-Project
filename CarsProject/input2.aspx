<%@ Page Title="" Language="C#" MasterPageFile="~/Kereta.Master" AutoEventWireup="true" CodeBehind="input2.aspx.cs" Inherits="CarsProject.input2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style10 {
        text-decoration: underline;
        color: #FF00FF;
        font-size: large;
    }
    .auto-style14 {
        color: #FF66FF;
        font-size: large;
    }
    .auto-style16 {
        width: 442px;
        height: 205px;
    }
    .auto-style17 {
        width: 430px;
        height: 179px;
    }
    .auto-style18 {
        width: 451px;
        height: 247px;
    }
    .auto-style19 {
        width: 406px;
        height: 265px;
    }
    .auto-style20 {
        font-size: large;
        color: #FF99FF;
    }
        .auto-style21 {
            text-decoration: underline;
            color: #FF00FF;
            font-size: large;
            text-align: center;
        }
        .auto-style22 {
            color: #FF66FF;
            font-size: large;
            text-align: center;
        }
        .auto-style23 {
            font-size: large;
            color: #FF99FF;
            text-align: center;
        }
        .auto-style24 {
            text-decoration: underline;
            text-align: center;
            width: 1435px;
            height: 267px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style2">
    WHICH CAR DO YOU WANT TO BUY ?</p>
<p class="auto-style21">
    PERODUA ATIVA<asp:CheckBox ID="AtivaCB" runat="server" />
</p>
<p class="auto-style24">
    <img alt="" class="auto-style19" src="Pics/cefb7c7a47ad4da585247546a3a039e4_268x180.png" /></p>
<p class="auto-style23">
    -Manufacture by Perodua</p>
<p class="auto-style23">
    -1000CC</p>
<p class="auto-style23">
    -RM 71,200</p>
<p class="auto-style23">
    &nbsp;</p>
<p class="auto-style21">
    PERODUA ARUZ<asp:CheckBox ID="AruzCB" runat="server" />
</p>
<p class="auto-style21">
    <img alt="" class="auto-style18" src="Pics/54d33be154f648caa2e3dfb3e73041e4_thumbnail.png" /></p>
<p class="auto-style23">
    -Manufacture by Perodua</p>
<p class="auto-style23">
    -1500CC</p>
<p class="auto-style23">
    -RM 73,266</p>
<p class="auto-style22">
    &nbsp;</p>
<p class="auto-style21">
    NISSAN ALMERA<asp:CheckBox ID="AlmeraCB" runat="server" />
</p>
<p class="auto-style21">
    <img alt="" class="auto-style17" src="Pics/NEW-Overview-3-Grades-VL-1024x512.png" /></p>
<p class="auto-style20">
    -Manufacture by Nissan</p>
<p class="auto-style20">
    -1500CC</p>
<p class="auto-style20">
    -RM 92,310</p>
<p class="auto-style14">
    &nbsp;</p>
<p class="auto-style10">
    NISSAN X-TRAIL<asp:CheckBox ID="XtrailCB" runat="server" />
</p>
<p class="auto-style10">
    <img alt="" class="auto-style16" src="Pics/2.0L-2WD.png-1024x528.png" /></p>
<p class="auto-style20">
    -Manufacture by Nissan</p>
<p class="auto-style20">
    -2500CC</p>
<p class="auto-style20">
    -RM 159,888</p>
<p class="auto-style20">
    &nbsp;</p>
<p class="auto-style20">
            <asp:Button ID="Button1" runat="server" BackColor="Fuchsia" BorderColor="#660066" BorderStyle="Outset" CssClass="auto-style6" Font-Names="Curlz MT" ForeColor="#660066" Text="Confirm Order" Width="227px" Height="47px" OnClick="Button1_Click" />
        </p>
</asp:Content>
