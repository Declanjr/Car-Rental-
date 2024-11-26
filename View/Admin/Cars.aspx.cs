using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Cars.View.Admin
{
    public partial class Cars : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DJN\\SQLEXPRESS;Initial Catalog=CarRentalDB;Integrated Security=True;Encrypt=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            displayCars();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (FileUpload1.HasFile)
                {

                    string query = "EXEC CreateCar @cplatenum,@brand,@model,@price,@color,@status,@img";
                    SqlCommand cmd = new SqlCommand(query, con);
                    FileUpload1.SaveAs(Server.MapPath("~/CarImg/") + System.IO.Path.GetFileName(FileUpload1.FileName));
                    string linkpath = "CarImg/" + System.IO.Path.GetFileName(FileUpload1.FileName);
                    cmd.Parameters.AddWithValue("@cplatenum", txtlicense.Text);
                    cmd.Parameters.AddWithValue("@brand", txtbrand.Text);
                    cmd.Parameters.AddWithValue("@model", txtmodel.Text);
                    cmd.Parameters.AddWithValue("@price", txtprice.Text);
                    cmd.Parameters.AddWithValue("@color", txtcolor.Text);
                    cmd.Parameters.AddWithValue("@status", DropDownList1.SelectedValue.ToString());
                    cmd.Parameters.AddWithValue("@img", linkpath);

                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    int rowsAffected = cmd.ExecuteNonQuery();
                    if (rowsAffected >= 1)
                    {
                        Msglb1.Text = "Car Has entered the system :";
                        txtlicense.Text = "";
                        txtbrand.Text = "";
                        txtmodel.Text = "";
                        txtprice.Text = "";
                        txtcolor.Text = "";
                        DropDownList1.SelectedIndex = 0;
                    }
                    else
                    {
                        Msglb1.Text = "Not Created:";
                    }

                }
                }

            catch(SqlException ex) {
                Msglb1.Text = "Data Not Saved" + ex.Message;
            }
            displayCars();
        }

        public void displayCars() {
            try
            {
                string query = "SELECT CPlateNum,Brand,Model,Price,Color,Status,Image FROM Cars";
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
            catch (SqlException ex) {
                Msglb1.Text = "Error  " + ex.Message.ToString();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtlicense.Text = GridView1.SelectedRow.Cells[1].Text;
            txtbrand.Text = GridView1.SelectedRow.Cells[2].Text;
            txtmodel.Text = GridView1.SelectedRow.Cells[3].Text;
            txtprice.Text = GridView1.SelectedRow.Cells[4].Text;
            txtcolor.Text = GridView1.SelectedRow.Cells[5].Text;
            DropDownList1.SelectedValue = GridView1.SelectedRow.Cells[6].Text;
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            if (txtlicense.Text.Trim().Length >= 1)
            {

                try
                {
                    if (FileUpload1.HasFile)
                    {

                        string query = "EXEC UpdateCar @cplatenum,@brand,@model,@price,@color,@status,@img";
                        SqlCommand cmd = new SqlCommand(query, con);
                        FileUpload1.SaveAs(Server.MapPath("~/CarImg/") + System.IO.Path.GetFileName(FileUpload1.FileName));
                        string linkpath = "CarImg/" + System.IO.Path.GetFileName(FileUpload1.FileName);
                        cmd.Parameters.AddWithValue("@cplatenum", txtlicense.Text);
                        cmd.Parameters.AddWithValue("@brand", txtbrand.Text);
                        cmd.Parameters.AddWithValue("@model", txtmodel.Text);
                        cmd.Parameters.AddWithValue("@price", txtprice.Text);
                        cmd.Parameters.AddWithValue("@color", txtcolor.Text);
                        cmd.Parameters.AddWithValue("@status", DropDownList1.SelectedValue.ToString());
                        cmd.Parameters.AddWithValue("@img", linkpath);

                        if (con.State == System.Data.ConnectionState.Closed)
                        {
                            con.Open();
                        }

                        int rowsAffected = cmd.ExecuteNonQuery();
                        if (rowsAffected >= 1)
                        {
                            Msglb1.Text = "Car Updated:";
                            displayCars();
                            txtlicense.Text = "";
                            txtbrand.Text = "";
                            txtmodel.Text = "";
                            txtprice.Text = "";
                            txtcolor.Text = "";
                            DropDownList1.SelectedIndex = 0;
                        }
                      
                    }
                }
                catch (SqlException ex)
                {
                    Msglb1.Text = "Not Updated" + ex.Message; 
                }
            }
            else
            {
                Msglb1.Text = "Select Car to update:";
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "EXEC DeleteCar @rnid";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@rnid", txtlicense.Text);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                int rowsAffected = cmd.ExecuteNonQuery();
                if (rowsAffected >= 1)
                {
                    Msglb1.Text = "Car Removed:";
                    displayCars();
                    txtlicense.Text = "";
                    txtbrand.Text = "";
                    txtmodel.Text = "";
                    txtprice.Text = "";
                    txtcolor.Text = "";
                    DropDownList1.SelectedIndex = 0;
                }
            }
            catch (SqlException ex) {
                Msglb1.Text = "Car  Not Removed " + ex.Message;
            }
        }
    }
}