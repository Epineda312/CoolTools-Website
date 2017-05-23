<%@ Page Title="Temperature Converter" Language="C#" MasterPageFile="~/CTMaster.master" AutoEventWireup="true" CodeFile="temperature.aspx.cs" Inherits="temperature" theme="CTdefault"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta name="author" content="Eric Peneda" />
    <meta name="keywords" content="cool tools, free, temperature, converter, online" />
    <meta name="description" content="Cool Tools temperature converter" />
</asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id ="binaryconverter">
        <p id="bi_convert_instructions">
                Enter a value into the appropriate text box, 
                then hit return or tab on your keyboard to convert. 
                   
         </p>
         <span>Fahrenheit:</span>&nbsp;
         <asp:TextBox ID="txtFahrenheit" runat="server" 
                AutoPostBack="true" 
                AutoCompleteType="Disabled"
                CssClass="DBconverter">
         </asp:TextBox>
            
                &nbsp;&nbsp;
          <br /><br />

          <span>Celsius:</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:TextBox ID="txtCelsius" runat="server" 
                AutoPostBack="true" 
                AutoCompleteType="Disabled"
                CssClass="DBconverter">
          </asp:TextBox>&nbsp;
          <br /><br />
    </div>
</asp:Content>














