<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Formulario_Sugerencias.aspx.vb" Inherits="AtencionUsuario.Formulario_Sugerencias" %>

<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>


<%@ Register Assembly="DevExpress.Data.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 330px;
        }

        .auto-style4 {
            height: 109px;
            text-align: center;
            float: left;
        }

        .auto-style13 {
            text-align: left;
        }

        .auto-style15 {
            width: 175px;
        }

        .auto-style16 {
            color: #FF0000;
        }

        .auto-style17 {
            width: 246px;
        }

        .auto-style22 {
            color: #000000;
        }

        .auto-style28 {
            width: 43px;
            height: 37px;
        }

        .auto-style29 {
            text-align: center;
        }

        .auto-style30 {
            color: #FFFFFF;
        }

        .auto-style31 {
            background-color: #000099;
        }

        .auto-style33 {
            width: 170px;
            height: 142px;
        }

        .auto-style34 {
            font-family: "Segoe UI";
            color: #FFFFFF;
            background-color: #000099;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="True">
        </asp:ScriptManager>
        <table border="0" width="100%">
            <tr>
                <td width="100%">
                    <table align="center" border="0">
                        <tr>
                            <td class="auto-style2">
                                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                    <ContentTemplate>
                                        <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" HeaderText="Formulario de Atención al Usuario" Height="100%" Style="margin-left: 0px" Theme="MetropolisBlue" Width="100%" EnableTheming="True" ShowHeader="False">
                                            <PanelCollection>
                                                <dx:PanelContent runat="server">
                                                    <table class="dxflInternalEditorTable">
                                                        <tr>
                                                            <td>


                                                                <dx:ASPxButton ID="ASPxButton12" runat="server" Height="47px" Text="Regresar" Theme="Aqua" Width="124px" EnableTheming="True">
                                                                    <ClientSideEvents Click="function(s, e) {

	window.location = &quot;../Main_Menu/Main_Menu.aspx&quot;;


}" />
                                                                </dx:ASPxButton>
                                                            </td>
                                                            <td>&nbsp;
                <img alt="" class="auto-style4" src="../imagenes/sello.png" style="top: 50px; right: 50px; bottom: 50px; left: 50px" />
                                                                &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                        </tr>
                                                    </table>
                                                    <div class="auto-style29" style="background-color: #000080">
                                                        &nbsp;<span class="auto-style30"><span class="auto-style31">FORMULARIO DE SUGERENCIAS / </span>
                                                            <br class="auto-style31" />
                                                            <span class="auto-style31">AIR TRANSPORT SUGGESTION FORM</span></span><br />
                                                    </div>
                                                    <table class="dxflInternalEditorTable">
                                                        <tr>
                                                            <td>&nbsp;</td>
                                                            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<dx:ASPxButton ID="ASPxButton11" runat="server" EnableTheming="True" Height="29px" Text="Vaciar Formulario" Theme="Moderno" Width="88px">
                                                                <ClientSideEvents Click="function(s, e) {

MemoDetalle.SetText('');



}" />
                                                            </dx:ASPxButton>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style17">&nbsp;</td>
                                                            <td class="auto-style17"><span class="auto-style16">
                                                                <img alt="" class="auto-style28" src="../imagenes/Iconos%20formulario%20quejas/lapiz.png" />
                                                                *</span>Sugerencia:</td>
                                                            <td class="auto-style13">
                                                                <dx:ASPxMemo ID="ASPxMemodetalle" runat="server" ClientInstanceName="MemoDetalle" Height="162px" Width="321px">
                                                                    <ValidationSettings CausesValidation="True">
                                                                        <RequiredField ErrorText="* Este campo es obligatorio" IsRequired="True" />
                                                                    </ValidationSettings>
                                                                </dx:ASPxMemo>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style17" rowspan="2">&nbsp;</td>
                                                            <td class="auto-style17" rowspan="2">
                                                                <dx:ASPxButton ID="ASPxButton2" runat="server" Height="16px" Theme="SoftOrange" Width="74px">
                                                                    <ClientSideEvents Click="function(s, e) {
	

}" />
                                                                    <Image Url="~/imagenes/Iconos formulario quejas/Boton-send.png">
                                                                    </Image>
                                                                </dx:ASPxButton>
                                                            </td>
                                                            <td class="auto-style22">Enviar Formulario /<br />
                                                                Send Form</td>
                                                        </tr>
                                                        <tr>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                    </table>
                                                    <br />
                                                    <span class="auto-style16">Nota: *Campos obligatorios requeridos</span><br />
                                                    <div id="widgetIframe">
                                                    </div>
                                                    <br />
                                                </dx:PanelContent>
                                            </PanelCollection>
                                            <Border BorderColor="#003399" BorderStyle="Double" />
                                        </dx:ASPxRoundPanel>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <dx:ASPxPopupControl ID="ASPxPopupControl2" runat="server" HeaderText="Atención" Modal="True" PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" Width="686px" Height="279px" Theme="MetropolisBlue">
            <ContentCollection>
                <dx:PopupControlContentControl runat="server">
                    <table class="dxflInternalEditorTable_SoftOrange" style="height: 246px; width: 102%">
                        <tr>
                            <td class="auto-style15" rowspan="2">
                                <img alt="" class="auto-style33" src="../imagenes/Iconos%20formulario%20quejas/Formulario-enviado.png" />
                            </td>
                            <td class="auto-style34">FORMULARIO DE ATENCIÓN AL USUARIO DEL TRANSPORTE AÉREO / AIR TRANSPORT USER ATTACHMENT FORM</td>
                        </tr>
                        <tr>
                            <td>Su solicitud ha sido remitida al área de Atención al Usuario. Próximamente recibirá información detallada de su caso /
                                <br />
                                Your request has been sent to the Customer Service area. Soon you will receive detailed information about your case</td>
                        </tr>
                        <tr>
                            <td class="auto-style15">&nbsp;</td>
                            <td rowspan="2">
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                        <dx:ASPxButton ID="ASPxButton7" runat="server" EnableTheming="True" Height="33px" Text="Aceptar !" Theme="MetropolisBlue" Width="104px">
                                            <ClientSideEvents Click="function(s, e) {
ASPxPopupControl2.Hide();
window.location = &quot;../Main_Menu/Main_Menu.aspx&quot;;
}" />
                                        </dx:ASPxButton>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style15">&nbsp;</td>
                        </tr>
                    </table>
                </dx:PopupControlContentControl>
            </ContentCollection>
        </dx:ASPxPopupControl>
        <dx:ASPxCallback ID="cbTestdac" runat="server" ClientInstanceName="cbTest">
            <ClientSideEvents EndCallback="function(s, e) {check();}" />
        </dx:ASPxCallback>
        <asp:SqlDataSource ID="SqlDataSource_aerodrome" runat="server" ConnectionString="<%$ ConnectionStrings:iFISpruebasConnectionString %>" SelectCommand=" select * from [Vista_aeropuertos] where verificable = 1"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource_usuarios" runat="server" ConnectionString="<%$ ConnectionStrings:iFISpruebasConnectionString %>" SelectCommand="SELECT cod_oaci, login_username, login_oid FROM login_atencion WHERE (cod_oaci = @cod_oaci)">
            <SelectParameters>
                <asp:Parameter Name="cod_oaci" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource_Companias" runat="server" ConnectionString="<%$ ConnectionStrings:iFISpruebasConnectionString %>" SelectCommand="SELECT NOMBRE, CODIGO_OACI, ATENCION_USUARIO FROM vista_compania WHERE (VERIFICABLE = @VERIFICABLE) AND (ATENCION_USUARIO = 1)">
            <SelectParameters>
                <asp:Parameter DefaultValue="True" Name="VERIFICABLE" Type="Boolean" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>

</body>
</html>
