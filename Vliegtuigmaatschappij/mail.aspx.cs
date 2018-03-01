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
    public partial class mail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
        public static string strConnectie = ConfigurationManager.ConnectionStrings["gip"].ConnectionString;
        public static OleDbConnection cnn = new OleDbConnection(strConnectie);

        protected void btnMail_Click(object sender, EventArgs e)
        {
            lstLijst.Items.Clear();

            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = cnn;
            cmd.CommandText = "SELECT Voornaam, Email FROM tblKlant WHERE Voornaam = '" + TxtMail.Text + "'";

            cnn.Open();

            OleDbDataReader drVoornaam = cmd.ExecuteReader();
            while (drVoornaam.Read())
            {
                string strLijn;
                strLijn = drVoornaam[0].ToString() + " " + drVoornaam[1].ToString();
                lstLijst.Items.Add(strLijn);
            }

            cnn.Close();
        }
    }
}