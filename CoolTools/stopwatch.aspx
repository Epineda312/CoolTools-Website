<%@ Page Title="Stop Watch" Language="C#" MasterPageFile="~/CTMaster.master" AutoEventWireup="true" CodeFile="stopwatch.aspx.cs" Inherits="stopwatch" Theme="CTdefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta name="author" content="bD" />
    <meta name="keywords" content="cool tools, free, stop watch, online" />
    <meta name="description" content="Cool Tools stop watch" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="sw_body">
        <div id="sw_div">
 
            <asp:TextBox ID="txtTime" runat="server"
                AutoPostBack="true" 
                AutoCompleteType="Disabled"
                ReadOnly="TRUE"
                width="250"
                style="font-size: 28px;
                text-align: center;
                border-style: solid; 
                border-width: 1px;" >00:00</asp:TextBox> <br />

            <asp:Button CssClass="sw_button" ID="sw_start" runat="server" Text="Start" />
            <asp:Button CssClass="sw_button" ID="sw_stop" runat="server" Text="Stop" />
            <asp:Button CssClass="sw_button" ID="sw_reset" runat="server" Text="Reset" />
        </div>

    </div>
</asp:Content>

