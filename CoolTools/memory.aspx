<%@ Page Title="Memory Converter" Language="C#" MasterPageFile="~/CTMaster.master" AutoEventWireup="true" CodeFile="memory.aspx.cs" Inherits="memory" Theme="CTdefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta name="author" content="Eric Pineda" />
    <meta name="keywords" content="cool tools, free, computer, memory, converter, online" />
    <meta name="description" content="Cool Tools memory converter" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div id="Memorytable">
      <table>
         <tr>
           <td id="instructions" colspan="2">Enter a value to convert <br />
           <input type="text" name="value" size="15"/></td>
         </tr>

       <tr>
         <td id="from">From:<br />
          <select name="from" size="5">
            <option value="1/8">Bit</option>
            <option value="1">Byte</option>
            <option value="1024">Kilobyte (KB)&nbsp;</option>
            <option value="1024*1024">Megabyte (MB)</option>
            <option value="1024*1024*1024">Gigabyte (GB)</option>
          </select>
         </td>

         <td id="To">To:<br/>
          <select name="to" size="5">
            <option value="1/8">Bit</option>
            <option value="1">Byte</option>
            <option value="1024">Kilobyte (KB)&nbsp;</option>
            <option value="1024*1024">Megabyte (MB)</option>
            <option value="1024*1024*1024">Gigabyte (GB)</option>
          </select>
          </td>
      </tr>
         <tr>
             <td colspan="2"><input type="text" name="result" size="12"/> <br />
               <asp:Button ID="convert" runat="server" Text="Convert"></asp:Button>
            </td>
        </tr>
     </table>
   </div>
</asp:Content>

