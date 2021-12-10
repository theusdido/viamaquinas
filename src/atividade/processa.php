<?php
    /*
        * MILES Framework
        * @link http://www.teia.tec.br
        * @license : Via Máquinas

        * Processa do CRUD e ações das atividades
        * Data de Criacao: 09/12/2021
        * @author Edilson Valentim dos Santos Bitencourt (Theusdido)
    */
    $op         = tdc::r('op');
    $error      = array();
    switch($op){
        case 'salvar':
            $pagina_voltar  = 'listar';
            $titulo         = tdc::r('titulo');
            $descricao      = tdc::r('descricao');
            $tipo           = tdc::r('tipo');

            if ($titulo == ''){
                array_push($error, array(
                    'codigo'    => 1,
                    'msg'       => 'O campo título é obrigatório.'
                ));
            }

            if ($tipo <= 0){
                array_push($error, array(
                    'codigo'    => 2,
                    'msg'       => 'O campo tipo é obrigatório.'
                ));
            }

            if (($tipo == 2 || $tipo == 4) && strlen($descricao) < 50){
                array_push($error, array(
                    'codigo'    => 3,
                    'msg'       => 'O campo descrição não pode ter menos que 50 caracteres.'
                ));
            }

            if (!Auxiliar::permirir_abertura_chamado_urgente() && $tipo == 4){
                array_push($error, array(
                    'codigo'    => 4,
                    'msg'       => 'Não é permitido abrir chamado urgente após as 13h de sexta-feira.'
                ));
            }
            if (sizeof($error) > 0){
                foreach($error as $e){
                    echo $e['codigo'] . ' => ' . $e['msg'] . "\n<br/>";
                }
            }else{
                try{
                    $atividade              = tdc::p('td_atividade',tdc::r('id'));
                    $atividade->titulo      = $titulo;
                    $atividade->descricao   = $descricao;
                    $atividade->tipo        = $tipo;
                    $atividade->status      = 0;
                    $atividade->armazenar();
                    echo 'Salvo com Sucesso!';
                    Transacao::Fechar();
                }catch(Throwable $t){                
                    echo '## Erro ao salvar ## => ' . $t->getMessage();
                    Transacao::Rollback();
                }
            }
        break;
        case 'excluir':
            $pagina_voltar     = 'listar';
            try{
                $atividade   = tdc::p('td_atividade',tdc::r('id'))->deletar();
                echo 'Registro excluído!';
                Transacao::Fechar();
            }catch(Throwable $t){
                echo '## Erro ao excluir ## => ' . $t->getMessage();
                Transacao::Rollback();
            }
        break;
        case 'finalizar':
            $pagina_voltar     = 'abertas';
            try{
                $atividade          = tdc::p('td_atividade',tdc::r('id'));
                $atividade->status  = 1;
                $atividade->armazenar();
                echo 'Finalizada com Sucesso!';
                Transacao::Fechar();
            }catch(Throwable $t){
                echo '## Erro ao finalizar ## => ' . $t->getMessage();
                Transacao::Rollback();
            }
        break;
        case 'reabrir':
            $pagina_voltar     = 'concluidas';
            try{
                $atividade          = tdc::p('td_atividade',tdc::r('id'));
                $atividade->status  = 0;
                $atividade->armazenar();
                echo 'Reaberta com Sucesso!';
                Transacao::Fechar();
            }catch(Throwable $t){
                echo '## Erro ao reabrir ## => ' . $t->getMessage();
                Transacao::Rollback();
            }
        break;        
    }

    $voltar             = tdc::html('a');
    $voltar->href       = 'atividade/' . $pagina_voltar;
    $voltar->add('Voltar');
    $voltar->mostrar();