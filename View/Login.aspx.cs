using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cars.View
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DJN\\SQLEXPRESS;Initial Catalog=CarRentalDB;Integrated Security=True;Encrypt=False");
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "SELECT username, Password,role FROM users WHERE username = @username";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@username", txtusername.Text);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    string passwordfromDb = rdr.GetValue(1).ToString();
                    string role = rdr.GetValue(2).ToString();

                    if (txtpassword.Text.Equals(passwordfromDb))
                    {
                        if (role.Equals("ADMIN"))
                        {
                            Session["role"] = role;
                            Response.Redirect("Admin/Home.aspx");
                        }
                        else
                        {
                            Session["role"] = role;
                            Response.Redirect("Customer/CustomerHome.aspx");
                        }
                    }
                    else
                    {
                        Msglb.Text = "Invalid credentials";
                    }
                }

            }
            catch (SqlException ex)
            {
                Msglb.Text = "Error  " + ex.Message.ToString();
            }

        }
    }
}