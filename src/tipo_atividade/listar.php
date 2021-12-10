<?php

    $pagina             = tdc::o('pagina');

    // Botão Adicionar
    $btn_add            = tdc::html('a');
    $btn_add->class     = "btn btn-primary";
    $btn_add->id        = "btn_add";
    $btn_add->name      = "btn_add";
    $btn_add->href      = "tipo_atividade/form";
    $btn_add->add('Novo');

    // Tabela para formar a grade de dados
    $tabela         = tdc::o('table');
    $tabela->class  = 'table';
    $tabela->addHeadTR(['ID','Descrição','Editar','Excluir']);
    
    foreach(tdc::d('td_tipoatividade') as $row){
        $editar             = tdc::o('a');
        $editar->href       = 'tipo_atividade/form/' . $row->id;
        $editar->add('Editar');
        
        $excluir            = tdc::o('a');
        $excluir->href      = 'index.php?controller=tipo_atividade/processa&op=excluir&id=' . $row->id;
        $excluir->add('Excluir');

        $tabela->addBodyTR([$row->id,$row->descricao,$editar,$excluir]);
    }

    $pagina->add($btn_add , $tabela);
    $pagina->mostrar();