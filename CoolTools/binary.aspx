<%@ Page Title="Decimal/Binary Converter" Language="C#" MasterPageFile="~/CTMaster.master" AutoEventWireup="true" CodeFile="binary.aspx.cs" Inherits="binary" 
    Theme="CTdefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <meta name="author" content="aK" />
    <meta name="keywords" content="binary, decimal, converter, calculator, convert, cool tools" />
    <meta name="description" content="Converts decimal numbers to binary and binary to decimal" />
        
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id ="binaryconverter">
        <p id="bi_convert_instructions">
                Enter a value into the appropriate text box, 
                then hit return or tab on your keyboard to convert. 
                    <span style = "font-style:italic; font-size:18px;">
                        (Values larger than 2.4 billion cannot be converted)
                    </span>
         </p>
         <span>Decimal:</span>&nbsp;&nbsp;
         <asp:TextBox ID="txtDecimal" runat="server" 
                AutoPostBack="true" 
                AutoCompleteType="Disabled"
                OnTextChanged="txtDecimal_TextChanged"
                CssClass="DBconverter">
         </asp:TextBox>
            
                &nbsp;&nbsp;
          <br /><br />

          <span>Binary:</span>&nbsp;&nbsp;&nbsp;
          <asp:TextBox ID="txtBinary" runat="server" 
                AutoPostBack="true" 
                AutoCompleteType="Disabled"
                OnTextChanged="txtBinary_TextChanged"
                CssClass="DBconverter">
          </asp:TextBox>&nbsp;
          <br /><br />
    </div>
</asp:Content>

