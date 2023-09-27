<%@ Page Title="" Language="C#" MasterPageFile="~/Kereta.Master" AutoEventWireup="true" CodeBehind="Input.aspx.cs" Inherits="CarsProject.Input" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            color: #FF00FF;
            text-align: left;
        }
    .auto-style10 {
        color: #FF00FF;
        text-align: left;
        text-decoration: underline;
    }
        .auto-style11 {
            color: #FF00FF;
            font-size: large;
            text-decoration: underline;
            width: 1431px;
            height: 39px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style11">
        CAR FOR SALE</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CarID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Fuchsia" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1434px">
            <Columns>
                <asp:BoundField DataField="CarID" HeaderText="CarID" ReadOnly="True" SortExpression="CarID" />
                <asp:BoundField DataField="ManufacturerName" HeaderText="ManufacturerName" SortExpression="ManufacturerName" />
                <asp:BoundField DataField="ModelName" HeaderText="ModelName" SortExpression="ModelName" />
                <asp:BoundField DataField="CarsCC" HeaderText="CarsCC" SortExpression="CarsCC" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CarsforsaleConnectionString1 %>" DeleteCommand="DELETE FROM [CarsForSale] WHERE [CarID] = @CarID" InsertCommand="INSERT INTO [CarsForSale] ([CarID], [ManufacturerName], [ModelName], [CarsCC], [Price]) VALUES (@CarID, @ManufacturerName, @ModelName, @CarsCC, @Price)" ProviderName="<%$ ConnectionStrings:CarsforsaleConnectionString1.ProviderName %>" SelectCommand="SELECT [CarID], [ManufacturerName], [ModelName], [CarsCC], [Price] FROM [CarsForSale]" UpdateCommand="UPDATE [CarsForSale] SET [ManufacturerName] = @ManufacturerName, [ModelName] = @ModelName, [CarsCC] = @CarsCC, [Price] = @Price WHERE [CarID] = @CarID">
            <DeleteParameters>
                <asp:Parameter Name="CarID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CarID" Type="Int32" />
                <asp:Parameter Name="ManufacturerName" Type="String" />
                <asp:Parameter Name="ModelName" Type="String" />
                <asp:Parameter Name="CarsCC" Type="Int32" />
                <asp:Parameter Name="Price" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ManufacturerName" Type="String" />
                <asp:Parameter Name="ModelName" Type="String" />
                <asp:Parameter Name="CarsCC" Type="Int32" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="CarID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p class="auto-style10">
        BUYER DETAILS</p>
    <p class="auto-style9">
        Name :
        <asp:TextBox ID="txtname" runat="server" ForeColor="White" Width="378px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Please Enter Your Name" ForeColor="Red">*</asp:RequiredFieldValidator>
    </p>
    <p class="auto-style9">
        Address:
        <asp:TextBox ID="txtaddress" runat="server" Width="363px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtaddress" ErrorMessage="Please enter Your Address" ForeColor="Red">*</asp:RequiredFieldValidator>
    </p>
    <p class="auto-style9">
        No. Phone :
        <asp:TextBox ID="txtphone" runat="server" Width="213px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtphone" ErrorMessage="Please Enter Your Phone Number" ForeColor="Red" ValidationExpression="^(\+?6?01)[02-46-9]-*[0-9]{7}$|^(\+?6?01)[1]-*[0-9]{8}$">*</asp:RegularExpressionValidator>
    </p>
<p class="auto-style9"> 
            <asp:Button ID="Button1" runat="server" BackColor="Fuchsia" BorderColor="#660066" BorderStyle="Outset" Font-Names="Curlz MT" ForeColor="#660066" Text="Continue" Width="116px" Height="43px" OnClick="Button1_Click"  />
    
    </p>
    <p> 
        &nbsp;</p>
    <p class="auto-style9">
        </p>
<div class="auto-style4">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
</div>

</asp:Content>
