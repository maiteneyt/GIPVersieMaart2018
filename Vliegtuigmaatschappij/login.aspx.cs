using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;

namespace Vliegtuigmaatschappij
{
    public partial class login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public static string strConnectie = ConfigurationManager.ConnectionStrings["gip"].ConnectionString;
        public static OleDbConnection cnn = new OleDbConnection(strConnectie);

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = cnn;

            string strSQL;
            strSQL = "SELECT PersoneelsID, Login, Functie, Email FROM TblPersoneel";
            strSQL += " WHERE Login=@Parameter1 AND Wachtwoord=@Parameter2";

            cmd.CommandText = strSQL;

            cmd.Parameters.AddWithValue("@parameter1", Login1.UserName);
            cmd.Parameters.AddWithValue("@parameter2", Login1.Password);

            int teller = 0;
            cnn.Open();
            OleDbDataReader drLijst = cmd.ExecuteReader();
            while (drLijst.Read())
                {
                    Session["PersoneelsID"] = drLijst[0].ToString();
                    Session["Login"] = drLijst[1].ToString();
                    Session["Functie"] = drLijst[2].ToString();
                    Session["Email"] = drLijst[3].ToString();
                    teller = teller + 1;

                }
            cnn.Close();
            if (teller==1)
            { 
                Server.Transfer("Startpagina.aspx");
            }
            else
            {
                
            }


        }
    }
}
