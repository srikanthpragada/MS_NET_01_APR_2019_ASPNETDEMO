<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        List<String> langs = Session["langs"] as List<String>;
        if(langs == null)
        {
            langs = new List<String>();
        }

        langs.Add(txtLang.Text);
        Session["langs"] = langs;
    }


    protected void btnShow_Click(object sender, EventArgs e)
    {
        List<String> langs = Session["langs"] as List<String>;
        if (langs == null)
        {
            lblLangs.Text = "No Languages Found!";
            return;
        }

        lblLangs.Text = "";
        foreach(String l in langs)
        {
            lblLangs.Text += l + "<br/>";
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        Language <asp:TextBox ID="txtLang" runat="server"></asp:TextBox>
        <p></p>
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
        <p></p>
        <asp:Button ID="btnShow" runat="server" Text="Show Langs" OnClick="btnShow_Click" />
        <p></p>
        <asp:Label ID="lblLangs" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
