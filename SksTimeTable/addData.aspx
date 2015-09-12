<%@ Page Title="" Language="C#" MasterPageFile="~/SksTimeTable.Master" AutoEventWireup="true" CodeBehind="addData.aspx.cs" Inherits="SksTimeTable.addData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Add Data
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <asp:Label ID="Label1" runat="server" Text="Select Branch : "></asp:Label>
    <asp:DropDownList ID="listClass" runat="server"></asp:DropDownList>

    <asp:Label ID="Label2" runat="server" Text="Select Class : "></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>

    <asp:Label ID="Label3" runat="server" Text="Select Div : "></asp:Label>
    <asp:DropDownList ID="listDivision" runat="server"></asp:DropDownList>

    <asp:Label ID="Label4" runat="server" Text="Select Class : "></asp:Label>
    <asp:DropDownList ID="DropDownList4" runat="server"></asp:DropDownList>

    <asp:Label ID="Label5" runat="server" Text="Select Class : "></asp:Label>
    <asp:DropDownList ID="DropDownList5" runat="server"></asp:DropDownList>
    <br />
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"></asp:UpdatePanel>
</asp:Content>
