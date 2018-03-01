using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vliegtuigmaatschappij
{
    public partial class Begin_pagina_flight_organisation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Functie"].ToString()== "FlightOrganisation")
            {
                //hier moet je de hyperlink zichtbaar maken. 
                HyperLink3.Visible = true;
            
            }
            else
            {
                HyperLink3.Visible = false;
            }

        }
    }
}