using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class View : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select * from PlantDB", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    DropDownList1.Items.Add(ds.Tables[0].Rows[i]["PlantID"].ToString());
                }
            }
            con.Close();
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select * from EmpDB where PlantID='" + DropDownList1.SelectedItem.Text + "'", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    DropDownList2.Items.Add(ds.Tables[0].Rows[i]["EmpID"].ToString());
                }
            }
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from PlantDB where PlantID='" + DropDownList1.SelectedItem.Text + "'", con);
            DataSet ds1 = new DataSet();
            sda1.Fill(ds1);
            if (ds1.Tables[0].Rows.Count > 0)
            {
                Label1.Text = ds1.Tables[0].Rows[0]["InchargeName"].ToString();
                Label2.Text = ds1.Tables[0].Rows[0]["Email"].ToString();
            }
            con.Close();
        }
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from MasterDB where EmpID='" + DropDownList2.SelectedItem.Text + "'", con);
        DataSet table = new DataSet();
        da.Fill(table);
        GridView1.DataSource = table;
        GridView1.DataBind();
        con.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Report.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}