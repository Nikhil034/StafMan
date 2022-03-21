<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Editstaff.aspx.cs" Inherits="Editstaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Edit Staff
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentbody" Runat="Server">
      <div class="add-staff">

         

          <asp:Label ID="lblid" Text="Member ID" runat="server"></asp:Label>
        <asp:TextBox ID="txid" runat="server" ReadOnly="true"></asp:TextBox>

          <br /><br />

        <asp:Label ID="lblnm" Text="Member Name" runat="server"></asp:Label>
        <asp:TextBox ID="txmnm" runat="server"></asp:TextBox>
       

        <br /><br />

        <asp:Label ID="lbleml" Text="Member Email" runat="server"></asp:Label>
        <asp:TextBox ID="txmeml" runat="server" ></asp:TextBox>
        
        <br /><br />
        <asp:Label ID="lblpn" Text="Member Phone" runat="server"></asp:Label>
        <asp:TextBox ID="txmpn" runat="server" ></asp:TextBox>
       
        
        <br /><br />
        
        <asp:Label ID="lblpay" Text="Member Pay" runat="server"></asp:Label>
        <asp:TextBox ID="txmpay" runat="server" ></asp:TextBox>
       
        <br /><br />
        
        <asp:Label ID="lblct" Text="Member City" runat="server"></asp:Label>
        <asp:TextBox ID="txmct" runat="server" ></asp:TextBox>
        
        
        <br /><br />
        
        <asp:Label ID="lblrole" Text="Member Role" runat="server"></asp:Label>
        <asp:TextBox ID="txmrole" runat="server" ></asp:TextBox>
       

        <br /><br />

         


        <asp:Button ID="btedit" Text="Update" runat="server" CssClass="btn-primary" OnClick="btedit_Click" />

    </div>
</asp:Content>

