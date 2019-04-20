<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection
            (@"Data Source=(localdb)\mssqllocaldb;Integrated Security=True;Initial Catalog=msdb");
        con.Open();
        // Excute command
        string cmdstr = "update products set price = @price where prodid = @prodid";
        SqlCommand cmd = new SqlCommand(cmdstr, con);
        // Replace paramters with values 
        cmd.Parameters.AddWithValue("@prodid", txtProdid.Text);
        cmd.Parameters.AddWithValue("@price", txtPrice.Text);
        int count = cmd.ExecuteNonQuery();
        if (count == 1)
            lblMsg.Text = "Updated Successfully!";
        else
            lblMsg.Text = "Sorry! Could not update product!";
        con.Close();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <h2>Change Product Price</h2>
       Product Id <br />
       <asp:TextBox ID="txtProdid" runat="server"></asp:TextBox>
        <p></p>
        New Price <br />
       <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
        <p></p>
        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
        <p></p>
        <asp:Label ID="lblMsg" runat="server" EnableViewState="false" Text=""></asp:Label>
    </form>
</body>
</html>
