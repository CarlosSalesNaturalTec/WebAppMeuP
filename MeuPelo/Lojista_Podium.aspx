<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Lojista_Podium.aspx.cs" Inherits="Lojista_Podium" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>PODIUM - Classificação Geral</title>

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

</head>

<body style="margin-left: 2%; margin-right: 2%">
    <br />

    <div class="w3-row w3-container w3-border w3-round w3-padding-16 w3-light-gray">

        <div id="Bloco1" class="w3-col s12 m6 l4 w3-padding">
            <div class="panel panel-success">
                <div class="panel-heading text-center">
                    <h4 class="panel-title w3-small">Classificação Geral</h4>
                </div>

                <div class="panel-body text-center" style="min-width: 280px; height: 200px; margin: 0 auto">
                    <i class="w3-text-blue fa fa-5x fa-trophy" aria-hidden="true"></i>
                    <h1>
                        <i class="w3-text-yellow fa fa-star" aria-hidden="true"></i>
                        <i class="w3-text-yellow fa fa-star" aria-hidden="true"></i>
                        <i class="w3-text-yellow fa fa-star" aria-hidden="true"></i>
                        <i class="w3-text-yellow fa fa-star" aria-hidden="true"></i>
                        <i class="w3-text-yellow fa fa-star-half-o" aria-hidden="true"></i>
                    </h1>
                </div>


            </div>
        </div>

        <div id="Bloco2" class="w3-col s12 m6 l4 w3-padding">
            <div class="panel panel-success">
                <div class="panel-heading text-center">
                    <h4 class="panel-title w3-small">Total de Moeda Virtual - PelôMoedas</h4>
                </div>

                <div class="panel-body text-center" style="min-width: 280px; height: 200px; margin: 0 auto">
                    <i class="w3-text-blue fa fa-5x fa-dollar" aria-hidden="true"></i>
                    <h3>$$ 99,99</h3>
                    <p>Pelômoedas</p>
                </div>
            </div>
        </div>

    </div>

    <div class="w3-row-padding ">
        <p>&nbsp;</p>
    </div>


    <div class="w3-row w3-container w3-border w3-round w3-padding-16 w3-light-gray">
        <div id="BlocoGoogle" class="w3-col s12 m12 l12 w3-padding">
            <div class="panel panel-success">
                <div class="panel-heading text-center">
                    <h4 class="panel-title w3-small">Avaliação Google</h4>
                </div>
                <div class="panel-body text-center" style="min-width: 280px; height: 350px; margin: 0 auto">
                    <img src="img/tempGoogle.png" />
                </div>

            </div>
        </div>
    </div>

    <div class="w3-row w3-container w3-border w3-round w3-padding-16 w3-light-gray">
        <div id="BlocoFacebook" class="w3-col s12 m12 l12 w3-padding">
            <div class="panel panel-success">
                <div class="panel-heading text-center">
                    <h4 class="panel-title w3-small">Avaliação Facebook</h4>
                </div>
                <div class="panel-body text-center" style="min-width: 280px; height: 350px; margin: 0 auto">
                    <img src="img/tempFacebook.png" />
                </div>

            </div>
        </div>
    </div>

</body>
</html>
