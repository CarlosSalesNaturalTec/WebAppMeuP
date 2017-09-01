<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CAD_Lojistas_Produtos_Imagens.aspx.cs" Inherits="CAD_Lojistas_Produtos_Imagens" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <!-- GRUPO 2 -->
    <div id="grupo2" class="w3-container" style="display: block">

        <!-- Imagens -->
        <div class="col-md-12 col-lg-12 w3-border w3-light-gray" style="margin-top: 20px">


            <h3><i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;Imagens</h3>
            <br />

            <!-- Foto 1 -->
            <div id="BlocoFoto1" class="w3-col s12 m6 l4 w3-padding">
                <div class="panel panel-success">
                    <div class="panel-heading text-center">
                        <h4 class="panel-title w3-small">Foto 1</h4>
                    </div>
                    <div class="panel-body">
                        <div class="w3-center" style="width: 100%; height: 140px; margin: 0 auto">
                            <div id="results"></div>
                            <div class="row">
                                <input type="file" id="imagem1">
                            </div>
                            <input id="FotoHidden1" type="hidden" />
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>


    <script>
        var capturaImagem = function (evt) {
            var files = evt.target.files;
            var file = files[0];
            if (files && file) {
                var reader = new FileReader();
                reader.onload = function (readerEvt) {
                    var binaryString = readerEvt.target.result;
                    var data_uri = "data:image/png;base64," + btoa(binaryString);
                    document.getElementById('results').innerHTML = '<img src="' + data_uri + '"/>';
                    document.getElementById("FotoHidden1").value = data_uri
                };
                reader.readAsBinaryString(file);
            }
        };

        if (window.File && window.FileReader && window.FileList && window.Blob) {
            document.getElementById('imagem1').addEventListener('change', capturaImagem, false);
        } else {
            alert('The File APIs are not fully supported in this browser.');
        }
    </script>


</body>
</html>
