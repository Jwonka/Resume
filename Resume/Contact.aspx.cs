using Resume.model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resume
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Context.Items["ErrorMessage"] != null)
                {
                    lblErrorMessage.Text = Context.Items["ErrorMessage"].ToString();
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Check to make sure Username is unique
            Boolean isUniqueName = true;
         
            DataSourceSelectArguments arguments = new DataSourceSelectArguments();
            foreach (DataRowView view in CodeCrawlersNetworkTable.Select(arguments))
            {
                if (view.Row["Username"].Equals(txtUsername.Text.Trim()))
                {
                    isUniqueName = false;

                }
            }

            if (isUniqueName)
            {

                // Create and populate a UserAccount object
                UserAccount account = new UserAccount();

                account.FirstName = txtFirstName.Text;
                account.LastName = txtLastName.Text;
                account.Username = txtUsername.Text.Trim();

                byte[] data = System.Text.Encoding.ASCII.GetBytes(txtPassword.Text.Trim());
                data = new System.Security.Cryptography.SHA256Managed().ComputeHash(data);
                String hashedPassword = System.Text.Encoding.ASCII.GetString(data);

                account.Password = hashedPassword;
                account.Phone = txtPhone.Text;
                account.Email = txtEmail.Text;

                // Add the new web crawler to the database
                CodeCrawlersNetworkTable.InsertParameters["FirstName"].DefaultValue = account.FirstName;
                CodeCrawlersNetworkTable.InsertParameters["LastName"].DefaultValue = account.LastName;
                CodeCrawlersNetworkTable.InsertParameters["Username"].DefaultValue = account.Username;
                CodeCrawlersNetworkTable.InsertParameters["Password"].DefaultValue = account.Password;
                CodeCrawlersNetworkTable.InsertParameters["Phone"].DefaultValue = account.Phone;
                CodeCrawlersNetworkTable.InsertParameters["Email"].DefaultValue = account.Email;

                CodeCrawlersNetworkTable.Insert();

                // add the account to session
                Session.Add("AuthenticatedUser", account);

                // Redirect the authenticated to a spider profile page
                Response.Redirect("SpiderProfile.aspx");
            }
            else
            {
                // username is not unique
                Context.Items["ErrorMessage"] = "The Username is already taken. Please choose another one.";
                Server.Transfer("Contact.aspx");
            }
        }
    }
}