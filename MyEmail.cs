using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.IO;
using System.Net;
using System.Net.Mail;
using System.Text;

namespace Online_Shopping_Backup
{
    public class MyEmail
    {

        public static void send(string _to, string _message , string _subject)
        {
            string to = _to; //To address    
            string from = "fifa61295@gmail.com"; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = _message;
            message.Subject = _subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential("fifa61295@gmail.com", "fifa2552");
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}