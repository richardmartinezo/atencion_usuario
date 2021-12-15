<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="AtencionUsuario._Default" %>

<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        .button_main_menu {
            top: 100%;
            left: 50%;
        }

        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table width="100%">
            <tr>
                 
                <td width="100%">
                     <table align="center" border="0">
                        <tr>
                            <td class="auto-style2">
                                <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" ShowCollapseButton="true" ShowHeader="False" Width="200px">
                                    <PanelCollection>
<dx:PanelContent runat="server">
    <table class="button_main_menu" style="text-align: center;">
        <tr>
            <td colspan="2" style="text-align: center;">
                <img alt="" class="auto-style5" src="imagenes/sello.png" />
            </td>
            <td></td>
        </tr>
        <tr>
            <td>
                <dx:ASPxButton ID="ASPxButton1" runat="server" BackColor="White" class="button_main_menu" Height="500px" HorizontalAlign="Center" Theme="MetropolisBlue" Width="300px">
                    <Image Height="500px" Url="~/Images/Main_Menu_Images/Reclamospng.png">
                    </Image>
                </dx:ASPxButton>
            </td>
            <td>
                <dx:ASPxButton ID="ASPxButton3" runat="server" BackColor="White" class="button_main_menu" Height="500px" HorizontalAlign="Center" Theme="MetropolisBlue" Width="343px">
                    <Image Height="500px" Url="~/Images/Main_Menu_Images/sug.png">
                    </Image>
                </dx:ASPxButton>
            </td>
        </tr>
    </table>
                                        </dx:PanelContent>
</PanelCollection>
                                </dx:ASPxRoundPanel>
                                </td>
                            </tr>   
                         </table>
                </td>
               
               
            </tr>

        </table>
    </form>
</body>
</html>
