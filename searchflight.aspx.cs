using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class searchflight : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindAirports();

            if (Session["flighttrip"] == null)
            {
                Response.Redirect("~/book.aspx");
            }
            radioflighttrip.SelectedValue = Session["flighttrip"].ToString();
            ddlflightclass.SelectedValue = Session["flightclass"].ToString();
            ddldepart.SelectedValue = Session["ddldepart"].ToString();
            ddldest.SelectedValue = Session["ddldest"].ToString();
            txt_cal.Text = Session["jdate"].ToString();
            txt_return.Text = Session["rdate"].ToString() ?? "";
            DropDownList1.SelectedValue = Session["adult"].ToString();
            DropDownList2.SelectedValue = Session["children"].ToString();
            DropDownList3.SelectedValue = Session["infrant"].ToString();

            if (radioflighttrip.SelectedValue == "OneWay")
            {
                txt_return.Enabled = false;
            }
            else
            {
                txt_return.Enabled = true;
            }

            BindSearchFlight();
        }
    }

    public void BindAirports()
    {
        List<Airports> airlist = new List<Airports>();
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
                        Airports obj = new Airports();
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

    public void BindSearchFlight()
    {
        if (Session["flighttrip"].ToString() == "OneWay")
        {
            List<FlightDetails> flights = new List<FlightDetails>();

            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = ConfigurationManager
                        .ConnectionStrings["cs"].ConnectionString;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select * from Flightdetail where " +
                    "FromPlace =" + "'" + Session["ddldepart"].ToString() + "' and ToPlace = '" + Session["ddldest"] + "'";
                    cmd.Connection = conn;
                    conn.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            FlightDetails obj = new FlightDetails();
                            obj.FlightId = Convert.ToInt32(sdr["FlightId"].ToString());
                            obj.FlightLogo = sdr["FlightLogo"].ToString();
                            obj.FlightCompany = sdr["FlightCompany"].ToString();
                            obj.From = sdr["FromPlace"].ToString();
                            obj.To = sdr["ToPlace"].ToString();
                            obj.DepTime = sdr["DepTime"].ToString();
                            obj.ArrivalTime = sdr["ArrivalTime"].ToString();
                            obj.Duration = sdr["Duration"].ToString();
                            obj.Price = sdr["Price"].ToString();

                            flights.Add(obj);
                        }
                    }
                    conn.Close();
                }

                string flies = "";
                foreach (var item in flights)
                {
                    flies += "<div class='col-sm-12'>";
                    flies += "<div class='panel panel-default'>";
                    flies += "<div class='panel-heading' style='background-color: black; color: white'>";
                    flies += "<img style='height:30px;width:30px;' src = 'images/flightlogo/" + item.FlightLogo + "'" + "/>";
                    flies += " " + item.FlightCompany + " (" + item.From + " to " + item.To + ") ";
                    flies += "<span class='pull-right'>" + Session["flighttrip"].ToString() + "</span>";
                    flies += "</div><div class='panel-body'><div class='col-sm-3'>Time: ";
                    flies += item.DepTime + "<img style='height: 25px; width: 25px;margin-left:5px;margin-top:-4px;' src = 'images/flightlogo/arrow.svg' />" + " " + item.ArrivalTime;
                    flies += "</div><div class='col-sm-3'>Duration: " + item.Duration + "</div>";
                    flies += "<div class='col-sm-3'>Cost: Rs. " + item.Price;
                    flies += "</div><div class='col-sm-3'>";
                    flies += "<a href='travellerDetails.aspx?flightid="+ item.FlightId + "'" +" id='btnbook' class='btn btn-primary pull-right btnbook'>Book</a>";
                    flies += "</div></div></div></div>";
                }
                if (flies == "")
                {
                    ltronewayflights.Text = "<label>OOps! No Flight available.</label>";
                }
                else
                {
                    ltronewayflights.Text = flies;
                }
            }
        }
        else
        {
            List<FlightDetails> flights1 = new List<FlightDetails>();
            List<FlightDetails> flights2 = new List<FlightDetails>();

            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = ConfigurationManager
                        .ConnectionStrings["cs"].ConnectionString;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select * from Flightdetail where " +
                    "FromPlace =" + "'" + Session["ddldepart"].ToString() + "' and ToPlace = '" + Session["ddldest"] + "'";
                    cmd.Connection = conn;
                    conn.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            FlightDetails obj = new FlightDetails();
                            obj.FlightId = Convert.ToInt32(sdr["FlightId"].ToString());
                            obj.FlightLogo = sdr["FlightLogo"].ToString();
                            obj.FlightCompany = sdr["FlightCompany"].ToString();
                            obj.From = sdr["FromPlace"].ToString();
                            obj.To = sdr["ToPlace"].ToString();
                            obj.DepTime = sdr["DepTime"].ToString();
                            obj.ArrivalTime = sdr["ArrivalTime"].ToString();
                            obj.Duration = sdr["Duration"].ToString();
                            obj.Price = sdr["Price"].ToString();

                            flights1.Add(obj);
                        }
                    }
                    conn.Close();
                }
            }

            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = ConfigurationManager
                        .ConnectionStrings["cs"].ConnectionString;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select * from Flightdetail where " +
                    "FromPlace =" + "'" + Session["ddldest"].ToString() + "' and ToPlace = '" + Session["ddldepart"] + "'";
                    cmd.Connection = conn;
                    conn.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            FlightDetails obj = new FlightDetails();
                            obj.FlightId = Convert.ToInt32(sdr["FlightId"].ToString());
                            obj.FlightLogo = sdr["FlightLogo"].ToString();
                            obj.FlightCompany = sdr["FlightCompany"].ToString();
                            obj.From = sdr["FromPlace"].ToString();
                            obj.To = sdr["ToPlace"].ToString();
                            obj.DepTime = sdr["DepTime"].ToString();
                            obj.ArrivalTime = sdr["ArrivalTime"].ToString();
                            obj.Duration = sdr["Duration"].ToString();
                            obj.Price = sdr["Price"].ToString();

                            flights2.Add(obj);
                        }
                    }
                    conn.Close();
                }
            }

            string flies = "";
            foreach (var item in flights1)
            {
                FlightDetails f = flights2.Where(i => i.From == Session["ddldest"].ToString() && i.To == Session["ddldepart"].ToString()).FirstOrDefault();
                int returnflightid = f.FlightId;
                
                flies += "<div class='col-sm-12'><div class='panel panel-default'><div class='panel-heading' style='background-color: black; color: white; height: 55px;'> Round Trip ";
                if (returnflightid != null)
                {
                    flies += "<a href='travellerDetails.aspx?flightid=" + item.FlightId + "&returnfid=" + f.FlightId + "'" + " id='btnbook' class='btn btn-primary pull-right btnbook'>Book</a>";
                }
                else
                {
                    flies += "<a href='travellerDetails.aspx?flightid=" + item.FlightId + "&returnfid=" + 0 + "'" + "id='btnbook' class='btn btn-primary pull-right btnbook'>Book</a>";
                }
                flies += "</div><div class='panel-body'><div class='col-sm-6'><div class='panel panel-default'><div class='panel-heading' style='background-color: black; color: white'>";
                flies += "<img style='height:30px;width:30px;' src = 'images/flightlogo/" + item.FlightLogo + "'" + "/>";
                flies += " " + item.FlightCompany + " (" + item.From + " to " + item.To + ") ";
                flies += "</div><div class='panel-body'><div class='col-sm-6'>" + item.DepTime;
                flies += "<img style='height: 25px; width: 25px;margin-left:5px;margin-top:-4px;' src = 'images/flightlogo/arrow.svg' />" + " " + item.ArrivalTime;
                flies += "</div><div class='col-sm-4'>" + item.Duration + "</div><div class='col-sm-2'>";
                flies += "Rs." + item.Price;
                flies += "</div></div></div></div>";

                if (f != null)
                {
                    flights2.Remove(f);
                    flies += "<div class='col-sm-6'><div class='panel panel-default'><div class='panel-heading' style='background-color: black; color: white'>";
                    flies += "<img style='height:30px;width:30px;' src = 'images/flightlogo/" + f.FlightLogo + "'" + "/>";
                    flies += " " + f.FlightCompany + " (" + f.From + " to " + f.To + ") ";
                    flies += "</div><div class='panel-body'><div class='col-sm-6'>" + f.DepTime;
                    flies += "<img style='height: 25px; width: 25px;margin-left:5px;margin-top:-4px;' src = 'images/flightlogo/arrow.svg' />" + " " + f.ArrivalTime;
                    flies += "</div><div class='col-sm-4'>" + f.Duration + "</div><div class='col-sm-2'>";
                    flies += "Rs." + f.Price;
                    flies += "</div></div></div></div></div></div></div>";
                }
                else
                {
                    flies += "<div class='col-sm-6 col-sm-offset-6'></div></div></div></div>";
                }

            }
            if (flies == "")
            {
                ltronewayflights.Text = "<label>OOps! No Flight available.</label>";
            }
            else
            {
                ltronewayflights.Text = flies;
            }
        }

    }

    protected void btnResetsearch_Click(object sender, EventArgs e)
    {
        Session["flighttrip"] = radioflighttrip.SelectedValue.ToString();
        Session["flightclass"] = ddlflightclass.SelectedValue.ToString();
        Session["ddldepart"] = ddldepart.SelectedValue.ToString();
        Session["ddldest"] = ddldest.SelectedValue.ToString();
        Session["jdate"] = txt_cal.Text;
        Session["rdate"] = txt_return.Text;
        Session["adult"] = DropDownList1.SelectedValue.ToString();
        Session["children"] = DropDownList2.SelectedValue.ToString();
        Session["infrant"] = DropDownList3.SelectedValue.ToString();

        Response.Redirect("~/searchflight.aspx");
    }
}

public class FlightDetails
{
    public int FlightId { get; set; }
    public string FlightLogo { get; set; }
    public string FlightCompany { get; set; }
    public string From { get; set; }
    public string To { get; set; }
    public string DepTime { get; set; }
    public string ArrivalTime { get; set; }
    public string Duration { get; set; }
    public string Price { get; set; }
}

public class Airports
{
    public int Id { get; set; }
    public string AirportName { get; set; }
    public string Place { get; set; }

}