Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlException
Partial Class test
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("mycon").ConnectionString)


    Protected Sub submit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles submit.Click
        If (txtname.Text = "" Or DOB.Text = "" Or gender.Text = "" Or mobile.Text = "" Or mailid.Text = "" Or category.Text = "" Or sscnumber.Text = "") Then
            MsgBox("Please enter the field")
        Else
            Dim can As New SqlCommand
            can.CommandText = "INSERT INTO Details2  values(@name,@dob,@gender,@mobile,@mailid,@category,@sscnumber,@udate);SELECT Name,DOB,gender,mobile,[mail id],category,sscnumber FROM Details2 WHERE u_date=@udate  "
            can.Parameters.AddWithValue("@name", txtname.Text)
            can.Parameters.AddWithValue("@dob", DOB.Text)
            can.Parameters.AddWithValue("@gender", gender.Text)
            can.Parameters.AddWithValue("@mobile", mobile.Text)
            can.Parameters.AddWithValue("@mailid", mailid.Text)
            can.Parameters.AddWithValue("@category", category.Text)
            can.Parameters.AddWithValue("@sscnumber", sscnumber.Text)
            can.Parameters.AddWithValue("@udate", Date.Now())

            can.Connection = con
            con.Open()
            Dim da As New SqlDataAdapter(can)
            Dim dt As New DataTable
            da.Fill(dt)
            con.Close()

            grddetail2.DataSource = dt
            grddetail2.DataBind()

            MsgBox("Data stored successfully")

            txtname.Text = ""
            DOB.Text = ""
            gender.SelectedIndex = 0
            mobile.Text = ""
            mailid.Text = ""
            category.SelectedIndex = 0
            sscnumber.Text = ""

        End If
        





    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        DOB.Attributes.Add("readonly", "readonly")
    End Sub
End Class
