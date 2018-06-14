using System;
using System.Configuration;
using System.Data.SqlClient;


public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("EmpReport.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("RepGen.aspx");
    }
}