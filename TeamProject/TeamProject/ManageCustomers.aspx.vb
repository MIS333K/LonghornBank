Imports System.Data
Imports System.Data.SqlClient

Public Class ManageCustomers
    Inherits System.Web.UI.Page

    Dim mdbConn As New SqlConnection
    Dim mstrConnection As String
    Dim Clients As New ClassClientsDB
    Dim mMyView As New DataView

    Dim mintCount As Integer

    'Dim gvClients As New GridView


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Clients.GetAllClients(0)
        'gvClients.DataSource = Clients.MyView
        ''gvProducts.DataSource = Accessories.CustDataset
        'gvClients.DataBind()

    End Sub

    Public Sub SortAndBind()
        Clients.GetAllClients(2)

        gvClients.DataSource = Clients.MyView
        gvClients.DataBind()


        'show row count (both should show the same number. pick one, don't use both)

        'lblRecords.Text = Accessories.MyView.Count.ToString()
    End Sub

End Class