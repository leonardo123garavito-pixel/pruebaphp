<?php

// mostramos todas acciones que puede hacer un contralador 
class UsuarioController{

    public function mostrarTodos(){

        require_once 'models/UsuarioModel.php';

        $usuario = new Usuario();
        
        $todos_los_usuarios = $usuario->conseguirTodos();

        require_once 'views/usuario/mostrar-todos.php';

    }

    
}