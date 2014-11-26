<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage.Master" CodeBehind="ManageCustomers.aspx.vb" Inherits="TeamProject.ManageCustomers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    This is where the table of customers will be.<asp:GridView ID="gvClients" runat="server">
    </asp:GridView>
</asp:Content>
