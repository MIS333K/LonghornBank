<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage.Master" CodeBehind="AccountsManagement.aspx.vb" Inherits="TeamProject.AccountsManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="accounts">
        <div id="checking">
            <asp:Label ID="Label1" runat="server" Text="Checking"></asp:Label>
        </div>

        <div id="savings">
            <asp:Label ID="Label2" runat="server" Text="Savings"></asp:Label>
        </div>

        <div id="IRA">
            <asp:Label ID="Label3" runat="server" Text="IRA"></asp:Label>
        </div>

        <div id="stockportfolio">
            <asp:Label ID="Label4" runat="server" Text="Stock Portfolio"></asp:Label>
        </div>
    </div>
</asp:Content>
