<?php

require_once'config/database.php';

class Usuario{

    public $db;

    public function __construct(){
        $this->db = database::conectar();
    }

    public $id_usuario;
    public $nombre;
    public $apellido;
    public $email;
    public $password;
    public $rol;
    public $imagen;

    function getId_usuario(){
        return $this->id_usuario;
    }

    function getNombre(){
        return $this->nombre;
    }

    function getApellido(){
        return $this->apellido;
    }

    function getEmail(){
        return $this->email;
    }

    function getPassword(){
        return $this->password;
    }

    function getRol(){
        return $this->rol;
    }

    function getImagen(){
        return $this->imagen;
    }

    function setId_usuario($id_usuario){
        $this->id_usuario = $id_usuario;
    }

     function setNombre($nombre){
        $this->id_usuario = $nombre;
    }

     function setApellido($apellido){
        $this->id_usuario = $apellido;
    }

     function setEmail($email){
        $this->id_usuario = $email;
    }

     function setPassword($password){
        $this->id_usuario = $password;
    }

     function setRol($rol){
        $this->id_usuario = $rol;
    }

     function setImagen($imagen){
        $this->id_usuario = $imagen;
    }


    public function conseguirTodos(){
        echo "IMPRIMIENDO TODOS LOS UDUARIOS...";

    }
    
}