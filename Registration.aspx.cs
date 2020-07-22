using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Configuration;


public partial class _Default : System.Web.UI.Page
{
       SqlConnection con;
        
        SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
     
 }

    protected void btn_user_can_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

        con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
        con.Open();
        cmd = new SqlCommand("insert into user_registration(Username,Email,Password,Repassword,Gender,Address,Contact,City)values('" + txt_user_uname.Text + "','" + txt_user_email.Text + "','" + txt_user_pass.Text + "','" + txt_user_repass.Text + "','" + rdio_user_gender.SelectedValue + "','" + txt_address.Text + "','" + txt_user_contact.Text + "','" + TextBox1.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
        con.Open();
        cmd = new SqlCommand("insert into user_login(Email,Password)values('" + txt_user_email.Text + "','" + txt_user_pass.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("login.aspx");
        con.Close();
    }
}


   