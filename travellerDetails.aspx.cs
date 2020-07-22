using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default3 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["Password"] == null || Session["Password"] == "")
            {
                Response.Redirect("login.aspx");
            }

            int fid = Convert.ToInt32(Request.QueryString["flightid"]);
            int returnfid = Convert.ToInt32(Request.QueryString["returnfid"]);

            if (Session["flighttrip"] == null)
            {
                Response.Redirect("~/book.aspx");
            }

            Session["fid"] = fid.ToString();
            Session["returnfid"] = returnfid.ToString();

            if (returnfid == 0)
            {
                returnrow.Visible = false;
            }

            lbldate.Text = Session["jdate"].ToString();
            lblreturndate.Text = Session["rdate"].ToString() ?? "";
            lblclass.Text = Session["flightclass"].ToString();
            lblclass2.Text = Session["flightclass"].ToString();
            lbladult.Text = Session["adult"].ToString();
            lbladult2.Text = Session["adult"].ToString();
            lblchild.Text = Session["children"].ToString();
            lblchild2.Text = Session["children"].ToString();
            lblinfrant.Text = Session["infrant"].ToString();
            lblinfrant2.Text = Session["infrant"].ToString();

            int total = (Convert.ToInt32(lbladult.Text)) + (Convert.ToInt32(lblchild.Text)) + (Convert.ToInt32(lblinfrant.Text));
            int returntotal = (Convert.ToInt32(lbladult2.Text)) + (Convert.ToInt32(lblchild2.Text)) + (Convert.ToInt32(lblinfrant2.Text));


            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = ConfigurationManager
                        .ConnectionStrings["cs"].ConnectionString;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select * from Flightdetail where " +
                    "FlightId =" + "'" + fid + "'";
                    cmd.Connection = conn;
                    conn.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            lbljourney.Text = sdr["FromPlace"].ToString() + " To " + sdr["ToPlace"].ToString();
                            lbltotal.Text = Convert.ToString(total * Convert.ToDecimal(sdr["Price"]));

                            Session["TotalPayment"] = lbltotal.Text;
                        }
                    }
                    conn.Close();
                }
            }

            if (returnfid != 0)
            {
                using (SqlConnection conn = new SqlConnection())
                {
                    conn.ConnectionString = ConfigurationManager
                            .ConnectionStrings["cs"].ConnectionString;
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandText = "select * from Flightdetail where " +
                        "FlightId =" + "'" + returnfid + "'";
                        cmd.Connection = conn;
                        conn.Open();
                        using (SqlDataReader sdr = cmd.ExecuteReader())
                        {
                            while (sdr.Read())
                            {
                                lblreturnjourney.Text = sdr["FromPlace"].ToString() + " To " + sdr["ToPlace"].ToString();
                                lbltotal2.Text = Convert.ToString(total * Convert.ToDecimal(sdr["Price"]));

                                Session["ReturnTotalPayment"] = lbltotal2.Text;
                            }
                        }
                        conn.Close();
                    }
                }
            }

            Session["FullPayment"] = (Convert.ToInt32(lbltotal.Text) + Convert.ToInt32(lbltotal2.Text == "" ? "0" : lbltotal2.Text)).ToString();
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Session["fname"] = txtfname.Text;
        Session["mname"] = txtmname.Text;
        Session["lname"] = txtlname.Text;
        Session["email"] = txtemail.Text;
        Session["contact"] = txtcontact.Text;

        Response.Redirect("payment.aspx");
    }
}