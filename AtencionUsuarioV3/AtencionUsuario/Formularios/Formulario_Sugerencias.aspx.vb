Imports System.Net.Mail
Imports System.Reflection
Imports System.Data.SqlClient

Public Class Formulario_Sugerencias
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ASPxButton2_Click(sender As Object, e As EventArgs) Handles ASPxButton2.Click

        ScriptManager.RegisterClientScriptBlock(Me, Me.Page.GetType(), "dxsi_HidePopup", "ASPxPopupControl2.Show();", True)
        Dim numr As Integer

        Dim cn As String = "Data Source=win-sqlserv-01;Initial Catalog=IFISpruebas;User ID=adminsql;Password=sistema*-!;"
        Dim sql As String = "insert into atencion_usuario (fecha, usuario_detalle_queja) values"
        sql = sql + "(@fecha,@detalle)"
        Dim dataview As DataView
        Dim select_arguments As New DataSourceSelectArguments
        select_arguments.AddSupportedCapabilities(DataSourceCapabilities.Page)

        dataview = SqlDataSource_usuarios.Select(select_arguments)





       

            mail("seguimiento.queja@aviacioncivil.gob.ec", "Formulario de atención al usuario: " & vbNewLine, ASPxMemodetalle.Text)
            'aqui

           



        Using conn As New SqlConnection(cn)
            Dim cmd As New SqlCommand(sql, conn)
           
            cmd.Parameters.AddWithValue("@detalle", ASPxMemodetalle.Value)
            cmd.Parameters.AddWithValue("@fecha", Date.Now)

            
            Try
                conn.Open()
                numr = Convert.ToInt32(cmd.ExecuteScalar())
                conn.Close()

            Catch ex As Exception
                Console.WriteLine(ex.Message)
                ScriptManager.RegisterStartupScript(Page, Page.GetType, "alertjs", "alert(' " & ex.Message & "');", True)
            End Try
        End Using

        'Using conn_usuario As New SqlConnection(cn)
        '    Dim cmd As New SqlCommand(sql_usuario, conn_usuario)
        '    cmd.Parameters.AddWithValue("@cod_oaci", ASPxComboBox_aerop.SelectedItem.Value)

        '    conn_usuario.Open()
        '    cmd.ExecuteNonQuery()

        '    'numr_select_usuario = Convert.ToInt32(cmd.ExecuteScalar())
        '    conn_usuario.Close()
        'End Using



        ASPxMemodetalle.Text = ""
        Session("formulario") = ""

    End Sub

    Protected Sub mail(mailtext As String, saludo_usuario As String, mensaje As String)
        On Error Resume Next

        Dim mail As New MailMessage()
        mail.From = New MailAddress("no_reply@aviacioncivil.gob.ec") 'comprobantes.electronicos@aviacioncivil.gob.ec CEDGAC seadacweb@aviacioncivil.gob.ec dgac2122
        mail.To.Add(mailtext)

        mensaje = saludo_usuario & vbNewLine & vbNewLine & "Asunto: " & mensaje


        mail.Body = mensaje
        Dim smtp As New SmtpClient("172.20.16.16")
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

    Protected Sub ASPxButton9_Click(sender As Object, e As EventArgs)

    End Sub

    'Protected Sub ASPxCalendarEdit_fecha1_SelectionChanged(sender As Object, e As EventArgs) Handles ASPxCalendarEdit_fecha1.SelectionChanged

    'End Sub

    Protected Sub SqlDataSource_usuarios_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SqlDataSource_usuarios.Selecting
        ' e.Command.Parameters("@cod_oaci").Value = ASPxComboBox_aerop.SelectedItem.Value
    End Sub

    Protected Sub ASPxButton7_Click(sender As Object, e As EventArgs) Handles ASPxButton7.Click

    End Sub

    Protected Sub ASPxButton12_Click(sender As Object, e As EventArgs) Handles ASPxButton12.Click

    End Sub
End Class