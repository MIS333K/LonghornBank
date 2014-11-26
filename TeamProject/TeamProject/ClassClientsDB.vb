
Option Strict On

Imports System.Data
Imports System.Data.SqlClient

Public Class ClassClientsDB
    Dim mDatasetClients As New DataSet
    Dim mMyView As New DataView

    Dim mMyViewSuppliersDistinct As New DataView
    Dim mMyViewProductsSupplier As New DataView

    'Dim mDatasetProduct As New DataSet
    Dim mstrQuery As String
    Dim mQueryString As String
    Dim mdbDataAdapter As New SqlDataAdapter
    Dim mdbConn As SqlConnection
    'Dim mstrConnection As String = "workstation id=COMPUTER;packet size=4096;data source =MISSQL.mccombs.utexas.edu;integrated security=False;initial catalog=mis333k_msbcn308;user id=msbcn308;password=ZHHiOmZhe0E9"
    Dim mstrConnection As String = "workstation id=COMPUTER;packet size=4096;data source =MISSQL.mccombs.utexas.edu;integrated security=False;initial catalog=mis333k_msbcn308;user id=msbcn308;password=ZHHiOmZhe0E9"

    ' define a public read only property for the outside world to access the dataset filled by this class
    Public ReadOnly Property CustDataset() As DataSet
        Get
            ' return dataset to user
            Return mDatasetClients
        End Get
    End Property

    Public Sub RunProcedure(ByVal strName As String)
        ' CREATES INSTANCES OF THE CONNECTION AND COMMAND OBJECT
        Dim objConnection As New SqlConnection(mstrConnection)
        ' Tell SQL server the name of the stored procedure you will be executing
        Dim mdbDataAdapter As New SqlDataAdapter(strName, objConnection)
        Try
            ' SETS THE COMMAND TYPE TO "STORED PROCEDURE"
            mdbDataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure
            ' clear dataset
            Me.mDatasetClients.Clear()
            ' OPEN CONNECTION AND FILL DATASET
            mdbDataAdapter.Fill(mDatasetClients, "tblClients")
            ' copy dataset to dataview
            mMyView.Table = mDatasetClients.Tables("tblClients")
        Catch ex As Exception
            Throw New Exception("stored procedure is " & strName.ToString & " error is " & ex.Message)
        End Try
    End Sub

    'Public Sub GetAllClients(ByVal strInput As String, ByVal strSort As Integer)
    'Public Sub GetAllClients(ByVal strSort As Integer)
    '    If strSort = 0 Then
    '        RunProcedure("usp_Clients_search_by_name")
    '        mMyView.Sort = "Name"
    '    Else
    '        If strSort = 1 Then
    '            RunProcedure("usp_Products_Get_All")
    '            mMyView.Sort = "SKU"
    '        Else
    '            If strSort = 2 Then
    '                'This is third option where no sort
    '                RunProcedure("usp_Clients_get_all")
    '                mMyView.Sort = "Price"
    '            End If

    '        End If

    '    End If
    'End Sub
    Public Sub GetAllClients(strInput As Integer)
        If strInput = 0 Then
            RunProcedure("usp_Clients_Get_All")
        Else
            If strInput = 1 Then
                RunProcedure("usp_Clients_Get_All")
                mMyView.Sort = "name"
            End If
        End If


    End Sub


    Public Sub RunSPwithOneParam(ByVal strSPName As String, ByVal strParamName As String, ByVal strParamValue As String)
        ' purpose to run a stored procedure with one parameter
        ' inputs:  stored procedure name, parameter name, parameter value
        ' returns: dataset filled with correct records

        ' CREATES INSTANCES OF THE CONNECTION AND COMMAND OBJECT
        Dim objConnection As New SqlConnection(mstrConnection)
        ' Tell SQL server the name of the stored procedure you will be executing
        Dim mdbDataAdapter As New SqlDataAdapter(strSPName, objConnection)
        Try
            ' SETS THE COMMAND TYPE TO "STORED PROCEDURE"
            mdbDataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure

            ' ADD PARAMETER(S) TO SPROC
            mdbDataAdapter.SelectCommand.Parameters.Add(New SqlParameter(strParamName, strParamValue))
            ' clear dataset
            Me.mDatasetClients.Clear()

            ' OPEN CONNECTION AND FILL DATASET
            mdbDataAdapter.Fill(mDatasetClients, "tblemployee")

            ' copy dataset to dataview
            mMyViewProductsSupplier.Table = mDatasetClients.Tables("tblemployee")

        Catch ex As Exception
            Throw New Exception("params are " & strSPName.ToString & " " & strParamName.ToString & " " & strParamValue.ToString & " error is " & ex.Message)
        End Try
    End Sub

    Public ReadOnly Property MyView() As DataView
        Get
            Return mMyView
        End Get
    End Property

    Public Sub NameSearch(ByVal strName As String)
        mMyView.RowFilter = "Name like '%" & strName & "%'"
        mMyView.Sort = "Name"
        'mMyView.RowFilter = "Username like '" & strIn & "%'"
    End Sub

    Public Sub FilterRange(ByVal strLow As Integer, ByVal strHigh As Integer)
        mMyView.RowFilter = "Price >= " & strLow & " AND Price <= " & strHigh
    End Sub
    Public Sub FilterForUpper(strHigh As Integer)
        mMyView.RowFilter = "Price >= " & strHigh
    End Sub
    Public Sub FilterForLower(strLow As Integer)
        mMyView.RowFilter = "Price <= " & strLow
    End Sub

    'Public Sub CombinedSearch(ByVal strUpper As String, ByVal strAndOr As String, ByVal strLower As String)
    '    mMyView.RowFilter = "Price = '" & strUpper & "'" & strAndOr & " Price > '" & strLower & "'"
    'End Sub

    'integer is assumed to be 0 if the box is empty
    Public Sub CombinedSearch(ByVal strLow As String, ByVal strAndOr As String, ByVal strHigh As String)
        mMyView.RowFilter = "Price >= '" & strLow & "'" & strAndOr & " Price <= '" & strHigh & "'"
    End Sub

    Public Sub FilterSearch(ByVal strSupplier1 As String, ByVal strAndOr As String, ByVal strSupplier2 As String)
        mMyView.RowFilter = "Supplier = '" & strSupplier1 & "'" & strAndOr & " Price > '" & strSupplier2 & "'"
    End Sub


End Class
