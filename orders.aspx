<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="orders.aspx.cs" Inherits="Online_Shopping_Backup.orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="458px" Width="712px" AutoGenerateColumns="False" DataKeyNames="order_id" DataSourceID="SqlDataSource1">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="order_id" HeaderText="order_id" InsertVisible="False" ReadOnly="True" SortExpression="order_id" />
            <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />
            <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
            <asp:BoundField DataField="product_id" HeaderText="product_id" SortExpression="product_id" />
            <asp:BoundField DataField="email_address" HeaderText="email_address" SortExpression="email_address" />
            <asp:BoundField DataField="mobile_no" HeaderText="mobile_no" SortExpression="mobile_no" />
            <asp:BoundField DataField="payment_type" HeaderText="payment_type" SortExpression="payment_type" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
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
   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="SELECT [order_id], [user_id], [user_name], [product_id], [email_address], [mobile_no], [payment_type], [address] FROM [main_order] WHERE ([user_name] = @user_name)">
       <SelectParameters>
           <asp:SessionParameter Name="user_name" SessionField="Name" Type="String" />
       </SelectParameters>
    </asp:SqlDataSource>
 
    
</asp:Content>

