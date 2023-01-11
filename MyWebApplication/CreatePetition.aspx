<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreatePetition.aspx.cs" Inherits="MyWebApplication.CreatePetition" %>

<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - S
            B Admin</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <%--   h--%>
        <style type="text/css">
            .auto-style1 {
                height: 27px;
            }
            .auto-style3 {
                width: 482px;
            }
            .auto-style4 {
                height: 30px;
            }
            .auto-style5 {
                width: 482px;
                height: 30px;
            }
        </style>
    
     
        <%--h--%>

    </head>

<body class="sb-nav-fixed">
      <!--#include file="menuResident.aspx"-->
    <form id="form1" runat="server">
        
        <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
      <h1 class="mt-4">ยื่นคำร้องเรียน<asp:Label ID="nameLabel" runat="server"></asp:Label>
                        </h1> 
                        <%--   form--%>
 <div>
     
    <table>
        <tr>
            <td>
                 <br />
                
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label Text="วันที่แจ้ง" runat="server" />
            </td>
            <td colspan="2" class="auto-style3">
                <asp:TextBox ID="txtDate" runat="server" ForeColor="#999999" ReadOnly="True"   />
               
        
                <asp:Button ID="btnDT" runat="server" Height="21px" Width="29px" OnClick="btnDT_Click" Text="..."   />
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="true"></asp:Calendar>
               
        
            </td>

        </tr>

        
        <tr>
            <td>
                 <br />
            </td>
        </tr>
      
<%--        <tr>
            <td class="auto-style4">
                <asp:Label Text="ผู้แจ้งเรื่องร้องเรียน ชื่อ" runat="server" />
            </td>
            <td colspan="2" class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server" />
                <asp:Label Text="นามสกุล" runat="server" />
                <asp:TextBox ID="TextBox2" runat="server" />
            </td>
            
          
            <td colspan="2" class="auto-style5">
            </td>
        </tr>
       
        <tr>
            <td>
                 <br />
            </td>
        </tr>--%>
        <tr>
            <td>
                <asp:Label Text="ชื่อเรื่อง" runat="server" />
            </td>
            <td colspan="2" class="auto-style3">
                <asp:TextBox ID="title" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                 <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label Text="ประเภทคำร้อง" runat="server" />
            </td>
            <td colspan="2" class="auto-style3">
                <asp:DropDownList ID="type" runat="server" Height="25px" Width="150px" OnSelectedIndexChanged="type_SelectedIndexChanged">
                   
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                 <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label Text="รายละเอียด" runat="server" />
            </td>
            <td colspan="2" class="auto-style3">
                <asp:TextBox ID="txtDetail" runat="server" TextMode="MultiLine" Height="53px" Width="474px" />
            </td>
        </tr>
        <tr>
            <td>
                 <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label Text="แนบรูปภาพประกอบ" runat="server" />
            </td>
            <td>
        <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="Upload" />
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                </td>
            <td>
<asp:Image ID="Image" runat="server" Height = "100" Width = "100" />
               
            </td>
            
            </tr>
        <tr>
            <td>
                 <br />
            </td>
        </tr>
        <tr>
            <td colspan="3">
        <asp:HiddenField ID="hfUserID" runat="server" />
                <hr />
            </td>
        </tr>
        


        <tr>
            <td></td>
            <td colspan="2" class="auto-style3">
                <asp:Button Text="Submit" ID="btnSubmit" runat="server" OnClick="btnSubmit_Click"  />
                <asp:Button ID="btnCancle" runat="server" Text="Cancle" />
            </td>
            <%--<asp:ListItem>เลือก</asp:ListItem>
                    <asp:ListItem>ระบบไฟฟ้า</asp:ListItem>
                    <asp:ListItem>ระบบประปา</asp:ListItem>
                    <asp:ListItem>พื้นที่ส่วนกลาง</asp:ListItem>
                    <asp:ListItem>รักษาความปลอดภัย</asp:ListItem>
                    <asp:ListItem>พนักงาน</asp:ListItem>
                    <asp:ListItem>อื่นๆ</asp:ListItem>--%>
        </tr>
        <tr>
            <td></td>
            <td colspan="2" rowspan="1" class="auto-style3">
                <asp:Label Text="" ID="lblSuccessMessage" runat="server" ForeColor="Green" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td colspan="2" class="auto-style3">
                <asp:Label Text="" ID="lblErrorMessage" runat="server" ForeColor="Red" />
            </td>
        </tr>

    </table>
    </div>
                        <%--  OnClick="btnSubmit_Click"--%>





                        </div>

                    </main>
            </div>
    </form>
</body>
</html>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>