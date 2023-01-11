<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="MyWebApplication.view" %>



<!DOCTYPE html>
<html lang="en">
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
      

    </head>
    <body class="sb-nav-fixed">
         <!--#include file="menuAdmin.aspx"-->
        <form id="form1" runat="server">
       
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">จัดการคำร้องเรียน<asp:Label ID="nameLabel" runat="server"></asp:Label>
                        </h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active"></li>
                        </ol>
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body">รับเรื่อง</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" >
                                        <asp:Label ID="showType1" runat="server" Text=""></asp:Label>

                                        </a>
                                        <div class="small text-white">
                                            
                                            </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">กำลังดำเนินการ</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" >
                                        <asp:Label ID="showType2" runat="server" Text=""></asp:Label>

                                        </a>
                                        <div class="small text-white"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body">เสร็จสิ้น</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                         <a class="small text-white stretched-link" >
                                        <asp:Label ID="showType3" runat="server" Text=""></asp:Label>

                                        </a>
                                        <div class="small text-white"></div>
                                    </div>
                                </div>
                            </div>
                        <div>
    <table>

        <tr>
            <td>
                 <br />
            </td>
        </tr>
            <tr>
            <td class="auto-style1">
                <asp:Label Text="เลขที่คำร้องเรียน" runat="server" />
            </td>
            <td colspan="2" class="auto-style2">
                <asp:TextBox ID="txtPetition" runat="server" />
             
            </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Refresh" OnClick="Button2_Click" />
                </td>
             <td>
                    <asp:Button ID="Button3" runat="server" Text="Update Status" OnClick="Button3_Click" />
                </td>
      </tr>
        <tr>
            <td>
                 <br />
            </td>
        </tr>

        </table>
                            </div>



                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Data
                            </div>
                            <div class="card-body">
                                <asp:GridView ID="GridView1" runat="server" Width="1000px" CellPadding="8" AutoGenerateColumns="False">
                                    <Columns>
                                        <asp:BoundField DataField="PETITION_CODE" HeaderText="PETITION CODE" />
                                        <asp:BoundField DataField="PETITIONTITLE" HeaderText="PETITION TITLE" />
                                        <asp:BoundField DataField="STATUSNAME" HeaderText="STATUS" />
                                    </Columns>
                                    <HeaderStyle BackColor="#666666" ForeColor="White" />
                                    <RowStyle BorderColor="#666666" />
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                        </div>
                <%--  Data--%>
                    <div class="container-fluid px-4">
                    
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
            &nbsp;ชื่อ</td>
            <td colspan="2" class="auto-style2">
                <asp:TextBox ID="txtName" runat="server" readonly="true" ForeColor="#999999"/>
             
                <asp:Label Text="นามสกุล" runat="server" ID="Label3" />
                <asp:TextBox ID="txtLName" runat="server" readonly="true" ForeColor="#999999"/>
             
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
                <asp:TextBox ID="txtDate" runat="server" readonly="true" ForeColor="#999999"/>
             
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
                <asp:TextBox ID="txtCode" runat="server" readonly="true" ForeColor="#999999"/>
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
                <asp:TextBox ID="title" runat="server" readonly="true" ForeColor="#999999"/>
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
                <asp:TextBox ID="type2" runat="server" readonly="true" ForeColor="#999999"></asp:TextBox>
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
                <asp:TextBox ID="txtDetail" runat="server" TextMode="MultiLine" Height="53px" Width="474px" readonly="true" ForeColor="#999999"/>
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
        <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="#999999" />
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
                <asp:TextBox ID="txtUserlogin" runat="server" readonly="true" ForeColor="#999999"/>
             
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
                <asp:TextBox ID="statusOld" runat="server"  readonly="true" ForeColor="#999999"></asp:TextBox>
                <asp:DropDownList ID="status1" runat="server" Height="25px" Width="150px">
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
                  <asp:Button ID="Button4" runat="server" Text="บันทึกสถานะคำร้องเรียน" OnClick="Button4_Click" />      
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
             <asp:TextBox ID="status2" runat="server"   Text="ปิดงาน" readonly="true" ForeColor="#999999"></asp:TextBox>
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
                  <asp:TextBox ID="txtOpen" runat="server" ForeColor="#999999"     />
               
        
                <asp:Button ID="btnOpen" runat="server" Height="21px" Width="29px" Text="..." OnClick="btnOpen_Click"   />
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="false"></asp:Calendar>
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
                <asp:TextBox ID="txtEnd" runat="server" ForeColor="#999999" />
               
        
                <asp:Button ID="btnEnd" runat="server" Height="21px" Width="29px" Text="..." OnClick="btnEnd_Click"   />
                <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="true"></asp:Calendar>
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
                <asp:TextBox ID="txtPay" runat="server" />           
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
                <asp:Button ID="btnUpload1" runat="server" Text="Upload" OnClick="btnUpload1_Click" />
                </td>
                                <td>
<asp:Image ID="Image1" runat="server" Height = "100" Width = "100" />
               
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
                 <asp:Button ID="btnUpload2" runat="server" Text="Upload" OnClick="btnUpload2_Click" />
                </td>
                                <td>
<asp:Image ID="Image2" runat="server" Height = "100" Width = "100" />
               
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
                 <asp:Button ID="btnUpload3" runat="server" Text="Upload" Height="29px" OnClick="btnUpload3_Click" />
                </td>
                                <td>
<asp:Image ID="Image3" runat="server" Height = "100" Width = "100" />
               
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
             <asp:DropDownList ID="contractor" runat="server" Height="25px" Width="150px">
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
                <asp:Label Text="หมายเหตุ" runat="server" />
            </td>
            <td colspan="2" class="auto-style3">
                <asp:TextBox ID="txtNote" runat="server" TextMode="MultiLine" Height="53px" Width="474px" />
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
                     <asp:Button ID="summit" runat="server" Text="บันทึก" OnClick="summit_Click" />
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


  <%-- Data--%>



                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted"></div>
                            <div>
                                
                            </div>
                        </div>
                    </div>
                </footer>
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