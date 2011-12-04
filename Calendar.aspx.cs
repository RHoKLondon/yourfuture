using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFuture
{
    public partial class Calendar : System.Web.UI.Page
    {
        public Repository repository = new Repository();
        public UserService userservice = new UserService();
        WebContext webcontext = new WebContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            repNotes.DataSource = repository.GetPresentations();
            repNotes.DataBind();
        }

        protected void repNotes_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label l = e.Item.FindControl("lblBy") as Label;
                if(l != null)
                {
                    Expert expert = repository.GetUserByID(Convert.ToInt32(l.Text));
                    if (expert != null)
                        l.Text = expert.Name;
                }
            }

        }
    }
}