using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Online_Shopping_Backup
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            //create application satate vaiable
            Application["TotalApplications"] = 0;
            Application["TotalUserSessions"] = 0;

            //increament total application by 1
            Application["TotalApplications"] = (int)Application["TotalApplications"] + 1;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            //increament TotalUserSessions by 1
            Application["TotalUserSessions"] = (int)Application["TotalUserSessions"] + 1;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            //decreament TotalUserSessions by 1
            Application["TotalUserSessions"] = (int)Application["TotalUserSessions"] - 1;
        }

        protected void Application_End(object sender, EventArgs e)
        {
            //decreament total application by 1
            Application["TotalApplications"] = (int)Application["TotalApplications"] - 1;
        }
    }
}