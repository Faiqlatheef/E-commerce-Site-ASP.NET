using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Online_Shopping_Backup
{
    public partial class Admin : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnectionString"].ConnectionString);
        public DataTable getData(string _sql)
        {
            SqlDataAdapter da = new SqlDataAdapter(_sql, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;


        }

        protected void Page_Load(object sender, EventArgs e)
        {
            // assign to label
            DataTable hdt = getData("select count (price) from cart_product");
            Label2.Text = hdt.Rows[0][0].ToString();

            // assign to label
            DataTable dt = getData("select count (*) from main_order");
            Label4.Text = dt.Rows[0][0].ToString();

            // assign to label
            DataTable d = getData("select sum (price) from cart_product");
            Label6.Text = d.Rows[0][0].ToString();

            // Number of Application Users
            Label8.Text = "Number of Application :" + Application["TotalApplications"];
            Label10.Text = "Number of User Online :" + Application["TotalUserSessions"];
        }


        protected void btn_delete_Product_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/Delete_Product.aspx");
        }

        protected void btn_Add_Product_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Data_Insert.aspx");
        }

        protected void btn_Add_Admin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/add_admin.aspx");

        }

        protected void btn_Edit_Product_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Edit_Product.aspx");
            
        }

        protected void btn_view_order_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/View_Order.aspx");
        }

        protected void btn_user_database_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/View_user_Database.aspx");

        }

        protected void btn_product_database_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/View_product.aspx");
        }

        protected void btn_activitylog_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/View_activitylog.aspx");
        }
    }
}