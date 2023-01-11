<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewResident.aspx.cs" Inherits="MyWebApplication.viewResident" %>

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
      

    </head>
    <body class="sb-nav-fixed">
         <!--#include file="menuResident.aspx"-->
        <form id="form1" runat="server">
       
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">หน้าแรก<asp:Label ID="nameLabel" runat="server"></asp:Label>
                        </h1>
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
                        </div>
                            
</div>
                    <table>
                        <tr>
            <td>
                 <br />
            </td>
        </tr>

        </table>

                    
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