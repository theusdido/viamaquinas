<?php

    $pagina             = tdc::o('pagina');

    // Tabela para formar a grade de dados
    $tabela         = tdc::o('table');
    $tabela->class  = 'table';
    $tabela->addHeadTR(['ID','Título','Tipo','Finalizar']);

    foreach(tdc::d('td_atividade',tdc::f('status','=',0)) as $row){
        $finalizar            = tdc::o('a');
        $finalizar->href      = 'index.php?controller=atividade/processa&op=finalizar&id=' . $row->id;
        $finalizar->add('Finalizar');

        $tabela->addBodyTR([$row->id,$row->titulo,tdc::p('td_tipoatividade',$row->tipo)->descricao,$finalizar]);
    }

    $pagina->add($tabela);
    $pagina->mostrar();