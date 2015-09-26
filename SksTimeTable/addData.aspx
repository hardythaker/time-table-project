<%@ Page Title="" Language="C#" MasterPageFile="~/SksTimeTable.Master" AutoEventWireup="true" CodeBehind="addData.aspx.cs" Inherits="SksTimeTable.addData" EnableViewState="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style>
        .demo-card-wide.mdl-card {
            align-content:center;
            width: 90%;
        }
        .cen {
            vertical-align:central;
            text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Title" runat="server">
    Add Data
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Body" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <%-- <asp:Label ID="lblSelectBranch" runat="server" Text="Select Branch : "></asp:Label>
    <asp:DropDownList ID="listBranch" runat="server"></asp:DropDownList>
    &nbsp &nbsp &nbsp &nbsp
    --%>
    <div>
        <table style="width: 100%;">
            <tr>
                <td>
                    <asp:Label ID="lblSelectClass" runat="server" Text="Select Class : "></asp:Label>
                    <asp:DropDownList ID="listClass" runat="server" OnSelectedIndexChanged="listClass_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>

                </td>
                <td>
                    <asp:Label ID="lblSelectSem" runat="server" Text="Select Sem :"></asp:Label>
                    <asp:DropDownList ID="listSemester" runat="server"></asp:DropDownList>

                </td>
                <td>
                    <asp:Label ID="lblSelectDiv" runat="server" Text="Select Division : "></asp:Label>
                    <asp:DropDownList ID="listDivision" runat="server"></asp:DropDownList>

                </td>

                <td>
                    <asp:Label ID="Label1" runat="server" Text="Start Time : "></asp:Label>
                    <asp:DropDownList ID="listTime" runat="server"></asp:DropDownList>

                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Time Slots : "></asp:Label>
                    <asp:DropDownList ID="listTimeSlots" runat="server"></asp:DropDownList>

                </td>
                <td>
                    <asp:DropDownList ID="DropDown1" runat="server">
                        <asp:ListItem Value="a"></asp:ListItem>
                        <asp:ListItem Value="b"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
    </div>

    <br />

    <div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="listClass" EventName="SelectedIndexChanged" />

            </Triggers>
            <ContentTemplate>
                <%--<asp:Label ID="lblAddTimeTableHeader" runat="server" Text=""></asp:Label>
            <asp:DataList runat="server" ID="dtlist"></asp:DataList>--%>
               <center>
                <div class="demo-card-wide mdl-card mdl-shadow--8dp">
                    <div class="mdl-card__title">
                        <p class="mdl-card__title-text">
                           TimeTable Information System
                        </p>
                    </div>
                    <div class="mdl-card__supporting-text">
                        
                        <table class="mdl-data-table" style="width: 100%;font:bold" align="center">
                            <tr>
                                <td style="text-align: center" colspan="8">
                                     <asp:Label ID="lblAddTimeTableHeader" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                
                                <td class="mdl-data-table__cell--non-numeric">
                                    <asp:Label ID="lblTimeSlots" runat="server" Text="Time-Slots" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="mdl-data-table__cell--non-numeric"><b>Monday</b>
                                </td>
                                <td class="mdl-data-table__cell--non-numeric"><b>Tuesday</b>
                                </td>
                                <td class="mdl-data-table__cell--non-numeric"><b>Wednesday</b>
                                </td>
                                <td class="mdl-data-table__cell--non-numeric"><b>Thurday</b>
                                </td>
                                <td class="mdl-data-table__cell--non-numeric"><b>Friday</b>
                                </td>
                                <td class="mdl-data-table__cell--non-numeric"><b>Saturday</b>
                                </td>
                                <td class="mdl-data-table__cell--non-numeric"><b>Sunday</b>
                                </td>
                                
                            </tr>
                        </table>
                    </div>
                    <div class="mdl-card__actions mdl-card--border">
                        <a class="mdl-button mdl-color-text--white mdl-color--accent  mdl-js-button mdl-js-ripple-effect">Save
                        </a>
                    </div>
                </div>
                      </center>
            </ContentTemplate>

        </asp:UpdatePanel>
    </div>
</asp:Content>
