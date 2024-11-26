using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cars.View.Customer
{
    public partial class Cars : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DJN\\SQLEXPRESS;Initial Catalog=CarRentalDB;Integrated Security=True;Encrypt=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            displayCars();
        }

        public void displayCars()
        {
            try
            {
                string st = "Available";
                string query = "SELECT CPlateNum,Brand,Model,Price,Color,Status,Image FROM Cars WHERE Status='"+st+"'";
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

        //private void UpdateCar()
        //{

        //    try
        //    {
        //        if (GridView1 != null && GridView1.SelectedRow != null)
        //        {
        //            // Get the selected row index
        //            int selectedIndex = GridView1.SelectedIndex;

        //            // Ensure that the selected index is within the bounds of the GridView
        //            if (selectedIndex >= 0 && selectedIndex < GridView1.Rows.Count)
        //            {
        //                // Get the value from the desired column in the selected row
        //                string num = GridView1.Rows[selectedIndex].Cells[1].Text;
        //                Msglb1.Text = num;

        //                string status = "Rented";

        //                // Construct the SQL query with parameterized values
        //                string query = "UPDATE Cars SET Status = @status WHERE CPlateNum = @CplateNum";

        //                //Assuming con is your SqlConnection object
        //                using (SqlCommand cmd = new SqlCommand(query, con))
        //                {
        //                    cmd.Parameters.AddWithValue("@status", status);
        //                    cmd.Parameters.AddWithValue("@CplateNum", num);

        //                    con.Open();
        //                    int rowsAffected = cmd.ExecuteNonQuery();

        //                    if (rowsAffected > 0)
        //                    {
        //                        // Only one row should be affected if the query is correct
        //                        // You can add debugging/logging here to track the values and flow
        //                        // Msglb1.Text = "Car status updated successfully.";
        //                    }
        //                    else
        //                    {
        //                        // No rows were affected or the car was not found
        //                        // You can add debugging/logging here to investigate further
        //                        // Msglb1.Text = "Car status not updated: Car not found or status already updated.";
        //                    }

        //                    // Refresh the display of cars
        //                    displayCars();
        //                }
        //            }
        //            else
        //            {
        //                // Handle the case where the selected index is out of range
        //                // You can add debugging/logging here to investigate further
        //                // Msglb1.Text = "Error: Invalid selected index.";
        //            }
        //        }
        //        else
        //        {
        //            // Handle the case where the GridView or selected row is null
        //            // You can add debugging/logging here to investigate further
        //            // Msglb1.Text = "Error: GridView or selected row is null.";
        //        }
        //    }
        //    catch (SqlException ex)
        //    {
        //        // Handle SQL exceptions
        //        Msglb1.Text = "Error: " + ex.Message;
        //    }


        //}

        protected void btnBook_Click(object sender, EventArgs e)
        {
            TimeSpan ddays = Convert.ToDateTime(returndate.Value) - DateTime.Today.Date;
            int Days = ddays.Days;
            int Dprice = Convert.ToInt32(GridView1.SelectedRow.Cells[4].Text);
            int fees = Dprice * Days;
            try
            {
                if (GridView1.SelectedRow.Cells[1].Text == "")
                {
                    Msglb1.Text = "Select a Car";
                }
                else
                {
                    Dprice = Convert.ToInt32(GridView1.SelectedRow.Cells[4].Text);
                    string query = "EXEC CreateRentals @car,@rent,@return,@fees";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@car", GridView1.SelectedRow.Cells[1].Text);
                    cmd.Parameters.AddWithValue("@rent", System.DateTime.Today.Date.ToString());
                    cmd.Parameters.AddWithValue("@return", returndate.Value);
                    cmd.Parameters.AddWithValue("@fees", fees);

                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    int rowsAffected = cmd.ExecuteNonQuery();
                    if (rowsAffected >= 1)
                    {
                        Msglb1.Text = "Car Rented";
                        displayCars();
                        //UpdateCar();
                        returndate.Value = "";
                    }

                }

            }

            catch (SqlException ex)
            {
                Msglb1.Text = "Not Rented:" + ex.Message;
            }


        }
        string Lnumber, RentDate, RetDate;
        int fees=0,Dprice,Customer;
       
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Lnumber = GridView1.SelectedRow.Cells[1].Text;
            RentDate = System.DateTime.Today.Date.ToString();
            RetDate = returndate.Value;
            Dprice = Convert.ToInt32(GridView1.SelectedRow.Cells[4].Text);
        }
    }
    }
