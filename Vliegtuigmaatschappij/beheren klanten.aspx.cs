using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vliegtuigmaatschappij
{
    public partial class beheren_klanten : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void appelboom(object sender, EventArgs e)
        {
            dtsklantenbeheer.FilterExpression = "Voornaam=' " + cboNamen.SelectedValue + " '";
            dgvKlanten.DataBind();
        }
    }
}