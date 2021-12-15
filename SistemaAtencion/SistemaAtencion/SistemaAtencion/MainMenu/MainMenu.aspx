<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MainMenu.aspx.vb" Inherits="SistemaAtencion.MainMenu" %>

<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/logo_header_dgac.png" />
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td>
                    <dx:ASPxButton ID="ASPxButton1" runat="server" Theme="Moderno">
                        <Image Url="~/Images/Main_Menu_Images/Denuncias.png">
                        </Image>
                    </dx:ASPxButton>
                </td>
                <td>
                    <dx:ASPxButton ID="ASPxButton2" runat="server" Theme="Moderno">
                        <Image Url="~/Images/Main_Menu_Images/Reclamos.png">
                        </Image>
                    </dx:ASPxButton>
                </td>
                <td>
                    <dx:ASPxButton ID="ASPxButton3" runat="server" Theme="Moderno">
                        <Image Url="~/Images/Main_Menu_Images/Sugerencias.png">
                        </Image>
                    </dx:ASPxButton>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
