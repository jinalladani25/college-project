using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    String s = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
    

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(s);
        con.Open();
        cmd = new SqlCommand("insert into feedback(name,Email,Subject,Messege)values('" + txt_name.Text + "','" + txt_email.Text + "','" + txt_subject.Text + "','" + txt_msg.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();

        txt_name.Text = "";
        txt_email.Text = "";
        txt_subject.Text = "";
        txt_msg.Text = "";
    }
}