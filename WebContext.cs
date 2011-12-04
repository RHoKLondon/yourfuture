using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyFuture
{
    public class WebContext
    {
        public Int32 UserID
        {
            get
            {
                if (!string.IsNullOrEmpty(GetQueryStringValue("UserID")))
                    return Convert.ToInt32(GetQueryStringValue("UserID"));

                if (CurrentUser != null)
                    return CurrentUser.UserID;

                return 0;
            }
        }

        public Int32 CurrentUserID
        {
            get
            {
                if (CurrentUser != null)
                    return CurrentUser.UserID;
                return 0;
            }
        }

        public Expert CurrentUser
        {
            get
            {
                if (ContainsInSession("CurrentUser"))
                {
                    return GetFromSession("CurrentUser") as Expert;
                }
                return null;
            }
            set
            {
                SetInSession("CurrentUser", value);
            }
        }

        public string Username
        {
            get
            {
                if (ContainsInSession("Username"))
                    return GetFromSession("Username").ToString();

                if (CurrentUser != null)
                    return CurrentUser.Username;

                return "";
            }

            set
            {
                SetInSession("Username", value);
            }
        }

        public bool LoggedIn
        {
            get
            {
                if (ContainsInSession("LoggedIn"))
                {
                    if ((bool)GetFromSession("LoggedIn"))
                        return true;

                    return false;
                }
                return false;
            }
            set
            {
                SetInSession("LoggedIn", value);
            }
        }

        public void ClearSession()
        {
            HttpContext.Current.Session.Clear();
        }

        public bool ContainsInSession(string key)
        {
            return HttpContext.Current.Session[key] != null;
        }

        public void RemoveFromSession(string key)
        {
            HttpContext.Current.Session.Remove(key);
        }

        public string GetQueryStringValue(string key)
        {
            return HttpContext.Current.Request.QueryString.Get(key);
        }

        private void SetInSession(string key, object value)
        {
            if (HttpContext.Current == null || HttpContext.Current.Session == null)
            {
                return;
            }
            HttpContext.Current.Session[key] = value;
        }

        private object GetFromSession(string key)
        {
            if (HttpContext.Current == null || HttpContext.Current.Session == null)
            {
                return null;
            }
            return HttpContext.Current.Session[key];
        }

        private void UpdateInSession(string key, object value)
        {
            HttpContext.Current.Session[key] = value;
        }
    }
}