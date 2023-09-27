using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CarsProject
{
    public partial class Records : System.Web.UI.Page
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


        protected void Button1_Click(object sender, EventArgs e)
          {
              string connectionString = (@" Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Hisya\Documents\Buyer.mdf;Integrated Security = True");

              using (SqlConnection connection = new SqlConnection(connectionString))
              {
                  connection.Open();
                string selectSql = "SELECT SUM(Price) FROM Salesty";

              using (SqlCommand command = new SqlCommand(selectSql, connection))
              {
                  decimal totalPrice = (decimal)command.ExecuteScalar();
                      lbltotalprice.Text = totalPrice.ToString("C");
                  }
                  connection.Close();
              }

            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            String sql;
            int ID;
            decimal Price;
            

            ID = Convert.ToInt32(TextBox1.Text);
            Price =Convert.ToDecimal(TextBox2.Text);
            

            sql = "update Salesty set Price = ' " + Price + "' where Id  = ' " + ID + "'";

            executeSQL(sql, "update");
        }
    }
}