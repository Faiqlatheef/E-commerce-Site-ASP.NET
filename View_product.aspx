<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="View_product.aspx.cs" Inherits="Online_Shopping_Backup.View_product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Export to PDF" />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="P_ID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Height="400px" Width="915px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>

            <asp:BoundField DataField="P_ID" HeaderText="P_ID" InsertVisible="False" ReadOnly="True" SortExpression="P_ID" />
            <asp:BoundField DataField="Product_name" HeaderText="Product_name" SortExpression="Product_name" />
            <asp:BoundField DataField="MRP" HeaderText="MRP" SortExpression="MRP" />
            <asp:BoundField DataField="Our_Prize" HeaderText="Our_Prize" SortExpression="Our_Prize" />
            <asp:BoundField DataField="Discount" HeaderText="Discount" SortExpression="Discount" />
            <asp:BoundField DataField="Detail" HeaderText="Detail" SortExpression="Detail" />
            <asp:BoundField DataField="stock" HeaderText="stock" SortExpression="stock" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView> 
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="SELECT [P_ID], [Product_name], [MRP], [Our_Prize], [Discount], [Detail], [stock] FROM [main_product]"></asp:SqlDataSource>
   
</asp:Content>
