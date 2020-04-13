<?php

function getPrice($priceInDecimals)
{
    $price = floatval($priceInDecimals) * 10;

    return number_format($price, 2, ',', ' ') . ' €';
}