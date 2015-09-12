<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="SksTimeTable.WebForm3" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
    <META HTTP-EQUIV="EXPIRES" CONTENT="0">
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
            font-size: 40px;
            text-align: center;
            height: 49px;
        }
        .auto-style10 {
            width: 98%;
        }
        .auto-style13 {
            margin-left: 0px;
        }
        .auto-style14 {
            height: 34px;
            width: 320px;
            text-align: right;
        }
        .auto-style15 {
            width: 320px;
            text-align: right;
        }
        .auto-style16 {
            height: 34px;
            width: 275px;
        }
        .auto-style17 {
            width: 275px;
        }
        .auto-style18 {
            text-decoration: underline;
        }
        .auto-style19 {
            font-size: medium;
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
                <td class="auto-style9"> <strong>&nbsp; <span class="auto-style18">Admin Login</span> </strong> </td>
            </tr>
            <tr>
                <td class="auto-style1" bgcolor="#E4E4E4">
                    <form name="login" method="post" runat="server">
                        <table align="center" cellspacing="10" bgcolor="#EEEEEE" class="auto-style10">
                            <tr>
                                <td class="auto-style14" style="font-size: large" valign="middle" >
                                    SVV Mail ID : </td>
                                <td align="Center" class="auto-style16">
                                    <asp:TextBox ID="UserNameTB" runat="server" Width="93%" Placeholder="Enter SVV Mail ID..." CssClass="auto-style13"></asp:TextBox>
                                </td>
                                <td class="auto-style1">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserNameTB" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="LoginEmailWrong_ValidationControl" runat="server" ErrorMessage="Invalid Email ID" Display="Dynamic" ControlToValidate="UserNameTB" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="auto-style19"></asp:RegularExpressionValidator>
                                </td>
                                
                            </tr>
                            <%--<tr style="height:0px">
                                <td width="220px"></td>
                                <td class="auto-style10">
                                    
                                </td>
                            </tr>--%>
                            <tr>
                                <td style="font-size: large" valign="middle" class="auto-style15">
                                    Password : </td>
                                <td align="Center" class="auto-style17">
                                    <asp:TextBox ID="PasswordTB" runat="server" TextMode="Password" Width="92%" MaxLength="16"  Placeholder="Password..."></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PasswordTB" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>
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

