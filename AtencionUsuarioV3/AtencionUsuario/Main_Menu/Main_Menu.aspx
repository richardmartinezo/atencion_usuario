<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Main_Menu.aspx.vb" Inherits="AtencionUsuario.Main_Menu" %>

<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style5 {
            top: 50px;
            right: 50px;
            bottom: 50px;
            left: 50px;
            border-width: 0;
            text-align: center;
            height: 137px;
            width: 205px;
        }

        .auto-style6 {
            width: 47%;
        }

        .button_main_menu {
            top: 100%;
            left: 50%;
        }

        .auto-style7 {
            height: 231px;
            width: 340px;
        }

        .auto-style8 {
            width: 340px;
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
                    <dx:ASPxRoundPanel ID="ASPxRoundPanel3" runat="server" Height="100%" ShowHeader="False" Width="50%">
                        <PanelCollection>
                            <dx:PanelContent runat="server">
                                <div>
                                    <table class="button_main_menu" style="text-align: center;">
                                        <tr>
                                            <td colspan="2" style="text-align: center;">

                                                <img alt="" class="auto-style5" src="../imagenes/sello.png" />

                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <dx:ASPxButton ID="ASPxButton1" runat="server" BackColor="White" class="button_main_menu" Height="500px" HorizontalAlign="Center" Theme="MetropolisBlue" Width="300px">
                                                    <Image Url="~/Images/Main_Menu_Images/Reclamospng.png" Height="500px">
                                                    </Image>
                                                </dx:ASPxButton>
                                            </td>
                                            <td>
                                                <dx:ASPxButton ID="ASPxButton3" runat="server" BackColor="White" class="button_main_menu" Height="500px" HorizontalAlign="Center" Theme="MetropolisBlue" Width="343px">
                                                    <Image Url="~/Images/Main_Menu_Images/sug.png" Height="500px">
                                                    </Image>
                                                </dx:ASPxButton>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </dx:PanelContent>
                        </PanelCollection>
                        <Border BorderColor="#003399" BorderStyle="Double" />
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
