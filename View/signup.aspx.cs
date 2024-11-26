using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Cars.View
{
    public partial class signup : System.Web.UI.Page
    {
        
        SqlConnection con = new SqlConnection("Data Source=DJN\\SQLEXPRESS;Initial Catalog=CarRentalDB;Integrated Security=True;Encrypt=False");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
     
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtpassword.Text.Equals(txtconfirm.Text))
            {
                try
                {
                  
                    string query = "EXEC CreateCustomer @username,@password,@names,@address,@phone";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@username", txtusername.Text);
                    cmd.Parameters.AddWithValue("@password", txtpassword.Text);
                    cmd.Parameters.AddWithValue("@names", txtname.Text);
                    cmd.Parameters.AddWithValue("@address", txtadd.Text);
                    cmd.Parameters.AddWithValue("@phone", txtphone.Text);

                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    int rowsAffected = cmd.ExecuteNonQuery();
                    if (rowsAffected >= 1)
                    {
                        Msglb.Text = "Account Created";
                    }
                    else
                    {
                        Msglb.Text = "Not Created";
                    }

                }
                catch (SqlException ex)
                {
                    Msglb.Text = "Error" + ex.Message.ToString();
                }

            }
            else
            {
                Msglb.Text = "Passwords Don't Match";
            }

        }
    }
}