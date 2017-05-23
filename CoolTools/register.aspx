<%@ Page Title="Create Cool Tools Account" Language="C#" MasterPageFile="~/CTMaster.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" 
    Theme="CTdefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta name="author" content="Arie Knoester" />
    <meta name="keywords" content="cool tools, register, account, create, user" />
    <meta name="description" content="Cool Tools create user account page" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="register">
        <fieldset>
            <legend>Thanks for joining us!</legend>
            <asp:CreateUserWizard ID="wizCreateUser" runat="server" SkinID="createUseWiz"
                CssClass="acctCreate"
                AutoCompleteType="disabled"
                OnCreatedUser="wizCreateUser_CreatedUser">
                <WizardSteps>
                    <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                    </asp:CreateUserWizardStep>
                    <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                    </asp:CompleteWizardStep>
                </WizardSteps>
        </asp:CreateUserWizard>
        </fieldset>
    </div>

</asp:Content>

