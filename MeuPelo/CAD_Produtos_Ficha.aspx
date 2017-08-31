<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CAD_Produtos_Ficha.aspx.cs" Inherits="CAD_Produtos_Ficha" %>

<!DOCTYPE html>

<html>
<head>

    <!--*******Customização*******-->
    <title>Ficha de Produto</title>

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <style>
        #results1 {
            float: right;
            margin: 5px;
            padding: 5px;
            border: 1px solid;
            background: #ccc;
        }
    </style>

</head>
<body>

    <!-- GRUPO 1 -->
    <div id="grupo1" class="w3-container" style="display: block">
        <!--*******DEscrição do Produto*******-->
        <div class="col-md-12 col-lg-12 w3-border w3-light-gray" style="margin-top: 20px">

            <h3><i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;Descrição</h3>
            <br />

            <form class="form-horizontal">
                <fieldset>
                    <br />
                    <div class="form-group">
                        <label for="input1" class="col-md-1 control-label">Nome</label>
                        <div class="col-md-5">
                            <input type="text" class="form-control" id="input1">
                        </div>
                        <label for="input2" class="col-md-1 control-label">Categoria</label>
                        <div class="col-md-5">
                            <input type="text" class="form-control" id="input2">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="inputund" class="col-md-1 control-label">Unidade</label>
                        <div class="col-md-2">
                            <input type="text" class="form-control" id="inputund">
                        </div>

                        <label for="inputnormal" class="col-md-2 control-label">Preço Normal</label>
                        <div class="col-md-2">
                            <input type="number" class="form-control" id="inputnormal">
                        </div>

                        <label for="inputdesc" class="col-md-2 control-label">Preço c/ Desconto</label>
                        <div class="col-md-2">
                            <input type="number" class="form-control" id="inputdesc">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="selectofertar" class="col-md-1 control-label">Ofertar</label>
                        <div class="col-md-2">
                            <select class="form-control" id="selectofertar">
                                <option value="NÃO">NÃO</option>
                                <option value="SIM">SIM</option>
                            </select>
                        </div>

                        <label for="inputofertquant" class="col-md-2 control-label">Quantidade</label>
                        <div class="col-md-2">
                            <input type="number" class="form-control" id="inputofertquant">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="selectbrinde" class="col-md-1 control-label">Brinde</label>
                        <div class="col-md-2">
                            <select class="form-control" id="selectbrinde">
                                <option value="NÃO">NÃO</option>
                                <option value="SIM">SIM</option>
                            </select>
                        </div>
                        <label for="inputbrindequant" class="col-md-2 control-label">Quantidade</label>
                        <div class="col-md-2">
                            <input type="number" class="form-control" id="inputbrindequant">
                        </div>
                    </div>

                    <br />
                    <div class="col-md-1"></div>
                    <p>
                        <button class="w3-btn w3-round w3-border w3-light-blue w3-hover-blue btcontroles" onclick="cancelar()">
                            <i class="fa fa-undo" aria-hidden="true"></i>&nbsp;Cancelar</button>

                        <button class="w3-btn w3-round w3-border w3-light-blue w3-hover-blue btcontroles" onclick="AlterarRegistro()">
                            <i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;Salvar&nbsp;&nbsp;
                        </button>

                        <i style="display: none" class="aguarde fa-2x fa fa-cog fa-spin fa-fw w3-text-blue w3-right"></i>
                    </p>

                </fieldset>
            </form>

        </div>

    </div>

    <br />

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
                        <h4 class="panel-title w3-small">Foto Tamanho Pequeno</h4>
                        <p>Dimensões: 400x300px  Tamanho Máx.::15KB</p>
                    </div>
                    <div class="panel-body">
                        <div class="w3-center" style="width: 100%; height: 140px; margin: 0 auto">
                            <div id="results1"></div>
                            <div class="row">
                                <input type="file" id="Imagem1">
                            </div>
                            <input id="ImagemHidden1" type="text" />
                        </div>
                    </div>
                </div>
            </div>

            <!-- Foto 2 -->
            <div id="BlocoFoto2" class="w3-col s12 m6 l4 w3-padding">
                <div class="panel panel-success">
                    <div class="panel-heading text-center">
                        <h4 class="panel-title w3-small">Foto 2</h4>
                    </div>
                    <div class="panel-body">
                        <div class="w3-center" style="width: 100%; height: 140px; margin: 0 auto">
                            <div id="results2"></div>
                            <div class="row">
                                <input type="file" id="Imagem2">
                            </div>
                            <input id="ImagemHidden2" type="text" />
                        </div>
                    </div>
                </div>
            </div>


        </div>

    </div>

    <!-- GRUPO 3 -->
    <div id="grupo3" class="w3-container grupo" style="display: block">
        <div class="col-md-12 col-lg-12 w3-border w3-light-gray" style="margin-top: 20px">
            <h3><i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;Estoque</h3>
        </div>
    </div>


    <!-- GRUPO 4 -->
    <div id="grupo4" class="w3-container grupo" style="display: block">

        <div class="col-md-12 col-lg-12 w3-border w3-light-gray" style="margin-top: 20px">
            <h3><i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;Vendas</h3>
        </div>

    </div>


    <!-- auxiliares -->
    <input id="IDAuxHidden" type="hidden" />
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>

    <!-- Scripts Diversos  -->
    <script type="text/javascript" src="scripts/codeProdutos_Novo.js"></script>
    <script type="text/javascript" src="scripts/webcam.js"></script>

</body>
</html>
