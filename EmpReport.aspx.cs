using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class EmpReport : System.Web.UI.Page
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

                if (DropDownList1.SelectedItem.Text == "NFC_A")
                {
                    SqlDataAdapter sda1 = new SqlDataAdapter("select * from EmployeeDB1", con);
                    DataSet ds1 = new DataSet();
                    sda1.Fill(ds1);
                    for (int i = 0; i < ds1.Tables[0].Rows.Count; i++)
                    {
                        DropDownList2.Items.Add(ds1.Tables[0].Rows[i]["EmployeeID"].ToString());
                    }

                }
                if (DropDownList1.SelectedItem.Text == "NFC_B")
                {
                    SqlDataAdapter sda2 = new SqlDataAdapter("select * from EmployeeDB2", con);
                    DataSet ds2 = new DataSet();
                    sda2.Fill(ds2);
                    for (int i = 0; i < ds2.Tables[0].Rows.Count; i++)
                    {
                        DropDownList2.Items.Add(ds2.Tables[0].Rows[i]["EmployeeID"].ToString());
                    }

                }
            }
            con.Close();
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter sda1 = new SqlDataAdapter("select * from PlantDB where PlantID='" + DropDownList1.SelectedItem.Text + "'", con);
        DataSet ds1 = new DataSet();
        sda1.Fill(ds1);
        if (ds1.Tables[0].Rows.Count > 0)
        {
            Label2.Text = ds1.Tables[0].Rows[0]["InchargeName"].ToString();
            Label1.Text = ds1.Tables[0].Rows[0]["Email"].ToString();
        }
        con.Close();
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("RepGen.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
       if(DropDownList2.SelectedItem.Text == "NFC_AE1")
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from EmpRecA1", con);
            DataSet table = new DataSet();
            da.Fill(table);
            GridView1.DataSource = table;
            GridView1.DataBind();
        }
       else if(DropDownList2.SelectedItem.Text == "NFC_AE2")
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from EmpRecA2", con);
            DataSet table = new DataSet();
            da.Fill(table);
            GridView1.DataSource = table;
            GridView1.DataBind();
        }
       else if(DropDownList2.SelectedItem.Text == "NFC_BE1")
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from EmpRecB1", con);
            DataSet table = new DataSet();
            da.Fill(table);
            GridView1.DataSource = table;
            GridView1.DataBind();
        }
       else if (DropDownList2.SelectedItem.Text == "NFC_BE2")
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from EmpRecB2", con);
            DataSet table = new DataSet();
            da.Fill(table);
            GridView1.DataSource = table;
            GridView1.DataBind();
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}