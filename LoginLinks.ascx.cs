using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFuture
{
    public partial class LoginLinks : System.Web.UI.UserControl
    {
        UserService userservice = new UserService();
        WebContext webcontext = new WebContext();
        
        protected void Page_Load(object sender, EventArgs e)
        {
             ShowAppropriateLoginStatePanel(webcontext.LoggedIn, webcontext.Username);
        }
        
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        protected void lbHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/");
        }

        protected void lbLogOut_Click(object sender, EventArgs e)
        {
            userservice.Logout();
        }

        protected void lbLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        protected void lbRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/join.aspx");
        }

        protected void lbUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User.aspx");
        }

        public void ShowAppropriateLoginStatePanel(bool IsLoggedIn, string Username)
        {
            if (IsLoggedIn)
            {
                pnlLoggedIn.Visible = true;
                pnlNotLoggedIn.Visible = false;
                lblUsername.Text = "Welcome " + Username;
            }
            else
            {
                pnlLoggedIn.Visible = false;
                pnlNotLoggedIn.Visible = true;
            }
        }
    }
}