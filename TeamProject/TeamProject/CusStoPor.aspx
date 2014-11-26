<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage.Master" CodeBehind="CusStoPor.aspx.vb" Inherits="TeamProject.CusStoPor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style2
        {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style2">
        <strong>Stock Portfolio</strong></p>
    <strong>Listing Transactions for Account:
    <br />
&nbsp;&nbsp;&nbsp; Account Name:<asp:TextBox ID="txtAccNam" runat="server" Enabled="False"></asp:TextBox>
    <br />
&nbsp;&nbsp;&nbsp; Account Number:<asp:TextBox ID="txtAccNum" runat="server" Enabled="False"></asp:TextBox>
    </strong>
</asp:Content>
