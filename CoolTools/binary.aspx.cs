using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class binary : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtBinary.ForeColor = Color.Black;
        txtDecimal.ForeColor = Color.Black;
    }

    //User is instructed on the page that values over 4 billion 
    //(too large for a Int32) can not be converted
    protected void txtDecimal_TextChanged(object sender, EventArgs e)
    {
        string result = "";
        int user;
        bool valid = Int32.TryParse(txtDecimal.Text, out user);
        if (valid)
        {
            user = Int32.Parse(txtDecimal.Text);

            /*below line works for converting to binary.
                If using this line, comment out the while loop
                below it.*/
            //result = Convert.ToString( user, 2);

            // old school solution to convert int to binary
            while (user > 0)
            {
                result = Convert.ToString(user % 2) + result;
                user /= 2;
            }
            txtBinary.ForeColor = Color.Black;
            txtBinary.Text = result;
        }
        else
        {
            txtBinary.ForeColor = Color.Red;
            txtBinary.Text = "Not a decimal number";
        }
    } // end txtDecimal_TextChanged

  
    protected void txtBinary_TextChanged(object sender, EventArgs e)
    {
        try
        {
            txtDecimal.ForeColor = Color.Black;
            string user = Convert.ToInt32(txtBinary.Text, 2).ToString();
            txtDecimal.Text = user;
        }
        catch
        {
            txtDecimal.ForeColor = Color.Red;
            txtDecimal.Text = "Not a binary number";
        }

    }
}