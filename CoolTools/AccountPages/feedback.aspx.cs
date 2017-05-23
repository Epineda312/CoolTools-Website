using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            InitializeVocations();
        }

    }
    
    private void InitializeVocations()
    {
        rblVocation.Items.Add("Student");
        rblVocation.Items.Add("Teacher");
        rblVocation.Items.Add("Professional");
        rblVocation.Items.Add("Other");
    }
     
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //do stuff
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        //do stuff
    }
}