using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class _Default : System.Web.UI.Page
{
    SqlConnection con;

    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!Page.IsPostBack)
        {
            BindAirports();
        }
   
    }

    public void BindAirports()
    {
        List<Airportlists> airlist = new List<Airportlists>();
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager
                    .ConnectionStrings["cs"].ConnectionString;
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select * from Airports";
                cmd.Connection = conn;
                conn.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        Airportlists obj = new Airportlists();
                        obj.Id = Convert.ToInt32(sdr["Id"].ToString());
                        obj.Place = sdr["Place"].ToString();

                        airlist.Add(obj);
                    }
                }
                conn.Close();
            }

            ddldepart.DataSource = airlist;
            ddldepart.DataTextField = "Place";
            ddldepart.DataValueField = "Place";
            ddldepart.DataBind();

            ddldest.DataSource = airlist;
            ddldest.DataTextField = "Place";
            ddldest.DataValueField = "Place";
            ddldest.DataBind();

        }
    }


    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> SearchCustomers(string prefixText, int count)
    {
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager
                    .ConnectionStrings["cs"].ConnectionString;
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select City from CitySerch where " +
                "City like @SearchText + '%'";
                cmd.Parameters.AddWithValue("@SearchText", prefixText);
                cmd.Connection = conn;
                conn.Open();
                List<string> CitySerch = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        CitySerch.Add(sdr["City"].ToString());
                    }
                }
                conn.Close();
                return CitySerch;
            }
        }
    }

    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
    //    con.Open();
    //    cmd = new SqlCommand("insert into ebooking(bfrom,bto,Depart,breturn,Audlt,Children,Infant)values('" + DropDownList4.SelectedItem.Text + "','" + DropDownList5.SelectedItem.Text + "','" + txt_cal.Text + "','" + txt_return.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "')", con);
    //    //cmd = new SqlCommand("select * from Root where FromCity='" + DropDownList4.SelectedItem.Text + "',To='" + DropDownList5.SelectedItem.Text + "' ", con);
    //    cmd.ExecuteNonQuery();
        
    //    con.Close();

    //    Response.Redirect("Default2.aspx");
    //}

   
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        Session["flighttrip"] = radioflighttrip.SelectedValue.ToString();
        Session["flightclass"] = ddlflightclass.SelectedValue.ToString();
        Session["ddldepart"] = ddldepart.SelectedValue.ToString();
        Session["ddldest"] = ddldest.SelectedValue.ToString();
        Session["jdate"] = txt_cal.Text;
        Session["rdate"] = txt_return.Text;
        Session["adult"] = ddladult.SelectedValue.ToString();
        Session["children"] = ddlchildren.SelectedValue.ToString();
        Session["infrant"] = ddlinf.SelectedValue.ToString();

        Response.Redirect("~/searchflight.aspx");
    }
}


public class Airportlists
{
    public int Id { get; set; }
    public string AirportName { get; set; }
    public string Place { get; set; }
   
}