using Resume.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resume
{
    public partial class SpiderProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AuthenticatedUser"] != null)
            {
                UserAccount account = (UserAccount)Session["AuthenticatedUser"];
                pnlSpiderProfile.Visible = true;
                pnlNotAuthorized.Visible = false;

                lblWelcome.Text = account.FirstName + " " + account.LastName;
                lblUsername.Text = account.Username;
                lblPhone.Text = account.Phone;
                lblEmail.Text = account.Email;
            }
            else
            {
                pnlSpiderProfile.Visible = false;
                pnlNotAuthorized.Visible = true;
            }
        }
    }
}