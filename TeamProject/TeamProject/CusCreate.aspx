<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage.Master" CodeBehind="CusCreate.aspx.vb" Inherits="TeamProject.CusCreate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1
        {
            text-align: left;
        }
        .auto-style2
        {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="right" class="auto-style1">
        <div class="auto-style1">
            <br />
            <span class="auto-style2"><strong>Create Account</strong></span><br />
            <br />
            <asp:Label ID="Label2" runat="server" style="text-align: left" Text="Last Name: "></asp:Label>
            <asp:TextBox ID="txtLastName" runat="server" ReadOnly="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ClientIDMode="Static" ControlToValidate="txtLastName" ErrorMessage="Last Name Required">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label3" runat="server" Text="First Name: "></asp:Label>
            <asp:TextBox ID="txtFirstName" runat="server" ReadOnly="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ClientIDMode="Static" ControlToValidate="txtFirstName" ErrorMessage="First Name Required">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Middle Initial: "></asp:Label>
            <asp:TextBox ID="txtInitial" runat="server" MaxLength="1" ReadOnly="True" Width="19px"></asp:TextBox>
            <br />
            <asp:Label ID="Label12" runat="server" Text="Birthdate:  "></asp:Label>
            <asp:TextBox ID="txtBirth" runat="server" Height="16px" MaxLength="10" ReadOnly="True" TextMode="Date" Width="102px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ClientIDMode="Static" ControlToValidate="TxtEmail" ErrorMessage="Email required">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Address: "></asp:Label>
            <asp:TextBox ID="txtAddress" runat="server" ReadOnly="True"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="City: "></asp:Label>
            <asp:TextBox ID="txtCity" runat="server" ReadOnly="True"></asp:TextBox>
            <br />
            <asp:Label ID="Label7" runat="server" Text="State: "></asp:Label>
            <asp:TextBox ID="txtState" runat="server" ReadOnly="True" Width="19px"></asp:TextBox>
            <br />
            <asp:Label ID="Label8" runat="server" Text="Zip: "></asp:Label>
            <asp:TextBox ID="txtZip" runat="server" ReadOnly="True" Width="62px"></asp:TextBox>
            <br />
            <asp:Label ID="Label9" runat="server" Text="Phone Number: "></asp:Label>
            <asp:TextBox ID="txtPhone" runat="server" MaxLength="2" ReadOnly="True" TextMode="Phone" Width="97px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ClientIDMode="Static" ControlToValidate="TxtEmail" ErrorMessage="Email required">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label10" runat="server" Text="Email Address: "></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" MaxLength="9" ReadOnly="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ClientIDMode="Static" ControlToValidate="TxtEmail" ErrorMessage="Email required">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label11" runat="server" Text="Password: "></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" ReadOnly="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ClientIDMode="Static" ControlToValidate="TxtEmail" ErrorMessage="Email required">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label13" runat="server" Text="Confirm Password: "></asp:Label>
            <asp:TextBox ID="txtConfirmPass" runat="server" ReadOnly="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ClientIDMode="Static" ControlToValidate="TxtEmail" ErrorMessage="Email required">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label14" runat="server" Text="Accounts: "></asp:Label>
        </div>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" style="text-align: left">
            <asp:ListItem>Checking Account</asp:ListItem>
            <asp:ListItem>Savings Account</asp:ListItem>
            <asp:ListItem>Individual Retirement Accounts</asp:ListItem>
            <asp:ListItem>Stock Portfolios</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Button ID="btnCancel" runat="server" CausesValidation="False" Text="Cancel" Visible="False" Width="135px" />
&nbsp;
        <asp:Button ID="btnConfirm" runat="server" CausesValidation="False" Text="Confirm and Continue" Visible="False" Width="135px" />
        <br />
        <br />
        <br />
    </div>
</asp:Content>
