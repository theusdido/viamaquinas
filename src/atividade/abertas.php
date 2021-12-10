<?php
    /*
        * MILES Framework
        * @link http://www.teia.tec.br
        * @license : Via Máquinas

        * Página para listar as atividades abertas
        * Data de Criacao: 09/12/2021
        * @author Edilson Valentim dos Santos Bitencourt (Theusdido)
    */

    # tdc::o carrega qualquer objeto do MILES
    $pagina             = tdc::o('pagina');

    // Tabela para formar a grade de dados
    $tabela         = tdc::html('table');
    $tabela->class  = 'table';
    $tabela->addHeadTR(['ID','Título','Tipo','Finalizar']);

    # tdc::d(entidade) é um ADO para realizar carregar um dataset do banco
    # tdc::f(condicao) é um ADO para realizar filtros em uma consulta SQL
    foreach(tdc::d('td_atividade',tdc::f('status','=',0)) as $row){
        $finalizar            = tdc::html('a');
        $finalizar->href      = 'index.php?controller=atividade/processa&op=finalizar&id=' . $row->id;
        $finalizar->add('Finalizar');

        $tabela->addBodyTR([$row->id,$row->titulo,tdc::p('td_tipoatividade',$row->tipo)->descricao,$finalizar]);
    }

    $pagina->add($tabela);
    $pagina->mostrar();