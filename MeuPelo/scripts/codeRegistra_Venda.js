function REgistraVendaSimplificada() {

    //ID_Cliente  , ID_Lojista , ID_Produto, Produto , Quant , ValorProduto , ValorTotal , FormaPag

    var v1 = "0";
    var v2 = document.getElementById('AuxIDLojista1').value;
    var v3 = document.getElementById('AuxIDProduto1').value;
    var v4 = document.getElementById('titulo1').innerHTML;
    var v5 = 1;
    var v6 = document.getElementById('AuxValorProduto1').value;
    var v7 = document.getElementById('AuxValorProduto1').value;
    var v8 = document.getElementById('formaPagProduto1').value;

    $.ajax({
        type: "POST",
        url: "WebService.asmx/VendaSimplificada",
        data: '{param1: "' + v1 + '", param2: "' + v2 + '", param3: "' + v3 + '", param4: "' + v4 + '", param5: "' + v5
            + '", param6: "' + v6 + '", param7: "' + v7 + '", param8: "' + v8 + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            alert(response.d);
        },
        failure: function (response) {
            alert('Não foi possível registrar venda');
        }
    });

}

function REgistraVendaSimplificada2() {

    //ID_Cliente  , ID_Lojista , ID_Produto, Produto , Quant , ValorProduto , ValorTotal , FormaPag

    var v1 = "0";
    var v2 = document.getElementById('AuxIDLojista2').value;
    var v3 = document.getElementById('AuxIDProduto2').value;
    var v4 = document.getElementById('titulo2').innerHTML;
    var v5 = 1;
    var v6 = document.getElementById('AuxValorProduto2').value;
    var v7 = document.getElementById('AuxValorProduto2').value;
    var v8 = document.getElementById('formaPagProduto2').value;

    $.ajax({
        type: "POST",
        url: "WebService.asmx/VendaSimplificada",
        data: '{param1: "' + v1 + '", param2: "' + v2 + '", param3: "' + v3 + '", param4: "' + v4 + '", param5: "' + v5
            + '", param6: "' + v6 + '", param7: "' + v7 + '", param8: "' + v8 + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            alert(response.d);
        },
        failure: function (response) {
            alert('Não foi possível registrar venda');
        }
    });

}

function REgistraVendaSimplificada3() {

    var v1 = "0";
    var v2 = document.getElementById('AuxIDLojista3').value;
    var v3 = document.getElementById('AuxIDProduto3').value;
    var v4 = document.getElementById('titulo3').innerHTML;
    var v5 = 1;
    var v6 = document.getElementById('AuxValorProduto3').value;
    var v7 = document.getElementById('AuxValorProduto3').value;
    var v8 = document.getElementById('formaPagProduto3').value;

    $.ajax({
        type: "POST",
        url: "WebService.asmx/VendaSimplificada",
        data: '{param1: "' + v1 + '", param2: "' + v2 + '", param3: "' + v3 + '", param4: "' + v4 + '", param5: "' + v5
            + '", param6: "' + v6 + '", param7: "' + v7 + '", param8: "' + v8 + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            alert(response.d);
        },
        failure: function (response) {
            alert('Não foi possível registrar venda');
        }
    });

}

function REgistraVendaSimplificada4() {

    var v1 = "0";
    var v2 = document.getElementById('AuxIDLojista4').value;
    var v3 = document.getElementById('AuxIDProduto4').value;
    var v4 = document.getElementById('titulo4').innerHTML;
    var v5 = 1;
    var v6 = document.getElementById('AuxValorProduto4').value;
    var v7 = document.getElementById('AuxValorProduto4').value;
    var v8 = document.getElementById('formaPagProduto4').value;

    $.ajax({
        type: "POST",
        url: "WebService.asmx/VendaSimplificada",
        data: '{param1: "' + v1 + '", param2: "' + v2 + '", param3: "' + v3 + '", param4: "' + v4 + '", param5: "' + v5
            + '", param6: "' + v6 + '", param7: "' + v7 + '", param8: "' + v8 + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            alert(response.d);
        },
        failure: function (response) {
            alert('Não foi possível registrar venda');
        }
    });

}

function REgistraVendaSimplificada5() {

    var v1 = "0";
    var v2 = document.getElementById('AuxIDLojista5').value;
    var v3 = document.getElementById('AuxIDProduto5').value;
    var v4 = document.getElementById('titulo5').innerHTML;
    var v5 = 1;
    var v6 = document.getElementById('AuxValorProduto5').value;
    var v7 = document.getElementById('AuxValorProduto5').value;
    var v8 = document.getElementById('formaPagProduto5').value;

    $.ajax({
        type: "POST",
        url: "WebService.asmx/VendaSimplificada",
        data: '{param1: "' + v1 + '", param2: "' + v2 + '", param3: "' + v3 + '", param4: "' + v4 + '", param5: "' + v5
            + '", param6: "' + v6 + '", param7: "' + v7 + '", param8: "' + v8 + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            alert(response.d);
        },
        failure: function (response) {
            alert('Não foi possível registrar venda');
        }
    });

}

function REgistraVendaSimplificada6() {

    var v1 = "0";
    var v2 = document.getElementById('AuxIDLojista6').value;
    var v3 = document.getElementById('AuxIDProduto6').value;
    var v4 = document.getElementById('titulo6').innerHTML;
    var v5 = 1;
    var v6 = document.getElementById('AuxValorProduto6').value;
    var v7 = document.getElementById('AuxValorProduto6').value;
    var v8 = document.getElementById('formaPagProduto6').value;

    $.ajax({
        type: "POST",
        url: "WebService.asmx/VendaSimplificada",
        data: '{param1: "' + v1 + '", param2: "' + v2 + '", param3: "' + v3 + '", param4: "' + v4 + '", param5: "' + v5
            + '", param6: "' + v6 + '", param7: "' + v7 + '", param8: "' + v8 + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            alert(response.d);
        },
        failure: function (response) {
            alert('Não foi possível registrar venda');
        }
    });

}