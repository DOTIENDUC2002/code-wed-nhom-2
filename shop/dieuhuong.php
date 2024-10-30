<?php
session_start();
ob_start();
require_once 'cart_function.php';
$cart = (isset($_SESSION['cart'])) ? $_SESSION['cart'] : [];
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sản phẩm</title>

    <link rel="stylesheet" href="main.css">

    <link rel="stylesheet" href="FontAwesome.Pro.6.3.0/css/all.css">

    <!--  -->
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <!--  -->

    <style>
        .cart {
            width: 110px;
            height: auto;
            float: right;
            padding: 5px;
        }

        .cart>.g {
            color: 	black;
            font-size: 15px;
            font-weight: bold;
            text-decoration: none;
        }

        .cart>.i {
            color: black;
            text-align: center;
            font-size: 20px;
            font-weight: bold;
            text-decoration: none;
            box-sizing: border-box;
        }

        .thoat {
            width: 110px;
            height: auto;
            float: right;
            padding: 5px;
            box-sizing: border-box;
            font-weight: bold;
        }
        .contact-links {
    display: flex;
}

.contact-links {
    display: flex;
    justify-content: space-between; /* Horizontal adjustment */
    align-items: center; /* Vertical adjustment */
    margin-top: 10px; /* Adjust top margin as needed */
    margin-bottom: 10px; /* Adjust bottom margin as needed */
}

.contact-links a {
    text-decoration: none;
    color: light blue; /* Adjust color as needed */
}

.contact-links a i {
    margin-right: 10px; /* Adjust right margin of the icon */
    margin-left: 10px; /* Adjust left margin of the icon */
}
.contact-links a:last-child {
    margin-left: auto; /* Push the Zalo link to the right */
}


    </style>

</head>

<body>
    <div class="all">
        <div class="thanh">
            <!-- tiêu đề shop -->
<h1 class="header">
    <p1 class="list-unstyled">
        <span style="color: red;">B</span>
        <span style="color: green;">á</span>
        <span style="color: blue;">n</span>
        <span style="color: orange;">H</span>
        <span style="color: purple;">à</span>
        <span style="color: teal;">n</span>
        <span style="color: brown;">g</span>
        <span style="color: magenta;">x</span> 
        <span style="color: black;">Web</span>
    </p1>
</h1>
<div class="right">
    <!-- Your other content goes here -->
</div>

 <!-- tìm kiếm -->
            <form class="search" action="/shop/sanpham.php" method="get">
                <input type="text" name="search" id="search" >
                <input type="submit" value="Tìm kiếm" >
            </form>
            <!-- giỏ hàng -->
            <a href="view_cart.php" class="cart" style=" width: 110px;">
                <div class="i"><i class="fa-regular fa-cart-shopping"></i></div>
                <span class="g">Giỏ hàng (<?php echo total_item($cart) ?>)</span>
            </a>
            <!-- tài khoản -->
            <a href="login.php" class="cart" style=" width: 110px;">
                <div class="i"><i class="fa-solid fa-user"></i></div>
                <span class="g">Tài khoản</span>
            </a>
            <div class="thoat">
                <?php
                if (isset($_SESSION['login']['username'])) {
                    echo "Xin chào <b>{$_SESSION['login']['username']}</b> <br> 
                    <a href=\"logout.php\"><i class=\"fa-regular fa-right-from-bracket\"></i> Đăng xuất</a>";
                    
                } else {
                    echo "Đăng nhập <br>  <a href=\"login.php\"><i class=\"fa-solid fa-hippo\" style=\"color:black;\"></i> Tại đây</a>";
                }
                ?>
             <br>
             <div class="contact-links">
             <div class="contact-links">
    <!-- Gmail Contact -->
    <a href="diengmailcuaban.com" style="margin-right: 20px;"><i class="fa-solid fa-envelope"></i> Gmail</a>
    <!-- Zalo Contact -->
    <a href="https://chat.zalo.me/" target="_blank" style="margin-right: 20px;"><i class="fa-solid fa-comment-alt"></i> Zalo</a>
    <!-- Phone Call -->
    <a href="tel:0336091630" style="margin-right: 20px;"><i class="fa-solid fa-phone"></i> Call</a>
    <!-- Facebook -->
    <a href="" target="_blank"><i class="fa-brands fa-facebook"></i> Facebook</a>
</div>



    </div>
</div>
        </div>

        <div>
            <nav class="navbar navbar-expand-sm bg-primary navbar-dark">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="sanpham.php">Trang chủ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">...</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">...</a>
                    </li>
                </ul>
                 
                <div class="loc">
                    <!-- lọc -->
                    <form action="/shop/sanpham.php" method="get">
                        <input type="text" name="txtPriceMin" id="txtPriceMin" placeholder="Giá thấp nhất">
                        <input type="text" name="txtPriceMax" id="txtPriceMax" placeholder="Giá cao nhất">
                        <input type="submit" value="Lọc">
                    </form>
                </div>
            </nav>
        </div>
    </div>
</body>

</html>
