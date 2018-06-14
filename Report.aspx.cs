using System;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.IO;
public partial class Report : System.Web.UI.Page
{
    string gMailAccount = "v1111jha@gmail.com";
    string password = "vinay97choudhary";
    string to;
    string subject = "Attendance/Overtime Report";
    string message;
    //string Securitykey;
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select EmpID, Date from MasterDB where PlantID = '" + DropDownList1.SelectedItem.Text +"' AND Attendance = 'N'", con);
        DataSet table = new DataSet();
        da.Fill(table);
        GridView1.DataSource = table;
        GridView1.DataBind();
        con.Close();
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
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

    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from MasterDB where PlantID = '" + DropDownList1.SelectedItem.Text + "' AND Irregular1 != ''", con);
        DataSet table = new DataSet();
        da.Fill(table);
        GridView1.DataSource = table;
        GridView1.DataBind();
        con.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from MasterDB where PlantID = '" + DropDownList1.SelectedItem.Text + "' AND Irregular2 != ''", con);
        DataSet table = new DataSet();
        da.Fill(table);
        GridView1.DataSource = table;
        GridView1.DataBind();
        con.Close();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from MasterDB where PlantID = '" + DropDownList1.SelectedItem.Text + "' AND Irreguar3 != ''", con);
        DataSet table = new DataSet();
        da.Fill(table);
        GridView1.DataSource = table;
        GridView1.DataBind();
        con.Close();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    public string GetGridviewData(GridView gv)
    {
        StringBuilder strBuilder = new StringBuilder();
        StringWriter strWriter = new StringWriter(strBuilder);
        HtmlTextWriter htw = new HtmlTextWriter(strWriter);
        gv.RenderControl(htw);
        return strBuilder.ToString();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        con.Open();
        password = (string)Session["pass"];
        message = "Please find attached below, the report for Attendance/Overtime for the Plant: " + DropDownList1.Text + " given below" + "<br>" + GetGridviewData(GridView1) +  "<br><br><br>" + "Please regularize the concerned employees' attendance, or take necessary action as per the protocol." + "< br >" + "Thank You";
        //message needs proper HTML Formatting
        to = Label2.Text;
        NetworkCredential loginInfo = new NetworkCredential(gMailAccount, password);
        MailMessage msg = new MailMessage();
        msg.From = new MailAddress(gMailAccount);
        msg.To.Add(new MailAddress(to));
        msg.Subject = subject;
        msg.Body = message;
        msg.IsBodyHtml = true;

        try
        {
            SmtpClient client = new SmtpClient("smtp.gmail.com");
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = loginInfo;
            client.Send(msg);
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex);
        }
        con.Close();
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from MasterDB where PlantID = '" + DropDownList1.SelectedItem.Text + "'", con);
        DataSet table = new DataSet();
        da.Fill(table);
        GridView2.DataSource = table;
        GridView2.DataBind();
        con.Close();
    }
}