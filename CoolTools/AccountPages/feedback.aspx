<%@ Page Title="Cool Tools Feedback Form" Language="C#" MasterPageFile="~/CTMaster.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="_Default" 
    Theme="CTdefault" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <meta name="author" content="Arie Knoester" />
    <meta name="keywords" content="cool tools, feedback, suggestions" />
    <meta name="description" content="Cool Tools user feedback and suggestions form" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="feedback">
        <fieldset>

            <legend>
                Cool Tools Feedback Form
            </legend><br />

            <table>
                <tr>
                    <td>
                        First Name:
                    </td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server" SkinID="defaultTextBox"></asp:TextBox>&nbsp;
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="vldFirstName" runat="server" 
                            ErrorMessage="First name is required"
                            ControlToValidate="txtFirstName"
                            Display="Dynamic"
                            ForeColor="Red"></asp:RequiredFieldValidator> 
                        <asp:RegularExpressionValidator ID="vldRegExFirstName" runat="server" 
                            ErrorMessage="Enter a valid first name"
                            ControlToValidate="txtFirstName"
                            ValidationExpression="^[a-zA-Z'\s-]{1,100}$"
                            Display="Dynamic"
                            ForeColor="Red"></asp:RegularExpressionValidator> 
                    </td>
                </tr>
                <tr>
                    <td>
                        Last Name:
                    </td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server" SkinID="defaultTextBox"></asp:TextBox>&nbsp;
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="vldLastName" runat="server" 
                            ErrorMessage="Last name is required"
                            ControlToValidate="txtLastName"
                            Display="Dynamic"
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="vldRegExLastName" runat="server" 
                            ErrorMessage="Enter a valid last name"
                            ControlToValidate="txtLastName"
                            ValidationExpression="^[a-zA-Z'\s-]{1,100}$"
                            Display="Dynamic"
                            ForeColor="Red"></asp:RegularExpressionValidator>
                    </td> 
                </tr>
                <tr>
                    <td>
                        Email Address:&nbsp;&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" SkinID="defaultTextBox"></asp:TextBox>&nbsp;
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="vldRegExEmail" runat="server" 
                            ErrorMessage="Enter a valid email address"
                            ControlToValidate="txtEmail"
                            ValidationExpression=".+\@.+\..+"
                            Display="Dynamic"
                            ForeColor="Red"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="vldEmail" runat="server" 
                            ErrorMessage="Enter an email address"
                            ControlToValidate="txtEmail"
                            Display="Dynamic"
                            ForeColor="Red"></asp:RequiredFieldValidator> 
                    </td>
                </tr>
            </table>
            <br />

            You are a:
            <asp:RadioButtonList ID="rblVocation" runat="server" RepeatDirection="Horizontal" ></asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ErrorMessage="Vocation is required"
                    ControlToValidate="rblVocation"
                    Display="Dynamic"
                    ForeColor="Red" ></asp:RequiredFieldValidator>
            <br />

            Suggestions/Feedback:<br />
            <asp:TextBox ID="txtUserFeedback" runat="server" TextMode="MultiLine" 
                MaxLength="150" Height="70" Width="350" SkinID="defaultTextBox" ></asp:TextBox><br />
                    <asp:RegularExpressionValidator ID="vldRegExUserFeedback" runat="server"
                        ErrorMessage="Can not exceed 150 characters"
                        ControlToValidate="txtUserFeedback"
                        ValidationExpression="^[\s\S]{0,150}$"
                        Display="Dynamic"
                        ForeColor="Red" ></asp:RegularExpressionValidator>
            <br />

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
                &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                <br />
        </fieldset>
     </div>
</asp:Content>

