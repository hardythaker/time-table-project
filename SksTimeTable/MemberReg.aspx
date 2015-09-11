<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberReg.aspx.cs" Inherits="SksTimeTable.MemberReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style/StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .border {
            border: 2px solid black;
        }

    </style>
</head>
    
<body>
    <form id="form1" runat="server">
    <div>
        <Table ID="Table1" style="border: 1px solid black; margin-top:15%; margin-left:35%; width:30%" cellpadding="10" cellspacing="0">
            <tr class="border">
                <%--<td  class="border" width="50%"><asp:Label ID="Label1" runat="server" Text="User name :"></asp:Label></td>--%>                            
                <td  width=""  align="center"><asp:TextBox ID="UserNameTB" runat="server" TextMode="Email" Placeholder="SVV Mail ID.." autofocus="on" MaxLength="45"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" Text="*" ControlToValidate="UserNameTB"></asp:RequiredFieldValidator> 
                    </td>               
            </tr>
            <tr>
                <%--<td  class="border" width="50%"><asp:Label ID="Label2" runat="server" Text="Password :"></asp:Label></td>--%>
                <td  width=""  align="center"><asp:TextBox ID="PasswordTB" runat="server" TextMode="Password" Placeholder="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="PasswordTB">*</asp:RequiredFieldValidator>
                <%--<asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="6 alphbets" ControlToValidate="PasswordTB" MinimumValue="20" MaximumValue="8" EnableClientScript="False"></asp:RangeValidator>--%>    
                </td>                
            </tr>
            <tr>
                <td colspan="0" align="center"><asp:Button ID="RegMemBtn" runat="server" OnClick="RegMemBtn_Click" Text="Button" /></td>                
            </tr>
            <tr><td align="center" colspan="2">
                                    <asp:Label ID="regmsg" runat="server" ForeColor="Red"></asp:Label>
                            </td></tr>
         </Table>
    </div>
    </form>
</body>
</html>
