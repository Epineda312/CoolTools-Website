<%@ Page Title="" Language="C#" MasterPageFile="~/CTMaster.master" AutoEventWireup="true" CodeFile="ManageUsers.aspx.cs" Inherits="Admin_ManageUsers" Theme="CTdefault"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <asp:GridView ID="gvUsers" runat="server" DataSourceID="dsAllUsers" AutoGenerateColumns="false" DataKeyNames="UserId, UserName" OnSelectedIndexChanged="gvUsers_SelectedIndexChanged">
            <SelectedRowStyle BackColor="LightGray" />
            <Columns>
                <asp:CommandField ShowSelectButton="true" SelectText="Select" />
                <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" Visible="false" SortExpression="UserId"></asp:BoundField>
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName"></asp:BoundField>
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                <asp:BoundField DataField="RoleName" HeaderText="RoleName" SortExpression="RoleName"></asp:BoundField>
            </Columns>
        </asp:GridView>

        <br /><br />

        <asp:DetailsView ID="dvUserInfo" runat="server" Height="50px" Width="125px" DataSourceID="dsUserInfo" AutoGenerateRows="false" AutoGenerateEditButton="true" DataKeyNames="UserId">
            <Fields>
              <asp:BoundField DataField="UserId" ReadOnly="true" Visible="false" />
              <asp:BoundField DataField="UserName" HeaderText="User Name" />
              <asp:BoundField DataField="Email" HeaderText="Email" />
              <asp:BoundField DataField="CreateDate" ReadOnly="true" HeaderText="Date Created" />
              <asp:BoundField DataField="LastLoginDate" ReadOnly="true" HeaderText="Last Login" />
              <asp:BoundField DataField="Comment" HeaderText="Comment" />              
          </Fields>
        </asp:DetailsView>

        <br />
        <asp:Label ID="lblRoles" runat="server" Text="Select User Role:" Visible="false"></asp:Label>

        <asp:RadioButtonList ID="lstRoles" runat="server" Visible="false" OnSelectedIndexChanged="lstRoles_SelectedIndexChanged" AutoPostBack="true">
            <asp:ListItem Text="Admin" Value="admin"></asp:ListItem>
            <asp:ListItem Text="User" Value="user"></asp:ListItem>
        </asp:RadioButtonList>

        <br /><br />

        <asp:Label ID="lblError" runat="server" Visible="false" ForeColor="Red" Font-Bold="true"></asp:Label>


        <asp:SqlDataSource ID="dsAllUsers" runat="server" ConnectionString="<%$ ConnectionStrings:CTUsers %>"
            SelectCommand="SELECT Users.UserId, Users.UserName, Memberships.Email, Roles.RoleName
            FROM Users
            JOIN Memberships ON Users.UserID = Memberships.UserId
            JOIN UsersInRoles On Memberships.UserId = UsersInRoles.UserId
            JOIN Roles ON UsersInRoles.RoleId = Roles.RoleId"></asp:SqlDataSource>

        <asp:SqlDataSource ID="dsUserInfo" runat="server" ConnectionString="<%$ ConnectionStrings:CTUsers %>"
            SelectCommand="SELECT *
            FROM Users
            JOIN Memberships ON Memberships.UserId=Users.UserId
            WHERE Users.UserId=@UserId"
            UpdateCommand="UPDATE Users SET UserName=@UserName WHERE USerId=@UserId;
UPDATE Memberships SET Email=@Email, Comment=@Comment WHERE UserId=@UserId;" 
            OnUpdating="dsUserInfo_Updating" 
            OnUpdated="dsUserInfo_Updated">
            <SelectParameters>
                <asp:ControlParameter ControlID="gvUsers" PropertyName="SelectedValue" Name="UserId"></asp:ControlParameter>
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="UserName"></asp:Parameter>
                <asp:Parameter Name="UserId"></asp:Parameter>
                <asp:Parameter Name="Email"></asp:Parameter>
                <asp:Parameter Name="Comment"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

