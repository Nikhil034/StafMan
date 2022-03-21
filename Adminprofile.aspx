<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Adminprofile.aspx.cs" Inherits="Adminprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Your Profile
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentbody" Runat="Server">

    <div class="admin-profile" style="margin-left:500px;margin-top:50px;text-align:center;background-color:lightgoldenrodyellow;height:300px;width:500px">

       
        <asp:TextBox ID="txaid" runat="server" Visible="false"></asp:TextBox>
        <br />
        <br />

        <asp:Label ID="adnm" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="txanm" runat="server"></asp:TextBox>
        <br />
        <br />


        <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="txaeml" runat="server"></asp:TextBox>
        <br />
        <br />


        <asp:Label ID="Label2" runat="server" Text="Phone"></asp:Label>
        <asp:TextBox ID="txapn" runat="server"></asp:TextBox>
        <br />
        <br />



        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="txapw" runat="server" ></asp:TextBox>
        <br />
        <br />


        <asp:Button ID="btedit" runat="server" Text="Edit" CssClass="btn-success" OnClick="btedit_Click"  />


    </div>
    
</asp:Content>

