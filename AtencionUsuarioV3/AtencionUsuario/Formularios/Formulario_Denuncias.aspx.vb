Imports System.Net.Mail
Imports System.Reflection
Imports System.Data.SqlClient

Public Class Formulario_Denuncias
    Inherits System.Web.UI.Page
    Dim validarNombre As Boolean

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If hidden1.Value.Equals(vbNull) Then
        ElseIf hidden1.Value.Equals("") Then
        Else
            If Not Page.IsPostBack Then
                validarNombre = hidden1.Value

            End If
        End If
        
    End Sub

    Protected Sub ASPxButton2_Click(sender As Object, e As EventArgs) Handles ASPxButton2.Click

        ScriptManager.RegisterClientScriptBlock(Me, Me.Page.GetType(), "dxsi_HidePopup", "ASPxPopupControl2.Show();", True)
        Dim numr As Integer

        Dim cn As String = "Data Source=win-sqlserv-01;Initial Catalog=IFISpruebas;User ID=adminsql;Password=sistema*-!;"
        Dim sql As String = "insert into atencion_usuario (id_tipo_queja,usuario_nombres, usuario_cedula, usuario_mail, usuario_detalle_queja,fecha, cod_aeropuerto, cod_compania, num_vuelo, cod_formulario, telefono) values"
        sql = sql + "(@id_tipo_queja, @nombre, @cedula, @mail, @detalle, @fecha , @cod_aeropuerto, @cod_compania, @num_vuelo,'DEN', @telefono)"
        Dim location As String = ""
        Dim dataview As DataView
        Dim select_arguments As New DataSourceSelectArguments
        select_arguments.AddSupportedCapabilities(DataSourceCapabilities.Page)

        dataview = SqlDataSource_usuarios.Select(select_arguments)





        If Textemail.Text.Equals("") Then
        Else

            mail("seguimiento.queja@aviacioncivil.gob.ec", "Formulario de atención al usuario: " & vbNewLine, ASPxMemodetalle.Text)
            'aqui

            mail(Textemail.Text, "Usted ha remitido un requerimiento de atención al usuario de Transporte Aéreo", ASPxMemodetalle.Text)

        End If
     
        


        Using conn As New SqlConnection(cn)
            Dim cmd As New SqlCommand(sql, conn)


            cmd.Parameters.AddWithValue("@nombre", TextNombres.Value)
            cmd.Parameters.AddWithValue("@cedula", Textcedula.Value)
            cmd.Parameters.AddWithValue("@mail", Textemail.Value)
            cmd.Parameters.AddWithValue("@detalle", ASPxMemodetalle.Value)
            cmd.Parameters.AddWithValue("@fecha", ASPXCalendarEdit.Value)
            cmd.Parameters.AddWithValue("@telefono", ASPxTelefono.Value)

            If ASPxComboBox_TipoSolicitud.Value Is Nothing Then

                cmd.Parameters.AddWithValue("@id_tipo_queja", "10007")
            ElseIf ASPxComboBox_TipoSolicitud.Value.Equals("10006") Then
                ASPxComboBox_companias.ValidationSettings.RequiredField.IsRequired = False
                cmd.Parameters.AddWithValue("@id_tipo_queja", ASPxComboBox_TipoSolicitud.Value)
            Else
                cmd.Parameters.AddWithValue("@id_tipo_queja", ASPxComboBox_TipoSolicitud.Value)
            End If


            If ASPxComboBox_aerop.Value Is Nothing Then

                cmd.Parameters.AddWithValue("@cod_aeropuerto", "")
            Else
                cmd.Parameters.AddWithValue("@cod_aeropuerto", ASPxComboBox_aerop.Value)
            End If

            If ASPxComboBox_companias.Value Is Nothing Then
                cmd.Parameters.AddWithValue("@cod_compania", "")
            Else
                cmd.Parameters.AddWithValue("@cod_compania", ASPxComboBox_companias.Value)
            End If
            If TextNumVuelo.Value Is Nothing Then
                cmd.Parameters.AddWithValue("@num_vuelo", "")
            Else
                cmd.Parameters.AddWithValue("@num_vuelo", TextNumVuelo.Value)
            End If


            Try
                conn.Open()
                numr = Convert.ToInt32(cmd.ExecuteScalar())
                conn.Close()

            Catch ex As Exception
                Console.WriteLine(ex.Message)
                ScriptManager.RegisterStartupScript(Page, Page.GetType, "alertjs", "alert(' " & ex.Message & "');", True)
            End Try
        End Using



        TextNombres.Text = ""
        Textcedula.Text = ""
        Textemail.Text = ""
        ASPXCalendarEdit.SelectedDates.Clear()
        TextNumVuelo.Text = ""
        ASPxComboBox_companias.Text = ""
        ASPxComboBox_aerop.Text = ""
        ASPxMemodetalle.Text = ""
        Session("formulario") = ""

    End Sub

    Protected Sub mail(mailtext As String, saludo_usuario As String, mensaje As String)
        On Error Resume Next

        Dim mail As New MailMessage()
        mail.From = New MailAddress("no_reply@aviacioncivil.gob.ec") 'comprobantes.electronicos@aviacioncivil.gob.ec CEDGAC seadacweb@aviacioncivil.gob.ec dgac2122
        mail.To.Add(mailtext)

        mensaje = saludo_usuario & vbNewLine & vbNewLine & "Fecha: " & ASPXCalendarEdit.Value.ToString() & vbNewLine & "Nombres: " & TextNombres.Text & vbNewLine & "Cédula: " & Textcedula.Value & vbNewLine & "Correo: " & Textemail.Value & vbNewLine & "Aeropuerto: " & ASPxComboBox_aerop.Text & vbNewLine & "Compañía: " & ASPxComboBox_companias.Text & vbNewLine & "Num Vuelo: " & TextNumVuelo.Value & vbNewLine & "Asunto: " & mensaje


        mail.Body = mensaje
        Dim smtp As New SmtpClient("172.20.17.87")
        mail.Subject = "Solicitud de atencion al usuario en la fecha: " & Now()

        smtp.Send(mail)


    End Sub



    Protected Sub RegisterUpdatePanel(ByVal panel As UpdatePanel)
        Dim sType = GetType(ScriptManager)
        Dim mInfo = sType.GetMethod("System.Web.UI.IScriptManagerInternal.RegisterUpdatePanel", BindingFlags.NonPublic Or BindingFlags.Instance)
        If mInfo IsNot Nothing Then
            mInfo.Invoke(ScriptManager.GetCurrent(Page), New Object() {panel})
        End If
    End Sub

    Protected Sub UpdatePanel1_Unload(sender As Object, e As EventArgs) Handles UpdatePanel2.Unload
        RegisterUpdatePanel(DirectCast(sender, UpdatePanel))
    End Sub

    Protected Sub UpdatePanel3_Unload(sender As Object, e As EventArgs) Handles UpdatePanel3.Unload
        RegisterUpdatePanel(DirectCast(sender, UpdatePanel))
    End Sub

    Protected Sub ASPxButton9_Click(sender As Object, e As EventArgs) Handles ASPxButton9.Click

    End Sub

   

    Protected Sub SqlDataSource_usuarios_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SqlDataSource_usuarios.Selecting

    End Sub

    Protected Sub ASPxButton7_Click(sender As Object, e As EventArgs) Handles ASPxButton7.Click
        Response.Redirect("~/Main_Menu/Main_Menu.aspx")

    End Sub

    Protected Sub ASPxButton12_Click(sender As Object, e As EventArgs) Handles ASPxButton12.Click

    End Sub

    Protected Sub ASPxComboBox_TipoSolicitud_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ASPxComboBox_TipoSolicitud.SelectedIndexChanged
        
    End Sub

    Protected Sub ASPxComboBox_TipoSolicitud_ValueChanged(sender As Object, e As EventArgs) Handles ASPxComboBox_TipoSolicitud.ValueChanged
       
    End Sub

    Protected Sub cbTestdac_Callback(source As Object, e As DevExpress.Web.CallbackEventArgs) Handles cbTestdac.Callback
        Metodo()
    End Sub

    <System.Web.Services.WebMethod>
    Public Function Metodo() As String
        If hidden1.Value.Equals("2") Then
            '  
            ' Textcedula.IsValid = True
            'Textemail.IsValid = True
            'ASPxComboBox_aerop.IsValid = True

            'ASPxMemodetalle.IsValid = True
            'ASPXCalendarEdit.IsValid = True
            'TextNumVuelo.IsValid = True
            TextNombres.IsValid = True
            TextNombres.ValidationSettings.RequiredField.IsRequired = True
            Textcedula.ValidationSettings.RequiredField.IsRequired = True
            Textemail.ValidationSettings.RequiredField.IsRequired = True
            ASPxComboBox_aerop.ValidationSettings.RequiredField.IsRequired = True
            ' ASPxComboBox_companias.IsValid = True
            ASPxComboBox_companias.ValidationSettings.RequiredField.IsRequired = False


            ASPXCalendarEdit.ValidationSettings.RequiredField.IsRequired = True
            TextNumVuelo.ValidationSettings.RequiredField.IsRequired = True

            TextNombres.ValidationSettings.RequiredField.ErrorText = "Se requiere el nombre"
            Textcedula.ValidationSettings.RequiredField.ErrorText = "Se requiere cédula"
            Textemail.ValidationSettings.RequiredField.ErrorText = "Se requiere correo"
            ASPxComboBox_aerop.ValidationSettings.RequiredField.ErrorText = "Se requiere el aeropuerto"
            ASPxComboBox_companias.ValidationSettings.RequiredField.ErrorText = ""

            ASPXCalendarEdit.ValidationSettings.RequiredField.ErrorText = "Se requiere fecha"
            TextNumVuelo.ValidationSettings.RequiredField.ErrorText = "Se requiere numero de vuelo"

            ASPxMemodetalle.ValidationSettings.RequiredField.IsRequired = True
            ASPxMemodetalle.ValidationSettings.RequiredField.ErrorText = "Se requiere el detalle del evento"

        ElseIf hidden1.Value.Equals("10005") Then
           
            TextNombres.ValidationSettings.RequiredField.IsRequired = True
            Textcedula.ValidationSettings.RequiredField.IsRequired = True
            Textemail.ValidationSettings.RequiredField.IsRequired = True
            ASPxComboBox_aerop.ValidationSettings.RequiredField.IsRequired = False
            ASPxComboBox_companias.ValidationSettings.RequiredField.IsRequired = True
            ASPxMemodetalle.ValidationSettings.RequiredField.IsRequired = True
            ASPXCalendarEdit.ValidationSettings.RequiredField.IsRequired = True
            TextNumVuelo.ValidationSettings.RequiredField.IsRequired = False

        ElseIf hidden1.Value.Equals("10006") Then

           
            TextNombres.ValidationSettings.RequiredField.IsRequired = False
            Textcedula.ValidationSettings.RequiredField.IsRequired = False
            Textemail.ValidationSettings.RequiredField.IsRequired = False
            ASPxComboBox_aerop.ValidationSettings.RequiredField.IsRequired = False
            ASPxComboBox_companias.ValidationSettings.RequiredField.IsRequired = False
            ASPxMemodetalle.ValidationSettings.RequiredField.IsRequired = True
            ASPXCalendarEdit.ValidationSettings.RequiredField.IsRequired = True
            TextNumVuelo.ValidationSettings.RequiredField.IsRequired = False

        End If
        

        Return ""

    End Function


End Class