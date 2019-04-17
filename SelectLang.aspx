<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        HttpCookie c = new HttpCookie("lang", txtLang.Text);
        c.Expires = DateTime.Now.AddDays(7);  // Durable cookie
        Response.Cookies.Add(c);
        Response.Redirect("ListBooks.aspx");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Select Language</h2>
        What's your fav. language?
        <asp:TextBox ID="txtLang" runat="server"></asp:TextBox>
        <p></p>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />

    </form>
</body>
</html>
