<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="View_activitylog.aspx.cs" Inherits="Online_Shopping_Backup.View_activitylog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Export to PDF" />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="a_id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Height="400px" Width="915px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>

            <asp:BoundField DataField="a_id" HeaderText="Activity ID" InsertVisible="False" ReadOnly="True" SortExpression="a_id" />
            <asp:BoundField DataField="a_name" HeaderText="Activity" ReadOnly="True" SortExpression="a_name" />
            <asp:BoundField DataField="a_date" HeaderText="Date" SortExpression="a_date" />
            <asp:BoundField DataField="a_user" HeaderText="User" SortExpression="a_user" />
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
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="SELECT [a_id] ,[a_name], [a_date], [a_user] FROM [activity]"></asp:SqlDataSource>
   
</asp:Content>
