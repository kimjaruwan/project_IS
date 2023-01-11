<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addEmp.aspx.cs" Inherits="MyWebApplication.addEmp" %>

<!DOCTYPE html>


<html>
 <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>ระบบแจ้งเรื่องร้องเรียนงานซ่อมบำรุง</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
      

        <style type="text/css">
            .auto-style1 {
                width: 151px;
            }
        </style>
      

    </head>
<body  class="sb-nav-fixed">
     <!--#include file="menuAdmin.aspx"-->
    <form id="form1" runat="server">
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                <h1 class="mt-4">ข้อมูลพนักงาน<asp:Label ID="nameLabel" runat="server"></asp:Label>
                        </h1>
<div>
    <table>
        <tr>
            <td>
                 <br />
                
            </td>
        </tr>
         <tr>
            <td class="auto-style1">
                <asp:Label Text="รหัสพนักงาน" runat="server" />
            </td>
            <td colspan="2" class="auto-style3">
                <asp:TextBox ID="empId" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                 <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label Text="อยู่ภายใต้โครงการ" runat="server" />
            </td>
              <td colspan="2" class="auto-style3">
                              <asp:DropDownList ID="hssId" runat="server" Height="25px" Width="186px">
             <asp:ListItem>เลือก</asp:ListItem>
               
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
                <asp:Label Text="ชื่อพนักงาน" runat="server" />
            </td>
            <td colspan="2" class="auto-style3">
<asp:TextBox ID="fName" runat="server" />
                <asp:Label Text="นามสกุล" runat="server" />
<asp:TextBox ID="Lname" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                 <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label Text="ตำแหน่ง" runat="server" />
            </td>
            <td colspan="2" class="auto-style3">
                <asp:TextBox ID="position" runat="server" />
            </td>
        </tr>
        
        <tr>
            <td>
                 <br />
            </td>
        </tr>
         <tr>
            <td class="auto-style1">
                <asp:Label Text="เบอร์โทรศัพท์" runat="server" />
            </td>
            <td colspan="2" class="auto-style3">
                <asp:TextBox ID="tel" runat="server" />
            </td>
        </tr>
         
        <tr>
            <td>
                 <br />
            </td>
        </tr>
         <tr>
                 <td>
                     <asp:Button ID="summit" runat="server" Text="บันทึก"/>
                              <asp:Button ID="Button6" runat="server" Text="ยกเลิก" />
                             

                 </td>

                    </tr>
                 <tr>
            <td>
                 <br />
            </td>
        </tr>  
    </table>
    </div>





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