#!/usr/bin/env perl6
use v6;

sub put_in_cart_riggid($product, $amount) {
    return "Adding $amount pieces of $product"; 
}
# Have to supply both parameters
# put_in_cart_riggid("Zen of Buu");
# would cause an exception

sub put_in_cart_flexible($product, $amount) {
    return "Adding $amount pieces of $product"; 
}



sub put_in_cart($product, $amount? is rw) {
    $amount //= 1;
    return "Adding $amount pieces of $product"; 
}

say put_in_cart("Winnie The Pooh", 7);
say put_in_cart("Zend of Buu");

