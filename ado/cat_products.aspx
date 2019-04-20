<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Products By Category</h2>
        <asp:GridView ID="GridView1" runat="server"
            DataKeyNames="prodid" 
            DataSourceID="sdsProducts"
            EmptyDataText="Sorry! No products found!">
        </asp:GridView>
        <asp:SqlDataSource ID="sdsProducts" runat="server"
            ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" 
            SelectCommand="SELECT * FROM [products] WHERE ([catcode] = @catcode)">
            <SelectParameters>
                <asp:QueryStringParameter Name="catcode" QueryStringField="catcode" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

    </form>
</body>
</html>
