using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace ApprendreAspNet
{
    public class Global : HttpApplication
    {
        private static string param1;
        private static string param2;
        private static string connString;
        private static string erreur;

        // get et set

        public static string Param1
        {
            get { return param1; }
            set { param1 = value; }
        }

        public static string Param2
        {
            get { return param2; }
            set { param2 = value; }
        }

        public static string ConnString
        {
            get { return connString; }
            set { connString = value; }
        }

        public static string Erreur
        {
            get { return erreur; }
            set { erreur = value; }
        }
        protected void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            try
            {
                param1 = ConfigurationManager.AppSettings["cle1"];
                param2 = ConfigurationManager.AppSettings["cle2"];
              
                connString = ConfigurationManager.ConnectionStrings["MyPostgresConnection"].ConnectionString;

            }
            catch (Exception a)
            {
                Erreur = String.Format("Une erreur", a.Message);
            }

            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
        protected void Session_Start(object sender, EventArgs e)
        {
            Session["id"] = null;
        }
    }
}