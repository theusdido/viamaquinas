<?php
/*
    * MILES Framework
    * @link http://www.teia.tec.br
    * @license : Via Máquinas

    * Classe para realizar rotinas genéricas
    * Data de Criacao: 09/12/2021
    * @author Edilson Valentim dos Santos Bitencourt (Theusdido)
*/
class Auxiliar {
/*
    * Método para verificar se o usuário pode abrir chamado do tipo urgente
    * Data de Criacao: 09/12/2021
    * @author Edilson Valentim dos Santos Bitencourt (Theusdido)
*/
    public static function permirir_abertura_chamado_urgente(){
        if ((int)date('w') >= 5 && (int)date('h') > 13){
            return false;
        }else{
            return true;
        }
    }
}