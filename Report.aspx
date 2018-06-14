<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NFC Work Flow Escalation | Report Generation</title>
     <style type="text/css">

        .auto-style2 {
            font-size: xx-large;
            text-align: center;
            color: #00C8FF;
             background-color: #001D26;
         }
        .auto-style3 {
            font-size: larger;
            color: #00C8FF;
             background-color: #001D26;
         }
        .auto-style4 {
            width: 93px;
            height: 94px;
             color: #00C8FF;
             background-color: #001D26;
         }
         .auto-style5 {
             color: #00C8FF;
         }
         .auto-style6 {
             margin-left: 176px;
         }
         .auto-style7 {
             color: #00C8FF;
             background-color: #001D26;
         }
         .auto-style8 {
             background-color: #001D26;
         }
         .auto-style9 {
             margin-left: 238px;
         }
         .auto-style10 {
             margin-bottom: 0px;
         }
    </style>
</head>
<body style="text-align: center; background-color: #001D26">
    <form id="form1" runat="server">
        <p>
            <img alt="" class="auto-style4" src="images/nfc.png" /></p>
        <p class="auto-style2">
            Nuclear Fuel Complex, Hyderabad.</p>
        <p class="auto-style3">
            Department of Atomic Energy, Government of India.</p>
        <p class="auto-style7">
            Generate a report on the Absence, or Irregularities in shift durations of the employees and Email it to the Plant Incharge concerned, in order to regularize them and take necessary action.</p>
        <p class="auto-style5">
            <span class="auto-style8">Plant:
            </span>
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="auto-style7">
            </asp:DropDownList>
        </p>
        <p class="auto-style5">
            <span class="auto-style8">Incharge:
            </span>
            <asp:Label ID="Label1" runat="server" Text="" CssClass="auto-style8"></asp:Label>
            <span class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email:
            </span>
            <asp:Label ID="Label2" runat="server" Text="" CssClass="auto-style8"></asp:Label>
        </p>
        <p class="auto-style5">
            <asp:Button ID="Button7" runat="server" BackColor="#00C8FF" BorderColor="#001D26" CssClass="auto-style10" ForeColor="#001D26" OnClick="Button7_Click" Text="Show Records" />
        </p>
        <p class="auto-style5">
            <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style9" Width="494px">
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
        </p>
        <p class="auto-style5">
            <span class="auto-style8">&nbsp;
            </span>
            <table style="text-align: center">
  <tr>
    <th class="auto-style5">Shift</th>
    <th class="auto-style5">Regular Timings</th>
  </tr>
  <tr>
    <td class="auto-style5">1</td>
    <td class="auto-style5">6:00 to 2:00</td>
  </tr>
  <tr>
    <td class="auto-style5">2</td>
    <td class="auto-style5">2:00 to 10:00</td>
  </tr>
  <tr>
    <td class="auto-style5">3</td>
    <td class="auto-style5">10:00 to 6:00</td>
  </tr>
</table>
            <asp:Button ID="Button1" runat="server" BackColor="#00C8FF" BorderColor="#001D26" ForeColor="#001D26" OnClick="Button1_Click" Text="Absence" CssClass="auto-style7" />
            &nbsp;<asp:Button ID="Button2" runat="server" BackColor="#00C8FF" BorderColor="#001D26" ForeColor="#001D26" OnClick="Button2_Click" Text="Shift 1 Irregularities" CssClass="auto-style7" />
            <asp:Button ID="Button3" runat="server" BackColor="#00C8FF" BorderColor="#001D26" ForeColor="#001D26" OnClick="Button3_Click" Text="Shift 2 Irregularities" CssClass="auto-style7" />
            <asp:Button ID="Button4" runat="server" BackColor="#00C8FF" BorderColor="#001D26" ForeColor="#001D26" OnClick="Button4_Click" Text="Shift 3 Irregularities" CssClass="auto-style7" />
            <asp:GridView ID="GridView1" runat="server" CssClass="auto-style6" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="616px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <asp:Button ID="Button5" runat="server" BackColor="#00C8FF" BorderColor="#001D26" ForeColor="#001D26" OnClick="Button5_Click" Text="Send Email to Incharge" CssClass="auto-style7" />
            <span class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span>
            <asp:Button ID="Button6" runat="server" BackColor="#00C8FF" BorderColor="#001D26" ForeColor="#001D26" OnClick="Button6_Click" Text="Home" CssClass="auto-style7" />
        </p>
    </form>
</body>
</html>
