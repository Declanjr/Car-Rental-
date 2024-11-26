using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cars.View.Admin
{
    public partial class Customers : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DJN\\SQLEXPRESS;Initial Catalog=CarRentalDB;Integrated Security=True;Encrypt=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            displayCustomers();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                
                    string query = "EXEC CreateCustomer @names,@address,@phone";
                    SqlCommand cmd = new SqlCommand(query, con);
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
                        Msglb2.Text = "Customer Added :";
                        displayCustomers();
                    txtname.Text = "";
                        txtadd.Text = "";
                        txtphone.Text = "";
                    }
                    else
                    {
                        Msglb2.Text = "Not Added:";
                    }       
            }

            catch (SqlException ex)
            {
                Msglb2.Text = "Data Not Saved" + ex.Message.ToString();
            }
            
        }

        public void displayCustomers()
        {
            try
            {
                string query = "SELECT id,Names,Address,Phone FROM Customer";
                SqlCommand cmd = new SqlCommand(query, con);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable ds = new DataTable();
                sda.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();
                con.Close();


            }
            catch (SqlException ex)
            {
                Msglb2.Text = "Error  " + ex.Message.ToString();
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {

            if (txtid.Text.Trim().Length >= 1)
            {

                try
                {
                    
                        string query = "EXEC UpdateCustomer @id,@names,@address,@phone";
                        SqlCommand cmd = new SqlCommand(query, con);
                        cmd.Parameters.AddWithValue("@id", txtid.Text);
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
                            Msglb2.Text = "Customer Updated:";
                             displayCustomers();
                              txtid.Text = "";
                             txtname.Text = "";
                             txtadd.Text = "";
                             txtphone.Text = "";
                         }
                }
                catch (SqlException ex)
                {
                    Msglb2  .Text = "Not Updated" + ex.Message;
                }
            }
            else
            {
                Msglb2.Text = "Select Customer to update:";
            }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtid.Text = GridView2.SelectedRow.Cells[1].Text;
            txtname.Text = GridView2.SelectedRow.Cells[2].Text;
            txtadd.Text = GridView2.SelectedRow.Cells[3].Text;
            txtphone.Text = GridView2.SelectedRow.Cells[4].Text;
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "EXEC DeleteCustomer @rnid";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@rnid", txtid.Text);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                int rowsAffected = cmd.ExecuteNonQuery();
                if (rowsAffected >= 1)
                {
                    Msglb2.Text = "Customer Removed:";
                    displayCustomers();
                    txtid.Text = "";
                    txtname.Text = "";
                    txtadd.Text = "";
                    txtphone.Text = "";
                }
            }
            catch (SqlException ex)
            {
                Msglb2.Text = "Customer Not Removed " + ex.Message;
            }
        }
    }
}