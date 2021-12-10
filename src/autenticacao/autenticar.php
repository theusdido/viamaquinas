<?php

	// Verifica se o usuário está logado
	$logged = false;
    if (isset($_SESSION["autenticado"])){
        if ($_SESSION["autenticado"]){
            $logged = true;
        }
    }