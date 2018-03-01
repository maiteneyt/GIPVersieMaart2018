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
    public partial class Boeken_vliegtuigen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["PersoneelsID"] = 1;
        }

        public static string strConnectie = ConfigurationManager.ConnectionStrings["gip"].ConnectionString;
        public static OleDbConnection cnn = new OleDbConnection(strConnectie);

        protected void dlvVluchtenboeken_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void btnBoeken_Click(object sender, EventArgs e)
        {


            
            OleDbCommand cmd = new OleDbCommand();
            
            cmd.Connection = cnn;

            string strSQL;

            strSQL = "INSERT INTO tblBoeking (Voornaam, Familienaam, Geslacht, Geboortedatum, Stoelnummer, PersoneelsID, KlantnummerID, VluchtID) VALUES(@voornaam, @familienaam, @geslacht, @geboortedatum, @stoelnummer, @personeelsID,@,KlantnummerID, @VluchtID )";
            cmd.CommandText = strSQL;

            //cmd.CommandText = "INSERT INTO tblBoeking (Voornaam, Familienaam, Geslacht, Geboortedatum, Stoelnummer, personeelsID, klantnummerID, VluchtID) VALUES(@voornaam, @familienaam, @geslacht, @geboortedatum, @stoelnummer)";
            cmd.Parameters.AddWithValue("@voornaam", txtVoornaam.Text);
            cmd.Parameters.AddWithValue("@familienaam", txtNaam.Text);
            cmd.Parameters.AddWithValue("@geslacht", txtGeslacht.Text);
            cmd.Parameters.AddWithValue("@geboortedatum", txtGeboortedatum.Text);
            cmd.Parameters.AddWithValue("@stoelnummer", cboStoelnummer.SelectedItem.ToString());
            //cmd.Parameters.AddWithValue("@personeelsID", ????????????);
            cmd.Parameters.AddWithValue("@klantnummerID", CboLeden.SelectedValue.ToString());
            //cmd.Parameters.AddWithValue("@VluchtID", ????????????????);
            

            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            stoelen();
        }

        void stoelen()
            {
            cboStoelnummer.Items.Clear();
            int stoelnr, aantalz;
            aantalz = Convert.ToInt16(GridView1.SelectedRow.Cells[9].Text);



            for (stoelnr = 1; stoelnr <= aantalz; stoelnr++)
            {
                cnn.Open();

                OleDbCommand cmdstoel = new OleDbCommand();
                cmdstoel.Connection = cnn;
                cmdstoel.CommandText = "SELECT COUNT(Stoelnummer) FROM TblBoeking";
                cmdstoel.CommandText += " GROUP BY Stoelnummer, VluchtID";
                cmdstoel.CommandText += " HAVING(Stoelnummer = @stoelnummer) AND(VluchtID = @vluchtid )";


                cmdstoel.Parameters.AddWithValue("@stoelnummer", stoelnr);
                cmdstoel.Parameters.AddWithValue("@vluchtid", GridView1.SelectedRow.Cells[1].Text);
                int intaantalstoelen = Convert.ToInt16(cmdstoel.ExecuteScalar());

                cnn.Close();
                if (intaantalstoelen != 1)
                {
                    cboStoelnummer.Items.Add(stoelnr.ToString());
                }

            }

        }

        protected void btnNieuw_Click(object sender, EventArgs e)
        {
           
            txtNaam.Text = String.Empty;
            txtVoornaam.Text = String.Empty;
            txtGeslacht.Text = string.Empty;
            txtGeboortedatum.Text = String.Empty;
            stoelen();
            
        }
    }
}