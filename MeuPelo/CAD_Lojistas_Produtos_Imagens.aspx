<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CAD_Lojistas_Produtos_Imagens.aspx.cs" Inherits="CAD_Lojistas_Produtos_Imagens" %>

<!DOCTYPE html>

<html>

<head>

    <!--*******Customização*******-->
    <title>Imagens do Produto</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>

<body>

    <!-- GRUPO 2 -->
    <div id="grupo2" class="w3-container" style="display: block">


        <div class="col-md-12 col-lg-12 w3-border w3-light-gray" style="margin-top: 20px">

            <h3><i class="fa fa-file-image-o" aria-hidden="true"></i>&nbsp;<span id="lblNomePRoduto"></span> </h3>

            <!-- Imagem  1 -->
            <div id="BlocoFoto1" class="w3-col s12 m10 l5 w3-padding">
                <div class="panel panel-success">
                    <div class="panel-heading text-center">
                        <h4 class="panel-title w3-small">IMAGEM 01</h4>
                    </div>
                    <div class="panel-body">
                        <div class="w3-center" style="width: 100%; height: 320px; margin: 0 auto">
                            <div id="Bloco1Imagem"></div>
                            <i id="cog1" style="display: none" class="fa-2x fa fa-cog fa-spin fa-fw w3-text-blue"></i>
                            <i id="ok1" style="display: none" class="fa-2x fa fa-check-circle-o w3-text-green"></i>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="w3-col s12 m8 l5 w3-padding">
                        <input type="file" id="imagem1">
                        <input id="FotoHidden1" type="hidden" />
                    </div>
                </div>

            </div>

            <!-- Imagem 2 -->
            <div id="BlocoFoto2" class="w3-col s12 m10 l5 w3-padding">
                <div class="panel panel-success">
                    <div class="panel-heading text-center">
                        <h4 class="panel-title w3-small">IMAGEM 02</h4>
                    </div>
                    <div class="panel-body">
                        <div class="w3-center" style="width: 100%; height: 320px; margin: 0 auto">
                            <div id="Bloco2Imagem"></div>
                            <i id="cog2" style="display: none" class="fa-2x fa fa-cog fa-spin fa-fw w3-text-blue"></i>
                            <i id="ok2" style="display: none" class="fa-2x fa fa-check-circle-o w3-text-green"></i>
                        </div>
                       
                    </div>
                </div>
                <div class="row">
                    <div class="w3-col s12 m8 l5 w3-padding">
                        <input type="file" id="imagem2">
                        <input id="FotoHidden2" type="hidden" />
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Script Imagens -->
    <script type="text/javascript" src="scripts/codeProdutos_Imagens.js"></script>
    
    <!-- Auxiliar -->
    <input id="IDAuxHidden" type="hidden" />
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    

</body>

</html>