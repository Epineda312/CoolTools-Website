﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void wizCreateUser_CreatedUser(object sender, EventArgs e)
    {
        if( !Roles.RoleExists("user"))
        {
            Roles.CreateRole("user");
        }
        Roles.AddUserToRole( wizCreateUser.UserName, "user");
    }
}