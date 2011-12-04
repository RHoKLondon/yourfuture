<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyFuture.Login" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
    <div>
        <div>
            Please log in.
        </div>
    </div>
    <div>
        <div>
            Username:
        </div>
        <div>
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        </div>
    </div>
    <div>
        <div>
            Password:
        </div>
        <div>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        </div>
    </div>
    <div>
        <div>
            &nbsp;
        </div>
        <div>
            <asp:Button ID="btnLogin" OnClick="btnLogin_Click" runat="server" Text="Log In" /><br />
            <asp:Label runat="server" ID="lblMessage" ForeColor="Red"></asp:Label>
        </div>
    </div>
    <div>
        <div>
            &nbsp;<br />
            &nbsp;
        </div>
        <div>
            <asp:LinkButton ID="lbRecoverPassword" runat="server" Text="Forgot Password?" OnClick="lbRecoverPassword_Click"></asp:LinkButton><br />
            <asp:LinkButton ID="lbRegister" runat="server" Text="Register" OnClick="lbRegister_Click"></asp:LinkButton>
        </div>
    </div>
</div>
</asp:Content>
