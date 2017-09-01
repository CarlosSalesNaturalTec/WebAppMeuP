var capturaImagem = function (evt) {
    var files = evt.target.files;
    var file = files[0];
    if (files && file) {
        var reader = new FileReader();
        reader.onload = function (readerEvt) {
            var binaryString = readerEvt.target.result;
            var data_uri = "data:image/png;base64," + btoa(binaryString);

            document.getElementById('Bloco1Imagem').innerHTML = '<img src="' + data_uri + '"/>';
            document.getElementById("FotoHidden1").value = data_uri;

            GravarImagem('Bloco1');
        };
        reader.readAsBinaryString(file);
    }
};

var capturaImagem2 = function (evt) {
    var files = evt.target.files;
    var file = files[0];
    if (files && file) {
        var reader = new FileReader();
        reader.onload = function (readerEvt) {
            var binaryString = readerEvt.target.result;
            var data_uri = "data:image/png;base64," + btoa(binaryString);

            document.getElementById('Bloco2Imagem').innerHTML = '<img src="' + data_uri + '"/>';
            document.getElementById("FotoHidden2").value = data_uri

            GravarImagem('Bloco2');
        };
        reader.readAsBinaryString(file);
    }
};

if (window.File && window.FileReader && window.FileList && window.Blob) {
    document.getElementById('imagem1').addEventListener('change', capturaImagem, false);
    document.getElementById('imagem2').addEventListener('change', capturaImagem2, false);
} else {
    alert('The File APIs are not fully supported in this browser.');
}

function GravarImagem(nomeBloco) {

    var v1 = document.getElementById("IDAuxHidden").value;
    var v2 = "", v0 = "";


    switch (nomeBloco) {
        case "Bloco1":
            document.getElementById("cog1").style.display = "block";
            v2 = document.getElementById("FotoHidden1").value;
            v0 = "Foto1";
            break;
        case "Bloco2":
            document.getElementById("cog2").style.display = "block";
            v2 = document.getElementById("FotoHidden2").value;
            v0 = "Foto2";
            break;
    }
   
    $.ajax({
        type: "POST",
        url: "WebService.asmx/ProdutoGravarImagem",
        data: '{param0: "' + v0 + '", param1: "' + v1 + '", param2: "' + v2 + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {

            switch (nomeBloco) {
                case "Bloco1":
                    document.getElementById("cog1").style.display = "none";
                    document.getElementById("ok1").style.display = "block";
                    break;
                case "Bloco2":
                    document.getElementById("cog2").style.display = "none";
                    document.getElementById("ok2").style.display = "block";
                    break;
            }
            
        },
        failure: function (response) {
            alert("Não foi possivel inserir Imagem");
        }
    });

}