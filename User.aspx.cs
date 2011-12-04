using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFuture
{
    public partial class User : System.Web.UI.Page
    {
        public Repository repository = new Repository();
        public UserService userservice = new UserService();
        WebContext webcontext = new WebContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (webcontext.LoggedIn)
            {
                Expert u = repository.GetUserByUsername(webcontext.Username);
                if (u != null)
                {
                    lblEmail.Text = u.Email;
                    lblUsername.Text = u.Username;
                    lblAddress.Text = u.WorkAddress;
                    lblAvailTime.Text = u.EventDate.ToString();
                    if (u.OneOff == true)
                        lblAvailType.Text = "One Off";
                    else lblAvailType.Text = "Continuous";
                    lblCompany.Text = u.Company;
                    lblIndustry.Text = u.Industry;
                    lblPosition.Text = u.Position;
                    lblName.Text = u.Name;

                    repNotes.DataSource = repository.GetPresentationByUserID(u.UserID);
                    repNotes.DataBind();
                }
                else
                    Response.Redirect("~/Register.aspx");
            }
        }

        protected void repNotes_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

        }

        protected void AddPresentation_Click(object sender, EventArgs e)
        {
            Presentation p = new Presentation();
            p.Confirmed = false;
            p.Date = Calendar1.SelectedDate.Date;
            p.Time = Convert.ToInt32(listTime.SelectedValue);
            p.Topic = txtTopic.Text ;
            p.EventExpertID = webcontext.CurrentUserID;
            repository.SavePresentation(p);

            txtTopic.Text = "";
            repNotes.DataSource = repository.GetPresentationByUserID(webcontext.CurrentUserID);
            repNotes.DataBind();
        }
    }
}