<%@ Page Language="VB" AutoEventWireup="false" CodeFile="displaybeforestoring.aspx.vb" Inherits="displaybeforestoring" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>display save</title>
    
    <script src="js/js%203.4.1/jquery-3.4.1.js" type="text/javascript"></script>
    <link href="js/js%201.12/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="js/js%201.12/jquery-1.12.1-ui.js" type="text/javascript"></script>
    
    
    <style type="text/css">
        .button
        {
        	height: 30px;
            width: 200px;
            background-color: White;
            color: Maroon;
        }
    </style>
    <script type="text/javascript">
        $(function() {
            $("#txtDOB").datepicker({
                dateFormat: "dd/mm/yy",
                showOtherMonths: true,
                selectOtherMonths: true,
                changeMonth: true,
                changeYear: true,
                minDate: "01/01/1992",
                maxDate: "31/12/2017",
                yearRange: "1992:2017"
            });
        });
    </script>
</head>
<body style="text-align:center">
    <form id="form1" runat="server">
    <div align="center">
    <div style="width:1024px;height:auto">
    <div style="width:1024px;height:auto;text-align:center">
    <img src="Images/IndiapostLogo.jpg" alt="Indiapost Logo" />   
    </div>
    <div style="width:1024px;height:5px;background-color:Maroon"></div>
    <div style="width:1024px;height:5px;background-color:White"></div>
    <div style="width:1024px;height:5px;background-color:Maroon"></div>
    <div style="width:1024px;height:30px;background-color:White"></div>
    <div style="height:auto;width:1024px;font-size:large;color:White;background-color:Maroon">Display Data Submit  </div>
    <div style="width:1024px;height:30px;background-color:White"></div>
    <div>
    <div style="height:290px;width:300px;background-color:#aaa;float:left;text-align:center">
    <div align="center">
    <div style="height:30px;width:200px;text-align:center;color:White;background-color:Maroon">MIS Links</div>    
    </div>
    <div>
        <asp:Button ID="Button1" runat="server" Text="At a Glance" cssclass="button"/>
    </div>
    <div>
        <asp:Button ID="Button2" runat="server" Text="Office LOT" cssclass="button"/>
    </div>
    </div>
    <div style="height:auto;width:724px;background-color:#aaa;float:left">
    <div style="width:724px">
    <div style="width:362px;float:left;text-align:right">Name</div>
    <div style="width:352px;padding-left:10px;float:left;text-align:left">
        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
    </div>
    </div>
    <div style="width:724px;height:30px"></div>
    <div style="width:724px">
    <div style="width:362px;float:left;text-align:right">DOB</div>
    <div style="width:352px;padding-left:10px;float:left;text-align:left">
        <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
    </div>
    </div>
    <div style="width:724px;height:30px"></div>
    <div style="width:724px">
    <div style="width:362px;float:left;text-align:right">Gender</div>
    <div style="width:352px;padding-left:10px;float:left;text-align:left">
        <asp:DropDownList ID="ddlgender" runat="server">
            <asp:ListItem Value="0">Select Gender</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Trans Man</asp:ListItem>
            <asp:ListItem>Trans Woman</asp:ListItem>
        </asp:DropDownList>
    </div>
    </div>
    <div style="width:724px;height:30px"></div>
    <div style="width:724px">
    <div style="width:362px;float:left;text-align:right">Mobile Number</div>
    <div style="width:352px;padding-left:10px;float:left;text-align:left">
        <asp:TextBox ID="txtmbl" runat="server"></asp:TextBox>
    </div>
    </div>
    <div style="width:724px;height:30px"></div>
    <div style="width:724px">
    <div style="width:362px;float:left;text-align:right">emailID</div>
    <div style="width:352px;padding-left:10px;float:left;text-align:left">
        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
    </div>
    </div>
    <div style="width:724px;height:30px"></div>
    <div style="width:724px">
    <div style="width:362px;float:left;text-align:right">Category</div>
    <div style="width:352px;padding-left:10px;float:left;text-align:left">
        <asp:DropDownList ID="ddlcategory" runat="server">
            <asp:ListItem Value="0">Select Category</asp:ListItem>
            <asp:ListItem>UR</asp:ListItem>
            <asp:ListItem>OBC</asp:ListItem>
            <asp:ListItem>SC</asp:ListItem>
            <asp:ListItem>ST</asp:ListItem>
        </asp:DropDownList>
    </div>
    </div>
    <div style="width:724px;height:30px"></div>
    <div style="width:724px">
    <div style="width:362px;float:left;text-align:right">sscnumber</div>
    <div style="width:352px;padding-left:10px;float:left;text-align:left">
        <asp:TextBox ID="txtssc" runat="server"></asp:TextBox>
    </div>
    </div>
    <div style="width:724px;height:30px"></div>
    <div style="width:724px">
    <div style="width:362px;float:left;text-align:right">Amount</div>
    <div style="width:352px;padding-left:10px;float:left;text-align:left">
        <asp:TextBox ID="txtamount" runat="server"></asp:TextBox>
    </div>
    </div>
    <div style="width:724px;height:30px"></div>
    <div style="width:724px;height:auto">
        <asp:Button ID="btnsubmit" runat="server" Text="Preview" BackColor="#990000" 
            ForeColor="White" />
    </div>
    <div style="width:724px;height:30px"></div>
    <div style="width:724px;height:auto">
        <asp:GridView ID="grddetail3" runat="server" 
            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" ForeColor="Black" GridLines="Vertical" ShowFooter="True">
            <RowStyle BackColor="#F7F7DE" />
            <Columns>
                <asp:TemplateField HeaderText="Sl.No.">
                <ItemTemplate>
                                <%# Container.DataItemIndex + 1 %>
                            </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
    </div>
    <div style="width:724px;height:30px"></div>
    <div style="width:724px;height:auto">
        <asp:Button ID="btnfinal" runat="server" Text="Submit" />
    </div>
    
    </div>
    
    </div>
    
    
     
    
    
    
    
    
    
    
  
    
    
    
    </div>
    </div>
    </form>
</body>
</html>
