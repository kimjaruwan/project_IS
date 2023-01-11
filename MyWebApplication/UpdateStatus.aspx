<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateStatus.aspx.cs" Inherits="MyWebApplication.UpdateStatus" %>

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
            .auto-style2 {
                height: 27px;
                width: 482px;
            }
            .auto-style3 {
                width: 482px;
            }
            .auto-style5 {
                width: 130px;
            }
            .auto-style6 {
                height: 27px;
                width: 130px;
            }
        </style>
        <%--h--%>

    </head>

<body class="sb-nav-fixed">
      <!--#include file="menuAdmin.aspx"-->
    <form id="form1" runat="server">
        <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
      <h1 class="mt-4">รายละเอียดคำร้องเรียนเลขที่ <asp:Label ID="nameLabel" runat="server"></asp:Label>
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
            <td class="auto-style1">
                <asp:Label Text="ผู้ยื่นคำร้อง" runat="server" />
            </td>
            <td colspan="2" class="auto-style2">
                <asp:TextBox ID="txtName" runat="server" />
             
            </td>
             
      </tr>
        <tr>
            <td>
                 <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label Text="วันที่แจ้ง" runat="server" />
            </td>
            <td colspan="2" class="auto-style2">
                <asp:TextBox ID="txtDate" runat="server" />
             
            </td>
             
      </tr>
        <tr>
            <td>
                 <br />
            </td>
        </tr>
      
        <tr>
            <td>
                <asp:Label Text="เลขที่ใบคำร้อง" runat="server" />
            </td>
            <td colspan="2" class="auto-style3">
                <asp:TextBox ID="txtPetition" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                 <br />
            </td>
        </tr>
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
                <asp:DropDownList ID="type" runat="server" Height="25px" Width="150px">
                    <asp:ListItem>เลือก</asp:ListItem>
                    <asp:ListItem>ระบบไฟฟ้า</asp:ListItem>
                    <asp:ListItem>ระบบประปา</asp:ListItem>
                    <asp:ListItem>พื้นที่ส่วนกลาง</asp:ListItem>
                    <asp:ListItem>รักษาความปลอดภัย</asp:ListItem>
                    <asp:ListItem>พนักงาน</asp:ListItem>
                    <asp:ListItem>อื่นๆ</asp:ListItem>
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
    
       

       
    </table>
    </div>
                  </div>
                    
                      <div class="container-fluid px-4">
      <h1 class="mt-4"> ส่วนของผู้ดำเนินการ <asp:Label ID="Label2" runat="server"></asp:Label>
                        </h1> 

                          <table>
                            
        <tr>
            <td class="auto-style5">
                 <br />
            </td>
        </tr>
            <tr>
            <td class="auto-style6">
                <asp:Label Text="ผู้รับผิดชอบ" runat="server" />
            </td>
            <td colspan="2" class="auto-style2">
                <asp:TextBox ID="txtResponsible" runat="server" />
             
            </td>
             
      </tr>
        <tr>
            <td>
                 <br />
            </td>
        </tr>
     <tr>
         <td class="auto-style6">
              <asp:Label Text="สถานะคำร้องเรียน" runat="server" />
         </td>
         <td colspan="2" class="auto-style3">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="150px">
                    <asp:ListItem>เลือก</asp:ListItem>
                    <asp:ListItem>รับเรื่อง</asp:ListItem>
                    <asp:ListItem>กำลังดำเนินการ</asp:ListItem>
                    <asp:ListItem>เสร็จสิ้น</asp:ListItem>
               
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
                  <asp:Button ID="Button4" runat="server" Text="บันทึกสถานะคำร้องเรียน" />      
            </td>
        </tr>
                      <tr>
            <td>
                 <br />
            </td>
        </tr>
     <tr>
         <td class="auto-style6">
              <asp:Label Text="สถานะกระบวนการ" runat="server" />
         </td>
         <td colspan="2" class="auto-style3">
                <asp:DropDownList ID="DropDownList8" runat="server" Height="25px" Width="150px">
                    <asp:ListItem>เลือก</asp:ListItem>
                    <asp:ListItem>รับเรื่อง</asp:ListItem>
                    <asp:ListItem>กำลังดำเนินการ</asp:ListItem>
                    <asp:ListItem>เสร็จสิ้น</asp:ListItem>
               
                </asp:DropDownList>
            </td>

     </tr>
                              <tr>
            <td>
                 <br />
            </td>
        </tr>
                              
                             <tr>
                                  <td class="auto-style6">
              <asp:Label Text="ผู้รับเหมา" runat="server" />
         </td>
            <td class="auto-style3">
             <asp:DropDownList ID="DropDownList9" runat="server" Height="25px" Width="150px">
                    <asp:ListItem>เลือก</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
               
                </asp:DropDownList>
            </td>
             
      </tr>        

                              <tr>
            <td>
                 <br />
            </td>
        </tr>

<tr>
    
    
         <td class="auto-style6">
              <asp:Label Text="วันที่เริ่มดำเนินการ" runat="server" />
         </td>
         <td colspan="2" class="auto-style1" >
                <asp:DropDownList ID="DropDownList2" runat="server" Height="25px" Width="70px">
                    <asp:ListItem>เลือก</asp:ListItem>
                    <asp:ListItem>รับเรื่อง</asp:ListItem>
                    <asp:ListItem>กำลังดำเนินการ</asp:ListItem>
                    <asp:ListItem>เสร็จสิ้น</asp:ListItem>
               
                </asp:DropDownList>
              <asp:Label Text="เดือน" runat="server" />
                <asp:DropDownList ID="DropDownList3" runat="server" Height="25px" Width="150px">
                    <asp:ListItem>เลือก</asp:ListItem>
                    <asp:ListItem>รับเรื่อง</asp:ListItem>
                    <asp:ListItem>กำลังดำเนินการ</asp:ListItem>
                    <asp:ListItem>เสร็จสิ้น</asp:ListItem>
               
                </asp:DropDownList>
              <asp:Label Text="ปี" runat="server" />
                <asp:DropDownList ID="DropDownList4" runat="server" Height="25px" Width="150px">
                    <asp:ListItem>เลือก</asp:ListItem>
                    <asp:ListItem>รับเรื่อง</asp:ListItem>
                    <asp:ListItem>กำลังดำเนินการ</asp:ListItem>
                    <asp:ListItem>เสร็จสิ้น</asp:ListItem>
               
                </asp:DropDownList>
            </td>
</tr>
                              <tr>
            <td>
                 <br />
            </td>
        </tr>

<tr>
    
    
         <td class="auto-style6">
              <asp:Label Text="วันที่เสร็จสิ้น" runat="server" />
         </td>
         <td colspan="2" class="auto-style1" >
                <asp:DropDownList ID="DropDownList5" runat="server" Height="25px" Width="70px">
                    <asp:ListItem>เลือก</asp:ListItem>
                    <asp:ListItem>รับเรื่อง</asp:ListItem>
                    <asp:ListItem>กำลังดำเนินการ</asp:ListItem>
                    <asp:ListItem>เสร็จสิ้น</asp:ListItem>
               
                </asp:DropDownList>
              <asp:Label Text="เดือน" runat="server" />
                <asp:DropDownList ID="DropDownList6" runat="server" Height="25px" Width="150px">
                    <asp:ListItem>เลือก</asp:ListItem>
                    <asp:ListItem>รับเรื่อง</asp:ListItem>
                    <asp:ListItem>กำลังดำเนินการ</asp:ListItem>
                    <asp:ListItem>เสร็จสิ้น</asp:ListItem>
               
                </asp:DropDownList>
              <asp:Label Text="ปี" runat="server" />
                <asp:DropDownList ID="DropDownList7" runat="server" Height="25px" Width="150px">
                    <asp:ListItem>เลือก</asp:ListItem>
                    <asp:ListItem>รับเรื่อง</asp:ListItem>
                    <asp:ListItem>กำลังดำเนินการ</asp:ListItem>
                    <asp:ListItem>เสร็จสิ้น</asp:ListItem>
               
                </asp:DropDownList>
            </td>
</tr>


              <tr>
            <td>
                 <br />
            </td>
        </tr>                           

                 <tr>
            <td class="auto-style6">
                <asp:Label Text="ค่าใช้จ่าย" runat="server" />
            </td>
            <td colspan="2" class="auto-style2">
                <asp:TextBox ID="TextBox1" runat="server" />           
            </td>          
      </tr>             
 
              <tr>
            <td>
                 <br />
            </td>
        </tr>         
                <tr>
            <td class="auto-style5">
                <asp:Label Text="แนบรูปใบเสร็จ" runat="server" />
            </td>
            <td>
        <asp:FileUpload ID="FileUpload3" runat="server" />
                </td>

            </tr>
                   <tr>
            <td>
                 <br />
            </td>
        </tr>         
                <tr>
            <td class="auto-style5">
                <asp:Label Text="รูปก่อนดำเนินการ" runat="server" />
            </td>
            <td>
        <asp:FileUpload ID="FileUpload4" runat="server" />
                </td>

            </tr>            

<tr>
            <td>
                 <br />
            </td>
        </tr>         
                <tr>
            <td class="auto-style5">
                <asp:Label Text="รูปเสร็จสิ้นดำเนินการ" runat="server" />
            </td>
            <td>
        <asp:FileUpload ID="FileUpload5" runat="server" />
                </td>

            </tr> 

<tr>
            <td>
                 <br />
            </td>
        </tr>    

             <tr>
            <td>
                <asp:Label Text="หมายเหตุ" runat="server" />
            </td>
            <td colspan="2" class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Height="53px" Width="474px" />
            </td>
        </tr>                 
                          </table>
             <table>
                 
<tr>
            <td>
                 <br />
            </td>
        </tr>    
                 <tr>
                 <td>
                     <asp:Button ID="Button1" runat="server" Text="บันทึก" />
                              <asp:Button ID="Button2" runat="server" Text="ยกเลิก" />
                             

                 </td>

                    </tr>
                 <tr>
            <td>
                 <br />
            </td>
        </tr>  


             </table>             


                              
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