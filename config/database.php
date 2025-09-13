<?php

class database{
    public static function conectar(){
        $conexion = new mysqli('localhost','root','','tienda');
        $conexion = new mysqli("localhost","root","","tienda2");
        $conexion->query("SET NAME 'utl-8'");
    }
}