﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage.Master" CodeBehind="CusHome.aspx.vb" Inherits="TeamProject.CusHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style2
        {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <span class="auto-style2"><strong>Customer Home</strong></span><br />
    <strong>
    <br />
    <br />
    <br />
    View All Accounts<br />
    <asp:GridView ID="gvViewAll" runat="server">
    </asp:GridView>
    <br />
    <br />
    Checking Accounts<br />
    <asp:GridView ID="gvCheAcc" runat="server">
    </asp:GridView>
    <br />
    <br />
    Savings Accounts<br />
    <asp:GridView ID="gvSavAcc" runat="server">
    </asp:GridView>
    <br />
    <br />
    Individual Retirement Accounts<br />
    <asp:GridView ID="gvIRAS" runat="server">
    </asp:GridView>
    <br />
    <br />
    Stock Portfolio<br />
    <asp:GridView ID="gvStoPor" runat="server">
    </asp:GridView>
    <br /></strong>
</asp:Content>