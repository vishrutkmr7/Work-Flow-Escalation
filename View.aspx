<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NFC Work Flow Escalation | View Records</title>
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
             margin-left: 0px;
             color: #00C8FF;
             background-color: #001D26;
         }
         .auto-style7 {
             margin-left: 238px;
         }
         .auto-style8 {
             color: #00C8FF;
             background-color: #001D26;
         }
         .auto-style9 {
             background-color: #001D26;
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
        <p class="auto-style8">
            View the Employees&#39; Attendance and Overtime Records</p>
        <p class="auto-style5">
            <strong><span class="auto-style9">Plant:
            </span>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style6" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="139px">
            </asp:DropDownList>
            </strong>
        </p>
        <p class="auto-style5">
            <span class="auto-style9">Plant Incharge: </span> <asp:Label ID="Label1" runat="server" Text="" CssClass="auto-style9"></asp:Label>
            <span class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;Email: </span> <asp:Label ID="Label2" runat="server" Text="" CssClass="auto-style9"></asp:Label>
        </p>
        <p class="auto-style5">
            <strong><span class="auto-style9">Employee:</span><asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="107px" CssClass="auto-style8">
            </asp:DropDownList>
            </strong>
        </p>
        <p class="auto-style5">
            <asp:Button ID="Button1" runat="server" BackColor="#00C8FF" BorderColor="#001D26" ForeColor="#001D26" Text="View" OnClick="Button1_Click" CssClass="auto-style8" />
        </p>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style7" Width="522px">
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
        <br class="auto-style8" />
        <asp:Button ID="Button2" runat="server" BackColor="#00C8FF" BorderColor="#001D26" ForeColor="#001D26" OnClick="Button2_Click" Text="Send Report" CssClass="auto-style8" />
        <span class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:Button ID="Button3" runat="server" BackColor="#00C8FF" BorderColor="#001D26" ForeColor="#001D26" OnClick="Button3_Click" Text="Home" CssClass="auto-style8" />
    </form>
    </body>
</html>
