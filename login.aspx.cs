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
    protected void btn_user_login_Click(object sender, EventArgs e)
    {

        
        con = new SqlConnection(s);

        con.Open();
        
        
      cmd = new SqlCommand("select * from user_registration where Email='"+TextBox3.Text+"' and Password='"+TextBox4.Text+"'", con);
     
       dr = cmd.ExecuteReader();
       if (TextBox3.Text == "jdkks@gmail.com" && TextBox4.Text == "jdkksjdkks")
       {
           Session["Email"] = TextBox3.Text;
           Session["Password"] = TextBox4.Text;
           Response.Redirect("Admin/index.aspx");
       }
       else
       {
           while (dr.Read())
           {

               if (((TextBox3.Text == dr["Email"].ToString()) && (TextBox4.Text == dr["Password"].ToString())))
               {
                   Session["Email"] =TextBox3.Text;
                   Session["Password"] = TextBox4.Text;
                   Response.Redirect("index.aspx");
               }
               else
               {
                   Response.Write("<script>alert('Email or password may be wrong')</script>");
                   Response.Redirect("login.aspx");
               }
           }
       }
       dr.Close();
        cmd.ExecuteNonQuery();
        con.Close();
    }
}    
 

    