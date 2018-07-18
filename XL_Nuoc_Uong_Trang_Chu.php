<?php

include_once("models/m_trang_chu.php");

$ma_loai_nuoc_uong = $_POST["ma_loai_nuoc_uong"];
// echo $ma_loai_nuoc_uong;

$mtc = new M_trang_chu();

$nuocuong = $mtc->DanhSachNuocUongTheoMaLoai($ma_loai_nuoc_uong);

//Dùng phân trang
$dsnu = $mtc->DanhSachNuocUong();

      //Phân trang 
$limit = 8;
$tongsp = count($dsnu);
$pages = ceil($tongsp / $limit);
$currentpage = isset($_GET["page"])?$_GET["page"]:1;
    //  echo   $currentpage;
$vt = ($currentpage - 1) * $limit;

$thanhpt = "";
for ($i = 1; $i <= $pages; $i++)
 {
    if ($i == $currentpage)
    {
        $thanhpt .= "<b style='height:40px;width:40px;border:1px solid gray;padding:10px;margin:10px; background-color:#0071bb;color:#fff;'>$i</b>";
    } 
    else 
    {
        $thanhpt .= "<a href='trang-chu/$i' style='height:40px;width:40px;padding:10px;margin:10px;border:1px solid gray;text-decoration:none'>$i</a>";
    }
}


                                                             //Mã phải động              
$nuocuong = $mtc->DanhSachNuocUongTheoMaLoai($ma_loai_nuoc_uong, $vt, $limit);

    //  echo count($nuocuong);


// echo "<pre>";
// echo print_r($nuocuong);
// echo "</pre>";


?>
<div id="hienthimenusanpham" >
    <div class="row  mt-3">
        <?php
            foreach ($nuocuong as $dsnuocuong)
            {
        ?> 
                <div class="col-md-3" id="motsanpham">
                    <div class="hienthimenusanphamhead">
                        <a href="<?php echo $dsnuocuong->ma_nuoc_uong; ?>-<?php echo $dsnuocuong->ten_khong_dau; ?>" style="position: relative;text-decoration: none;">
                            <img src="public/images/hinh_nuoc_uong/<?php echo $dsnuocuong->hinh ?>" alt="" style="width:100%;height:200px">
                        </a>
                    </div>
                    <div class="hienthimenusanphamcontent">
                        <a href="<?php echo $dsnuocuong->ma_nuoc_uong; ?>-<?php echo $dsnuocuong->ten_khong_dau; ?>" style="text-decoration: none;">
                            <h3 style="font-size: 13px;font-weight: 600"><?php echo $dsnuocuong->ten_nuoc_uong; ?></h3>
                        </a>
                        <p style="margin-top:-18px;color:#0071bb"><?php echo $dsnuocuong->don_gia; ?> vnđ/<?php echo $dsnuocuong->dvt; ?></p>
                    </div>
                    <!--Xem chi tiết Button-->
                    <div class="buttonhienthimenusanpham">
                        <button type="button">
                            <a href="<?php echo $dsnuocuong->ma_nuoc_uong; ?>-<?php echo $dsnuocuong->ten_khong_dau; ?>">Xem chi tiết</a>
                        </button>
                    </div>
                
                </div>          
           
        <?php
             }
        ?>
        
    </div>
    
    <?php
        if (count($nuocuong) >= 8)
        {
    ?>
            <div style="clear:both; text-align:center" class="mt-4">
                <?php echo $thanhpt; ?>
            </div>
    <?php
        }
    ?>
     
</div>

<!--Hết Một sản phẩm-->	
						
                        
                       
