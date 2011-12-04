<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyFuture.Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div style="background-image:url('png/firstbackground.png'); background-repeat:repeat-x; height: 500px;">
<div class="wrap">
<div style="float:left">
<img src="logo.png" height="100px" width="100px" />
</div>

<div style="float:right;color: #000000; font-size: 20px;">
<br /><br />
<asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Red" PostBackUrl="~/Join.aspx">JOIN</asp:LinkButton>
&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Red">ABOUT</asp:LinkButton>
&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton4" runat="server" ForeColor="Red" PostBackUrl="~/Calendar.aspx">UPCOMING CLASSES</asp:LinkButton>
</div>
<div style="clear: both;"> </div>
<br />
<br />
<asp:Panel ID="WelcomePnl" runat="server" Visible="true">
<div id="example">
<center>
	    	<div id="slides">
				<div class="slides_container">
					<div class="slide">
						<a href="join.aspx" title="pic1"><img src="slide.jpg" width="570" height="270" alt="Slide 1"></a>
						<%--<div class="caption" style="bottom:0">
							<p>Picture 1</p>
						</div>--%>
					</div>
					<div class="slide">
						<a href="join.aspx" title="pic2"><img src="slide-2.jpg" width="570" height="270" alt="Slide 2"></a>
						<%--<div class="caption" style="bottom:0">
							<p>Picture 2</p>
						</div>--%>
					</div>
                    <div class="slide">
						<a href="join.aspx" title="pic3"><img src="slide-4.jpg" width="570" height="270" alt="Slide 3"></a>
						<%--<div class="caption" style="bottom:0">
							<p>Picture 3</p>
						</div>--%>
					</div>
				</div>
				<a href="#" class="prev"><img src="arrow-prev.png" width="24" height="43" alt="Arrow Prev"></a>
				<a href="#" class="next"><img src="arrow-next.png" width="24" height="43" alt="Arrow Next"></a>

			</div>
<img src="example-frame.png" width="739" height="341" alt="Example Frame" id="frame">
</center>
        </div>
        <div style="position:relative;top:-80px">
        <center>
<h2>We provide an easy way to link professionals with young people to bridge the gap 
between education curriculum and real work life by sharing experiences, stories and advices.</h2>
</center>
</div>
        </asp:Panel>

</div>
</div>


</asp:Content>
