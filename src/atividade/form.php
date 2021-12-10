<?php
    /*
        * MILES Framework
        * @link http://www.teia.tec.br
        * @license : Via Máquinas

        * Página de formulário de cadastro de atividade
        * Data de Criacao: 09/12/2021
        * @author Edilson Valentim dos Santos Bitencourt (Theusdido)
    */

    $pagina                 = tdc::o('pagina');

    // Formulário
    $form                   = tdc::html('form');
    $form->action           = "index.php";
    $form->method           = "POST";

    // Botão Adicionar
    $btn_salvar             = tdc::html('input');
    $btn_salvar->type       = "submit";
    $btn_salvar->class      = "btn btn-primary";
    $btn_salvar->id         = "btn_save";
    $btn_salvar->name       = "btn_save";
    $btn_salvar->value      = "Salvar";
    
    // Abre o Registro
    $registro               = tdc::p('td_atividade',tdc::r('id'));

    // Campos
    $form->add(
        $btn_salvar,
        Campos::Oculto('op','op','salvar'),
        Campos::Oculto('controller','controller','atividade/processa'),
        Campos::Oculto('id','id',$registro->id),
        Campos::TextoLongo('titulo','titulo','Título',$registro->titulo),
        Campos::TextArea('descricao','descricao','Descrição',$registro->descricao),
        Campos::Lista('tipo','tipo','Tipo',tdc::opt('td_tipoatividade',$registro->tipo))
    );
    $pagina->add($form);
    $pagina->mostrar();