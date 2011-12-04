using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyFuture
{
    public class UserService
    {
        Repository repository;
        WebContext webcontext;
        public UserService()
        {
            repository = new Repository();
            webcontext = new WebContext();
        }

        public bool UsernameInUse(string Username)
        {
            Expert user = repository.GetUserByUsername(Username);
            if (user != null)
                return true;
            return false;
        }

        public bool EmailInUse(string Email)
        {
            Expert user =
            repository.GetUserByEmail(Email);
            if (user != null)
                return true;
            return false;
        }

        public string Login(string Username, string Password)
        {
            Expert user = repository.GetUserByUsername(Username);
            if (user != null)
            {
                if (user.Password == Password)
                {
                    webcontext.LoggedIn = true;
                    webcontext.Username = Username;
                    webcontext.CurrentUser = repository.GetUserByID(user.UserID);
                    System.Web.HttpContext.Current.Response.Redirect("~/User.aspx");
                }
                else
                {
                    return "Incorrect Username/Password Combination...";
                }
            }
            return "Incorrect Username/Password Combination...";
        }

        public void Logout()
        {
            webcontext.LoggedIn = false;
            webcontext.CurrentUser = null;
            webcontext.Username = "";
            System.Web.HttpContext.Current.Response.Redirect("~/");
        }
    }
}