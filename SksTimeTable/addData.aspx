<%@ Page Title="" Language="C#" MasterPageFile="~/SksTimeTable.Master" AutoEventWireup="true" CodeBehind="addData.aspx.cs" Inherits="SksTimeTable.addData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Add Data
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

   <%-- <asp:Label ID="lblSelectBranch" runat="server" Text="Select Branch : "></asp:Label>
    <asp:DropDownList ID="listBranch" runat="server"></asp:DropDownList>
    &nbsp &nbsp &nbsp &nbsp--%>
    <asp:Label ID="lblSelectClass" runat="server" Text="Select Class : "></asp:Label>
    <asp:DropDownList ID="listClass" runat="server"></asp:DropDownList>
    &nbsp &nbsp &nbsp &nbsp
    <asp:Label ID="lblSelectSem" runat="server" Text="Select Sem :"></asp:Label>
    <asp:DropDownList ID="listSemester" runat="server"></asp:DropDownList>
    &nbsp &nbsp &nbsp &nbsp
    <asp:Label ID="lblSelectDiv" runat="server" Text="Select Division : "></asp:Label>
    <asp:DropDownList ID="listDivision" runat="server"></asp:DropDownList>
    &nbsp &nbsp &nbsp &nbsp
    <asp:Label ID="Label1" runat="server" Text="Start Time : "></asp:Label>
    <asp:DropDownList ID="listTime" runat="server"></asp:DropDownList>
    &nbsp &nbsp &nbsp &nbsp
    <asp:Label ID="Label2" runat="server" Text="Time Slots : "></asp:Label>
    <asp:DropDownList ID="listTimeSlots" runat="server"></asp:DropDownList>
    <br />
    <hr />
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <asp:Table runat="server">
            <asp:TableRow></asp:TableRow>
        </asp:Table>
    </asp:UpdatePanel>
   
</asp:Content>
