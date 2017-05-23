using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if( !IsPostBack)
        {
            /* Following line is for testing unauthenticaed users
             * accessing secured pages. If you are having trouble 
             * testing this because of cookies uncomment the line below
             * and refresh the home/login page and you will be signed out. */
            //FormsAuthentication.SignOut();
        }

        //if redirected because of failed authorization, display error to user.
        if (!String.IsNullOrEmpty(Request.QueryString["ReturnUrl"]))
        {
            lblLogStatus.Text = "You must be logged in to access the My Account and Feedback Form pages.";
            lblLogStatus.Visible = true;
        }

        // if user is already logged in, display message
        if( User.Identity.IsAuthenticated)
        {
            lblLogStatus.Text = "You are already logged in";
            lblLogStatus.Visible = true;
        }
        
    }
}