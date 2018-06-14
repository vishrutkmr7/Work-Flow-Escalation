<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NFC Work Flow Escalation | Home</title>
    <style type="text/css">

        .auto-style2 {
            font-size: xx-large;
            text-align: center;
            color: #00C8FF;
        }
        .auto-style3 {
            font-size: larger;
            color: #00C8FF;
        }
        .auto-style4 {
            width: 93px;
            height: 94px;
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
        <p class="auto-style3">
        The NFC Work Flow Escalation system is aimed at automating and regularizing the attendance records and overtime timings of the employees working at different plants at the Nuclear Fuel Complex, Hyderabad.</p>
        <p class="auto-style3">
            &nbsp;</p>
        <p class="auto-style3">
            &nbsp;<asp:Button ID="Button2" runat="server" BackColor="#00C8FF" BorderColor="#001D26" ForeColor="#001D26" OnClick="Button2_Click" Text="View Employee Records and Generate Report" />
        </p>
    </form>
</body>
</html>
