using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CarsProject
{
    public partial class Input : System.Web.UI.Page
    {
        public SqlConnection connection = new SqlConnection(@" Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Hisya\Documents\Buyer.mdf;Integrated Security = True");
        public void executeSQL(String sql, String state)
        {
            SqlCommand command;
            connection.Open();
            command = new SqlCommand(sql, connection);

            if (command.ExecuteNonQuery() != 0)
            {
                command.Dispose();
                connection.Close();
                Response.Write(state + " command executed!");
            }
            else
            {
                Response.Write(state + " not executed!");
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                String sql;
                String Name, Address, Contacts;
                Name = txtname.Text;
                Address = txtaddress.Text;
                Contacts = txtphone.Text;
                sql = "insert into customers values (' " + Name + " ', ' " + Address + " ', ' " +
                     Contacts + " ')";
                executeSQL(sql, "insert");
               
                Response.Redirect("input2.aspx?name=" + txtname.Text + "&address=" + txtaddress.Text + "&notell=" + txtphone.Text);
            }
        }
    }
}