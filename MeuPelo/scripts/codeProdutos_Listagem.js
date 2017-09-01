function NovoRegistro() {
    window.location.href = "CAD_Produtos_Novo.aspx";  
}

function ExcluirRegistro() {

    var idRegistro = document.getElementById('HiddenID').value;
    
    $.ajax({
        type: "POST",
        url: "WebService.asmx/ProdutoExcluir", 
        data: '{param1: "' + idRegistro + '" }',
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

function Excluir(IDExc) {
    document.getElementById('HiddenID').value = IDExc;
    document.getElementById('DivModal').style.display = "block";
}

function Excluir_cancel() {
    document.getElementById('DivModal').style.display = 'none';
}

function Imagens(IDAux,ProdutoAux) {
    var urlLink = "CAD_Lojistas_Produtos_Imagens.aspx?p1=" + IDAux + "&p2=" + ProdutoAux;
    window.location.href = urlLink;
}