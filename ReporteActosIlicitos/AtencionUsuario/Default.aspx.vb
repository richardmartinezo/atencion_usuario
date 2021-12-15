Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("formulario") = ""
    End Sub

    Protected Sub ASPxButton3_Click(sender As Object, e As EventArgs)
        Session("formulario") = "Sugerencia"
        Response.Redirect("~/Formularios/Formulario_Sugerencias.aspx")

    End Sub

    Protected Sub ASPxButton1_Click(sender As Object, e As EventArgs)
        Session("formulario") = "Denuncia"
        Response.Redirect("~/Formularios/Formulario_Denuncias.aspx")

    End Sub

    Protected Sub ASPxButton2_Click(sender As Object, e As EventArgs)
        Session("formulario") = "Reclamo"
        Response.Redirect("~/Formularios/Formulario_Reclamos.aspx")

    End Sub
End Class