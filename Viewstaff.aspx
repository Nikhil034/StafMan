<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Viewstaff.aspx.cs" Inherits="Viewstaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    View Staff 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentbody" Runat="Server">

    <!-- View staff code goes here-->

    <div class="view-call" style="margin-left:400px;margin-top:100px">

        <asp:Label ID="lblid" runat="server" Text="Edit with ID:-"></asp:Label>
        <asp:TextBox ID="txid" runat="server" ></asp:TextBox>
        <asp:Button ID="btedit" runat="server" Text="Tap Go" CssClass="btn-primary" OnClick="btedit_Click" />
        <br /><br />

          <asp:Label ID="lblid2" runat="server" Text="Remove with ID:-"></asp:Label>
        <asp:TextBox ID="txid2" runat="server" ></asp:TextBox>
        <asp:Button ID="btremove" runat="server" Text="Remove" CssClass="btn-danger" OnClick="btremove_Click"  />
        <br /><br />
       
        <asp:GridView ID="GridView1" runat="server" CssClass="grid" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    </div>

</asp:Content>

