<%@ Page Title="" Language="C#" MasterPageFile="~/Kereta.Master" AutoEventWireup="true" CodeBehind="Records.aspx.cs" Inherits="CarsProject.Records" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        text-decoration: underline;
        color: #FF00FF;
        font-size: x-large;
    }
        .auto-style9 {
            color: #FF00FF;
            font-size: x-large;
        }
        .auto-style11 {
        color: #FF00FF;
    }
    .auto-style12 {
        color: #FF00FF;
        font-size: medium;
    }
        .auto-style13 {
            text-decoration: underline;
            color: #FF00FF;
            font-size: x-large;
            width: 1432px;
            height: 59px;
        }
        .auto-style14 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style13">
    Buyer Records</p>
<p class="auto-style9">
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display." Width="1426px" ForeColor="Fuchsia">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="telephone" HeaderText="telephone" SortExpression="telephone" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BuyerConnectionString1 %>" ProviderName="<%$ ConnectionStrings:BuyerConnectionString1.ProviderName %>" SelectCommand="SELECT [name], [address], [telephone] FROM [customers]"></asp:SqlDataSource>
    </p>
    <span class="auto-style8">Cars Bought Records<br />
    <br />
    </span>
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CssClass="auto-style14" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Fuchsia" Height="224px" Width="1428px">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="CarsBought" HeaderText="CarsBought" SortExpression="CarsBought" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BuyerConnectionString1 %>" DeleteCommand="DELETE FROM [Salesty] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Salesty] ([Name], [CarsBought], [Price]) VALUES (@Name, @CarsBought, @Price)" ProviderName="<%$ ConnectionStrings:BuyerConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [Name], [CarsBought], [Price] FROM [Salesty]" UpdateCommand="UPDATE [Salesty] SET [Name] = @Name, [CarsBought] = @CarsBought, [Price] = @Price WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="CarsBought" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="CarsBought" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <span class="auto-style8">
    <br />
    <br />
    </span><span class="auto-style9">TOTAL PRICE:-<br />
</span><br class="auto-style9" />
    <asp:Label ID="lbltotalprice" runat="server" CssClass="auto-style9"></asp:Label>
    <br />
    <br />
            <asp:Button ID="Button1" runat="server" BackColor="Fuchsia" BorderColor="#660066" BorderStyle="Outset" CssClass="auto-style6" Font-Names="Curlz MT" ForeColor="#660066" Text="Total Price" Width="142px" OnClick="Button1_Click" />
        <br />
    <br />
<span class="auto-style9">UPDATE:-<br />
</span><span class="auto-style11">Cars<br />
</span><span class="auto-style9">
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<br />
</span><span class="auto-style12">Price</span><span class="auto-style9"><br />
</span>
<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
<br />
    <br />
        <br />
    <asp:Button ID="Button3" runat="server" BackColor="Fuchsia" BorderColor="Black" CssClass="auto-style6" Font-Names="Curlz MT" ForeColor="#660066" Height="41px" OnClick="Button3_Click" Text="Update" Width="129px" />
<br />
    <br />
    </asp:Content>
