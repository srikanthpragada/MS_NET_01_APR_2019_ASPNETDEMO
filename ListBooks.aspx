<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        // Find fav. lang using cookie
        HttpCookie c = Request.Cookies["lang"];
        if (c is null)
            Response.Redirect("SelectLang.aspx");
        else
            Response.Write("<h2>Books of " + c.Value + "</h2>");

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <a href="SelectLang.aspx">Change Language</a>
    </form>
</body>
</html>
