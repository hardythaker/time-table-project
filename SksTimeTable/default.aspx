<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="SksTimeTable.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
   <meta HTTP-EQUIV="CACHE-CONTROL" content="NO-CACHE" >
    <meta HTTP-EQUIV="EXPIRES" content="0" >
    <link href="../style/StyleSheet.css" rel="stylesheet" />
    <%--<link href=https://fonts.googleapis.com/css?family=Roboto:400 rel='stylesheet' type='text/css'>--%>
    
    <link rel="stylesheet" href="https://storage.googleapis.com/code.getmdl.io/1.0.4/material.indigo-pink.min.css">
    <script src="https://storage.googleapis.com/code.getmdl.io/1.0.4/material.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700" type="text/css">
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
                                    <div class="mdl-textfield mdl-js-textfield">
                                        <asp:TextBox ID="UserNameTB" runat="server" Class="mdl-textfield__input" TextMode="Email"></asp:TextBox>
                                        <label class="mdl-textfield__label" for="UserNameTB" style="font-weight: 900">SVV Mail ID...</label>
                                    </div>
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
                                    Password :
                                </td>
                                <td align="Center" class="auto-style17">
                                    <div class="mdl-textfield mdl-js-textfield">
                                    <asp:TextBox Class="mdl-textfield__input" ID="PasswordTB" runat="server" TextMode="Password" MaxLength="16"></asp:TextBox>
                                    <label class="mdl-textfield__label" for="PasswordTB" style="font-weight: 900">Password...</label>
                                        </div>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PasswordTB" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="Center" colspan="3">   
                                    <%--<input class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" ID="loginSubmitBtn"  type="submit" value="submit" onclick="loginSubmitBtn_Click" runat="server" />--%>
                                    <%--<button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" ID="loginSubmitBtn" type="submit" style="width:20%">Sign In</button>--%>                          
                                    <asp:Button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" ID="loginSubmitBtn" runat="server" OnClick="loginSubmitBtn_Click" text="Sign In" style="width:20%/>
                                    <%--<asp:Button ID="Button1" runat="server" Text="Button" />--%>
                                </td>
                            </tr>          
                            <tr>
                                <td align="center" colspan="3">
                                    <asp:Label ID="msg" runat="server" ForeColor="Red" CssClass="auto-style19"></asp:Label><br />
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

