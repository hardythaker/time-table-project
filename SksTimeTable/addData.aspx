<%@ Page Title="" Language="C#" MasterPageFile="~/SksTimeTable.Master" AutoEventWireup="true" CodeBehind="addData.aspx.cs" Inherits="SksTimeTable.addData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Add Data
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <%-- <asp:Label ID="lblSelectBranch" runat="server" Text="Select Branch : "></asp:Label>
    <asp:DropDownList ID="listBranch" runat="server"></asp:DropDownList>
    &nbsp &nbsp &nbsp &nbsp
         OnSelectedIndexChanged="listClass_SelectedIndexChanged"--%>
    <div>
    <table style="width: 100%;">
        <tr>
            <td>
                <asp:Label ID="lblSelectClass" runat="server" Text="Select Class : "></asp:Label>
                <asp:DropDownList ID="listClass" runat="server" AutoPostBack="true"></asp:DropDownList>

<           </td>
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
                <asp:DropDownList ID="DropDown1" runat="server" onselectedindexchanged="DropDown1_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Value="a"></asp:ListItem>
                <asp:ListItem Value="b"></asp:ListItem>
           </asp:DropDownList>
           </td>
        </tr>
    </table>
    </div>
   
    <br />
    
    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
         <Triggers>
                    <asp:AsyncPostBackTrigger controlid="listClass" EventName="SelectedIndexChanged" />
             </Triggers>
        <ContentTemplate>
             <asp:Label ID="lblAddTimeTableHeader" runat="server" Text=""></asp:Label>
                 
        </ContentTemplate>
       
    </asp:UpdatePanel>
       
</asp:Content>
