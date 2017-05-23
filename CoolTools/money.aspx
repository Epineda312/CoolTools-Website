<%@ Page Title="Investment Calculator" Language="C#" MasterPageFile="~/CTMaster.master" AutoEventWireup="true" CodeFile="money.aspx.cs" Inherits="money" Theme="CTdefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta name="author" content="Shiva Upadhyay" />
    <meta name="keywords" content="cool tools, money, investment, interest, online, calculator" />
    <meta name="description" content="Cool Tools investment calculator" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="money">
        <br />
        <h2>Investment Calculator</h2>

       <label> Investment: </label>    
        <asp:DropDownList ID="ddlMonthlyInvestment" runat="server" CssClass="entry">
        </asp:DropDownList> <br />

                        
            
         <label>Yearly Interest Rate:</label>
         <asp:TextBox ID="txtInterestRate" runat="server" CssClass="entry" Text="5.0"></asp:TextBox> 

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="validator" ErrorMessage="Interest rate is required"
             ControlToValidate="txtInterestRate" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>

        <asp:RangeValidator ID="RangeValidator1" runat="server" CssClass="validator" ErrorMessage="Interst rate must range from 1 to 20." 
            ControlToValidate="txtInterestRate" Display="Dynamic" ForeColor="Red"
             Type="Double" MaximumValue="20" MinimumValue="1"></asp:RangeValidator> <br />


                
             
         <label>Number of years:</label>         
         <asp:TextBox ID="txtYears" runat="server" CssClass="entry">10</asp:TextBox> 

        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="validator" ErrorMessage="Number of years is required"
             ControlToValidate="txtYears" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>

        <asp:RangeValidator ID="RangeValidator2" runat="server" CssClass="validator" ErrorMessage="Years must range from 1 to 5" ControlToValidate="txtYears" 
            Display="Dynamic" MaximumValue="45" MinimumValue="1" Type="Integer" ForeColor="Red"></asp:RangeValidator> <br />


         <label> Future Value:</label>                  
         <asp:Label ID="lblFutureValue" runat="server" text=""></asp:Label> <br />
                
                
         <asp:Button ID="btnCalculate" runat="server" Text="Calculate" CssClass="button" OnClick="btnCalculate_Click" />
               
         <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="button" CausesValidation="False"
         onClick="btnClear_CLick" />
    </div>
</asp:Content>

