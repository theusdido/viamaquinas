<?php

    $pagina             = tdc::o('pagina');

    // Botão Adicionar
    $btn_add            = tdc::html('a');
    $btn_add->class     = "btn btn-primary";
    $btn_add->id        = "btn_add";
    $btn_add->name      = "btn_add";
    $btn_add->href      = "atividade/form";
    $btn_add->add('Novo');

    // Tabela para formar a grade de dados
    $tabela         = tdc::o('table');
    $tabela->class  = 'table';
    $tabela->addHeadTR(['ID','Título','Tipo','Editar','Excluir']);

    foreach(tdc::d('td_atividade') as $row){
        $editar             = tdc::o('a');
        $editar->href       = 'atividade/form/' . $row->id;
        $editar->add('Editar');
        
        // Restrição para atividades do tipo manutenção
        if ($row->tipo != 4){
            $excluir            = tdc::o('a');
            $excluir->href      = 'index.php?controller=atividade/processa&op=excluir&id=' . $row->id;
            $excluir->add('Excluir');
        }else{
            $excluir            = null;
        }

        $tabela->addBodyTR([$row->id,$row->titulo,tdc::p('td_tipoatividade',$row->tipo)->descricao,$editar,$excluir]);
    }

    $pagina->add($btn_add , $tabela);
    $pagina->mostrar();