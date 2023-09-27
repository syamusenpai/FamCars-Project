using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarsProject
{
    public partial class Output : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String Name = Request.QueryString["name"];
            String Address = Request.QueryString["address"];
            String Contacts = Request.QueryString["contacts"];
            String Cars = Request.QueryString["nurulfarzana"];
            String Price = Request.QueryString["price"];

            lblname.Text = Name;
            lblname2.Text = Name;
            lblcar.Text = Cars;
            lblprice.Text = Price;
            lblcontacts.Text = Contacts;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Records.aspx?");
        }
    }
}