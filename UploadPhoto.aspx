<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UploadPhoto.aspx.cs" Inherits="UploadPhoto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Upload Photos</h2>
        Select Photo to upload :
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <p></p>
        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
        <p></p>
        <asp:Label ID="lblMsg" runat="server" 
            Text="" 
            EnableViewState="false"></asp:Label>
        <h3>List of Images</h3>
        <asp:Label ID="lblLinks" runat="server" Text="" EnableViewState="false"></asp:Label>
    </form>
</body>
</html>
