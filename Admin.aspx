<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Online_Shopping_Backup.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .list {
        }

            .list ul {
                margin: 0px;
                padding: 0px;
            }

                .list ul li {
                    list-style-type: none;
                    float: left;
                    padding: 30px 60px 0px 0px;
                    margin: 0px;
                }
    </style>
    <link rel="stylesheet" type="text/css" href="../CSS/css_container.css" />

    <div class="container">
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                <div id="div4">
                    <div class="list">
                        <ul>
                            <li>
                                <asp:Label ID="Label1" runat="server" Text="Total Profit :"></asp:Label>
                                <asp:Label ID="Label2" runat="server" Text="0"></asp:Label>
                            </li>
                            <li>
                                <asp:Label ID="Label3" runat="server" Text="Total Orders :"></asp:Label>
                                <asp:Label ID="Label4" runat="server" Text="0"></asp:Label>
                            </li>
                            <li>
                                <asp:Label ID="Label5" runat="server" Text="Total Count of Profit: Rs."></asp:Label>
                                <asp:Label ID="Label6" runat="server" Text="0"></asp:Label>
                            </li>
                        </ul>
                    </div>
                </div>


              </div>
            </div>

        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                <div id="div2">
                    <div class="list">
                        <ul>
                            <li>
                                <asp:Label ID="Label8" runat="server" Text="0"></asp:Label>
                            </li>
                            <li>
                                <asp:Label ID="Label10" runat="server" Text="0"></asp:Label>
                            </li>
                        </ul>
                    </div>
                </div>


              </div>
            </div>

        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                <div id="div1">
                    <div class="list">
                        <ul>
                            <li>
                                <asp:Button CssClass="btn btn-primary" Height="48px"  ID="Button1" runat="server" Text="View Order" OnClick="btn_view_order_Click" />
                            </li>
                            <li>
                                <asp:Button CssClass="btn btn-primary" Height="48px" ID="Button2" runat="server" Text="Add Users" OnClick="btn_Add_Admin_Click" />
                            </li>
                            <li>
                                <asp:Button CssClass="btn btn-primary" Height="48px" ID="Button3" runat="server" Text="Add Product" OnClick="btn_Add_Product_Click" />
                            </li>
                        </ul>
                    </div>
                </div>



            </div>
            <div class="col-lg-2"></div>
        </div>


        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                 <div id="div3">
                <div class="list">
            <ul>
                
                <li>
                    <asp:Button CssClass="btn btn-primary" ID="Button4" Height="48px" runat="server" Text="Edit Product" OnClick="btn_Edit_Product_Click" />

                </li>


                <li>
                    <asp:Button CssClass="btn btn-primary" ID="Button5" Height="48px" runat="server" Text="Delete Product" OnClick="btn_delete_Product_Click" />


                </li>

                <li>
                    <asp:Button CssClass="btn btn-primary" ID="Button6" Height="48px" runat="server" Text="View User Database" OnClick="btn_user_database_Click" />

                </li>

                <li>
                    <asp:Button CssClass="btn btn-primary" ID="Button7" Height="48px" runat="server" Text="View Product Database" OnClick="btn_product_database_Click" />

                </li>

                <li>
                    <asp:Button CssClass="btn btn-primary" ID="Button8" Height="48px" runat="server" Text="View Activity log " OnClick="btn_activitylog_Click" />

                </li>
                
            </ul>
        </div>
    </div>
                </div>

            </div>
            <div class="col-lg-2"></div>
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
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        </div>

    
    
</asp:Content>
