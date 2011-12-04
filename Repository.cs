using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyFuture
{
    public class Repository
    {
        public DataClassesDataContext GetContext()
        {
            DataClassesDataContext dcdc = new DataClassesDataContext("Data Source=seaweed.arvixe.com;Initial Catalog=NinaDB; Password=derangement; User ID=degammeur");
            return dcdc;
        }

        public Presentation GetPresentationByID (int PID)
        {
            Presentation p;
            using (DataClassesDataContext dc = GetContext())
            {
                p = (from a in dc.Presentations where a.EventID == PID select a).FirstOrDefault();
            }
            return p;
        }

        public List<Presentation> GetPresentations()
        {
            List<Presentation> p;

            using (DataClassesDataContext dc = GetContext())
            {
                p = (from a in dc.Presentations select a).ToList();
            }
            return p;
        }

        public List<Presentation> GetPresentationByUserID (int UserID)
        {
            List<Presentation> p;

            using (DataClassesDataContext dc = GetContext())
            {
                p = (from a in dc.Presentations where a.EventExpertID == UserID select a).ToList();
            }
            return p;
        }

        public Expert GetUserByID(int UserID)
        {
            Expert user;

            using (DataClassesDataContext dc = GetContext())
            {
                user = (from a in dc.Experts
                        where a.UserID == UserID
                        select a).FirstOrDefault();
            }
            return user;
        }

        public Expert GetUserByEmail(string Email)
        {
            Expert user;

            using (DataClassesDataContext dc = GetContext())
            {
                user = (from a in dc.Experts
                        where a.Email == Email
                        select a).FirstOrDefault();
            }
            return user;
        }

        public Expert GetUserByUsername(string Username)
        {
            Expert user;

            using (DataClassesDataContext dc = GetContext())
            {
                user = (from a in dc.Experts
                        where a.Username == Username
                        select a).FirstOrDefault();
            }

            return user;
        }

        public void SaveUser(Expert user)
        {
            using (DataClassesDataContext dc = GetContext())
            {
                if (user.UserID > 0)
                {
                    dc.Experts.Attach(user, true);
                }
                else
                {
                    dc.Experts.InsertOnSubmit(user);
                }
                dc.SubmitChanges();
            }
        }

        public void SavePresentation(Presentation p)
        {
             using (DataClassesDataContext dc = GetContext())
             {
                 if(p.EventID > 0)
                 {
                     dc.Presentations.Attach(p,true);
                 }
                 else
                 {
                     dc.Presentations.InsertOnSubmit(p);
                 }
                 dc.SubmitChanges();
             }
        }
    }
}