<?php

$pagina                 = tdc::o('pagina');

// Formulário
$form                   = tdc::html('form');
$form->action           = "index.php";
$form->method           = "POST";

// Botão Adicionar
$btn_logar             = tdc::html('input');
$btn_logar->type       = "submit";
$btn_logar->class      = "btn btn-primary";
$btn_logar->id         = "btn_logar";
$btn_logar->name       = "btn_logar";
$btn_logar->value      = "Entrar";

// Campos
$form->add(    
    Campos::Oculto('controller','controller','autenticacao/logar'),
    Campos::TextoLongo('login','login','Login'),
    Campos::Senha('senha','senha','Senha'),
    $btn_logar
);
$pagina->add($form);
$pagina->mostrar();