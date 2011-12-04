using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFuture
{
    public partial class Login : System.Web.UI.Page
    {
        public UserService userservice = new UserService();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string message = userservice.Login(txtUsername.Text, txtPassword.Text);
            DisplayMessage(message);
        }

        protected void lbRecoverPassword_Click(object sender, EventArgs e)
        {

        }

        protected void lbRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Join.aspx");
        }

        public void DisplayMessage(string Message)
        {
            lblMessage.Text = Message;
        }
    }
}