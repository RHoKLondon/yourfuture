<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Schedule.aspx.cs" Inherits="MyFuture.Schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Label ID="noteid" runat="server" Visible="false" />
         <asp:TextBox ID="txtComment" runat="server"></asp:TextBox><asp:Button Text="Add Comment" ID="btnAddComment" runat="server" OnClick="btnAddComment_Click" />
         <br />
         <asp:Repeater ID="repComments" runat="server" OnItemDataBound="repComments_ItemDataBound">
        <ItemTemplate>
            <asp:Label ID="lblName" runat="server" Text='<%# ((Comment)Container.DataItem).CommentByUsername  %>'/>
            <asp:Label ID="lblMessage" runat="server" Text='<%# ((Comment)Container.DataItem).Body  %>'/>
            <asp:Label ID="lblDate" runat="server" Text='<%# ((Comment)Container.DataItem).CreateDate.Duration()  %>'/>
            <asp:LinkButton ID="lbDelete" runat="server" Visible="false" Text="Delete" OnCommand="lbDelete_Command"
            CommandArgument='<%# ((Comment)Container.DataItem).CommentID  %>' />
        </ItemTemplate>
        <SeparatorTemplate>
            <div></div>
        </SeparatorTemplate>
    </asp:Repeater>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
