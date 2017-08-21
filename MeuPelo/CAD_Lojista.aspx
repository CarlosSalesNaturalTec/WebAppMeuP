<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CAD_Lojista.aspx.cs" Inherits="CAD_Lojista" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Meu Pelô - Área do Lojista</title>

    <!-- Jquery-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Styles: W3, BootsStrap, Font-Awesome -->
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Gráfico Morris.JS -->
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
    <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>

</head>

<body style="margin-left: 2%; margin-right: 2%">
    <br />

    <!-- Menu -->
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Meu Pelô - Painel do Lojista</a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Redes Sociais<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#GooglePanel">Google</a></li>
                            <li><a href="#FacebookPanel">Facebook</a></li>
                            <li><a href="#InstagranPanel">Instagran</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Produtos<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#GooglePanel">Cadastro</a></li>
                            <li><a href="#FacebookPanel">Ofertas</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Financeiro</a></li>
                    <li><a href="#" onclick="LogOut()">Sair&nbsp;<span class="glyphicon glyphicon-off"></span></a></li>
                </ul>
            </div>
        </div>
    </nav>



    <!-- Dados do Lojista -->
    <div class="w3-row w3-container w3-border w3-round w3-padding-16 w3-light-gray">

        <!-- PErcentual do PErfil preenchido -->
        <div id="Bloco1" class="w3-col s12 m6 l4 w3-padding">
            <div class="panel panel-success">
                <div class="panel-heading text-center">
                    <h4 class="panel-title w3-small">Perfil</h4>
                </div>
                <div class="panel-body">
                    <div id="Bloco1_Chart" style="min-width: 280px; height: 200px; margin: 0 auto"></div>
                </div>
            </div>
        </div>

        <!-- Dados do Lojista-->
        <div id="Bloco2" class="w3-col s12 m6 l8 w3-padding">
            <div class="panel panel-success">
                <div class="panel-heading text-center">
                    <h4 class="panel-title w3-small">Dados Cadastrais</h4>
                </div>

                <div class="panel-body">
                    <div id="Bloco2_Dados" style="width: 100%; height: 200px; margin: 0 auto">

                        <table class="table table-hover table-condensed table-responsive">
                            <thead>
                                <tr>
                                    <td><b>Nome:</b>
                                        <asp:Literal ID="txt_nome" runat="server" Text="Nome"></asp:Literal></td>
                                    <td></td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><b>e-Mail:</b>
                                        <asp:Literal ID="txt_email" runat="server" Text="e-mail"></asp:Literal></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td><b>Endereço:</b>
                                        <asp:Literal ID="txt_end" runat="server" Text="Endereço"></asp:Literal></td>
                                    <td><b>Número:</b>
                                        <asp:Literal ID="txt_num" runat="server" Text="Numero"></asp:Literal></td>
                                </tr>
                                <tr>
                                    <td><b>Complemento:</b>
                                        <asp:Literal ID="txt_complem" runat="server" Text="Complemento"></asp:Literal></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td><b>Telefone:</b>
                                        <asp:Literal ID="txt_tel" runat="server" Text="Telefone"></asp:Literal></td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>

                    </div>
                </div>

            </div>
        </div>

    </div>
    <!-- Faixa Divisória -->
    <div class="w3-row-padding ">
        <p>&nbsp;</p>
    </div>



    <!-- Painel Google -->
    <div id="GooglePanel" class="w3-row w3-container w3-border w3-round w3-padding-16 w3-light-gray">

        <div id="Bloco3" class="w3-col s12 m12 l12 w3-padding">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h4 class="panel-title w3-small">
                        <span class="text-left"><i class="w3-text-red fa fa-2x fa-google-plus-square" aria-hidden="true"></i>&nbsp;&nbsp;Avaliações Google</span>
                        <a href="#" class="w3-right"><i class="fa fa-2x fa-pencil" aria-hidden="true"></i></a>
                    </h4>
                </div>
                <div class="panel-body">
                    <div id="Bloco3_Chart" style="min-width: 280px; height: 500px; margin: 0 auto"></div>
                </div>
            </div>
        </div>

    </div>
    <!-- Faixa Divisória -->
    <div class="w3-row-padding ">
        <p>&nbsp;</p>
    </div>



    <!-- Painel Facebook -->
    <div id="FacebookPanel" class="w3-row w3-container w3-border w3-round w3-padding-16 w3-light-gray">

        <div id="Bloco4" class="w3-col s12 m12 l12 w3-padding">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h4 class="panel-title w3-small">
                        <span class="text-left"><i class="w3-text-blue fa fa-2x fa-facebook-square" aria-hidden="true"></i>&nbsp;&nbsp;Avaliações Facebook</span>
                        <a href="#" class="w3-right"><i class="fa fa-2x  fa-pencil" aria-hidden="true"></i></a>
                    </h4>
                </div>
                <div class="panel-body">
                    <div id="Bloco4_Chart" style="min-width: 280px; height: 500px; margin: 0 auto"></div>
                </div>
            </div>
        </div>

    </div>
    <!-- Faixa Divisória -->
    <div class="w3-row-padding ">
        <p>&nbsp;</p>
    </div>



    <!-- Painel Instagran -->
    <div id="InstagranPanel" class="w3-row w3-container w3-border w3-round w3-padding-16 w3-light-gray">

        <div id="Bloco5" class="w3-col s12 m12 l12 w3-padding">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h4 class="panel-title w3-small">
                        <span class="text-left"><i class="w3-text-black fa fa-2x fa-instagram" aria-hidden="true"></i>&nbsp;&nbsp;Perfil Instagram</span>
                        <a href="#" class="w3-right"><i class="fa fa-2x  fa-pencil" aria-hidden="true"></i></a>
                    </h4>
                </div>
                <div class="panel-body">
                    <div id="Bloco5_Chart" style="min-width: 280px; height: 500px; margin: 0 auto"></div>
                </div>
            </div>
        </div>

    </div>
    <!-- Faixa Divisória -->
    <div class="w3-row-padding ">
        <p>&nbsp;</p>
    </div>

    <!-- Auxiliares -->
    <asp:Literal ID="Literal1_Aux" runat="server"></asp:Literal>
    <script type="text/javascript" src="scripts/codeCad_Lojista.js"></script>


    <!-- Gráfico Morris.JS - Script de Montagem -->
    <script type="text/javascript">

        var v1 = document.getElementById('AuxConcluido').value;
        var v2 = document.getElementById('AuxConcluir').value;

        Morris.Donut({
            element: 'Bloco1_Chart',
            data: [
                { label: "Concluido", value: v1 },
                { label: "Faltando Concluir ", value: v2 }
            ],
            colors: [
               '#0BA462',
               '#D3D3D3'
            ],
            formatter: function (x) { return x + "%" }
        });
    </script>

</body>

</html>
