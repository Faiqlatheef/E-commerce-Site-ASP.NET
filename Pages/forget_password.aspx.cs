using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace Online_Shopping_Backup.Pages
{

    public partial class forget_password : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from login_data where name='"+txt_username.Text+"' ", conn);
            conn.Open();
             string answer="";
             string email = "";
             string password  = "";
             if (conn.State == ConnectionState.Open)
             {
                 SqlDataReader sdr = cmd.ExecuteReader();
                 while (sdr.Read())
                 {
                     answer = sdr["Answer"].ToString();
                     email= sdr["Email"].ToString();
                     password = sdr["password"].ToString();
                 }
              
                 if(txt_answer.Text.ToUpper().Equals(answer.ToUpper()))
                 {

                     MyEmail.send("faiq.fq@gmail.com", "test", "test email");
                     //try
                     //{
                     //    //create the mail message

                     //    MailAddress to = new MailAddress(email);
                     //    MailAddress from = new MailAddress("fifa61295@gmail.com");

                     //    MailMessage message = new MailMessage(from, to);
                     //    message.Subject = "Save your Password";
                     //    message.Body = "This is your password " + password + " Please save it carefully";

                     //    SmtpClient client = new SmtpClient("smtp.gmail.com", 587)
                     //    {
                     //        Credentials = new System.Net.NetworkCredential("fifa61295@gmail.com", "fifa2552"),
                     //        EnableSsl = true
                     //    };
                     //    // code in brackets above needed if authentication required 

                     //    client.Send(message);
                     //    Response.Write("Maill Sended");

                     //}

                     //catch (Exception ex)
                     //{
                     //    Response.Write("Could not send email" + ex.Message);
                     //}
                   
                     
                 }

                 conn.Close();
             }




            
        }


    }
}