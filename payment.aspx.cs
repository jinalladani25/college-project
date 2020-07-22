using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default4 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {


        //con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
        //con.Open();
        //cmd = new SqlCommand("insert into TravellerDetails(FirstName,MiddleName,LastName,Email,ContactNamber)values('" + TextBox6.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox1.Text + "')", con);
        //cmd.ExecuteNonQuery();
        //con.Close();

        con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
        con.Open();
        cmd = new SqlCommand("insert into TravellerDetails(FirstName,MiddleName,LastName,Email,ContactNamber, FlightClass,Adult,Children,Infrant,Fromplace,Toplace,Trip,Date,ReturnDate,TotalPayment)values('" + Session["fname"] + "','" + Session["mname"] + "','" + Session["lname"] + "','" + Session["email"] + "','" + Session["contact"] + "','" + Session["flightclass"] + "','" + Session["adult"] + "','" + Session["children"] + "','" + Session["infrant"] + "','" + Session["ddldepart"] + "','" + Session["ddldest"] + "','" + Session["flighttrip"] + "','" + Session["jdate"] + "','" + Session["rdate"] + "','" + Session["FullPayment"] + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();

        con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
        con.Open();
        cmd = new SqlCommand("insert into Payment(CardNo,CvvNo,Name)values('" + txtcardno.Text + "','" + txtcvvno.Text + "','" + txtcardname.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("thankyou.aspx");
    }
}