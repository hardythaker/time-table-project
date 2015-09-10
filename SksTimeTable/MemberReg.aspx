<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberReg.aspx.cs" Inherits="SksTimeTable.MemberReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:Label ID="Label1" runat="server" Text="User name"></asp:Label>
&nbsp;
        <asp:TextBox ID="UsernameTB" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="PasswordTB" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="RegMemBtn" runat="server" OnClick="RegMemBtn_Click" Text="Button" />
        
    </div>
    </form>
</body>
</html>
