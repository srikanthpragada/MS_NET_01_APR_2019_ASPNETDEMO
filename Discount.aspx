<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        int amount, discount, disrate;

        amount = Int32.Parse(txtAmount.Text);
        if (amount > 10000)
            disrate = 20;
        else
            disrate = 10;

        if (cbPrivileged.Checked)
            disrate += 5;

        discount = amount * disrate / 100;

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
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
            runat="server" 
            ControlToValidate="txtAmount"
            ErrorMessage="Please enter valid amount!"></asp:RequiredFieldValidator>
        <p />
        <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
            runat="server" 
            ControlToValidate="txtMobile"
            ValidationExpression="[0-9]{10}"  
            ErrorMessage="Invalid Mobile Number"></asp:RegularExpressionValidator>
        <p />
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate Discount" OnClick="btnCalculate_Click" />
        <p />
        <asp:CheckBox ID="cbPrivileged" runat="server" />
        Privileged Customer
        <p />
        <asp:Label ID="lblDiscount" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
