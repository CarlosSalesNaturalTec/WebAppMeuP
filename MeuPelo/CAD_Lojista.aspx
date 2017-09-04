<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CAD_Lojista.aspx.cs" Inherits="CAD_Lojista" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Meu Pelô - Área do Lojista - Dados Lojista</title>

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

    <!-- Dados do Lojista -->
    <div class="w3-row w3-container w3-border w3-round w3-padding-16 w3-light-gray">

        <!-- Dados do Lojista-->
        <div id="Bloco1" class="w3-col s12 m12 l12 w3-padding">

            <div class="panel panel-success">

                <div class="panel-heading text-center">
                    <h4 class="panel-title w3-small">Dados Cadastrais</h4>
                </div>

                <div class="panel-body">
                    <div id="Bloco1_Dados" style="width: 100%; height: 200px; margin: 0 auto">
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

    <!-- Segunda SEÇÃO -->
    <div class="w3-row w3-container w3-border w3-round w3-padding-16 w3-light-gray">

        <!-- PRodutos-->
        <div id="Bloco2" class="w3-col s12 m6 l4 w3-padding">

            <div class="panel panel-success">

                <div class="panel-heading text-center">
                    <h4 class="panel-title w3-small">Produtos</h4>
                </div>

                <div class="panel-body">
                    <div class="w3-center" style="width: 100%; height: 140px; margin: 0 auto">
                        <i class="fa fa-5x fa-barcode w3-text-blue" aria-hidden="true"></i>
                        <br />
                        <a onclick="window.location.href ='CAD_Produtos_Listagem.aspx'" class="btn btn-block btn-primary">Produtos</a>
                    </div>
                </div>

            </div>
        </div>

        <!-- Vendas-->
        <div id="BlocoVendas" class="w3-col s12 m6 l4 w3-padding">
            <div class="panel panel-success">
                <div class="panel-heading text-center">
                    <h4 class="panel-title w3-small">Vendas</h4>
                </div>
                <div class="panel-body">
                    <div class="w3-center" style="width: 100%; height: 140px; margin: 0 auto">
                        <i class="fa fa-5x fa-dollar w3-text-blue" aria-hidden="true"></i>
                        <br />
                        <a onclick="window.location.href ='Lojista_Vendas.aspx'" class="btn btn-block btn-primary">Vendas</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Podium-->
        <div id="BlocoPodium" class="w3-col s12 m6 l4 w3-padding">
            <div class="panel panel-success">
                <div class="panel-heading text-center">
                    <h4 class="panel-title w3-small">Podium</h4>
                </div>
                <div class="panel-body">
                    <div class="w3-center" style="width: 100%; height: 140px; margin: 0 auto">
                        <i class="fa fa-5x fa-trophy w3-text-blue" aria-hidden="true"></i>
                        <br />
                        <a onclick="window.location.href ='Lojista_Podium.aspx'" class="btn btn-block btn-primary">Podium</a>
                    </div>
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
     
</body>

</html>
