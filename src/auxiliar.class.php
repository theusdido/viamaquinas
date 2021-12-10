<?php
class Auxiliar {

    public static function permirir_abertura_chamado_urgente(){
        if ((int)date('w') >= 5 && (int)date('h') > 13){
            return false;
        }else{
            return true;
        }
    }
}