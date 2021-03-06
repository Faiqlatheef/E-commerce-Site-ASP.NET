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
    public partial class add_admin : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            SqlCommand cmds = new SqlCommand("insert into activity values(@a_name,@a_date,@a_user)", conn);
            DateTime _datetime = DateTime.Now;
            string _user = Session["Name"].ToString();

            cmds.Parameters.AddWithValue("@a_name", "ADD Admin");
            cmds.Parameters.AddWithValue("@a_date", _datetime);
            cmds.Parameters.AddWithValue("@a_user", _user);
            conn.Open();
            cmds.ExecuteNonQuery();

            SqlCommand cmd = new SqlCommand("insert into login_data values(@name,@password,@role,@address,@mobile_no,@email)", conn);
            string admin = ddl_admin.SelectedValue;

            cmd.Parameters.AddWithValue("@name", txt_name.Text);
            cmd.Parameters.AddWithValue("@password", txt_password.Text);
            cmd.Parameters.AddWithValue("@role", admin);
            cmd.Parameters.AddWithValue("@address", txt_address.Text);
            cmd.Parameters.AddWithValue("@mobile_no", txt_mobile_no.Text);
            cmd.Parameters.AddWithValue("@email", txt_Email_address.Text);
            cmd.ExecuteNonQuery();
            Response.Redirect("~/Admin.aspx");
        }
    }
}