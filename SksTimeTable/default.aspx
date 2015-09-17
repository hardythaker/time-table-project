<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="SksTimeTable.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="CACHE-CONTROL" content="NO-CACHE">
    <meta http-equiv="EXPIRES" content="0">
    <link href="../style/StyleSheet.css" rel="stylesheet">
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

        .auto-style14 {
            height: 35px;
            width: 202px;
            text-align: right;
        }

        .auto-style15 {
            width: 202px;
            text-align: right;
        }

        .auto-style16 {
            height: 35px;
            width: 339px;
        }

        .auto-style17 {
            width: 339px;
        }

        .auto-style18 {
            text-decoration: underline;
        }

        .auto-style19 {
            font-size: medium;
        }

        .subBtn {
            position: relative;
            overflow: hidden;
        }

        .auto-style20 {
            text-decoration: none;
        }

        .auto-style21 {
            height: 35px;
            text-align: left;
        }

        .ripple-please {
            position: relative;
            overflow: hidden;
        }

        .some-div {
            width: 20%;
            height: 50px;
            background: rgb(200,200,200);
            /*margin: 50px;
            padding: 25px;*/
            box-sizing: border-box;
        }
    </style>
    <script type="text/javascript">

        function preventBack() { window.history.forward(); }

        setTimeout("preventBack()", 0);

        window.onunload = function () { null };

    </script>
</head>
<body style="vertical-align: middle;">
    <div class="auto-style2">
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />


            <table id="logininnertable" align="center" style="height: 60%; width: 800px;" cellspacing="10" class="mdl-color--grey-300">
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style6"><span class="auto-style8"><em>Not A Member ?</em></span> <a href="MemberReg.aspx" class="auto-style20"><span class="auto-style8">Sing Up</span></a></td>
                </tr>
                <tr>
                    <td class="auto-style9"><strong>&nbsp; <span class="auto-style18">Admin Login</span> </strong></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <form name="login" method="post" runat="server">
                            <table align="center" cellspacing="10" class="auto-style10">
                                <tr>
                                    <td class="auto-style14" style="font-size: large" valign="middle"></td>
                                    <td align="Center" class="auto-style16">
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                            <asp:TextBox ID="UserNameTB" runat="server" Class="mdl-textfield__input mdl-color-text--accent" TextMode="Email"></asp:TextBox>
                                            <label class="mdl-textfield__label  mdl-color-text--primary-dark mdl-typography--font-bold" for="UserNameTB">SVV Mail ID...</label>
                                        </div>
                                    </td>
                                    <td class="auto-style21">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserNameTB" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="LoginEmailWrong_ValidationControl" runat="server" ErrorMessage="Invalid Email ID" Display="Dynamic" ControlToValidate="UserNameTB" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="auto-style19"></asp:RegularExpressionValidator>
                                    </td>

                                </tr>
                                <tr>
                                    <td style="font-size: large" valign="middle" class="auto-style15"></td>
                                    <td align="Center" class="auto-style17">
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                            <asp:TextBox Class="mdl-textfield__input mdl-color-text--accent" ID="PasswordTB" runat="server" TextMode="Password" MaxLength="16"></asp:TextBox>
                                            <label class="mdl-textfield__label  mdl-color-text--primary-dark mdl-typography--font-bold" for="PasswordTB">Password...</label>
                                        </div>
                                    </td>
                                    <td class="mdl-typography--text-left">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PasswordTB" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="Center" colspan="3">
                                        <%--<input class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--accent" ID="loginSubmitBtn"  type="button" value="submit" onclick="loginSubmitBtn_Click" runat="server" />--%>
                                        <%--<button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent " id="loginSubmitBtn" onclick="loginSubmitBtn_Click()" style="width: 20%">Sign In</button>--%>



                                        <asp:Button class="mdl-button mdl-button--primary mdl-button--raised mdl-typography--font-bold" Text="Sing In" ID="loginSubmitBtn" OnClick="loginSubmitBtn_Click" runat="server" Style="width: 20%" />


                                        <%--<asp:Button ID="Button1" runat="server" Text="Button" />--%>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3">
                                        <asp:Label ID="msg" runat="server" ForeColor="Red" CssClass="auto-style19"></asp:Label><br />
                                        <asp:Label ID="msg2" runat="server" ForeColor="#9AC9ED"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <%-- <div id="footer" style=" align-items:baseline ">--%>
        <footer class="mdl-mini-footer">
            <%--<br /><br /><br /><%--<br /><br /><br /><br /><br />--%>

            <div class="mdl-mini-footer__left-section">
                <div class="mdl-logo">Title</div>
                <ul class="mdl-mini-footer__link-list">
                    <li><a href="#">Help</a></li>
                    <li><a href="#">Privacy & Terms</a></li>
                </ul>
            </div>
            <div class="mdl-mini-footer--right-section">
                <div class="mdl-logo">Title</div>
                <ul class="mdl-mini-footer__link-list">
                    <li><a href="#">Designed & Developed by :</a></li>
                    <li><a href="http://www.facebook.com/hardythaker">Hardik Thaker</a></li>
                    <li>
                        <a href="http://www.facebook.com/hardythaker" target="_blank">
                            <img src="../images/fb.png" />
                        </a>
                    </li>
                </ul>
            </div>
        </footer>
        <%-- </div>--%>
    </div>
</body>
</html>

