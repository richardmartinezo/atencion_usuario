<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Formulario_ActosIlicitos.aspx.vb" Inherits="AtencionUsuario.Formulario_ActosIlicitos" %>

<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>


<%@ Register Assembly="DevExpress.Data.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 180px;
        }

        .auto-style4 {
            height: 65px;
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

        .auto-style18 {
            width: 30px;
            height: 27px;
        }

        .auto-style21 {
            width: 20px;
            height: 30px;
        }

        .auto-style22 {
            color: #000000;
            text-align: center;
        }

        .auto-style23 {
            width: 26px;
            height: 25px;
        }

        .auto-style24 {
            width: 30px;
            height: 33px;
        }

        .auto-style25 {
            width: 27px;
            height: 27px;
        }

        .auto-style26 {
            width: 28px;
            height: 33px;
        }

        .auto-style27 {
            width: 30px;
            height: 32px;
        }

        .auto-style28 {
            width: 32px;
            height: 34px;
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

        .auto-style35 {
            width: 246px;
            text-align: left;
        }

        .auto-style37 {
            width: 248px;
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
                                        <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" HeaderText="Formulario de Atención al Usuario" Height="100%" Style="margin-left: 0px" Theme="MetropolisBlue" Width="93%" EnableTheming="True" ShowHeader="False">
                                            <PanelCollection>
                                                <dx:PanelContent runat="server">
                                                    <table>
                                                        <tr>
                                                            <td>

                                                                &nbsp;&nbsp;

                                                            </td>
                                                            <td>
                                                            <table class="dxflInternalEditorTable" style="text-align: center">
                                                                <tr>

                                                                    <td>
                                                                        <img alt="" class="auto-style4" src="../imagenes/sello.png" style="top: 50px; right: 50px; bottom: 50px; left: 50px; width: 106px;" />
                                                                        &nbsp;&nbsp; &nbsp; </td>

                                                                </tr>
                                                            </table>
                                                            </td>
                                                            <td>

                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <div class="auto-style29" style="background-color: #000080">
                                                        &nbsp;<span class="auto-style30"><span class="auto-style31">REPORTE DE ACTOS ILÍCITOS EN CONTRA DE LA SEGURIDAD DE LA AVIACIÓN CIVIL / </span>
                                                            <br class="auto-style31" />
                                                            <span class="auto-style31">UNLAWFUL ACTS AGAINS THE SAFETY OF CIVIL AVIATION&nbsp; </span></span><br />
                                                    </div>
                                                    <table class="dxflInternalEditorTable">
                                                        <tr>
                                                            <td class="auto-style37">
                                                                &nbsp;</td>
                                                            <td class="auto-style35">&nbsp;</td>
                                                            <td class="auto-style13" colspan="2">
                                                                <dx:ASPxButton ID="ASPxButton11" runat="server" EnableTheming="True" Height="15px" Text="Vaciar" Theme="Aqua" Width="16px">
                                                                    <ClientSideEvents Click="function(s, e) {

ComboBox_companias.SetSelectedIndex(-1);
ComboBox_aeropuertos.SetSelectedIndex(-1);
TextboxNombres.SetText  ('');
TextboxCedula.SetText ('');
TextboxMail.SetText('');
CalendarEditFecha1.SetDate(null);
TextboxNumeroVuelo.SetText('');
MemoDetalle.SetText('');



}" />
                                                                </dx:ASPxButton>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style37">
                                                                <img alt="" class="auto-style27" src="../imagenes/Iconos%20formulario%20quejas/hombre-torso-superior-silueta_318-35845.png" />
                                                                <img alt="" class="auto-style24" src="../imagenes/Iconos%20formulario%20quejas/18350%20copy.png" />
                                                            </td>
                                                            <td class="auto-style17">Nombres y Apellidos:<br />
                                                                Name / Last Name
                                                                <br />
                                                            </td>
                                                            <td class="auto-style13" colspan="2">
                                                                <dx:ASPxTextBox ID="TextNombres" runat="server" Width="200px" AutoCompleteType="Disabled" ClientInstanceName="TextboxNombres" Height="21px">
                                                                    <ValidationSettings CausesValidation="True">
                                                                        <RequiredField ErrorText="* Este campo es obligatorio" />
                                                                    </ValidationSettings>
                                                                </dx:ASPxTextBox>
                                                            </td>


                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style37">
                                                                &nbsp;</td>
                                                            <td class="auto-style17">Cédula de Identidad:<br /> ID/ Passport</td>
                                                            <td class="auto-style13" colspan="2">
                                                                <dx:ASPxTextBox ID="Textcedula" runat="server" AutoCompleteType="Disabled" ClientInstanceName="TextboxCedula" Width="200px">
                                                                    <ValidationSettings CausesValidation="True">
                                                                        <RequiredField ErrorText="* Este campo es obligatorio" />
                                                                    </ValidationSettings>
                                                                </dx:ASPxTextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style37">
                                                                <img alt="" class="auto-style26" src="../imagenes/Iconos%20formulario%20quejas/simbolo-del-email-abierto-de-un-sobre-con-una-carta-dentro_318-49810.png" />
                                                            </td>
                                                            <td class="auto-style17">Correo Electrónico:<br /> Email</td>
                                                            <td class="auto-style13" colspan="2">
                                                                <dx:ASPxTextBox ID="Textemail" runat="server" AutoCompleteType="Disabled" ClientInstanceName="TextboxMail" Width="200px">
                                                                    <MaskSettings ErrorText="Email no válido" ShowHints="True" />
                                                                    <ValidationSettings>
                                                                        <RegularExpression ErrorText="No es un mail válido!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                                                                        <RequiredField ErrorText="* Este campo es obligatorio" />
                                                                    </ValidationSettings>
                                                                </dx:ASPxTextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style37">
                                                                <img alt="" class="auto-style23" src="../imagenes/Iconos%20formulario%20quejas/calendario-con-aglutinante-de-la-primavera-y-la-fecha-de-bloques_318-41909.png" />
                                                            </td>
                                                            <td class="auto-style17">Fecha del evento:
                                                                <br />
                                                                Date event</td>
                                                            <td class="auto-style13" colspan="2">
                                                                <dx:ASPxCalendar ID="ASPXCalendarEdit" runat="server" ClearButtonText="Reiniciar" ClientInstanceName="CalendarEditFecha1" Height="192px" Theme="Aqua" TodayButtonText="Hoy" Width="172px">
                                                                    <WeekNumberStyle ForeColor="Red">
                                                                    </WeekNumberStyle>
                                                                    <ValidationSettings>
                                                                        <RequiredField ErrorText="* Este campo es requerido" IsRequired="True" />
                                                                    </ValidationSettings>
                                                                </dx:ASPxCalendar>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style37">
                                                                <img alt="" class="auto-style25" src="../imagenes/Iconos%20formulario%20quejas/31069%20copy.png" />
                                                            </td>
                                                            <td class="auto-style17">Número de Vuelo:<br />
                                                                Flight number</td>
                                                            <td class="auto-style13" colspan="2">
                                                                <dx:ASPxTextBox ID="TextNumVuelo" runat="server" AutoCompleteType="Disabled" ClientInstanceName="TextboxNumeroVuelo" Width="200px">
                                                                </dx:ASPxTextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style37">
                                                                <img alt="" class="auto-style21" src="../imagenes/Iconos%20formulario%20quejas/aerolinea.png" />
                                                                &nbsp;
                                                            </td>
                                                            <td class="auto-style17">Aerolínea:<br />
                                                                Airline</td>
                                                            <td class="auto-style13">
                                                                <dx:ASPxComboBox ID="ASPxComboBox_companias" runat="server" ClientInstanceName="ComboBox_companias" DataSourceID="SqlDataSource_Companias" EnableCallbackMode="True" EnableClientSideAPI="True" Height="16px" TextField="NOMBRE" TextFormatString="{0}" ValueField="CODIGO_OACI" Width="150px">
                                                                    <Columns>
                                                                        <dx:ListBoxColumn Caption="Compania" FieldName="NOMBRE" Width="400px" />
                                                                        <dx:ListBoxColumn Caption="Codigo" FieldName="CODIGO_OACI" />
                                                                    </Columns>
                                                                    <ClearButton DisplayMode="OnHover">
                                                                    </ClearButton>
                                                                </dx:ASPxComboBox>
                                                            </td>

                                                           
                                                            <td>
                                                                <dx:ASPxButton ID="ASPxButton9" runat="server" EnableTheming="True" Height="29px" Text="Limpiar Aerolínea" Theme="Aqua" Width="36px">
                                                                    <ClientSideEvents Click="function(s, e) {

 ComboBox_companias.SetSelectedIndex(-1);

}" />
                                                                </dx:ASPxButton>
                                                            </td>
                                                            <td>

                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style37">&nbsp;</td>
                                                            <td class="auto-style17">&nbsp;</td>
                                                            <td class="auto-style13">
                                                                &nbsp;</td>

                                                            <td>

                                                            </td>
                                                            <td class="auto-style13">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style37">
                                                                <img alt="" class="auto-style18" src="../imagenes/Iconos%20formulario%20quejas/aeropuerto.png" />
                                                            </td>
                                                            <td class="auto-style17">Aeropuerto:<br /> Airport</td>
                                                            <td class="auto-style13">
                                                                <dx:ASPxComboBox ID="ASPxComboBox_aerop" runat="server" ClientInstanceName="ComboBox_aeropuertos" DataSourceID="SqlDataSource_aerodrome" EnableCallbackMode="True" EnableClientSideAPI="True" Height="17px" TextField="AEROP_DESCRIP" TextFormatString="{0}" ValueField="PUNTORUTA_OACI" Width="150px">
                                                                    <Columns>
                                                                        <dx:ListBoxColumn Caption="Aeropuerto" FieldName="AEROP_DESCRIP" Width="400px">
                                                                        </dx:ListBoxColumn>
                                                                        <dx:ListBoxColumn Caption="Cod OACI" FieldName="PUNTORUTA_OACI">
                                                                        </dx:ListBoxColumn>
                                                                        <dx:ListBoxColumn FieldName="CIUDAD">
                                                                        </dx:ListBoxColumn>
                                                                        <dx:ListBoxColumn FieldName="PAIS">
                                                                        </dx:ListBoxColumn>
                                                                        <dx:ListBoxColumn Caption="REGION" FieldName="region">
                                                                        </dx:ListBoxColumn>
                                                                    </Columns>
                                                                    <ClearButton DisplayMode="OnHover">
                                                                    </ClearButton>
                                                                    <ValidationSettings>
                                                                        <RequiredField ErrorText="*Este campo es obligatorio" />
                                                                    </ValidationSettings>
                                                                </dx:ASPxComboBox>
                                                            </td>
                                                            <td>
                                                                <dx:ASPxButton ID="ASPxButton10" runat="server" EnableTheming="True" Height="27px" Text="Limpiar Aeropuerto" Theme="Aqua" Width="25px">
                                                                    <ClientSideEvents Click="function(s, e) {

ComboBox_aeropuertos.SetSelectedIndex(-1);
	

}" />
                                                                </dx:ASPxButton>
                                                            </td>
                                                            <td class="auto-style13">&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style37">
                                                                <img alt="" class="auto-style28" src="../imagenes/Iconos%20formulario%20quejas/lapiz.png" />
                                                            </td>
                                                            <td class="auto-style17"><span class="auto-style16">*</span>Detalle de la solicitud:<br />
                                                                Request detail</td>
                                                            <td class="auto-style13" colspan="2">
                                                                <dx:ASPxMemo ID="ASPxMemodetalle" runat="server" ClientInstanceName="MemoDetalle" Height="162px" Width="250px">
                                                                    <ValidationSettings CausesValidation="True">
                                                                        <RequiredField ErrorText="* Este campo es obligatorio" IsRequired="True" />
                                                                    </ValidationSettings>
                                                                </dx:ASPxMemo>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style37" rowspan="2">&nbsp;</td>
                                                            <td class="auto-style17" rowspan="2">&nbsp;</td>
                                                            <td class="auto-style22" colspan="2">
                                                                <dx:ASPxButton ID="ASPxButton2" runat="server" Height="16px" Theme="SoftOrange" Width="59px">
                                                                    <ClientSideEvents Click="function(s, e) {
	

}" />
                                                                    <Image Url="~/imagenes/Iconos formulario quejas/Boton-send.png">
                                                                    </Image>
                                                                </dx:ASPxButton>
                                                                <div class="auto-style29">
                                                                    Enviar Formulario /<br />
                                                                    Send Form
                                                                </div>
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">&nbsp;</td>
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
                            <td class="auto-style34"><span class="auto-style30"><span class="auto-style31">REPORTE DE ACTOS ILÍCITOS EN CONTRA DE LA SEGURIDAD DE LA AVIACIÓN CIVIL / </span>
                                <br class="auto-style31" />
                                <span class="auto-style31">UNLAWFUL ACTS AGAINS THE SAFETY OF CIVIL AVIATION </span></span></td>
                        </tr>
                        <tr>
                            <td>Su solicitud ha sido remitida al área de Seguridad de la Dirección General de Aviación Civil.&nbsp; /
                                <br />
                                Your request has been sent to Security of the Civil Aeronautic General Direction . </td>
                        </tr>
                        <tr>
                            <td class="auto-style15">&nbsp;</td>
                            <td rowspan="2">
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                        <dx:ASPxButton ID="ASPxButton7" runat="server" EnableTheming="True" Height="33px" Text="Aceptar !" Theme="MetropolisBlue" Width="104px">
                                            <ClientSideEvents Click="function(s, e) {
ASPxPopupControl2.Hide();	
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
        <asp:SqlDataSource ID="SqlDataSourceTipoSolicitud" runat="server" ConnectionString="<%$ ConnectionStrings:iFISpruebasConnectionString %>" SelectCommand="SELECT * FROM [tipo_queja]"></asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource_Companias" runat="server" ConnectionString="<%$ ConnectionStrings:iFISpruebasConnectionString %>" SelectCommand="SELECT NOMBRE, CODIGO_OACI, ATENCION_USUARIO FROM vista_compania WHERE (VERIFICABLE = @VERIFICABLE) AND (ATENCION_USUARIO = 1)">
            <SelectParameters>
                <asp:Parameter DefaultValue="True" Name="VERIFICABLE" Type="Boolean" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>

</body>
</html>
