Imports System.Net.Mail
Imports System.Reflection
Imports System.Data.SqlClient

Public Class Formulario_ActosIlicitos
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ASPxButton2_Click(sender As Object, e As EventArgs) Handles ASPxButton2.Click

        ScriptManager.RegisterClientScriptBlock(Me, Me.Page.GetType(), "dxsi_HidePopup", "ASPxPopupControl2.Show();", True)
        Dim numr As Integer

        Dim cn As String = "Data Source=win-sqlserv-01;Initial Catalog=IFISpruebas;User ID=adminsql;Password=sistema*-!;"
        Dim sql As String = "insert into actos_ilicitos (usuario_mail, usuario_nombres, usuario_cedula, cod_aeropuerto, cod_compania, num_vuelo, detalle_acto_ilicito, fecha, fecha_creacion) values"
        sql = sql + "(@usuario_mail, @usuario_nombres, @usuario_cedula, @cod_aeropuerto, @cod_compania, @num_vuelo, @detalle_acto_ilicito, @fecha, @fecha_creacion)"
        Dim dataview As DataView
        Dim select_arguments As New DataSourceSelectArguments
        select_arguments.AddSupportedCapabilities(DataSourceCapabilities.Page)

        dataview = SqlDataSource_usuarios.Select(select_arguments)


        If Textemail.Text.Equals("") Then
        Else

            mail("mario.serrano@aviacioncivil.gob.ec", "Reporte de Acto Ilícito: " & vbNewLine, ASPxMemodetalle.Text)
            ' mail("richard.martinezo@aviacioncivil.gob.ec", "Reporte de Acto Ilícito: " & vbNewLine, ASPxMemodetalle.Text)


            ' mail(Textemail.Text, "Usted ha remitido un requerimiento de atención al usuario de Transporte Aéreo", ASPxMemodetalle.Text)

        End If



        Using conn As New SqlConnection(cn)
            Dim cmd As New SqlCommand(sql, conn)

            cmd.Parameters.AddWithValue("@usuario_mail", Textemail.Value)
            cmd.Parameters.AddWithValue("@usuario_nombres", TextNombres.Value)
            cmd.Parameters.AddWithValue("@usuario_cedula", Textcedula.Value)
            cmd.Parameters.AddWithValue("@num_vuelo", TextNumVuelo.Value)
            cmd.Parameters.AddWithValue("@detalle_acto_ilicito", ASPxMemodetalle.Value)
            cmd.Parameters.AddWithValue("@fecha", ASPXCalendarEdit.Value)
            cmd.Parameters.AddWithValue("@fecha_creacion", Date.Now())


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
        mail.From = New MailAddress("info.seguridad@aviacioncivil.gob.ec") 'comprobantes.electronicos@aviacioncivil.gob.ec CEDGAC seadacweb@aviacioncivil.gob.ec dgac2122
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
        '  e.Command.Parameters("@cod_oaci").Value = ASPxComboBox_aerop.SelectedItem.Value
    End Sub

    Protected Sub ASPxButton7_Click(sender As Object, e As EventArgs) Handles ASPxButton7.Click
        Response.Redirect("~/Main_Menu/Main_Menu.aspx")

    End Sub

    Protected Sub ASPxButton12_Click(sender As Object, e As EventArgs)

    End Sub
End Class