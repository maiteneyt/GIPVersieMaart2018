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
    public partial class Wijzigen_bestemmingen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["PersonneelsID"] = 1;
        }
        public static string strConnectie = ConfigurationManager.ConnectionStrings["gip"].ConnectionString;
        public static OleDbConnection cnn = new OleDbConnection(strConnectie);

        protected void btnToevoegenVluchten_Click(object sender, EventArgs e)
        {
            OleDbCommand cmd = new OleDbCommand();

            cmd.Connection = cnn;

            string strSQL;

            strSQL = "INSERT INTO tblvluchten ( Datum, Tijdstip, Bestemming, ViegtuigID, VrijePlaatsen) ";
            strSQL += "VALUES ( @Datum, @Tijdstip, @Bestemming, @VliegtuigID, @VrijePlaatsen";

            
            cmd.Parameters.AddWithValue("@Datum", TxtDatum.Text);
            cmd.Parameters.AddWithValue("@Tijdstip", txtTijdstip.Text);
            cmd.Parameters.AddWithValue("@Bestemming", cboBestemmingen.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@VliegtuigID", CboVliegtuig.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@VrijePlaatsen", txtAantalZitplaatsen.Text);


            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();

        }

        protected void btnNieuw_Click(object sender, EventArgs e)
        {
            TxtDatum.Text = string.Empty;
            txtTijdstip.Text = string.Empty;
            cboBestemmingen.SelectedValue = string.Empty;
            CboVliegtuig.SelectedValue = string.Empty;
            txtAantalZitplaatsen.Text = string.Empty;
        }

        protected void btnToevoegen_Click(object sender, EventArgs e)
        {
            OleDbCommand cmd = new OleDbCommand();

            cmd.Connection = cnn;

            string strSQL;

            strSQL = "INSERT INTO TblBestemming (Bestemming)";
            strSQL += "VALUES (@Bestemming)";

            cmd.Parameters.AddWithValue("@Bestemming", txtBestemming.Text);

            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();

        }
    }
}