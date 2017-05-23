<%@ Page Title="Logged In" Language="C#" MasterPageFile="~/CTMaster.master" AutoEventWireup="true" CodeFile="loggedIn.aspx.cs" Inherits="AccountPages_loggedIn" 
    theme="CTdefault"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <meta name="author" content="Arie Knoester" />
    <meta name="keywords" content="cool tools, logged, in, success, confirmation, confirmed" />
    <meta name="description" content="Cool Tools login successful page" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="welcome">
        <h2>Login Succesful.</h2>
        <br />
        <asp:LoginView ID="LoginView1" runat="server">
            <RoleGroups>
                <asp:RoleGroup Roles="user">
                    <ContentTemplate>
                            From here you can <a href="myAccount.aspx">manage your account</a> and access our 
                            <a href="feedback.aspx">feedback form</a>. Use the navigation on the left to check
                            out our tools.
                    </ContentTemplate>
                </asp:RoleGroup>
                <asp:RoleGroup Roles="admin">
                    <ContentTemplate>
                            Welcome benevolent, overlord. Master of this domain. We praise you and wish you 
                            hundreds of fat children from age-inappropriate realtions. You are love. You are 
                            life. Guide us with your knowledge and general distaste for other people.
                            <br />
                            You can <a href="../Admin/Manageusers.aspx">troll user accounts</a> or <a href="../Admin/addUsers.aspx">
                            create more minions</a>
                    </ContentTemplate>
                </asp:RoleGroup>
            </RoleGroups>
        </asp:LoginView>
        
    </div>
</asp:Content>

