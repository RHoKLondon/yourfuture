<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="MyFuture.User" %>
<%@ Import Namespace="MyFuture" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>User page</h1>
<br />
<div>Username&nbsp;&nbsp;<asp:Label runat="server" ID="lblUsername"/></div>
<div>Email&nbsp;&nbsp;<asp:Label runat="server" ID="lblEmail"/></div>
<div>Name&nbsp;&nbsp;<asp:Label runat="server" ID="lblName"/></div>
<div>Company&nbsp;&nbsp;<asp:Label runat="server" ID="lblCompany"/></div>
<div>Work Address&nbsp;&nbsp;<asp:Label runat="server" ID="lblAddress"/></div>
<div>Position&nbsp;&nbsp;<asp:Label runat="server" ID="lblPosition"/></div>
<div>Availability time&nbsp;&nbsp;<asp:Label runat="server" ID="lblAvailTime"/></div>
<div>Availability type&nbsp;&nbsp;<asp:Label runat="server" ID="lblAvailType"/></div>
<div>Industry&nbsp;&nbsp;<asp:Label runat="server" ID="lblIndustry"/></div>
<br />
<br />
         <asp:Repeater ID="repNotes" runat="server" 
        onitemdatabound="repNotes_ItemDataBound">
        <ItemTemplate>
        <div class="note">
            <div class="notedate"><asp:Label ID="lblDate" runat="server" Text='<%# ((Presentation)Container.DataItem).Date.ToString() %>' />
            <asp:Label ID="lblTime" runat="server" Text='<%# ((Presentation)Container.DataItem).Time.ToString() %>' />
            </div>
            <asp:Label ID="lblTopic" runat="server" Text='<%# ((Presentation)Container.DataItem).Topic %>' />
            <asp:Label ID="lblEventID" runat="server" Visible="false" Text='<%# ((Presentation)Container.DataItem).EventID %>' />
            <asp:LinkButton runat="server" ForeColor="Red" Text="Edit"></asp:LinkButton>
            <asp:LinkButton ID="LinkButton1" ForeColor="Red" runat="server" Text="Delete"></asp:LinkButton>
            <br />
        </div>
        </ItemTemplate>
        <SeparatorTemplate>
            <div><hr /></div>
        </SeparatorTemplate>
    </asp:Repeater>
    <br /><br /><br />
    <h1>Add an event</h1>
    <div>
    <div>
    Topic
    </div>
    <div><asp:TextBox runat="server" ID="txtTopic"></asp:TextBox></div>
    </div>
    <div>
                    <div>Date</div>
                    <div>
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar></div>
                    </div>
                    
                    
                    <div>
                    <div>Time</div>
                    <div><asp:DropDownList runat="server" ID="listTime">
                    <asp:ListItem Text="7" Value="7" />
                    <asp:ListItem Text="8" Value="8" />
                    <asp:ListItem Text="9" Value="9" />
                    <asp:ListItem Text="10" Value="10" />
                    <asp:ListItem Text="11" Value="11" />
                    <asp:ListItem Text="12" Value="12" />
                    <asp:ListItem Text="13" Value="13" />
                    <asp:ListItem Text="14" Value="14" />
                    <asp:ListItem Text="15" Value="15" />
                    <asp:ListItem Text="16" Value="16" />
                    <asp:ListItem Text="17" Value="17" />
                    <asp:ListItem Text="18" Value="18" />
                    </asp:DropDownList></div>
                    </div>
    <asp:Button ID="AddPresentation" runat="server" Text="Add a presentation" 
        onclick="AddPresentation_Click" />
</asp:Content>
