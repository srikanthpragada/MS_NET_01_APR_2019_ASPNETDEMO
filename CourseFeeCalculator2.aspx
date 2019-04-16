<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            int fee = Int32.Parse(ddlCourse.SelectedItem.Value);

            if (rbMorning.Checked)
                fee -= fee * 5 / 100;
            else
                if (rbAfternoon.Checked)
                fee -= fee * 10 / 100;

            if (cbStudent.Checked)
                fee -= fee * 10 / 100;

            lblFee.Text = $"Fee : {fee}";
        }
        else
        {
            Response.Write("Please select required options to see course fee!");
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h2>Course Fee Calculator</h2>
    <form id="form1" runat="server">
        Course <br />
        <asp:DropDownList ID="ddlCourse" runat="server" AutoPostBack="true">
            <asp:ListItem Value="4000">Python</asp:ListItem>
            <asp:ListItem Value="5000">Data Science</asp:ListItem>
            <asp:ListItem Value="2000">Angular</asp:ListItem>
        </asp:DropDownList>
        <p></p>
        Timings <br />
        <asp:RadioButton ID="rbMorning" GroupName="timings" AutoPostBack="true" runat="server" />Morning
        <asp:RadioButton ID="rbAfternoon" GroupName="timings" AutoPostBack="true" runat="server" />Afternoon
        <asp:RadioButton ID="rbEvening" Checked="true" GroupName="timings" AutoPostBack="true"  runat="server" />Evening
        <p></p>
        <asp:CheckBox ID="cbStudent" AutoPostBack="true" runat="server" />Existing Student
        <p></p>
     
        <p></p>
        <asp:Label ID="lblFee" runat="server"
            Font-Bold="True" Font-Names="Arial"
            Font-Size="20pt" ForeColor="#0033CC"></asp:Label>

    </form>
</body>
</html>
