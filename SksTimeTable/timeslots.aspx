<%@ Page Title="" Language="C#" MasterPageFile="~/SksTimeTable.Master" AutoEventWireup="true" CodeBehind="timeslots.aspx.cs" Inherits="SksTimeTable.timeslots" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Title" runat="server">
    Time Slots
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Body" runat="server">
   
    
        <table align="center" width="60%">
            
            <tr>
                <td>From :</td>
                <td>
                    <input type="text" name="from" />
                </td>
                <td>To :</td>
                <td>
                    <input type="text" name="to" /></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="Update" />
                </td>
            </tr>
            
        </table>
   
</asp:Content>
