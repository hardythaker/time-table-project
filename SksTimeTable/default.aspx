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
        .auto-style5 {
            width: 233px;
        }
        .auto-style6 {
            height: 35px;
            text-align: right;
        }
        .auto-style7 {
            color: #9AC9ED;
            font-size: large;
        }
        .auto-style8 {
            font-size: large;
        }
        .auto-style9 {
            font-size: xx-large;
            text-align: center;
            text-decoration: underline;
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
            <tr><td></td></tr><tr><td class="auto-style6"><span class="auto-style8"><em>Not A Member ?</em></span> <a href="MemberReg.aspx" style="color:rgb(50, 164, 255)"><em><strong><span class="auto-style7">Sing Up</span></strong></em></a></td></tr>
            <tr>
                <td class="auto-style9"> <em>Admin Login </em> </td>
            </tr>
            <tr>
                <td class="auto-style1" bgcolor="#E4E4E4">
                    <form name="login" method="post" runat="server">
                        <table align="center" width="60%" cellspacing="10" bgcolor="#EEEEEE">
                            <tr>
                                <td align="center" width="220px" class="auto-style1" style="font-size: large" valign="middle" >
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    Svv Mail ID : </td>
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
                                    <asp:Button ID="loginSubmitBtn" runat="server" Text="Sign IN" Width="100px" Font-Size="Large" OnClick="loginSubmitBtn_Click"/>
                                </td>
                            </tr>          
                            <tr>
                                <td align="center" colspan="3">
                                    <asp:Label ID="msg" runat="server" ForeColor="Red"></asp:Label><br />
                                    <asp:Label ID="msg2" runat="server" ForeColor="#9AC9ED"></asp:Label>
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

