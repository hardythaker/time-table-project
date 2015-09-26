<%@ Page Title="" Language="C#" MasterPageFile="~/SksTimeTable.Master" AutoEventWireup="true" CodeBehind="addData.aspx.cs" Inherits="SksTimeTable.addData" EnableViewState="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
   
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
                    <asp:DropDownList ID="listClass" runat="server" OnSelectedIndexChanged="listClass_SelectedIndexChanged" AutoPostBack="true" Class=""></asp:DropDownList>

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
            <asp:Label ID="lblAddTimeTableHeader" runat="server" Text=""></asp:Label>
            <asp:DataList runat="server" ID="dtlist"></asp:DataList>
            <div>
                <table class="mdl-data-table" style="width:100%; border:solid">


                </table>

            </div>
            
        </ContentTemplate>

    </asp:UpdatePanel>
</div>
</asp:Content>