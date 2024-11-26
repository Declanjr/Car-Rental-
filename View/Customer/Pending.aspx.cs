using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Claims;
using System.Security.Principal;

namespace Cars.View.Customer
{
    public partial class Pending : System.Web.UI.Page
    {

        public object DataField { get;  private set; }
        SqlConnection con = new SqlConnection("Data Source=DJN\\SQLEXPRESS;Initial Catalog=CarRentalDB;Integrated Security=True;Encrypt=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            displayCars();
            //DataField.UserID.Text = WindowsIdentity.GetCurrent().Name;

        }

        public void displayCars()
        {
            try
            {
                string query = "SELECT * FROM Rentals ";
                SqlCommand cmd = new SqlCommand(query, con);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable ds = new DataTable();
                sda.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                con.Close();


            }
            catch (SqlException ex)
            {
                Msglb1.Text = "Error  " + ex.Message.ToString();
            }
        }


        protected void returnBtn_Click(object sender, EventArgs e)
        {

            // Get the ID and return date of the car being returned
            string carID = GridView1.SelectedRow.Cells[1].Text;
            DateTime returnDate = Convert.ToDateTime(GridView1.SelectedRow.Cells[3].Text); 

            // Check if the return date has passed
            if (returnDate.Date <= DateTime.Today)
            {
                try
                {
                    // Move the car from Rentals table back to Cars table
                    string returnQuery = "DELETE FROM Rentals WHERE Car = @carID; " +
                                         "UPDATE Cars SET Status = 'Available' WHERE CPlateNum = @carID";

                    SqlCommand returnCmd = new SqlCommand(returnQuery, con);
                    returnCmd.Parameters.AddWithValue("@carID", carID);

                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    int rowsAffected = returnCmd.ExecuteNonQuery();
                    con.Close();

                    // Check if the update was successful
                    if (rowsAffected > 0)
                    {
                        Msglb1.Text = "Car returned successfully";
                        // Refresh the GridView to reflect the updated data
                        displayCars();
                        
                    }
                    else
                    {
                        // Handle the case where the car could not be returned
                    }
                }
                catch (Exception ex)
                {
                    Msglb1.Text = "Error :" + ex.Message.ToString();
                }
            }
            else
            {
                Msglb1.Text = "Return Date hasn't reached yet:";
                // You can display a message or take any other action here
            }
        }

    }
    }
