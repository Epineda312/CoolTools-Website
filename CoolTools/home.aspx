<%@ Page Title="Cool Tools Home" Language="C#" MasterPageFile="~/CTMaster.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" 
    Theme="CTdefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

        <meta name="author" content="ak" />
        <meta name="keywords" content="cool tools, home, free, converter, convert, calculator, watch, login" />
        <meta name="description" content="Home page for Cool Tools. A collection of free online applications" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="welcome">
        <h2>Welcome to Cool Tools!</h2>
        This site is a collection of tools you may find useful. It is our goal to provide these<br />
        applications in one convenient site eliminating bookmark clutter. We welcome your<br />
        feedback and suggestions for more tools. Please log in to access our feedback form.<br />
        Enjoy your stay!<br />
        <p>
            <asp:Label ID="lblLogStatus" runat="server" 
                Text="" 
                ForeColor="Red" 
                Display="dynamic"></asp:Label>
            <asp:Login ID="CTLogin" runat="server"
                DestinationPageUrl="~/AccountPages/loggedIn.aspx"
                InstructionText=""
                FailureText="Your login attempt was not successful. Please try again."
                TitleText=""
                LoginButtonText="Log In"
                CssClass="login">
                    <InstructionTextStyle Font-Italic="true" />
                <LayoutTemplate>
                    <table style="border-collapse: collapse;">
                        <tr>
                            <td style="padding-right: 30px; padding-bottom: 10px;">
                                <asp:Label runat="server" 
                                    AssociatedControlID="UserName" 
                                    ID="UserNameLabel" >User Name:</asp:Label></td>
                            <td style="padding-right: 30px; padding-bottom: 10px;">
                                <asp:TextBox runat="server" ID="UserName" 
                                    AutoCompleteType="Disabled" 
                                    SkinID="defaultTextBox"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" 
                                    ErrorMessage="User Name is required." 
                                    ValidationGroup="CTLogin" 
                                    ToolTip="User Name is required." 
                                    ForeColor="Red"
                                    ID="UserNameRequired">    required</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="padding-right: 30px; padding-bottom: 10px;">
                                <asp:Label runat="server" 
                                    AssociatedControlID="Password" 
                                    ID="PasswordLabel">Password:</asp:Label></td>
                            <td style="padding-right: 30px; padding-bottom: 10px;">
                                <asp:TextBox runat="server" 
                                    TextMode="Password" 
                                    ID="Password" 
                                    AutoCompleteType="Disabled" 
                                    SkinID="defaultTextBox"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" 
                                    ControlToValidate="Password" 
                                    ErrorMessage="Password is required." 
                                    ValidationGroup="CTLogin" 
                                    ToolTip="Password is required."
                                    ForeColor="Red" 
                                    ID="PasswordRequired">   required</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:CheckBox runat="server" 
                                    Text="Remember me next time." 
                                    ID="RememberMe"></asp:CheckBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="color: Red;">
                                <asp:Literal runat="server" ID="FailureText" 
                                    EnableViewState="False"></asp:Literal>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="padding: 5px;">
                                <asp:Button runat="server" CommandName="Login" 
                                    Text="Log In" 
                                    ValidationGroup="CTLogin" 
                                    ID="LoginButton"></asp:Button>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:HyperLink runat="server" 
                                    NavigateUrl="~/register.aspx" 
                                    ID="CreateUserLink">Register for the first time</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <FailureTextStyle ForeColor="Red" />
            </asp:Login><br />
            Already logged in?&nbsp;&nbsp;<a href="AccountPages/myAccount.aspx">Manage Account</a>
        </p>
    </div>
</asp:Content>

