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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public static string strConnectie = ConfigurationManager.ConnectionStrings["gip"].ConnectionString;
        public static OleDbConnection cnn = new OleDbConnection(strConnectie);

        protected void btnAanmaken_Click1(object sender, EventArgs e)
        {
            int intAantal = 0;
            OleDbCommand cmd = new OleDbCommand();

            cmd.Connection = cnn;
            cmd.CommandText = "INSERT INTO TblKlant (Voornaam, Familienaam, Straat, Postnummer, Gemeente, Email) VALUES(@voornaam, @familienaam, @adres, @postnummer, @gemeente, @email)";
            cmd.Parameters.AddWithValue("@voornaam", txtVoornaam.Text);
            cmd.Parameters.AddWithValue("@familienaam", txtNaam.Text);
            cmd.Parameters.AddWithValue("@adres", txtAdres.Text);
            cmd.Parameters.AddWithValue("@postnummer", txtPostnummer.Text);
            cmd.Parameters.AddWithValue("@gemeente", txtGemeente.Text);
            cmd.Parameters.AddWithValue("@email", txtMail.Text);

            try
            {
                cnn.Open();
            }
            catch (System.Exception excep)
            {
                lblFout.Text = excep.Message;
            }
                        
            if (cnn.State == System.Data.ConnectionState.Open)
            {
                try
                {
                                    
                    intAantal = Convert.ToInt16(cmd.ExecuteNonQuery());
                }
                catch (System.Exception excep)
                {
                    lblFout.Text = excep.Message;
                }
                finally
                {
                    cnn.Close();
                }
            }
            lblFout.Text = intAantal.ToString() + " record toegevoegd";

        }
    }
}