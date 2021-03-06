﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Lojista_Vendas.aspx.cs" Inherits="Lojista_Vendas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    
    <title>Resumo de Vendas</title>         

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Jquery-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Styles: W3, BootsStrap, Font-Awesome -->
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Paginação -->
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css" />

    <!-- Gráfico Morris.JS -->
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
    <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>

</head>

<body style="margin-left: 2%; margin-right: 2%">
    <br />

    <div class="w3-row w3-container w3-border w3-round w3-padding-16 w3-light-gray">

        <div id="Bloco1" class="w3-col s12 m6 l4 w3-padding">          
            <div class="panel panel-success">
                <div class="panel-heading text-center">
                    <h4 class="panel-title w3-small">Total por Produto</h4>
                </div>

                <div class="panel-body">
                    <div id="Bloco1_Chart" style="min-width: 280px; height: 200px; margin: 0 auto"></div>
                </div>

            </div>
        </div>

        <div id="Bloco2" class="w3-col s12 m6 l4 w3-padding">         
            <div class="panel panel-success">
                <div class="panel-heading text-center">
                    <h4 class="panel-title w3-small">Total de Vendas Diária</h4>
                </div>

                <div class="panel-body">
                    <div id="Bloco2_Chart" style="min-width: 280px; height: 200px; margin: 0 auto"></div>
                </div>
            </div>
        </div>

        <div id="Bloco3" class="w3-col s12 m6 l4 w3-padding">
            <div class="panel panel-success">
                <div class="panel-heading text-center">
                    <h4 class="panel-title w3-small">Movimentação</h4>
                </div>
                <div class="panel-body text-center" style="min-width: 280px; height: 200px; margin: 0 auto">
                    <h1><asp:Literal ID="Bloco3_Info" runat="server"></asp:Literal></h1>
                    <a onclick="NovoRegistro()" class="btn btn-block btn-primary"><i class="fa fa-plus"></i>&nbsp;Vendas Balcão</a>
                    <p></p>
                    <a onclick="Relatorios()" class="btn btn-block btn-primary"><i class="fa fa-file-text-o"></i>&nbsp;Relatórios</a>
                </div>
                <p>&nbsp;</p>
            </div>
        </div>

    </div>

    <div class="w3-row-padding ">
        <p>&nbsp;</p>
    </div>

    <!-- Planilha  -->
    <div class="w3-container w3-border w3-round w3-padding-16 w3-light-gray w3-small">
        <asp:Literal ID="Literal_Tabela" runat="server"></asp:Literal>
    </div>

    <!-- Gráfico Morris.JS - Script de Montagem -->
    <asp:Literal ID="Literal_Bloco1" runat="server"></asp:Literal>
    <asp:Literal ID="Literal_Bloco2" runat="server"></asp:Literal>

    <!-- Script Paginação  -->
    <script type="text/javascript" src="scripts/codePaginacao.js"></script>

</body>
</html>
