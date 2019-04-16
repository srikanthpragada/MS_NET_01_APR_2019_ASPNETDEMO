<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnShowFee_Click(object sender, EventArgs e)
    {
        int fee = Int32.Parse(ddlCourse.SelectedItem.Value);

        if (rbMorning.Checked)
            fee -= fee * 5 / 100;
        else
            if(rbAfternoon.Checked)
            fee -= fee * 10 / 100;

        if (cbStudent.Checked)
            fee -= fee * 10 / 100;


        lblFee.Text = $"Fee : {fee}";
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
        <asp:DropDownList ID="ddlCourse" runat="server">
            <asp:ListItem Value="4000">Python</asp:ListItem>
            <asp:ListItem Value="5000">Data Science</asp:ListItem>
            <asp:ListItem Value="2000">Angular</asp:ListItem>
        </asp:DropDownList>
        <p></p>
        Timings <br />
        <asp:RadioButton ID="rbMorning" GroupName="timings" runat="server" />Morning
        <asp:RadioButton ID="rbAfternoon" GroupName="timings"  runat="server" />Afternoon
        <asp:RadioButton ID="rbEvening" Checked="true" GroupName="timings" runat="server" />Evening
        <p></p>
        <asp:CheckBox ID="cbStudent" runat="server" />Existing Student
        <p></p>
        <asp:Button ID="btnShowFee" runat="server" Text="Show Fee" OnClick="btnShowFee_Click" />
        <p></p>
        <asp:Label ID="lblFee" runat="server"
            Font-Bold="True" Font-Names="Arial"
            Font-Size="20pt" ForeColor="#0033CC"></asp:Label>

    </form>
</body>
</html>
