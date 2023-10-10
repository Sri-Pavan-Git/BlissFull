using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Windows;

namespace HotelBilling
{
    public partial class Billing : System.Web.UI.Page
    {
        double discount; double TotalBill; double GTotal; bool DiscountStatus; string color = "#ffcc99";
        string cs = ConfigurationManager.ConnectionStrings["HB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            DiscountList.ForeColor = DiscountList.BackColor;
            using (SqlConnection conn = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select item_name as ITEM, no_of_paltes as 'NO.OF PLATES', item_price as PRICE, item_GST as GST, total as TOTAL  from Billing";
                cmd.Connection = conn;
                conn.Open();
                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();
                conn.Close();
                cmd.CommandText = " select sum(total) from Billing";
                conn.Open();
                if (cmd.ExecuteScalar() is DBNull)
                {
                    TotalBill = 0;
                }
                else
                {
                    TotalBill = Convert.ToDouble(cmd.ExecuteScalar());
                }
                totaltxt.Text = Convert.ToString(TotalBill);

            }
            total_amount.Text = totaltxt.Text;

        }
        protected void submit_Click(object sender, EventArgs e)
        {
            if (DiscountList.SelectedValue != "" && Convert.ToInt32(DiscountList.SelectedValue) >= 0)
            {
                DiscountStatus = bool.Parse(DiscountHolder.Value);
                if (!DiscountStatus)
                {
                    DiscountHolder.Value = "True";
                    discount = double.Parse(DiscountList.SelectedValue);
                    discount = TotalBill * (discount / 100);
                    GTotal = TotalBill - discount;
                    GrandTotaltxt.Text = Convert.ToString(GTotal);
                }
                total_amount.Text = GrandTotaltxt.Text;
                DiscountList.ForeColor = System.Drawing.Color.FromArgb(20, 137, 35, 87);
                DiscountPic.Visible = true;
            }
            else
            {

            }
        }
        protected void submitting_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "insert into CustomersList values" +
                                 $"('{name.Text}','{number.Text}','{location.Text}',{GrandTotaltxt.Text},{rating.Text},GETDATE())";
                cmd.Connection = con;
                con.Close();
                con.Open();
                cmd.ExecuteNonQuery();
            }
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("select name, phone, location, total_bill, rating, date from CustomersList", con);
                con.Close();
                con.Open();
                gvCustomer.DataSource = cmd.ExecuteReader();
                gvCustomer.DataBind();

            }
        }
    }
}