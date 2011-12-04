using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFuture
{
    public partial class Join : System.Web.UI.Page
    {

        public UserService us = new UserService();
        Repository repository = new Repository();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void wizRegister_ActiveStepChanged(object sender, EventArgs e)
        {
            if (wizRegister.ActiveStepIndex == 1)
            {
                ViewState.Add("password", txtPassword.Text);
            }
        }

        protected void wizRegister_FinishButtonClicked(object sender, EventArgs e)
        {
            Expert a = new Expert();
            a.Email = txtEmail.Text;
            a.Username = txtUsername.Text;
            a.Password = txtPassword.Text;
            a.Name = txtName.Text;
            a.Company = txtCompany.Text;
            a.Position = txtPosition.Text;
            a.Industry = txtIndustry.Text;
            a.WorkAddress = txtAddress.Text;

            if (listAvailability.SelectedValue == "1")
                a.OneOff = true;
            else
                a.OneOff = false;
            a.EventDate = Calendar1.SelectedDate.Date;
            
           Presentation p = new Presentation();
            p.Confirmed = false;
            p.Date = a.EventDate;
            p.Time = 7;
            p.Topic = "my first topic";

            if (us.EmailInUse(a.Email))
            {
                ShowErrorMessage("This email is already in use!");
                ToggleWizardIndex(1);
            }
            else if (us.UsernameInUse(a.Username))
            {
                ShowErrorMessage("This username is already in use!");
                ToggleWizardIndex(1);
            }
            else
            {
                repository.SaveUser(a);
                p.EventExpertID = a.UserID;
                repository.SavePresentation(p);
                ShowUserCreatedPanel();
            }
        }

        protected void lbLogin_Click(object sender, EventArgs e)
        {
            System.Web.HttpContext.Current.Response.Redirect("~/Login.aspx");
        }

        protected void wizRegister_NextButtonClick(object sender, EventArgs e)
        {
            lblErrorMessage.Text = "";
        }

        public void ShowErrorMessage(string Message)
        {
            lblErrorMessage.Text = Message;
        }

        public void ToggleWizardIndex(int index)
        {
            wizRegister.ActiveStepIndex = index;
        }

        public void ShowUserCreatedPanel()
        {
            pnlUserCreated.Visible = true;
            pnlCreateUser.Visible = false;
        }

        public void ShowCreateUserPanel()
        {
            pnlUserCreated.Visible = false;
            pnlCreateUser.Visible = true;
        }
    }
}