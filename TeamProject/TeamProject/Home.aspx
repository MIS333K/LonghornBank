<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage.Master" CodeBehind="Home.aspx.vb" Inherits="TeamProject.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<div id="login">
    <div id="toggle">
    <asp:LinkButton ID="lnkCustomerToggle" runat="server">Customer Login</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="lnkManagerToggle" runat="server">Manager Login</asp:LinkButton>
    </div>
        <asp:Panel ID="CustomerLoginPanel" runat="server">
            
            <div id="customer_login">
                <h3>Customer Login</h3>
                <asp:Label ID="Label1" runat="server" Text="Customer ID"></asp:Label>
                <br /><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                <br /><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br /><br />
                <asp:Button ID="btnCustomerLogin" runat="server" Text="Login" />
                <br /><br />
                <asp:LinkButton ID="LinkButton1" runat="server">Forgot Password?</asp:LinkButton>
                <br />
                <asp:LinkButton ID="LinkButton2" runat="server">Activate New Account</asp:LinkButton>
            </div>
        </asp:Panel>


    <asp:Panel ID="ManagerLoginPanel" runat="server">
            
            <div id="manager_login">
                <h3>Manager Login</h3>
                <asp:Label ID="Label3" runat="server" Text="Manager ID"></asp:Label>
                <br /><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
                <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                <br /><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <br /><br />
                <asp:Button ID="btnManagerLogin" runat="server" Text="Login" />
                <br /><br />
                <asp:LinkButton ID="LinkButton3" runat="server">Forgot Password?</asp:LinkButton>
                <br />
            </div>
        </asp:Panel>
</div>    
        
    
</asp:Content>
