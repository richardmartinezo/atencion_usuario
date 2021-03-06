<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="AtencionUsuario._Default" %>
<%@ Register assembly="DevExpress.Web.v15.2, Version=15.2.11.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>


<%@ Register assembly="DevExpress.Data.v15.2, Version=15.2.11.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

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
            width: 186px;
        }
        .auto-style6 {
            width: 24px;
        }
        .auto-style7 {
            width: 431px;
        }
        .auto-style11 {
            width: 318px;
        }
        .auto-style12 {
            width: 205px;
        }
        .auto-style13 {
            text-align: left;
        }
        .auto-style15 {
            width: 175px;
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
                                <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" HeaderText="Formulario de Atención al Usuario" Height="417px" style="margin-left: 0px" Theme="SoftOrange" Width="885px">
                                    <PanelCollection>
                                        <dx:PanelContent runat="server">
                                            <table class="dxflInternalEditorTable">
                                                <tr>
                                                    <td>
                <img alt="" class="auto-style4" src="imagenes/sello.png" />
                                                        &nbsp;&nbsp; </td>
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><span class="auto-style11"> <span class="auto-style7">Atención de Solicitudes para el Usuario de Transporte Aéreo</span></span></strong></td>
                                                </tr>
                                            </table>
    <br />
                                            <table class="dxflInternalEditorTable">
                                                <tr>
                                                    <td class="auto-style6" rowspan="10">&nbsp;&nbsp;&nbsp;
                                                    </td>
                                                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style12">Apellidos y Nombres:<br /> </td>
                                                    <td class="auto-style13">
                                                        <dx:ASPxTextBox ID="TextNombres" runat="server" Width="350px">
                                                        </dx:ASPxTextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style12">Cédula de Identidad:</td>
                                                    <td class="auto-style13">
                                                        <dx:ASPxTextBox ID="Textcedula" runat="server" Width="350px">
                                                        </dx:ASPxTextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style12">Email:</td>
                                                    <td class="auto-style13">
                                                        <dx:ASPxTextBox ID="Textemail" runat="server" Width="350px">
                                                            <MaskSettings ErrorText="Email no válido" ShowHints="True" />
                                                        </dx:ASPxTextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style12">Fecha del evento:</td>
                                                    <td class="auto-style13">
                                                        <dx:ASPxDateEdit ID="ASPxDateEdit_fecha" runat="server">
                                                        </dx:ASPxDateEdit>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style12">Número de Vuelo:</td>
                                                    <td class="auto-style13">
                                                        <dx:ASPxTextBox ID="TextNumVuelo" runat="server" Width="350px">
                                                        </dx:ASPxTextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style12">Aerolínea:</td>
                                                    <td class="auto-style13">
                                                        <dx:ASPxComboBox ID="ASPxComboBox_companias" runat="server" DataSourceID="SqlDataSource_Companias" EnableCallbackMode="True" EnableClientSideAPI="True" Height="22px" TextField="COD_COMPANIA" TextFormatString="{0}" ValueField="CODIGO_OACI" Width="350px">
                                                            <Columns>
                                                                <dx:ListBoxColumn Caption="Compania" FieldName="NOMBRE" Width="400px" />
                                                                <dx:ListBoxColumn Caption="Codigo" FieldName="CODIGO_OACI" />
                                                            </Columns>
                                                        </dx:ASPxComboBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style12">Aeropuerto:</td>
                                                    <td class="auto-style13">
                                                        <dx:ASPxComboBox ID="ASPxComboBox_aerop" runat="server" DataSourceID="SqlDataSource_aerodrome" EnableCallbackMode="True" EnableClientSideAPI="True" Height="22px" TextField="AEROP_DESCRIP" TextFormatString="{0}" ValueField="PUNTORUTA_OACI" Width="350px">
                                                            <Columns>
                                                                <dx:ListBoxColumn Caption="Aeropuerto" FieldName="AEROP_DESCRIP" Width="400px" />
                                                                <dx:ListBoxColumn Caption="Cod OACI" FieldName="PUNTORUTA_OACI" />
                                                                <dx:ListBoxColumn FieldName="CIUDAD" />
                                                                <dx:ListBoxColumn FieldName="PAIS" />
                                                                <dx:ListBoxColumn Caption="REGION" FieldName="region" />
                                                            </Columns>
                                                        </dx:ASPxComboBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style12">Detalle de la solicitud:</td>
                                                    <td class="auto-style13">
                                                        <dx:ASPxMemo ID="ASPxMemodetalle" runat="server" Height="250px" Width="400px">
                                                        </dx:ASPxMemo>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style12">&nbsp;</td>
                                                    <td>
                                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                            <ContentTemplate>
                                                                <dx:ASPxButton ID="ASPxButton2" runat="server" AutoPostBack="False" Height="29px" Text="Remitir la Información" Theme="SoftOrange" Width="88px">
                                                                    <ClientSideEvents Click="function(s, e) {
	

}" />
                                                                </dx:ASPxButton>
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </td>
                                                </tr>
                                            </table>
    <br />
                                            <asp:Image ID="Image1" runat="server" ImageUrl="~/imagenes/Warning.png" />
                                            Advertencia: <br />
                                            <div id="widgetIframe">
                                            </div>
    <br />
                                        </dx:PanelContent>
                                    </PanelCollection>
                                </dx:ASPxRoundPanel>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <dx:ASPxPopupControl ID="ASPxPopupControl2" runat="server" HeaderText="Solicitud Atención Usuario." Modal="True" PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" Width="511px">
            <ContentCollection>
                <dx:PopupControlContentControl runat="server">
                    <table class="dxflInternalEditorTable_SoftOrange">
                        <tr>
                            <td class="auto-style15">
                                <dx:ASPxImage ID="ASPxImage1" runat="server" ImageUrl="~/imagenes/usererror.png" ShowLoadingImage="True">
                                </dx:ASPxImage>
                            </td>
                            <td>Su Solicitud ha sido remitida, al area de atencion al usuario.</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style15">&nbsp;</td>
                            <td>
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                        <dx:ASPxButton ID="ASPxButton7" runat="server" EnableTheming="True" Height="33px" Text="Aceptar !" Theme="SoftOrange" Width="104px">
                                            <ClientSideEvents Click="function(s, e) {
ASPxPopupControl2.Hide();	
}" />
                                        </dx:ASPxButton>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                <br />
                <br />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style15">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </dx:PopupControlContentControl>
            </ContentCollection>
        </dx:ASPxPopupControl>
        <dx:ASPxCallback ID="cbTestdac" runat="server" ClientInstanceName="cbTest">
            <ClientSideEvents EndCallback="function(s, e) {check();}" />
        </dx:ASPxCallback>
        <asp:SqlDataSource ID="SqlDataSource_aerodrome" runat="server" ConnectionString="<%$ ConnectionStrings:iFISConnectionString %>" SelectCommand=" select * from [Vista_aeropuertos] where verificable = 1"></asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource_Companias" runat="server" ConnectionString="<%$ ConnectionStrings:iFISConnectionString %>" SelectCommand="SELECT [NOMBRE], [CODIGO_OACI] FROM [vista_compania] WHERE ([VERIFICABLE] = @VERIFICABLE)">
            <SelectParameters>
                <asp:Parameter DefaultValue="True" Name="VERIFICABLE" Type="Boolean" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
    
</body>
</html>
