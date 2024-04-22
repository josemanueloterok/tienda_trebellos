<?php

define('CLIENT_ID', "ActmxmWUa0gmkARYAEtpFxFlBKGGznqRt_Liq4WeZP9Zm987WzJxcAoZB_o6GhByLohzcOEshohsVesP");
define('CURRENCY', "EUR");
define('KEY_TOKEN', "BNDFjssj123*");
define("MONEDA", "€");

session_start();

$num_cart = 0;
if(isset($_SESSION['carrito']['productos'])){
    $num_cart = count($_SESSION['carrito']['productos']);
}

?>