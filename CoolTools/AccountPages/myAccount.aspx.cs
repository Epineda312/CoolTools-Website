using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class SecuredPages_myAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Gets the current user's UserName and passes it to the SELECT query in 
        // myccount.aspx.  ~Arie
        sourceUsers.SelectParameters["UserName"].DefaultValue = User.Identity.Name;
    }
    protected void sourceUsers_Updating(object sender, SqlDataSourceCommandEventArgs e)
    {
        e.Command.Connection.Open();
        e.Command.Transaction = e.Command.Connection.BeginTransaction();
    }

    protected void sourceUsers_Updated(object sender, SqlDataSourceStatusEventArgs e)
    {
        if( e.Exception != null)
        {
            e.Command.Transaction.Rollback();
            e.ExceptionHandled = true;
            lblSourceUsers.Text = "An error occurred during updating.";
            lblSourceUsers.Visible = true;
        }
        else
        {
            e.Command.Transaction.Commit();
            dvSourceUsers.DataBind();
            lblSourceUsers.Text = "Update successful.";
            lblSourceUsers.Visible = true;
        }
    }

}