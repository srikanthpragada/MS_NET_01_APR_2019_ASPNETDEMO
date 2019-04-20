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
        <h2>Products</h2>
        <asp:GridView ID="GridView1" runat="server" 
            AutoGenerateColumns="False" 
            width="100%"
            DataKeyNames="prodid" DataSourceID="sdsProducts" 
            PageSize="5"
            AllowPaging="True" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="prodid" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="prodid" />
                <asp:BoundField DataField="prodname" HeaderText="Name" SortExpression="prodname" />
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                <asp:BoundField DataField="qoh" HeaderText="Qty" SortExpression="qoh" />
                <asp:BoundField DataField="remarks" HeaderText="Remarks" SortExpression="remarks" />
                <asp:BoundField DataField="catcode" HeaderText="Category" SortExpression="catcode" />
            </Columns>
        </asp:GridView>
         
        
        <asp:SqlDataSource ID="sdsProducts" runat="server" 
            ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" 
            SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>
         
        
    </form>
</body>
</html>
