$(document).ready(function () {

    // ALIMENTOS
    itens = 9999;
    iAux = 0;
    buscarURI('ALIMENTOS');
    setInterval(mostraItem, 5000);
    stop1 = 0;


    // BEBIDAS
    itens_2 = 9999;
    iAux_2 = 0;
    buscarURI_2('BEBIDAS');
    setInterval(mostraItem_2, 5000);
    stop2 = 0;


    // EVENTOS
    itens_3 = 9999;
    iAux_3 = 0;
    buscarURI_3('EVENTOS');
    setInterval(mostraItem_3, 5000);


    // TOURS
    itens_4 = 9999;
    iAux_4 = 0;
    buscarURI_4('TOURS');
    setInterval(mostraItem_4, 5000);


    // GALERIAS
    itens_5 = 9999;
    iAux_5 = 0;
    buscarURI_5('GALERIAS');
    setInterval(mostraItem_5, 5000);


    // TREINAMENTOS
    itens_6 = 9999;
    iAux_6 = 0;
    buscarURI_6('TREINAMENTOS');
    setInterval(mostraItem_6, 5000);


});


function buscarURI(AuxCategoria) {
    $.ajax({
        type: "POST",
        url: "WebService.asmx/CarregaOferta",
        data: '{param1: "' + AuxCategoria + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data, status) {
            item = $.parseJSON(data.d);     // Parse de todos os itens
            itens = (item.length) - 1;
        },
        failure: function (response) {
            alert('Não foi possível carregar imagens');
        }
    });
}

function mostraItem() {

    var divAux = document.getElementById('AuxModals').value;
    if (divAux == '0') { return }
   
    if (itens == 9999) {
        buscarURI('ALIMENTOS');
        return;
    }
    if (itens == 0) { return; }

    //tela inicial
    document.getElementById('pacote1_Titulo').innerHTML = item[iAux].nome;
    document.getElementById('pacote1_SubT').innerHTML = "R$" + item[iAux].poferta + ",00";
    document.getElementById('Bloco1Imagem').innerHTML = "<img class=\"img-fluid\" src=\"" + item[iAux].img1 + "\"/>";

    //detalhes do produto
    document.getElementById('titulo1').innerHTML = item[iAux].nome;
    document.getElementById('subtitulo1').innerHTML = "R$" + item[iAux].poferta + ",00";
    document.getElementById('descritivo1').innerHTML = item[iAux].descr;
    document.getElementById('imagemBig1').innerHTML = "<img class=\"img-fluid d-block mx-auto\" src=\"" + item[iAux].img1 + "\"/>";

    document.getElementById('AuxIDLojista1').value = item[iAux].idloj;
    document.getElementById('AuxIDProduto1').value = item[iAux].idprod;
    document.getElementById('AuxValorProduto1').value = item[iAux].poferta;

    if (iAux >= itens) { iAux = 0; } else { iAux += 1; }

}


function buscarURI_2(AuxCategoria) {

    $.ajax({
        type: "POST",
        url: "WebService.asmx/CarregaOferta",
        data: '{param1: "' + AuxCategoria + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data, status) {
            item_2 = $.parseJSON(data.d);     // Parse de todos os itens
            itens_2 = (item_2.length) - 1;
        },
        failure: function (response) {
            alert('Não foi possível carregar imagens');
        }
    });
}

function mostraItem_2() {

    var divAux = document.getElementById('AuxModals').value;
    if (divAux == '0') { return }
   
    if (itens_2 == 9999) {
        buscarURI_2('BEBIDAS');
        return;
    }
    if (itens_2 == 0) { return; }

    //tela inicial
    document.getElementById('pacote2_Titulo').innerHTML = item_2[iAux_2].nome;
    document.getElementById('pacote2_SubT').innerHTML = "R$" + item_2[iAux_2].poferta + ",00";
    document.getElementById('Bloco2Imagem').innerHTML = "<img class=\"img-fluid\" src=\"" + item_2[iAux_2].img1 + "\"/>";

    //detalhes do produto
    document.getElementById('titulo2').innerHTML = item_2[iAux_2].nome;
    document.getElementById('subtitulo2').innerHTML = "R$" + item_2[iAux_2].poferta + ",00";
    document.getElementById('descritivo2').innerHTML = item_2[iAux_2].descr;
    document.getElementById('imagemBig2').innerHTML = "<img class=\"img-fluid d-block mx-auto\" src=\"" + item_2[iAux_2].img1 + "\"/>";

    document.getElementById('AuxIDLojista2').value = item_2[iAux_2].idloj;
    document.getElementById('AuxIDProduto2').value = item_2[iAux_2].idprod;
    document.getElementById('AuxValorProduto2').value = item_2[iAux_2].poferta;

    if (iAux_2 >= itens_2) { iAux_2 = 0; } else { iAux_2 += 1; }

}


function buscarURI_3(AuxCategoria) {
    $.ajax({
        type: "POST",
        url: "WebService.asmx/CarregaOferta",
        data: '{param1: "' + AuxCategoria + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data, status) {
            item_3 = $.parseJSON(data.d);     // Parse de todos os itens
            itens_3 = (item_3.length) - 1;
        },
        failure: function (response) {
            alert('Não foi possível carregar imagens (3)');
        }
    });
}

function mostraItem_3() {

    var divAux = document.getElementById('AuxModals').value;
    if (divAux == '0') { return }

    if (itens_3 == 9999) {
        buscarURI_3('EVENTOS');
        return;
    }
    if (itens_3 == 0) { return; }

    //tela inicial
    document.getElementById('pacote3_Titulo').innerHTML = item_3[iAux_3].nome;
    document.getElementById('pacote3_SubT').innerHTML = "R$" + item_3[iAux_3].poferta + ",00";
    document.getElementById('Bloco3Imagem').innerHTML = "<img class=\"img-fluid\" src=\"" + item_3[iAux_3].img1 + "\"/>";

    //detalhes do produto
    document.getElementById('titulo3').innerHTML = item_3[iAux_3].nome;
    document.getElementById('subtitulo3').innerHTML = "R$" + item_3[iAux_3].poferta + ",00";
    document.getElementById('descritivo3').innerHTML = item_3[iAux_3].descr;
    document.getElementById('imagemBig3').innerHTML = "<img class=\"img-fluid d-block mx-auto\" src=\"" + item_3[iAux_3].img1 + "\"/>";

    document.getElementById('AuxIDLojista3').value = item_3[iAux_3].idloj;
    document.getElementById('AuxIDProduto3').value = item_3[iAux_3].idprod;
    document.getElementById('AuxValorProduto3').value = item_3[iAux_3].poferta;

    if (iAux_3 >= itens_3) { iAux_3 = 0; } else { iAux_3 += 1; }

}


function buscarURI_4(AuxCategoria) {
    $.ajax({
        type: "POST",
        url: "WebService.asmx/CarregaOferta",
        data: '{param1: "' + AuxCategoria + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data, status) {
            item_4 = $.parseJSON(data.d);     // Parse de todos os itens
            itens_4 = (item_4.length) - 1;
        },
        failure: function (response) {
            alert('Não foi possível carregar imagens (3)');
        }
    });
}

function mostraItem_4() {

    var divAux = document.getElementById('AuxModals').value;
    if (divAux == '0') { return }

    if (itens_4 == 9999) {
        buscarURI_4('TOURS');
        return;
    }
    if (itens_4 == 0) { return; }

    //tela inicial
    document.getElementById('pacote4_Titulo').innerHTML = item_4[iAux_4].nome;
    document.getElementById('pacote4_SubT').innerHTML = "R$" + item_4[iAux_4].poferta + ",00";
    document.getElementById('Bloco4Imagem').innerHTML = "<img class=\"img-fluid\" src=\"" + item_4[iAux_4].img1 + "\"/>";

    //detalhes do produto
    document.getElementById('titulo4').innerHTML = item_4[iAux_4].nome;
    document.getElementById('subtitulo4').innerHTML = "R$" + item_4[iAux_4].poferta + ",00";
    document.getElementById('descritivo4').innerHTML = item_4[iAux_4].descr;
    document.getElementById('imagemBig4').innerHTML = "<img class=\"img-fluid d-block mx-auto\" src=\"" + item_4[iAux_4].img1 + "\"/>";

    document.getElementById('AuxIDLojista4').value = item_4[iAux_4].idloj;
    document.getElementById('AuxIDProduto4').value = item_4[iAux_4].idprod;
    document.getElementById('AuxValorProduto4').value = item_4[iAux_4].poferta;

    if (iAux_4 >= itens_4) { iAux_4 = 0; } else { iAux_4 += 1; }

}


function buscarURI_5(AuxCategoria) {
    $.ajax({
        type: "POST",
        url: "WebService.asmx/CarregaOferta",
        data: '{param1: "' + AuxCategoria + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data, status) {
            item_5 = $.parseJSON(data.d);     // Parse de todos os itens
            itens_5 = (item_5.length) - 1;
        },
        failure: function (response) {
            alert('Não foi possível carregar imagens (3)');
        }
    });
}

function mostraItem_5() {

    var divAux = document.getElementById('AuxModals').value;
    if (divAux == '0') { return }

    if (itens_5 == 9999) {
        buscarURI_5('GALERIAS');
        return;
    }
    if (itens_5 == 0) { return; }

    //tela inicial
    document.getElementById('pacote5_Titulo').innerHTML = item_5[iAux_5].nome;
    document.getElementById('pacote5_SubT').innerHTML = "R$" + item_5[iAux_5].poferta + ",00";
    document.getElementById('Bloco5Imagem').innerHTML = "<img class=\"img-fluid\" src=\"" + item_5[iAux_5].img1 + "\"/>";

    //detalhes do produto
    document.getElementById('titulo5').innerHTML = item_5[iAux_5].nome;
    document.getElementById('subtitulo5').innerHTML = "R$" + item_5[iAux_5].poferta + ",00";
    document.getElementById('descritivo5').innerHTML = item_5[iAux_5].descr;
    document.getElementById('imagemBig5').innerHTML = "<img class=\"img-fluid d-block mx-auto\" src=\"" + item_5[iAux_5].img1 + "\"/>";

    document.getElementById('AuxIDLojista5').value = item_5[iAux_5].idloj;
    document.getElementById('AuxIDProduto5').value = item_5[iAux_5].idprod;
    document.getElementById('AuxValorProduto5').value = item_5[iAux_5].poferta;

    if (iAux_5 >= itens_5) { iAux_5 = 0; } else { iAux_5 += 1; }


}


function buscarURI_6(AuxCategoria) {
    $.ajax({
        type: "POST",
        url: "WebService.asmx/CarregaOferta",
        data: '{param1: "' + AuxCategoria + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data, status) {
            item_6 = $.parseJSON(data.d);     // Parse de todos os itens
            itens_6 = (item_6.length) - 1;
        },
        failure: function (response) {
            alert('Não foi possível carregar imagens (3)');
        }
    });
}

function mostraItem_6() {

    var divAux = document.getElementById('AuxModals').value;
    if (divAux == '0') { return }

    if (itens_6 == 9999) {
        buscarURI_6('TREINAMENTOS');
        return;
    }
    if (itens_6 == 0) { return; }

    //tela inicial
    document.getElementById('pacote6_Titulo').innerHTML = item_6[iAux_6].nome;
    document.getElementById('pacote6_SubT').innerHTML = "R$" + item_6[iAux_6].poferta + ",00";
    document.getElementById('Bloco6Imagem').innerHTML = "<img class=\"img-fluid\" src=\"" + item_6[iAux_6].img1 + "\"/>";

    //detalhes do produto
    document.getElementById('titulo6').innerHTML = item_6[iAux_6].nome;
    document.getElementById('subtitulo6').innerHTML = "R$" + item_6[iAux_6].poferta + ",00";
    document.getElementById('descritivo6').innerHTML = item_6[iAux_6].descr;
    document.getElementById('imagemBig6').innerHTML = "<img class=\"img-fluid d-block mx-auto\" src=\"" + item_6[iAux_6].img1 + "\"/>";

    document.getElementById('AuxIDLojista6').value = item_6[iAux_6].idloj;
    document.getElementById('AuxIDProduto6').value = item_6[iAux_6].idprod;
    document.getElementById('AuxValorProduto6').value = item_6[iAux_6].poferta;

    if (iAux_6 >= itens_6) { iAux_6 = 0; } else { iAux_6 += 1; }

}