<?php
try {
    $db_connect = new PDO('mysql:dbname=egtim;host=localhost;charset=UTF8', 'root', '');
} catch (PDOException $exception) {
    echo "MYSQL Bağlantı Hatası<br/>";
    echo "Hata Açıklaması : " . $exception->getMessage();
    die();
}
$pagination_right_button_count  =   2;
$pagination_left_right_button_count  =   2;
$total_product_count_query    =   $db_connect->prepare('SELECT * FROM urunler');
$total_product_count_query->execute();
$total_product_count          =   $total_product_count_query->rowCount();
$page_per_product   =   5;
$current_page   =   isset($_REQUEST['page']) ? $_REQUEST['page'] : 1;

$pagination_start_product_count =   ($current_page*$page_per_product)-$page_per_product;
$fineded_page_count =   ceil($total_product_count/$page_per_product);
//echo $current_page,$total_product_count,$pagination_start_product_count,$fineded_page_count;

?>

    <!doctype html>
    <html lang="tr-TR">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport"
              content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>PHP PDO Pagination - Sayfalama</title>
        <style>
            .pagination-area {
                display: flex;
                flex-direction: column;
                align-items: center;
                gap: 10px;
                font-family: Arial, sans-serif;
            }

            .pagination-text-area {
                font-size: 14px;
                color: #666;
            }

            .pagination-numbers-area {
                display: flex;
                align-items: center;
                gap: 5px;
            }

            .pagination-numbers-area a,
            .pagination-numbers-area .active {
                padding: 8px 12px;
                text-decoration: none;
                border: 1px solid #ddd;
                color: #333;
                border-radius: 4px;
                transition: all 0.3s;
            }

            .pagination-numbers-area a:hover {
                background-color: #007bff;
                color: #fff;
                border-color: #007bff;
            }

            .pagination-numbers-area .active {
                background-color: #007bff;
                color: #fff;
                border-color: #007bff;
                font-weight: bold;
            }

            .pagination-numbers-area .prev,
            .pagination-numbers-area .next {
                font-weight: bold;
            }

        </style>
    </head>
    <body>
    <table align="center" width="500" border="0" cellspacing="0" cellpadding="0">
        <?php
        $product_query = $db_connect->prepare("SELECT * FROM urunler ORDER BY id ASC LIMIT $pagination_start_product_count,$page_per_product");
        $product_query->execute();


        $product_count = $product_query->rowCount();
        $products = $product_query->fetchAll(PDO::FETCH_ASSOC);
        foreach ($products as $product):
            ?>
            <tr height="30">
                <td width="30"><?php echo $product['id']; ?></td>
                <td width="375"><?php echo $product['urunadi']; ?></td>
                <td width="100" align="right"><?php echo $product['ufunfiyati'] . $product['parabirimi']; ?></td>
            </tr>
        <?php endforeach; ?>
    </table>
    <div class="pagination-area">
        <div class="pagination-text-area">
            Toplam <?php echo $fineded_page_count;?> sayfada , <?php echo $total_product_count ?> kayıt bulunmaktadır.
        </div>
        <div class="pagination-numbers-area">
            <?php
            if ($current_page>1){
                echo "<span class='prev'><a href='index.php?page=1'><< </a></span>";
                $pagination_prev_page   =   $current_page-1;
                echo "<span class='prev'><a href='index.php?page=$pagination_prev_page'> < </a></span>";

            }

            for ($pagination_index=$current_page-$pagination_right_button_count;$pagination_index<=$current_page+$pagination_left_right_button_count;$pagination_index++){
                if ($pagination_index>0 and $pagination_index<=$fineded_page_count){
                    if ($pagination_index==$current_page){
                        echo "<span class='active'> $pagination_index </a></span>";
                    }else{
                        echo "<a href='index.php?page=$pagination_index'> $pagination_index </a>";
                    }

                }
            }

            if ($current_page!=$fineded_page_count){
                $pagination_next_page   =   $current_page+1;
                echo "<span class='next'><a href='index.php?page=$pagination_next_page'> > </a></span>";
                echo "<span class='next'><a href='index.php?page=$fineded_page_count'> >> </a></span>";

            }

            ?>
        </div>
    </div>
    </body>
    </html>
<?php $db_connect = null; ?>