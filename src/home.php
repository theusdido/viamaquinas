<?php
    /*
        * MILES Framework
        * @link http://www.teia.tec.br
        * @license : Via Máquinas

        * Página Inicial do Sistema
        * Data de Criacao: 09/12/2021
        * @author Edilson Valentim dos Santos Bitencourt (Theusdido)
    */

    // CSS - Estilo
    $cssStyle       = tdc::html('link');
    $cssStyle->rel  = 'stylesheet';
    $cssStyle->href = URL_MILES . 'assets/style.css';

    // Título
    $titulo = tdc::o('titulo',['Controle de Atividades']);

    // Menu
    $menu       = tdc::o('aba');
    $menu->addPage('Atividade','atividade/listar');
    $menu->addPage('Tipo Atividade','tipo_atividade/listar');
    $menu->addPage('Atividade Abertas','atividade/abertas');
    $menu->addPage('Atividade Concluídas','atividade/concluidas');
    
    // Cria uma página HTML
    $pagina = tdc::o('pagina');
    $pagina->head->add($cssStyle);
    $pagina->body->add(
        $titulo,
        $menu
    );    
    $pagina->mostrar();

    // JavaScript
    $js         = tdc::o('script');    
    $js->add('
        $(".nav-tabs li a").click(function(){
            $("#" + $(this).attr("aria-controls") + " iframe").get(0).contentDocument.location.href;
        });
    ');
    $js->mostrar();