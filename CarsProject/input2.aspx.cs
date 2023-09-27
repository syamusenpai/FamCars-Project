using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace CarsProject
{
    public partial class input2 : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            String Name = Request.QueryString["name"];
            String Address = Request.QueryString["address"];
            String Contacts = Request.QueryString["notell"];
            String Cars = null;
            int Price = 0;
            String sql;

            if (AtivaCB.Checked)
            {
                Cars = "Perodua Ativa";
                Price =  71200;
                sql = "insert into Salesty values (' " + Name + " ', ' " + Cars + " ', ' " +
                    Price + " ')";
                executeSQL(sql, "insert");
            }
            else if (AruzCB.Checked)
            {
                Cars = "Perodua Aruz";
                Price = 73266;
                sql = "insert into Salesty values (' " + Name + " ', ' " + Cars + " ', ' " +
                    Price + " ')";
                executeSQL(sql, "insert");
            }
            else if (AlmeraCB.Checked)
            {
                Cars = "Nissan Almera";
                Price = 92310;
                sql = "insert into Salesty values (' " + Name + " ', ' " + Cars + " ', ' " +
                    Price + " ')";
                executeSQL(sql, "insert");
            }
            else if (XtrailCB.Checked)
            {
                Cars = "Nissan X-Trail";
                Price = 159888;
                sql = "insert into Salesty values (' " + Name + " ', ' " + Cars + " ', ' " +
                    Price + " ')";
                executeSQL(sql, "insert");
            }



            Response.Redirect("Output.aspx?name=" + Name + "&address=" + Address + "&contacts=" + Contacts + "&nurulfarzana=" + Cars + "&price=" + Price);


            
        }
    }
}