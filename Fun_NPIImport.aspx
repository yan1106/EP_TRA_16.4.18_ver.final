﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Fun_NPIImport.aspx.cs" Inherits="PreNPI_Fun_NPIImport"  EnableEventValidation = "false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PreNPI Import Excel Data </title>
      <link rel="stylesheet" href="..\css\styles.css" type="text/css" />
      <link rel="stylesheet" href="..\css\styles.css" type="text/css" />
      <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
      <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
      <script src="http://jqueryui.com/resources/demos/external/jquery.bgiframe-2.1.2.js"></script>
      <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
      <script type="text/javascript">
    function OpenQuery()
    {
        $(function () {
            $("#dialog").dialog({
                autoOpen: false,
                width: 1000,
                height: 600,
                title: "Query Import Result",
            });
            $("#dialogFrame").attr('src', 'Fun_QueryImport.aspx');
            $("#dialog").dialog("open");
            return false;
        });
    }  
    
</script>
    <style type="text/css">
        .style1
        {
            font-size: large;
        }
        .style2
        {
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <fieldset style="margin:auto;" class="fieldset">
    <legend class="legend" style="font-weight: 700; font-size: large;">Import Excel Data</legend>
        <table style="width:100%;">           
            <tr>
                <td>
                    <strong><span class="style1">匯入Excel時,請您注意下列事項:</span></strong><br />
                    1.Excel檔案類型必須是[.xlsx].<br />
                    2.只能匯入檔案名稱前三英文字母為:DIF / Q_R / DRC.
                </td>
            </tr>
            <tr>
                <td class="style2">              
                </td>
            </tr>
            <tr>
                <td>
    <asp:FileUpload runat="server" ID="FileUploadToServer" Width="382px" Height="36px">
        </asp:FileUpload>
        <asp:Button runat="server" Text="Import" ID="btnUpload" onclick="btnUpload_Click" 
                        Height="25px" class="blueButton button2" />
                    <asp:Button ID="cmdCreateJob" runat="server" ClientIDMode="Static" 
                        onclick="OpenQueryImport_Click" Text="Query Import Result"  Height="25px" class="blueButton button2" />
                </td>
            </tr>
            <tr>
                <td>
        <asp:Label ID="lblMsg" runat="server" ForeColor="Green" Text=""></asp:Label>        
                </td>
            </tr>
            <tr>
                <td>
                <hr/>
           <asp:GridView runat="server" ID="gvRecord" EmptyDataText="No record found!"
            Height="25px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" 
            BorderWidth="1px" CellPadding="3">
               <FooterStyle BackColor="White" ForeColor="#000066" />
               <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
               <RowStyle ForeColor="#000066" />
               <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
               <sortedascendingcellstyle backcolor="#F1F1F1" />
               <sortedascendingheaderstyle backcolor="#007DBB" />
               <sorteddescendingcellstyle backcolor="#CAC9C9" />
               <sorteddescendingheaderstyle backcolor="#00547E" />
        </asp:GridView>
                </td>
            </tr>
        </table>
         </fieldset>    
    </div>
    <div id="dialog">
       <iframe src="" frameborder="0" height="100%" width="100%" id="dialogFrame" scrolling="auto"></iframe>
    </div>
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="True">
    </asp:ScriptManager>
    </form>
</body>
</html>
