<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Addstaff.aspx.cs" Inherits="Addstaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Add A Staff
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentbody" Runat="Server">

    <!-- Add A new Staff design code-->

     <div class="add-staff">
        <asp:Label ID="lblnm" Text="Member Name" runat="server"></asp:Label>
        <asp:TextBox ID="txmnm" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="req1" runat="server" ControlToValidate="txmnm" ErrorMessage="Field must be filled" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="reg1" runat="server" ControlToValidate="txmnm" ValidationExpression="^\D+$" ErrorMessage="Invalid format of field" ForeColor="Red"></asp:RegularExpressionValidator> 

        <br /><br />

        <asp:Label ID="lbleml" Text="Member Email" runat="server"></asp:Label>
        <asp:TextBox ID="txmeml" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txmeml" ErrorMessage="Field must be filled" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txmeml" ValidationExpression="\S+@\S+\.\S+" ErrorMessage="Invalid format of field" ForeColor="Red"></asp:RegularExpressionValidator>
        
        <br /><br />
        <asp:Label ID="lblpn" Text="Member Phone" runat="server"></asp:Label>
        <asp:TextBox ID="txmpn" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txmpn" ErrorMessage="Field must be filled" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txmpn" ValidationExpression="[0-9]{10}" ErrorMessage="Require 10 digit" ForeColor="Red"></asp:RegularExpressionValidator>
        
        <br /><br />
        
        <asp:Label ID="lblpay" Text="Member Pay" runat="server"></asp:Label>
        <asp:TextBox ID="txmpay" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txmpay" ErrorMessage="Field must be filled" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txmpay" ValidationExpression="^\d+$" ErrorMessage="Invalid format of field" ForeColor="Red"></asp:RegularExpressionValidator>
        
        <br /><br />
        
        <asp:Label ID="lblct" Text="Member City" runat="server"></asp:Label>
        <asp:TextBox ID="txmct" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txmct" ErrorMessage="Field must be filled" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txmct" ValidationExpression="^\D+$" ErrorMessage="Invalid format of field" ForeColor="Red"></asp:RegularExpressionValidator>
        
        <br /><br />
        
        <asp:Label ID="lblrole" Text="Member Role" runat="server"></asp:Label>
        <asp:TextBox ID="txmrole" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txmrole" ErrorMessage="Field must be filled" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txmrole" ValidationExpression="^\D+$" ErrorMessage="Invalid format of field" ForeColor="Red"></asp:RegularExpressionValidator>     

        <br /><br />

        <asp:Button runat="server" ID="btsave" Text="Save" CssClass="btn-success" OnClick="btsave_Click" />
        <asp:Button runat="server" ID="btreset" Text="Reset" CssClass="btn-primary" OnClick="btreset_Click" />

    </div>

</asp:Content>

