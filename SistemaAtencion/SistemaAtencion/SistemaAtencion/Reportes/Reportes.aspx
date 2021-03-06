<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Reportes.aspx.vb" Inherits="SistemaAtencion.Reportes"   %>


<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
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
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
        <table class="auto-style1">
            <tr>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td>Fecha Inicio:</td>
                            <td>
                                <dx:ASPxDateEdit ID="ASPxFechaInicio" runat="server">
                                </dx:ASPxDateEdit>
                            </td>
                            <td><strong>Presentar Reporte:</strong></td>
                            <td><strong>Regresar:</strong></td>
                        </tr>
                        <tr>
                            <td>Fecha Fin:</td>
                            <td>
                                <dx:ASPxDateEdit ID="ASPxFechaFin" runat="server">
                                </dx:ASPxDateEdit>
                            </td>
                            <td rowspan="3">
                                <dx:ASPxButton ID="ASPxPresentarReporteBoton" runat="server" Text="Reporte">
                                    <Image Url="~/Images/printer_laserjet.png">
                                    </Image>
                                </dx:ASPxButton>
                            </td>
                            <td rowspan="3">
                                <dx:ASPxButton ID="ASPxPresentarReporteBoton0" runat="server" Text="Regresar">
                                    <Image Url="~/Images/cancelado.jpg">
                                    </Image>
                                </dx:ASPxButton>
                            </td>
                        </tr>
                        <tr>
                            <td>Compañía</td>
                            <td>
                                <dx:ASPxTextBox ID="ASPxCompania" runat="server" Width="170px">
                                </dx:ASPxTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Aeropuerto</td>
                            <td>
                                <dx:ASPxTextBox ID="ASPxAeropuerto" runat="server" Width="170px">
                                </dx:ASPxTextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="494px" Width="1260px" ShowParameterPrompts="False">
                    </rsweb:ReportViewer>
                </td>
            </tr>
        </table>
        <br />
    
    </div>
    </form>
</body>
</html>
