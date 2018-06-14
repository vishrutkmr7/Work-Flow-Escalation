<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NFC Work Flow Escalation</title>
    <style type="text/css">
        .auto-style2 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style6 {
            width: 110px;
            height: 110px;
            float: left;
        }
        .auto-style8 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style9 {
            font-size: xx-large;
            color: #00C8FF;
        }
        .auto-style10 {
            font-weight: normal;
        }
        .auto-style11 {
            font-size: medium;
        }
        .newStyle1 {
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body style="text-align: center; font-size: xx-large; background-color: #001D26">
    <form id="form1" runat="server">
    <h1 title="NFC: Work Flow Escalation"><span class="auto-style2">
        <strong style="color: #00C8FF">
        <img alt="" class="auto-style6" src="images/nfc.png" /></strong><span style="color: #00C8FF" class="auto-style10"><strong class="auto-style9">Nuclear Fuel Complex, Hyderabad</strong></span></span></h1>
        <p class="auto-style9" title="NFC: Work Flow Escalation">Department of Atomic Energy, Govt. of India.</p>
        <p>
            <strong style="color: #00C8FF"><span class="auto-style2">
        &nbsp;</span><span class="auto-style8">NFC:&nbsp; Escalation in Work Flow System</span></strong></p>
    <p style="color: #00C8FF; font-size: medium; text-align: left;">
        The NFC Work Flow Escalation system is aimed at automating and regularizing the attendance records and overtime timings of the employees working at different plants at the Nuclear Fuel Complex, Hyderabad.</p>
        <p style="color: #00C8FF; font-size: medium">
            &nbsp;</p>
        <p style="color: #00C8FF; font-size: medium">
            &nbsp;</p>
        <p style="color: #00C8FF; font-size: medium">
            <asp:Button ID="Button1" runat="server" BackColor="#00C8FF" BorderColor="#001D26" ForeColor="#001D26" OnClick="Button1_Click" Text="View Employee Records" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="#00C8FF" BorderColor="#001D26" ForeColor="#001D26" OnClick="Button2_Click" Text="Generate Report" />
        </p>
    </form>
    <address class="auto-style11" style="color: #00C8FF">
        <span class="newStyle1">Developed by <strong>Vishrut Jha</strong> (CSE), Panjab University, Chandigarh</span></address>
    </body>
</html>
