using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Default3 : System.Web.UI.Page
{
    SqlConnection con;
    static int seatbookno = -1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Seatstaus();
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
        string updatedata="update BookSeat set Status='B' where Seatno="+ seatbookno+"";
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Response.Redirect("travellerDetails.aspx");
    }
    private void Seatstaus()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
        string myQuery = "select * from BookSeat";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myQuery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        int rows = ds.Tables[0].Rows.Count;
        int i = 0;
        while (i < rows)
        {
            string status;
            status = ds.Tables[0].Rows[i]["status"].ToString();
            if (status == "A")
            {
                if (i == 0 && seatbookno - 1 != i)
                {
                    Button1.BackColor = System.Drawing.Color.Gray;
                }
                if (i == 1 && seatbookno - 1 != i)
                {
                    Button2.BackColor = System.Drawing.Color.Gray;
                }
                if (i == 2 && seatbookno - 1 != i)
                {
                    Button3.BackColor = System.Drawing.Color.Gray;
                }
                if (i == 3 && seatbookno - 1 != i)
                {
                    Button4.BackColor = System.Drawing.Color.Gray;
                }

            }
            if (status == "B")
            {
                if (i == 0)
                {
                    Button1.BackColor = System.Drawing.Color.Red;
                    Button1.Enabled = false;
                }
                if (i == 1)
                {
                    Button2.BackColor = System.Drawing.Color.Red;
                    Button2.Enabled = false;
                }
                if (i == 2)
                {
                    Button3.BackColor = System.Drawing.Color.Red;
                    Button3.Enabled = false;
                }
                if (i == 3)
                {
                    Button4.BackColor = System.Drawing.Color.Red;
                    Button4.Enabled = false;
                }
            }
            i = i + 1;
        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        seatbookno = 1;
        Button1.BackColor = System.Drawing.Color.Green;
        Seatstaus();
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        seatbookno = 2;
        Button2.BackColor = System.Drawing.Color.Green;
        Seatstaus();
        
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        seatbookno = 3;
        Button3.BackColor = System.Drawing.Color.Green;
        Seatstaus();
        
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        seatbookno = 4;
        Button4.BackColor = System.Drawing.Color.Green;
        Seatstaus();
        
    }
}