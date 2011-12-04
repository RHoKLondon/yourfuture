<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoginLinks.ascx.cs" Inherits="MyFuture.LoginLinks" %>

<asp:Panel ID="pnlLoggedIn" runat="server">
    <asp:LinkButton CausesValidation="false" ID="lbHome" Text="Home" runat="server" OnClick="lbHome_Click"></asp:LinkButton> - 
    <asp:LinkButton CausesValidation="false" ID="lbEditUser" Text="Your Page" runat="server" OnClick="lbUser_Click"></asp:LinkButton> - 
    <asp:LinkButton CausesValidation="false" ID="lbLogOut" Text="Log Out" runat="server" OnClick="lbLogOut_Click"></asp:LinkButton><br />
    <asp:Label CssClass="TipTopNavigationLinks" ID="lblUsername" runat="server"></asp:Label>
</asp:Panel>

<asp:Panel ID="pnlNotLoggedIn" runat="server">
    <asp:LinkButton CausesValidation="false" ID="LinkButton1" Text="Home" runat="server" OnClick="lbHome_Click"></asp:LinkButton> - 
    <asp:LinkButton CausesValidation="false" ID="lbLogin" Text="Log In" runat="server" OnClick="lbLogin_Click"></asp:LinkButton> - 
    <asp:LinkButton CausesValidation="false" ID="lbRegister" Text="Register" runat="server" OnClick="lbRegister_Click"></asp:LinkButton>
</asp:Panel>