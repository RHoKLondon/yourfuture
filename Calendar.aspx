<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="MyFuture.Calendar" %>
<%@ Import Namespace="MyFuture" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>All the upcoming events</h1>
  <asp:Repeater ID="repNotes" runat="server" 
        onitemdatabound="repNotes_ItemDataBound">
        <ItemTemplate>
        <div class="note">
            <div class="notedate"><asp:Label ID="lblDate" runat="server" Text='<%# ((Presentation)Container.DataItem).Date.ToString() %>' />
            <asp:Label ID="lblTime" runat="server" Text='<%# ((Presentation)Container.DataItem).Time.ToString() %>' />
            </div>
            <asp:Label ID="lblTopic" runat="server" Text='<%# ((Presentation)Container.DataItem).Topic %>' />
            by <asp:Label ID="lblBy" runat="server" Text='<%# ((Presentation)Container.DataItem).EventExpertID %>' />
            <asp:Label ID="lblEventID" runat="server" Visible="false" Text='<%# ((Presentation)Container.DataItem).EventID %>' />
            <br />
        </div>
        </ItemTemplate>
        <SeparatorTemplate>
            <div><hr /></div>
        </SeparatorTemplate>
    </asp:Repeater>
</asp:Content>
