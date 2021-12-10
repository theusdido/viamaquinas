<?php
    /*
        * MILES Framework
        * @link http://www.teia.tec.br
        * @license : Via Máquinas

        * Encaminha a requisição para o arquivo correto
        * Data de Criacao: 09/12/2021
        * @author Edilson Valentim dos Santos Bitencourt (Theusdido)
    */

    // Recebe a variável por parametro, corresponde ao $_GET , $_POST ou $_FILES
    // Esse método já faz a verificação de SQL Injection
    $controller     = tdc::r('controller');


    if (!$logged && $controller != 'autenticacao/logar'){
        $file_rota =  'src/autenticacao/logon.php';
    }else if ($controller == ''){
        $file_rota = 'src/home.php';
    }else{
        // Inclui o arquivo da rota
        $file_rota = 'src/'.$controller.'.php';
    }

    if (file_exists($file_rota)){
        include $file_rota;
    }