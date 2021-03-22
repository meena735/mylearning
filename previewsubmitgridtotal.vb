Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlException
Imports System.Linq

Partial Class displaybeforestoring
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("mycon").ConnectionString)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtDOB.Attributes.Add("readonly", "readonly")

        btnfinal.Visible = False


    End Sub

    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        If (txtname.Text = "" Or txtDOB.Text = "" Or ddlgender.Text = "" Or txtmbl.Text = "" Or txtemail.Text = "" Or ddlcategory.Text = "" Or txtssc.Text = "" Or txtamount.Text = "") Then
            MsgBox("Please enter the field")
        Else
           
            Dim dt As New DataTable
            dt.Columns.Add("Name", GetType(String))
            dt.Columns.Add("DOB", GetType(String))
            dt.Columns.Add("Gender", GetType(String))
            dt.Columns.Add("Mobilenumber", GetType(String))
            dt.Columns.Add("emailID", GetType(String))
            dt.Columns.Add("Category", GetType(String))
            dt.Columns.Add("SSC Hallticket Number", GetType(String))
            dt.Columns.Add("Amount", GetType(String))

            Dim dr As DataRow
            dr = dt.NewRow()
            dr("Name") = txtname.Text
            dr("DOB") = txtDOB.Text
            dr("Gender") = ddlgender.Text
            dr("Mobilenumber") = txtmbl.Text
            dr("emailID") = txtemail.Text
            dr("Category") = ddlcategory.Text
            dr("SSC Hallticket Number") = txtssc.Text
            dr("Amount") = txtamount.Text
            dt.Rows.Add(dr)

            grddetail3.DataSource = dt
            grddetail3.DataBind()

            btnfinal.Visible = True

        End If


    End Sub

    Protected Sub btnfinal_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnfinal.Click

        Dim can As New SqlCommand
        can.CommandText = "INSERT INTO detail3  values(@name,@dob,@gender,@mobile,@mailid,@category,@sscnumber,@amount,@udate);select Name,DOB,Gender,Mobilenumber,emailID,category,sscnumber,Amount FROM detail3"
        can.Parameters.AddWithValue("@name", txtname.Text)
        Dim DOB As Date
        DateTime.TryParseExact(txtDOB.Text, "dd/MM/yyyy", System.Globalization.CultureInfo.InvariantCulture, System.Globalization.DateTimeStyles.None, DOB)
        can.Parameters.AddWithValue("@dob", DOB)
        can.Parameters.AddWithValue("@gender", ddlgender.Text)
        can.Parameters.AddWithValue("@mobile", txtmbl.Text)
        can.Parameters.AddWithValue("@mailid", txtemail.Text)
        can.Parameters.AddWithValue("@category", ddlcategory.Text)
        can.Parameters.AddWithValue("@sscnumber", txtssc.Text)
        can.Parameters.AddWithValue("@amount", txtamount.Text)
        can.Parameters.AddWithValue("@udate", Date.Now())

        can.Connection = con

        con.Open()
        'can.ExecuteNonQuery()
        Dim da As New SqlDataAdapter(can)
        Dim dt As New DataTable
        da.Fill(dt)
        con.Close()

        MsgBox("Data stored successfully")

        txtname.Text = ""
        txtDOB.Text = ""
        ddlgender.SelectedIndex = 0
        txtmbl.Text = ""
        txtemail.Text = ""
        ddlcategory.SelectedIndex = 0
        txtssc.Text = ""
        txtamount.Text = ""

        grddetail3.DataSource = dt
        grddetail3.DataBind()

        Dim total As Double = dt.AsEnumerable().Sum(Function(row) row.Field(Of Double)("Amount"))
        grddetail3.FooterRow.Cells(7).Text = "Total"
        grddetail3.FooterRow.Cells(7).HorizontalAlign = HorizontalAlign.Right
        grddetail3.FooterRow.Cells(8).Text = total.ToString("N2")
        grddetail3.FooterRow.Cells(8).HorizontalAlign = HorizontalAlign.Right

    End Sub
End Class
