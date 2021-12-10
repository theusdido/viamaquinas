<?php
    /*
        * MILES Framework
        * @link http://www.teia.tec.br
        * @license : Via Máquinas

        * Inicia o sistema e recebe todas as requisições
        * Data de Criacao: 09/12/2021
        * @author Edilson Valentim dos Santos Bitencourt (Theusdido)
    */

    // Inclui o Miles Framework
    include 'miles/core/autoload.php';

    // Autenticar
    include 'src/autenticacao/autenticar.php';

    // Classe Auxiliar
    include 'src/auxiliar.class.php';

    // Rota
    include 'src/rota.php';