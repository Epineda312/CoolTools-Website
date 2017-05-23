using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class money : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        if (!IsPostBack)
            for (int i = 50; i <= 500; i += 50)
            {
                ddlMonthlyInvestment.Items.Add(i.ToString());

            }

    }
    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            int monthlyInvestment = Convert.ToInt32(ddlMonthlyInvestment.SelectedValue);
            decimal yearlyInterestRate = Convert.ToDecimal(txtInterestRate.Text);
            int years = Convert.ToInt32(txtYears.Text);
            Decimal futureValue = this.CalculateFutureValue(monthlyInvestment, yearlyInterestRate, years);
            lblFutureValue.Text = futureValue.ToString("c");

        }
    }

    /* protected decimal CalculateFutureValue(int monthlyInvestment, decimal yearlyInterestRate, int years)
      {
          int months = years * 12;
          decimal monthlyInterstRate = yearlyInterestRate / 100;
          decimal futurevalue = 0;
         for ( int i=0; i<months;i++)
          {
             futurevalue = futurevalue + (monthlyInvestment * (1 + monthlyInterstRate));

         }
        return futurevalue;

      }*/

    protected decimal CalculateFutureValue(int monthlyInvestment, decimal yearlyInterestRate, int years)
    {
        // int months = years * 12;
        // decimal monthlyInterstRate = yearlyInterestRate / 100;
        yearlyInterestRate = yearlyInterestRate / 100;
        decimal futurevalue = 0;

        futurevalue = monthlyInvestment + (monthlyInvestment * yearlyInterestRate);

        return futurevalue;


    }



    protected void btnClear_CLick(object sender, EventArgs e)
    {
        ddlMonthlyInvestment.SelectedIndex = 0;
        txtInterestRate.Text = "";
        txtYears.Text = "";
        lblFutureValue.Text = "";

    }
}