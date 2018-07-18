<div class="container chitietsanpham mt-4">
    <div class="row">

        <div class="col-sm-5">

            <div class="hinhsanpham">
                <img id="chitietsanpham" src="public/images/hinh_nuoc_uong/{$sp->hinh}" alt="{$sp->ten_nuoc_uong}" style="width: 100%; object-fit: cover;">
            </div>
        </div>

        <div class="col-sm-7">
            <div class="noidungsanpham">
                <div class="noidungsanphamhead mt-3 mb-4">
                    <h5 style="color:#105689">{$sp->ten_nuoc_uong}</h5>
                </div>


                <div class="noidungsanphamcontent">
                    <div class="form-group">
                        <label>
                            Đơn vị tính:
                            <span class="ml-3" style="background-color:#105689;padding:10px;color:#fff;border-radius: 10%">{$sp->dvt}</span>
                        </label>
                    </div>
                    <div class="form-group">

                        Giá:
                        <span style="color:#105689;margin-left:10px">{$sp->don_gia} vnđ</span>

                    </div>

                    <!--Xử lý PHP (LẤY SỐ LƯỢNG TỪ INPUT)-->
                    <div class="form-group">
                        Số lượng: {*Lấy $don_gia về*}
                        <input type="hidden" id="dongia{$sp->ma_nuoc_uong}" value="{$sp->don_gia}" /> {*Lấy $soluong về*}
                        <input type="number" min="1" name="soluongnhap" id="soluong{$sp->ma_nuoc_uong}" style="width:50px;margin-left:30px;margin-right:30px;text-align:center"
                            value="1" autofocus> {*Lấy $key về*}
                        <a class="button-1 hvr-float-shadow" href="javascript:void(0)" id="{$sp->ma_nuoc_uong}" style="background-color:#fff;border:1px solid #105689;padding:10px;border-radius:8px ">

                            <span style="color:#666">Mua ngay</span>
                        </a>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="container">
    <div class="row">
        <div class="col-md-12">
            <!-- <div id="accordion" style="border:1px solid gray" class="mt-4">

                <h5 style="padding:40px 40px 0px 40px"> CHI TIẾT SẢN PHẨM</h5>
                <div style="border-bottom: 1px solid gray;padding:40px">
                    <div class="row">
                        <div class="col-md-4">
                            <h6>Thành phần: </h6>
                            <p>{$sp->thanh_phan}</p>

                            <h6>Cách sử dụng: </h6>
                            <p>Ngon hơn khi uống lạnh</p>
                        </div>

                        <div class="col-md-4">
                            <h6>Bảo quản: </h6>
                            <p>Nơi khô ráo thoáng mát, tránh nắng và hóa chất</p>

                            <h6>Dung tích: </h6>
                            <p>{$sp->dung_tich}</p>
                        </div>

                        <div class="col-md-4">

                            <h6>Xuất xứ thương hiệu: </h6>
                            <p>{$sp->xuat_xu}</p>

                            <h6>Sản xuất tại: </h6>
                            <p>{$sp->san_xuat}</p>
                        </div>
                    </div>
                </div>
                <h5 style="padding:40px 40px 0px 40px; border-top:1px solid  gray"> THẺ TAG</h5>
                <div style="border-bottom: 1px solid gray;padding:40px">

                    <p>{$sp->thanh_phan}</p>

                </div>
            </div> -->

            <ul class="nav nav-tabs mt-4" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="ctsp-tab" data-toggle="tab" href="#ctsp" role="tab" aria-controls="home" aria-selected="true">Chi Tiết Sản Phẩm</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="tag-tab" data-toggle="tab" href="#tag" role="tab" aria-controls="profile" aria-selected="false">Thẻ Tag</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="bl-tab" data-toggle="tab" href="#bl" role="tab" aria-controls="profile" aria-selected="false">Bình Luận</a>
                </li>

            </ul>


            <div class="tab-content" id="myTabContent">

                <div class="tab-pane fade show active" id="ctsp" role="tabpanel" aria-labelledby="ctsp-tab">
                    <div style="padding:20px">
                        <div class="row">
                            <div class="col-md-4">
                                <h6>Thành phần: </h6>
                                <p>{$sp->thanh_phan}</p>

                                <h6>Cách sử dụng: </h6>
                                <p>Ngon hơn khi uống lạnh</p>
                            </div>

                            <div class="col-md-4">
                                <h6>Bảo quản: </h6>
                                <p>Nơi khô ráo thoáng mát, tránh nắng và hóa chất</p>

                                <h6>Dung tích: </h6>
                                <p>{$sp->dung_tich}</p>
                            </div>

                            <div class="col-md-4">

                                <h6>Xuất xứ thương hiệu: </h6>
                                <p>{$sp->xuat_xu}</p>

                                <h6>Sản xuất tại: </h6>
                                <p>{$sp->san_xuat}</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="tab-pane fade show" id="tag" role="tabpanel" aria-labelledby="tag-tab">
                    <div style="padding:20px">
                        <p>{$sp->thanh_phan}</p>
                    </div>
                </div>

                <div class="tab-pane fade show" id="bl" role="tabpanel" aria-labelledby="bl-tab">
                    <div class="col-md-6 offset-md-3 col-sm-6 offset-sm-3 col-12 comments-main pt-4 rounded">
                        <ul class="p-0">
                            <li>
                                <div class="row comments mb-2">
                                    <div class="col-md-2 col-sm-2 col-3 text-center user-img">
                                        <img id="profile-photo" src="http://nicesnippets.com/demo/man01.png" class="rounded-circle" />
                                    </div>
                                    <div class="col-md-9 col-sm-9 col-9 comment rounded mb-2">
                                        <h4 class="m-0">
                                            <a href="#">Jacks David</a>
                                        </h4>
                                        <time class="text-white ml-3">1 hours ago</time>
                                        <like></like>
                                        <p class="mb-0 text-white">Thank you for visiting all the way from New York.</p>
                                    </div>
                                </div>
                            </li>                           
                        </ul>

                        <div class="row comment-box-main p-3 rounded-bottom">
                            <div class="col-md-9 col-sm-9 col-9 pr-0 comment-box">
                            <input type="text" class="form-control" placeholder="" autofocus />
                            </div>
                            <div class="col-md-3 col-sm-2 col-2 pl-0 text-center send-btn">
                                
                        
                                <a class=" hvr-float-shadow"  style="background-color:#fff;border:1px solid #0071bb;padding:10px;border-radius:8px ">

                                <span style="color:#666">Bình Luận</span>
                                
                                 </a>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

<!-- Hết Content của Chi tiết sản phẩm -->



<!--Sản Phẩm Liên Quan-->
<!--Xài lại view v_menu_san_pham.tpl của index.php-->

<div class="container dssanpham">
    <hr>
    <div class="row">
        <div class="col-md-12">
            <h4 class="mb-4 text-sm-center" style="font-size:24px;font-weight: 600">SẢN PHẨM LIÊN QUAN</h4>
        </div>
    </div>


    <div class="row">
        <div class="col-sm-12">
            {include file="views/trang_chu/v_hien_thi_san_pham.tpl"}
        </div>
    </div>


</div>