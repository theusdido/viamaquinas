<?php
    $op         = tdc::r('op');
    switch($op){
        case 'salvar':
            $descricao  = tdc::r('descricao');
            if ($descricao == ''){
                echo 'O campo descrição é obrigatório';
                exit;
            }

            try{
                $tipo               = tdc::p('td_tipoatividade',tdc::r('id'));
                $tipo->descricao    = $descricao;
                $tipo->armazenar();
                echo 'Salvo com Sucesso!';
                Transacao::Fechar();
            }catch(Throwable $t){                
                echo '## Erro ao salvar ## => ' . $t->getMessage();
                Transacao::Rollback();
            }
        break;
        case 'excluir':
            try{
                $tipo   = tdc::p('td_tipoatividade',tdc::r('id'))->deletar();
                echo 'Registro excluído!';
                Transacao::Fechar();
            }catch(Throwable $t){       
                echo '## Erro ao excluir ## => ' . $t->getMessage();
                Transacao::Rollback();
            }
        break;
    }

    $voltar             = tdc::html('a');
    $voltar->href       = 'tipo_atividade/listar';
    $voltar->add('Voltar');
    $voltar->mostrar();
