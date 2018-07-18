<?php
include_once("models/m_san_pham.php");

$msp = new M_san_pham();

$key = $_POST["gtTang"];
//echo $key;

// if($key=="SapTangDan")
// {
//     $nuocuong = $msp->SapTangDan();
//     print_r($nuocuong);
// }
// if($key=="SapGiamDan")
// {
//     $nuocuong = $msp->SapGiamDan(); 
// }


switch ($key)
{
    case "SapTangDan":
       $nuocuong = $msp->SapTangDan();
       break;
       //print_r($nuocuong);

    case "SapGiamDan":
       $nuocuong = $msp->SapGiamDan(); 
       break;  
       //print_r($nuocuong); 
    
    default:
      $nuocuong = $msp->SapTangDan();

}



//  $dsnu = $msp->DanhSachNuocUong();
//  //Phân trang
//  $limit = 8;
//  $tongsp = count($dsnu);
//  $pages = ceil($tongsp/$limit);
//  $currentpage = isset($_GET["page"])?$_GET["page"]:1;
//  $vt = ($currentpage-1)*$limit;
//  $thanhpt="";
//  for ($i=1; $i <=$pages ; $i++) 
//  { 
//      if($i==$currentpage)
//      {
//          $thanhpt.="<b>$i</b>";
//      }
//      else
//      {
//          $thanhpt.=" <a href='san-pham/page=$i'>$i </a> ";
//      }
//  }
//  if($key=="SapTangDan")
//  {
//      $nuocuong = $msp->SapTangDan($vt,$limit);
//      print_r($nuocuong);
//  }
//  if($key=="SapGiamDan")
//  {
//      $nuocuong = $msp->SapGiamDan($vt,$limit); 
//  }


?>
<div id="hienthimenusanpham">
    <div class="row">
        <?php
            foreach ($nuocuong as $dsnuocuong)
            {
        ?> 
            <div class="col-md-4" id="motsanpham">
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
</div>

<!--Hết Một sản phẩm-->	
						
                        
                       
