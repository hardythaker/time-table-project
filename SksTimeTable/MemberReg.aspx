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

        .auto-style1 {
            font-size: medium;
            text-align: center;
        }
        
        .auto-style2 {
            color: rgb(255, 0, 0);
        }
        
    </style>
</head>
    
<body>
    <form id="form1" runat="server">
    <div>
        <Table ID="Table1" style="border: 1px solid black; margin-top:15%; margin-left:35%; width:30%" cellpadding="10" cellspacing="0">
            <tr class="border">
                <%--<td  class="border" width="50%"><asp:Label ID="Label1" runat="server" Text="User name :"></asp:Label></td>--%>                            
                <td  width=""  align="center"><asp:TextBox ID="UserNameTB" runat="server" TextMode="Email" Placeholder="SVV Mail ID.." MaxLength="45" OnTextChanged="UserNameTB_TextChanged"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="UserNameTB" Display="Dynamic"></asp:RequiredFieldValidator> 
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Email Address." ControlToValidate="UserNameTB" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>               
            </tr>
            <tr>
                <%--<td  class="border" width="50%"><asp:Label ID="Label2" runat="server" Text="Password :"></asp:Label></td>--%>
                <td  width=""  align="center"><asp:TextBox ID="PasswordTB" runat="server" TextMode="Password" Placeholder="Password" ControlToValidate="PasswordTB"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="PasswordTB" Display="Dynamic">*</asp:RequiredFieldValidator>
                <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="PasswordTB" Display="Dynamic" ErrorMessage='Password must be 8-10 characters long with at least one numeric,</br> one alphabet and one special character.' ValidationExpression="(?=^.{8,10}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&*()_+}{&quot;:;'?/>.<,])(?!.*\s).*$" ForeColor="Red"></asp:RegularExpressionValidator>       
                </td>                
            </tr>
            
            <tr>
                <td colspan="0" align="center"><asp:Button ID="RegMemBtn" runat="server" OnClick="RegMemBtn_Click" Text="Button" /></td>                
            </tr>
            <tr><td align="center" colspan="2">
                                    <asp:Label ID="regmsg" runat="server" ForeColor="Red"></asp:Label>
                            </td></tr>
            <tr>
                <td class="auto-style1"><em>Already a Member ? Click </em> <a href="default.aspx"><em><strong>Here</strong></em></a><em> To Login..!</em></td>
            </tr>
         </Table>
    </div>
    </form>
</body>
</html>
