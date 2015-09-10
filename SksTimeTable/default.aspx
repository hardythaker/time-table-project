<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="SksTimeTable.WebForm3" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../style/StyleSheet.css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Roboto:400' rel='stylesheet' type='text/css'>
    <title>Login</title>    
    <style type="text/css">
        .auto-style1 {
            height: 34px;
        }
        .auto-style2 {
            height: 35px;
        }
        .auto-style3 {
            height: 34px;
            width: 233px;
        }
        .auto-style4 {
            width: 91px;
            text-align: center;
        }
        .auto-style5 {
            width: 233px;
        }
    </style>
<script type = "text/javascript" >

   function preventBack(){window.history.forward();}

    setTimeout("preventBack()", 0);

    window.onunload=function(){null};

</script>
</head>
<body style="vertical-align:middle; height: 641px;" >
    <div class="auto-style2">
        <table align="center" style="margin-top:10%;height:60%"  width="800px" cellspacing="10" bgcolor="#CCCCCC"  >
            <tr><td></td></tr><tr><td class="auto-style2"></td></tr>
            <tr>
                <td class="auto-style4" dir="ltr" style="font-size: xx-large; " bgcolor="#E4E4E4">
                  
                    &nbsp;Admin Login</td>
            </tr>
            <tr>
                <td class="auto-style1" bgcolor="#E4E4E4">
                    <form name="login" method="post" runat="server">
                        <table align="center" width="60%" cellspacing="10" bgcolor="#EEEEEE">
                            <tr>
                                <td align="center" width="220px" class="auto-style1" style="font-size: large" valign="middle" >
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    User Name :
                                </td>
                                <td align="Center" class="auto-style3">
                                    <asp:TextBox ID="UserNameTB" runat="server" Width="100%"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserNameTB" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
                                
                            </tr>
                            <tr>
                                <td align="center" width="220px" style="font-size: large" valign="middle">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    Password :
                                </td>
                                <td align="Center" class="auto-style5">
                                    <asp:TextBox ID="PasswordTB" runat="server" TextMode="Password" Width="100%" MaxLength="16"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PasswordTB" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="Center" colspan="3">                              
                                    <asp:Button ID="loginSubmitBtn" runat="server" Text="Submit" Width="100px" Font-Size="Large" OnClick="loginSubmitBtn_Click"/>
                                </td>
                            </tr>
                            <tr>
                                <td><a href="MemberReg.aspx">Registration</a></td>
                            </tr>
                            <tr><td align="center" colspan="3">
                                    <asp:Label ID="msg" runat="server" ForeColor="Red"></asp:Label>
                            </td></tr>
                        </table>
                    </form>
                </td>
            </tr>
            <tr><td></td></tr>            
        </table>
    </div>
</body>
</html>

