<div class="right_col" role="main">
        <div class="">
            <div class="page-title">
                <div class="title_left">                  
                </div>          
            </div>
            <div class="clearfix"></div>

            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>Quản Lý Đơn Hàng
                             
                            </h2>
                            <ul class="nav navbar-right panel_toolbox">
                                <li>
                                    <a class="collapse-link">
                                        <i class="fa fa-chevron-up"></i>
                                    </a>
                                </li>

                                <li>
                                    <a class="close-link">
                                        <i class="fa fa-close"></i>
                                    </a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">
                            <!--Form-->
                            <form action="#" method="post" class="form-horizontal"   enctype="multipart/form-data" >
                                <span class="section">Chi Tiết Đơn Hàng</span>
                                <!--ma_don_hang-->
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="ma_don_hang">Mã đơn hàng
                                        <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input id="ma_don_hang" name="ma_don_hang" class="form-control col-md-7 col-xs-12" type="text" disabled  value="{$dsdhtm->ma_don_hang}">
                                    </div>
                                </div>

                                 <!--ma_khach_hang-->
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="ma_khach_hang">Mã khách hàng
                                        <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input type="text" id="ma_khach_hang" name="ma_khach_hang" class="form-control col-md-7 col-xs-12"  disabled  value="{$dsdhtm->ma_khach_hang}">
                                    </div>
                                </div>

                                <!--ho_ten-->
                              <!--  <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="ho_ten">Họ tên
                                        <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input type="text" id="ho_ten" name="ho_ten" class="form-control col-md-7 col-xs-12"  disabled  value="{$dsdhtm->ho_ten}">
                                    </div>
                                </div>
                                -->
                                  <!--ngay_dat-->
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="ngay_dat">Ngày đặt
                                        <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input type="date" id="ngay_dat" name="ngay_dat" class="form-control col-md-7 col-xs-12"  disabled  value="{$dsdhtm->ngay_dat}">
                                    </div>
                                </div> 

                                 <!--tong_tien-->
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="tong_tien">Tổng tiền
                                        <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input type="text" id="tong_tien" name="tong_tien" class="form-control col-md-7 col-xs-12"  disabled  value="{$dsdhtm->tong_tien}">
                                    </div>
                                </div>  

                                  <!--phuong_thuc_thanh_toan-->
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="phuong_thuc_thanh_toan">Phương thức thanh toán
                                        <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input type="text" id="phuong_thuc_thanh_toan" name="phuong_thuc_thanh_toan" class="form-control col-md-7 col-xs-12" value="{$dsdhtm->phuong_thuc_thanh_toan}">
                                    </div>
                                </div>  

                                
                                  <!--trang_thai_don_hang-->
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="trang_thai_don_hang">Trạng thái đơn hàng
                                        <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input type="text" id="trang_thai_don_hang" name="trang_thai_don_hang" class="form-control col-md-7 col-xs-12" value="{$dsdhtm->trang_thai_don_hang}">
                                    </div>
                                </div>  

                                <!--ghi_chu-->
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="ghi_chu">Ghi chú
                                        <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input type="text" id="ghi_chu" name="ghi_chu" class="form-control col-md-7 col-xs-12" value="{$dsdhtm->ghi_chu}">
                                    </div>
                                </div>  

                                 <!--trang_thai-->
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="trang_thai">Trạng thái 
                                        <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input type="text" id="trang_thai" name="trang_thai" class="form-control col-md-7 col-xs-12" value="{$dsdhtm->trang_thai}">
                                    </div>
                                </div>  
                                
                                <div class="ln_solid"></div>
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-3">                                       
                                        <input type="submit" value="Cập nhật" name="btnCapNhat" onclick="return kiemtradulieu();">
                                        <input type="button" onclick="window.location='don_hang.php'" value="Quay về">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <script>
        function kiemtradulieu()
        {
            var ma_loai_nuoc_uong = document.getElementById("ma_loai_nuoc_uong");
            if(ma_loai_nuoc_uong.value == "")        
            {
                alert("Vui lòng nhập mã loại");
                ma_loai_nuoc_uong.focus();
                return false;
            }

            return true;
        }
    </script>