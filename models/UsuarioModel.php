<?php

require_once'config/database.php';

class Usuari{

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

     function setId_usuario($nombre){
        $this->id_usuario = $nombre;
    }

     function setId_usuario($apellido){
        $this->id_usuario = $apellido;
    }

     function setId_usuario($email){
        $this->id_usuario = $email;
    }

     function setId_usuario($password){
        $this->id_usuario = $password;
    }

     function setId_usuario($rol){
        $this->id_usuario = $rol;
    }

     function setId_usuario($imagen){
        $this->id_usuario = $imagen;
    }
    
}