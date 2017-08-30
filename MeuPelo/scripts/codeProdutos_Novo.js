document.getElementById("input1").focus();

function SalvarRegistro() {

    //validações
    if (document.getElementById('input1').value == "") {
        alert("Informe Nome do Produto");  
        openLink(event, 'grupo1')
        $('#bt1').addClass(' w3-blue');
        document.getElementById("input1").focus();  
        return;
    }

    //pega o valor de cada campo e constroi string com todos  
    var i, x, strLine = "";
    x = document.getElementsByClassName("form-control");
    for (i = 0; i < x.length; i++) {
        strLine = strLine + "param" + i + ":'" + x[i].value + "',";
    }
  
    var idPai = document.getElementById('IDAuxHidden').value;
    strLine = strLine + "param" + i + ":'" + idPai + "'";
   
    //UI - exibir animações - aguarde...
    UIAguardar();

    $.ajax({
        type: "POST",
        url: "WebService.asmx/ProdutoSalvar",  
        data: '{' + strLine + '}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            window.location.href = response.d;
        },
        failure: function (response) {
            alert(response.d);
        }
    });
}

function AlterarRegistro() {

    //validações
    if (document.getElementById('input1').value == "") {
        alert("Informe Nome do Produto");  
        openLink(event, 'grupo1')
        $('#bt1').addClass(' w3-blue');
        document.getElementById("input1").focus();  
        return;
    }

    //pega o valor de cada campo e constroi string com todos  
    var i, x, strLine = "";
    x = document.getElementsByClassName("form-control");
    for (i = 0; i < x.length; i++) {
        strLine = strLine + "param" + i + ":'" + x[i].value + "',";
    }

    var idAux = document.getElementById('IDAuxHidden').value;
    strLine = strLine + "param" + i + ":'" + idAux + "'";

    //UI - exibir animações - aguarde...
    UIAguardar();

    $.ajax({
        type: "POST",
        url: "WebService.asmx/ProdutoAlterar",   
        data: '{' + strLine + '}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            var linkurl = response.d;
            window.location.href = linkurl;
        },
        failure: function (response) {
            alert(response.d);
        }
    });
}

function cancelar() {
    var linkurl = "CAD_Produtos_Listagem.aspx";   
    window.location.href = linkurl;
}

function UIAguardar() {
    var i, x;

    x = document.getElementsByClassName("btcontroles");
    for (i = 0; i < x.length; i++) {
        x[i].disabled = true;
    }

    x = document.getElementsByClassName("aguarde");
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "block";
    }
}

function mostrabloco1() {
    document.getElementById('grupo1').style.display = "block";
    document.getElementById('grupo2').style.display = "none";
    document.getElementById('grupo3').style.display = "none";
    document.getElementById('grupo4').style.display = "none";
}

function mostrabloco2() {
    document.getElementById('grupo1').style.display = "none";
    document.getElementById('grupo2').style.display = "block";
    document.getElementById('grupo3').style.display = "none";
    document.getElementById('grupo4').style.display = "none";
}

function mostrabloco3() {
    document.getElementById('grupo1').style.display = "none";
    document.getElementById('grupo2').style.display = "none";
    document.getElementById('grupo3').style.display = "block";
    document.getElementById('grupo4').style.display = "none";
}

function mostrabloco4() {
    document.getElementById('grupo1').style.display = "none";
    document.getElementById('grupo2').style.display = "none";
    document.getElementById('grupo3').style.display = "none";
    document.getElementById('grupo4').style.display = "block";
}

//leitura de imagem-foto
if (window.File && window.FileReader && window.FileList && window.Blob) {
    document.getElementById('Imagem1').addEventListener('change', ConvertImagem1, false);
    document.getElementById('Imagem2').addEventListener('change', ConvertImagem2, false);
    document.getElementById('Imagem3').addEventListener('change', ConvertImagem3, false);
} else {
    alert('Atualizar Navegador');
}

var ConvertImagem1 = function (evt) {
    var files = evt.target.files;
    var file = files[0];
    if (files && file) {
        var reader = new FileReader();
        reader.onload = function (readerEvt) {
            var binaryString = readerEvt.target.result;
            var data_uri = "data:image/png;base64," + btoa(binaryString);
            document.getElementById('results1').innerHTML = '<img src="' + data_uri + '"/>';
            document.getElementById("ImagemHidden1").value = data_uri;
        };
        reader.readAsBinaryString(file);
    }
};

var ConvertImagem2 = function (evt) {
    var files = evt.target.files;
    var file = files[0];
    if (files && file) {
        var reader = new FileReader();
        reader.onload = function (readerEvt) {
            var binaryString = readerEvt.target.result;
            var data_uri = "data:image/png;base64," + btoa(binaryString);
            document.getElementById('results2').innerHTML = '<img src="' + data_uri + '"/>';
            document.getElementById("ImagemHidden2").value = data_uri;
        };
        reader.readAsBinaryString(file);
    }
};

var ConvertImagem3 = function (evt) {
    var files = evt.target.files;
    var file = files[0];
    if (files && file) {
        var reader = new FileReader();
        reader.onload = function (readerEvt) {
            var binaryString = readerEvt.target.result;
            var data_uri = "data:image/png;base64," + btoa(binaryString);
            document.getElementById('results3').innerHTML = '<img src="' + data_uri + '"/>';
            document.getElementById("ImagemHidden3").value = data_uri;
        };
        reader.readAsBinaryString(file);
    }
};


