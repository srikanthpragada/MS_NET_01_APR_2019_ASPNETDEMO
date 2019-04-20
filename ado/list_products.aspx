<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(Database.ConnectionString);
        con.Open();
        // Excute command
        SqlCommand cmd = new SqlCommand("select * from products order by prodname", con);
        SqlDataReader dr = cmd.ExecuteReader();
        while(dr.Read())
        {
            string name = dr["prodname"].ToString();
            lblProducts.Text += name + "<br/>";
        }

        dr.Close();
        con.Close();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblProducts" runat="server" EnableViewState="False" Text=""></asp:Label> 
    </form>
</body>
</html>
