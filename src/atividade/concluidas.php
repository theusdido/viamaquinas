<?php

    $pagina             = tdc::o('pagina');

    // Tabela para formar a grade de dados
    $tabela         = tdc::o('table');
    $tabela->class  = 'table';
    $tabela->addHeadTR(['ID','Título','Tipo','Reabrir']);

    foreach(tdc::d('td_atividade',tdc::f('status','=',1)) as $row){
        $reabrir                =   tdc::o('a');
        $reabrir->href        = 'index.php?controller=atividade/processa&op=reabrir&id=' . $row->id;
        $reabrir->add('Reabrir');

        $tabela->addBodyTR([$row->id,$row->titulo,tdc::p('td_tipoatividade',$row->tipo)->descricao,$reabrir]);
    }

    $pagina->add($tabela);
    $pagina->mostrar();