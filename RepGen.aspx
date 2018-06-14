<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RepGen.aspx.cs" Inherits="RepGen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Report Generation</title>
    <style type="text/css">
        .auto-style1 {
            width: 110px;
            height: 110px;
            float: left;
        }
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style11 {
            font-size: medium;
            text-align: center;
        }
        .newStyle1 {
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body style="color: #00C8FF; background-color: #001D26">
    <form id="form1" runat="server">
    <h1 class="auto-style3">
        <img alt="NFC Logo" class="auto-style1" src="images/nfc.png" /><strong><span class="auto-style2">Nuclear Fuel Complex, Hyderabad</span></strong></h1>
        <h2 class="auto-style3">
            Department of Atomic Energy, Govt. of India</h2>
        <p>
            &nbsp;</p>
        <h3><strong>Report Generation:</strong></h3>
        <p>
            Plant:<asp:DropDownList ID="DropDownList1" runat="server" Width="148px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
        </p>
        <p>
            Incharge:&nbsp;<asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email:
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BackColor="#00C8FF" BorderColor="#001D26" ForeColor="#001D26" Text="Attendance Report" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" BackColor="#00C8FF" BorderColor="#001D26" ForeColor="#001D26" Text="Overtime Records" OnClick="Button2_Click" />
&nbsp;<p>
&nbsp; 
            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
        </p>
        <p>
            Employee Name:
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            </asp:GridView>
        </p>
        <p>
            Employee Name:<asp:Label ID="Label4" runat="server" Text=""></asp:Label>
&nbsp;<asp:GridView ID="GridView2" runat="server">
            </asp:GridView>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" BackColor="#00C8FF" BorderColor="#001D26" ForeColor="#001D26" Text="Send E Mail to the Incharge" OnClick="Button3_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" BackColor="#00C8FF" BorderColor="#001D26" ForeColor="#001D26" Text="Back to Home" OnClick="Button4_Click" />
        </p>
    </form>
    <address class="auto-style11" style="color: #00C8FF">
        <span class="newStyle1">Developed by <strong>Vishrut Jha</strong> (CSE), Panjab University, Chandigarh</span></address>
    </body>
</html>
