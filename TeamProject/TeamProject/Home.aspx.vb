Public Class Home
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        CustomerLoginPanel.Visible = True
        ManagerLoginPanel.Visible = False
    End Sub

    Protected Sub lnkCustomerToggle_Click(sender As Object, e As EventArgs) Handles lnkCustomerToggle.Click
        CustomerLoginPanel.Visible = True
        ManagerLoginPanel.Visible = False

    End Sub

    Protected Sub lnkManagerToggle_Click(sender As Object, e As EventArgs) Handles lnkManagerToggle.Click
        CustomerLoginPanel.Visible = False
        ManagerLoginPanel.Visible = True

    End Sub
End Class