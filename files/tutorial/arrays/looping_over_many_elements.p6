#!/usr/bin/env perl6
use v6;

my @scores = <
    Valencia  1 1 Recreativo_Huelva
    Athletic_Bilbao 2 5 Real_Madrid
    Malaga      2  2      Sevilla_FC
    Sporting_Gijon  3 2 Deportivo_La_Coruna
    Valladolid     1  0     Getafe
    Real_Betis     0  0     Osasuna
    Racing_Santander     5  0     Numancia
    Espanyol     3  3     Mallorca
    Atletico_Madrid     3  2     Villarreal
    Almeria     0  2     Barcelona
>;

for @scores -> $home, $home_score, $guest_score, $guest {
    say "$home $guest $home_score : $guest_score";
}
