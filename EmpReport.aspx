<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmpReport.aspx.cs" Inherits="EmpReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Records</title>
    <style type="text/css">
        .auto-style1 {
            width: 110px;
            height: 110px;
            float: left;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            color: #00C8FF;
            font-size: large;
        }
        .auto-style4 {
            color: #00C8FF;
            font-size: xx-large;
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
<body style="background-color: #001D26">
    <form id="form1" runat="server">
    <div class="auto-style2" style="background-color: #001D26">
    
        <h2>
            <img alt="NFC Logo" class="auto-style1" src="images/nfc.png" /> <span class="auto-style4"><strong>Nuclear Fuel Complex, Hyderabad</strong></span><br class="auto-style3" />
            <span class="auto-style3">Department of Atomic Energy, Govt. of India</span></h2>
    
    </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <h3 class="auto-style3">Employee Records:</h3>
        <p class="auto-style3">
            Plant:
            <asp:DropDownList ID="DropDownList1" runat="server" Width="273px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
        </p>
        <p class="auto-style3">
            Incharge:
            <asp:Label ID="Label2" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email:
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
        <p class="auto-style3">
            Employee:<asp:DropDownList ID="DropDownList2" runat="server" Width="246px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
            </asp:DropDownList>
        </p>
        <p class="auto-style3">
            &nbsp;</p>
        <p class="auto-style3">
            <asp:Button ID="Button1" runat="server" BackColor="#00C8FF" BorderColor="#001D26" ForeColor="#001D26" OnClick="Button1_Click" style="text-align: justify; margin-left: 90px" Text="Load" Width="65px" />
&nbsp;<asp:GridView ID="GridView1" runat="server" BorderColor="#00C8FF" ForeColor="#00C8FF" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            </asp:GridView>
        </p>
        <p class="auto-style3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button5" runat="server" BackColor="#00C8FF" BorderColor="#001D26" ForeColor="#001D26" OnClick="Button5_Click" Text="Show Records" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" BackColor="#00C8FF" BorderColor="#001D26" ForeColor="#001D26" Text="Back to Home" OnClick="Button4_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button6" runat="server" BackColor="#00C8FF" BorderColor="#001D26" ForeColor="#001D26" OnClick="Button6_Click" Text="Generate Report" />
        </p>
    </form>
    <address class="auto-style11" style="color: #00C8FF">
        <span class="newStyle1">Developed by <strong>Vishrut Jha</strong> (CSE), Panjab University, Chandigarh</span></address>
    </body>
</html>
