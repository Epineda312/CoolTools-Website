<%@ Page Title="Calculator" Language="C#" MasterPageFile="~/CTMaster.master" AutoEventWireup="true" CodeFile="calculator.aspx.cs" Inherits="calculator" Theme="CTdefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta name="author" content="Brandon DeBord" />
    <meta name="keywords" content="cool tools, free, calculator, online" />
    <meta name="description" content="Cool Tools calculator" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div id="calc_body">
   
        <div id="calc_div">
            <asp:TextBox ID="txtCalc" runat="server"
                AutoPostBack="true" 
                AutoCompleteType="Disabled"
                width="175"
                style="font-size: 28px;
                text-align: center;
                border-style: solid; 
                border-width: 1px;" >
            </asp:TextBox><br />
            <table>
                <tr>
                    <asp:Button CssClass="calc_button" ID="calc_clear" runat="server" Text="C" />
                    <asp:Button CssClass="calc_button" ID="calc_invert" runat="server" Text="±" />
                    <asp:Button CssClass="calc_button" ID="calc_divide" runat="server" Text="/" />
                    <asp:Button CssClass="calc_button" ID="calc_mult" runat="server" Text="*" />
                </tr>
                    <asp:Button CssClass="calc_button" ID="calc7" runat="server" Text="7" />
                    <asp:Button CssClass="calc_button" ID="calc8" runat="server" Text="8" />
                    <asp:Button CssClass="calc_button" ID="calc9" runat="server" Text="9" />
                    <asp:Button CssClass="calc_button" ID="calc_add" runat="server" Text="+" />
                <tr>
                    <asp:Button CssClass="calc_button" ID="calc4" runat="server" Text="4" />
                    <asp:Button CssClass="calc_button" ID="calc5" runat="server" Text="5" />
                    <asp:Button CssClass="calc_button" ID="calc6" runat="server" Text="6" />
                    <asp:Button CssClass="calc_button" ID="calc_sub" runat="server" Text="-" />
                </tr>
                    <asp:Button CssClass="calc_button" ID="calc1" runat="server" Text="1" />
                    <asp:Button CssClass="calc_button" ID="calc2" runat="server" Text="2" />
                    <asp:Button CssClass="calc_button" ID="calc3" runat="server" Text="3" />
                    <asp:Button CssClass="calc_button" ID="calc_decimal" runat="server" Text="." />  
                <tr>
                    <asp:Button CssClass="calc_button" ID="calc0" runat="server" Text="0" />
                    <asp:Button CssClass="calc_button" ID="calc_sqr" runat="server" Text="x²" />
                    <asp:Button CssClass="calc_button" ID="calc_sqrt" runat="server" Text="√" />
                    <asp:Button CssClass="calc_button" ID="calc_equal" runat="server" Text="=" />
                </tr>   
            </table>
        </div>
    </div>

</asp:Content>

