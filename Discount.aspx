<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        int amount, discount;

        amount = Int32.Parse(txtAmount.Text);
        if (amount > 10000)
            discount = amount * 20 / 100;
        else
            discount = amount * 10 / 100;

        lblDiscount.Text = $"Discount = {discount}";
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Discount Calculation</title>
</head>
<body>
    <h1>Discount Calculation</h1>
    <form id="form1" runat="server">
        Sales Amount :
        <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
        <p />
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate Discount" OnClick="btnCalculate_Click" />
        <p />
        <asp:Label ID="lblDiscount" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
