<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CAD_Produtos_Novo.aspx.cs" Inherits="CAD_Produtos_Novo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <!--*******Customização*******-->
    <title>Cadastro de Produtos</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<body>
    <!--*******MENU LATERAL - Customização*******-->
    <div class="w3-sidebar w3-bar-block w3-blue w3-card-2" style="width: 180px">
        <hr />
        <button id="bt1" class="w3-bar-item w3-button tablink w3-hover-light-blue w3-blue" onclick="openLink(event, 'grupo1')"><i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;Descrição</button>
        <button id="bt2" class="w3-bar-item w3-button tablink w3-hover-light-blue" onclick="openLink(event, 'grupo2')"><i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;Imagens</button>
        <button id="bt3" class="w3-bar-item w3-button tablink w3-hover-light-blue" onclick="openLink(event, 'grupo3')"><i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;Estoque</button>
        <button id="bt4" class="w3-bar-item w3-button tablink w3-hover-light-blue" onclick="openLink(event, 'grupo4')"><i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;Vendas</button>
        <hr />
    </div>

    <div style="margin-left: 180px">

        <!-- GRUPO 1 -->
        <div id="grupo1" class="w3-container grupo w3-animate-left" style="display: block">
            <br />
            <div class="col-md-12 col-lg-12 w3-border w3-round w3-light-gray">
                <h3><i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;Descrição</h3>
            </div>

            <div class="col-md-12 col-lg-12 w3-border w3-light-gray" style="margin-top: 20px">

                <form class="form-horizontal">
                    <!--*******Customização*******-->
                    <fieldset>
                        <br />
                        <div class="form-group">
                            <label for="input1" class="col-md-2 control-label">Nome</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" id="input1">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="input2" class="col-md-2 control-label">Categoria</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" id="input2">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="inputund" class="col-md-2 control-label">Unidade</label>
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
                            <label for="selectofertar" class="col-md-2 control-label">Ofertar</label>
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
                            <label for="selectbrinde" class="col-md-2 control-label">Brinde</label>
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

                    </fieldset>
                </form>
            </div>

            <!-- Botões Controle -->
            <div class="col-md-12 col-lg-12 w3-border w3-round w3-light-gray w3-padding" style="margin-top: 10px">
                <br />
                <div class="col-md-2"></div>
                <p>
                    <button class="w3-btn w3-round w3-border w3-light-green w3-hover-green btcontroles" onclick="cancelar()">
                        <i class="fa fa-undo" aria-hidden="true"></i>&nbsp;Sair</button>

                    <button class="w3-btn w3-round w3-border w3-light-green w3-hover-green btcontroles" onclick="classeBt2()">
                        <i class="fa fa-forward" aria-hidden="true"></i>&nbsp;Avançar</button>

                    <button class="w3-btn w3-round w3-border w3-light-green w3-hover-green btcontroles" onclick="SalvarRegistro()">
                        <i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;Salvar&nbsp;&nbsp;
                    </button>

                    <i style="display: none" class="aguarde fa-2x fa fa-cog fa-spin fa-fw w3-text-green w3-right"></i>
                </p>
            </div>
            <!-- Botões Controle -->


        </div>


        <!-- GRUPO 2 -->
        <div id="grupo2" class="w3-container grupo w3-animate-left" style="display: none">
            <br />
            <div class="col-md-12 col-lg-12 w3-border w3-round w3-light-gray">
                <h3><i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;Imagens</h3>
            </div>

            <div class="col-md-12 col-lg-12 w3-border w3-light-gray" style="margin-top: 20px">
                <p>&nbsp;</p>
            </div>

            <!-- Botões Controle -->
            <div class="col-md-12 col-lg-12 w3-border w3-round w3-light-gray w3-padding" style="margin-top: 10px">
                <br />
                <div class="col-md-2"></div>
                <p>
                    <button class="w3-btn w3-round w3-border w3-light-green w3-hover-green btcontroles" onclick="cancelar()">
                        <i class="fa fa-undo" aria-hidden="true"></i>&nbsp;Sair</button>

                    <button class="w3-btn w3-round w3-border w3-light-green w3-hover-green btcontroles" onclick="btvoltar1()">
                        <i class="fa fa-backward" aria-hidden="true"></i>&nbsp;Voltar</button>

                    <button class="w3-btn w3-round w3-border w3-light-green w3-hover-green btcontroles" onclick="classeBt3()">
                        <i class="fa fa-forward" aria-hidden="true"></i>&nbsp;Avançar</button>

                    <button class="w3-btn w3-round w3-border w3-light-green w3-hover-green btcontroles" onclick="SalvarRegistro()">
                        <i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;Salvar&nbsp;
                    </button>

                    <i style="display: none" class="aguarde fa-2x fa fa-cog fa-spin fa-fw w3-text-green w3-right"></i>
                </p>
            </div>
            <!-- Botões Controle -->


        </div>


        <!-- GRUPO 3 -->
        <div id="grupo3" class="w3-container grupo w3-animate-left" style="display: none">
            <br />
            <div class="col-md-12 col-lg-12 w3-border w3-round w3-light-gray">
                <h3><i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;Estoque</h3>
            </div>

             <div class="col-md-12 col-lg-12 w3-border w3-light-gray" style="margin-top: 20px">
                <p>&nbsp;</p>
            </div>

            <!-- Botões Controle -->
            <div class="col-md-12 col-lg-12 w3-border w3-round w3-light-gray w3-padding" style="margin-top: 10px">
                <br />
                <div class="col-md-2"></div>
                <p>
                    <button class="w3-btn w3-round w3-border w3-light-green w3-hover-green btcontroles" onclick="cancelar()">
                        <i class="fa fa-undo" aria-hidden="true"></i>&nbsp;Sair</button>

                    <button class="w3-btn w3-round w3-border w3-light-green w3-hover-green btcontroles" onclick="btvoltar2()">
                        <i class="fa fa-backward" aria-hidden="true"></i>&nbsp;Voltar</button>

                    <button class="w3-btn w3-round w3-border w3-light-green w3-hover-green btcontroles" onclick="classeBt4()">
                        <i class="fa fa-forward" aria-hidden="true"></i>&nbsp;Avançar</button>

                    <button class="w3-btn w3-round w3-border w3-light-green w3-hover-green btcontroles" onclick="SalvarRegistro()">
                        <i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;Salvar&nbsp;
                    </button>

                    <i style="display: none" class="aguarde fa-2x fa fa-cog fa-spin fa-fw w3-text-green w3-right"></i>
                </p>
            </div>
            <!-- Botões Controle -->
        </div>


        <!-- GRUPO 4 -->
        <div id="grupo4" class="w3-container grupo w3-animate-left" style="display: none">
            <br />
            <div class="col-md-12 col-lg-12 w3-border w3-round w3-light-gray">
                <h3><i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;Vendas</h3>
            </div>

             <div class="col-md-12 col-lg-12 w3-border w3-light-gray" style="margin-top: 20px">
                <p>&nbsp;</p>
            </div>

            <!-- Botões Controle -->
            <div class="col-md-12 col-lg-12 w3-border w3-round w3-light-gray w3-padding" style="margin-top: 10px">
                <br />
                <div class="col-md-2"></div>
                <p>
                    <button class="w3-btn w3-round w3-border w3-light-green w3-hover-green btcontroles" onclick="cancelar()">
                        <i class="fa fa-undo" aria-hidden="true"></i>&nbsp;Sair</button>

                    <button class="w3-btn w3-round w3-border w3-light-green w3-hover-green btcontroles" onclick="btvoltar3()">
                        <i class="fa fa-backward" aria-hidden="true"></i>&nbsp;Voltar</button>

                    <button class="w3-btn w3-round w3-border w3-light-green w3-hover-green btcontroles" onclick="SalvarRegistro()">
                        <i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;Salvar&nbsp;
                    </button>

                    <i style="display: none" class="aguarde fa-2x fa fa-cog fa-spin fa-fw w3-text-green w3-right"></i>
                </p>
            </div>
            <!-- Botões Controle -->
        </div>



    </div>

    <!-- auxiliares -->
    <input id="IDAuxHidden" type="hidden" />
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>

    <!-- Scripts Diversos  -->
    <script type="text/javascript" src="Scripts/codeProdutos_Novo.js"></script>

</body>
</html>
