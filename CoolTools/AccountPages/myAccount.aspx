<%@ Page Title="My Account" Language="C#" MasterPageFile="~/CTMaster.master" AutoEventWireup="true" CodeFile="myAccount.aspx.cs" Inherits="SecuredPages_myAccount" 
    Theme="CTdefault"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <meta name="author" content="Arie Knoester" />
    <meta name="keywords" content="binary, decimal, converter, calculator, convert, cool tools" />
    <meta name="description" content="Converts decimal numbers to binary and binary to decimal" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!-- I will style this before the final turn in ~Arie-->
    <div>
        
        <asp:SqlDataSource ID="sourceUsers" runat="server" 
            ConnectionString="<%$ ConnectionStrings:CTUsers %>"
            SelectCommand="SELECT Memberships.UserId, Users.UserName, Memberships.Email, Memberships.Comment 
                           FROM Users 
                           JOIN Memberships 
                             ON Users.UserId = Memberships.UserId
                           WHERE Users.UserName=@UserName"
            UpdateCommand="UPDATE Users SET UserName=@UserName WHERE UserId=@UserId;
                           UPDATE memberships SET Email=@Email, 
                                  Comment=@Comment 
                           WHERE UserId=@UserId"
            OnUpdating="sourceUsers_Updating"
            OnUpdated="sourceUsers_Updated">
            <SelectParameters>
                <asp:Parameter Name="UserName" DefaultValue="" ></asp:Parameter>
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="UserName"></asp:Parameter>
                <asp:Parameter Name="UserId"></asp:Parameter>
                <asp:Parameter Name="Email"></asp:Parameter>
                <asp:Parameter Name="Comment"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:DetailsView ID="dvSourceUsers" runat="server"
            DataSourceID="sourceUsers"
            DataKeyNames="UserId"
            AutoGenerateRows="False"
            AutoGenerateEditButton="true">
            <Fields>
                <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" ReadOnly="true" Visible="false" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" ReadOnly="false"></asp:BoundField>
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" ReadOnly="false"></asp:BoundField>
                <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" ReadOnly="false"></asp:BoundField>
            </Fields>
        </asp:DetailsView>
        <br /><br />
        <asp:Label ID="lblSourceUsers" runat="server" 
            Text=""
            Visible="false"
            ForeColor="Red"
            Font-Bold="true"></asp:Label>
    </div>
</asp:Content>

