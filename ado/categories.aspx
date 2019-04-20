<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Categories</h1>
        <asp:SqlDataSource ID="sdsCategories" runat="server" ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" SelectCommand="SELECT * FROM [categories]"></asp:SqlDataSource>
        
        <asp:DataList ID="DataList1" DataSourceID="sdsCategories" runat="server">
            <ItemTemplate>
               <a href='cat_products.aspx?catcode=<%# Eval("catcode") %>'>
                   <%# Eval("catdesc") %>
               </a>
               <br />
            </ItemTemplate>
        </asp:DataList>
        
    </form>
</body>
</html>
