$(document).ready(function () {

    // ALIMENTOS
    itens = 9999;
    iAux = 0;
    buscarURI('ALIMENTOS');
    setInterval(mostraItem, 3000);


    // BEBIDAS
    itens_2 = 9999;
    iAux_2 = 0;
    buscarURI_2('BEBIDAS');
    setInterval(mostraItem_2, 3000);


    // EVENTOS
    itens_3 = 9999;
    iAux_3 = 0;
    buscarURI_3('EVENTOS');
    setInterval(mostraItem_3, 3000);


    // TOURS
    itens_4 = 9999;
    iAux_4 = 0;
    buscarURI_4('TOURS');
    setInterval(mostraItem_4, 3000);


    // GALERIAS
    itens_5 = 9999;
    iAux_5 = 0;
    buscarURI_5('GALERIAS');
    setInterval(mostraItem_5, 3000);


    // TREINAMENTOS
    itens_6 = 9999;
    iAux_6 = 0;
    buscarURI_6('TREINAMENTOS');
    setInterval(mostraItem_6, 3000);



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

    if (itens == 9999) { return; }
    if (itens == 0) { return; }

    document.getElementById('pacote1_Titulo').innerHTML = item[iAux].nome;
    document.getElementById('pacote1_SubT').innerHTML = "De: " + item[iAux].pnormal + " Por: " + item[iAux].poferta;
    document.getElementById('Bloco1Imagem').innerHTML = "<img class=\"img-fluid\" src=\"" + item[iAux].img1 + "\"/>";

    if (iAux >= itens) { iAux = 0; } else { iAux += 1; }
    var a = 1;

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

    if (itens_2 == 9999) { return; }
    if (itens_2 == 0) { return; }

    document.getElementById('pacote2_Titulo').innerHTML = item_2[iAux_2].nome;
    document.getElementById('pacote2_SubT').innerHTML = "De: " + item_2[iAux_2].pnormal + " Por: " + item_2[iAux_2].poferta; 
    document.getElementById('Bloco2Imagem').innerHTML = "<img class=\"img-fluid\" src=\"" + item_2[iAux_2].img1 + "\"/>";
  
    if (iAux_2 >= itens_2) { iAux_2 = 0; } else { iAux_2 += 1; }
    var a = 1;

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

    if (itens_3 == 9999) { return; }
    if (itens_3 == 0) { return; }

    document.getElementById('pacote3_Titulo').innerHTML = item_3[iAux_3].nome;
    document.getElementById('pacote3_SubT').innerHTML = "De: " + item_3[iAux_3].pnormal + " Por: " + item_3[iAux_3].poferta;
    document.getElementById('Bloco3Imagem').innerHTML = "<img class=\"img-fluid\" src=\"" + item_3[iAux_3].img1 + "\"/>";

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

    if (itens_4 == 9999) { return; }
    if (itens_4 == 0) { return; }

    document.getElementById('pacote4_Titulo').innerHTML = item_4[iAux_4].nome;
    document.getElementById('pacote4_SubT').innerHTML = "De: " + item_4[iAux_4].pnormal + " Por: " + item_4[iAux_4].poferta;
    document.getElementById('Bloco4Imagem').innerHTML = "<img class=\"img-fluid\" src=\"" + item_4[iAux_4].img1 + "\"/>";

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

    if (itens_5 == 9999) { return; }
    if (itens_5 == 0) { return; }

    document.getElementById('pacote5_Titulo').innerHTML = item_5[iAux_5].nome;
    document.getElementById('pacote4_SubT').innerHTML = "De: " + item_5[iAux_5].pnormal + " Por: " + item_5[iAux_5].poferta;
    document.getElementById('Bloco5Imagem').innerHTML = "<img class=\"img-fluid\" src=\"" + item_5[iAux_5].img1 + "\"/>";

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

    if (itens_6 == 9999) { return; }
    if (itens_6 == 0) { return; }

    document.getElementById('pacote6_Titulo').innerHTML = item_6[iAux_6].nome;
    document.getElementById('pacote6_SubT').innerHTML = "De: " + item_6[iAux_6].pnormal + " Por: " + item_6[iAux_6].poferta;
    document.getElementById('Bloco6Imagem').innerHTML = "<img class=\"img-fluid\" src=\"" + item_6[iAux_6].img1 + "\"/>";

    if (iAux_6 >= itens_6) { iAux_6 = 0; } else { iAux_6 += 1; }

}