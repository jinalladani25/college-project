using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"].ToString();
        if (id == "1")
        {
            Image1.ImageUrl = "~/images/off1.jpg";
        }
        if (id == "2")
        {
            Image1.ImageUrl = "~/images/off2.png";
        }
        if (id == "3")
        {
            Image1.ImageUrl = "~/images/off3.png";
        }
        if (id == "4")
        {
            Image1.ImageUrl = "~/images/off4.png";
        }
        if (id == "5")
        {
            Image1.ImageUrl = "~/images/off5.jpg";
        }

        if (id == "6")
        {
            Image1.ImageUrl = "~/images/off6.png";
        }
     }
 }
