using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
            con.Open();
            cmd = new SqlCommand("select FlightId from Flightdetail", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr[0].ToString());
            }
            con.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
        con.Open();
        cmd = new SqlCommand("insert into Flightdetail(FlightLogo,FlightCompany,FromPlace,Toplace,depTime,ArrivalTime,Duration,Price,IsActive)values('"+DropDownList2.SelectedValue+"','"+txt_fcompany.Text+"','"+txt_fromplce.Text+"','"+txt_toplce.Text+"','"+txt_deptime.Text+"','"+txt_arrival.Text+"','"+txt_duration.Text+"','"+txt_price.Text+"','"+txt_isctive.Text+"')",con);
        cmd.ExecuteNonQuery();
        con.Close();
    }

    

    protected void btn_update_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
        con.Open();
        cmd = new SqlCommand("update Flightdetail set FlightLogo='" + DropDownList2.SelectedValue + "',FlightCompany='" + txt_fcompany.Text + "',FromPlace='" + txt_fromplce.Text + "',ToPlace='" + txt_toplce.Text + "',DepTime='" + txt_deptime.Text + "',ArrivalTime='" + txt_arrival.Text + "',Duration='" + txt_duration.Text + "',Price='" + txt_price.Text + "',IsActive='" + txt_isctive.Text + "' where FlightId='"+DropDownList1.SelectedValue+"'", con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
        con.Open();
        cmd = new SqlCommand("select * from Flightdetail where FlightId='"+DropDownList1.SelectedValue+"'",con);
        dr = cmd.ExecuteReader();
        dr.Read();
        DropDownList2.SelectedValue = dr[1].ToString();
        txt_fcompany.Text = dr[2].ToString();
        txt_fromplce.Text = dr[3].ToString();
        txt_toplce.Text = dr[4].ToString();
        txt_deptime.Text = dr[5].ToString();
        txt_arrival.Text = dr[6].ToString();
        txt_duration.Text = dr[7].ToString();
        txt_price.Text = dr[8].ToString();
        txt_isctive.Text = dr[9].ToString();
        con.Close();
    }
    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
        con.Open();
        cmd = new SqlCommand("delete from Flightdetail where FlightId='" + DropDownList1.SelectedValue + "'", con);
        cmd.ExecuteReader();
        con.Close();
    }
}