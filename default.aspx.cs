using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace HotelBilling
{
    public partial class Welcome : System.Web.UI.Page
    {
        int icount, dcount, ucount, pcount, vcount, bcount;
        const string iname = "IDLY"; const string dname = "DOSA"; const string uname = "UPMA";
        const string pname = "PURI"; const string vname = "VADA"; const string bname = "BONDA";
        const double igst = 2.5; const double dgst = 3.5; const double ugst = 3.0;
        const double pgst = 5.5; const double vgst = 3.0; const double bgst = 3.0;
        const double iprize = 20; const double dprize = 25; const double uprize = 30;
        const double pprize = 35; const double vprize = 25; const double bprize = 25;

        string cs = ConfigurationManager.ConnectionStrings["HB"].ConnectionString;
        
        protected void orderbtn_Click(object sender, EventArgs e)
        {          
          
            icount = int.Parse(idlytxt.Text); dcount = int.Parse(dosatxt.Text); ucount = int.Parse(upmatxt.Text);
            pcount = int.Parse(puritxt.Text); vcount = int.Parse(vadatxt.Text); bcount = int.Parse(bondatxt.Text);
            using (SqlConnection conn = new SqlConnection(cs))
            {

                SqlCommand com = new SqlCommand();
                com.CommandText = $"delete billing;" +
                                    $" insert into Billing values" +
                                    $"('{iname}',{icount},{iprize},{igst},{(iprize + igst) * icount})," +
                                    $"('{dname}',{dcount},{dprize},{dgst},{(dprize + dgst) * dcount})," +
                                    $"('{uname}',{ucount},{uprize},{ugst},{(uprize + ugst) * ucount})," +
                                    $"('{pname}',{pcount},{pprize},{pgst},{(pprize + pgst) * pcount})," +
                                    $"('{vname}',{vcount},{vprize},{vgst},{(vprize + vgst) * vcount})," +
                                    $"('{bname}',{bcount},{bprize},{bgst},{(bprize + bgst) * bcount});" +
                                    $"delete Billing where no_of_paltes=0";
                com.Connection = conn;
                conn.Open();
                com.ExecuteNonQuery();
            }
            Response.Redirect("Billing.aspx");            
        }
    }
}