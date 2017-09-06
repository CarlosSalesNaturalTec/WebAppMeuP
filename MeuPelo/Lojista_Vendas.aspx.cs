using System;
using System.Globalization;
using System.Text;

public partial class Lojista_Vendas : System.Web.UI.Page
{

    StringBuilder str = new StringBuilder();
    string idAux;

    protected void Page_Load(object sender, EventArgs e)
    {

        idAux = Session["UserID"].ToString();

        montaCabecalho();
        dadosCorpo();
        montaRodape();

        //============================================================================
        //graficos 
        //============================================================================
        string stringDadosGraf;

        // Total por protudo
        stringDadosGraf = "select produto, sum(quant) as quantTotal " +
            "from Tbl_Venda_Simplificada where ID_Lojista = " + idAux + 
            " group by produto ";
        Literal_Bloco1.Text = Monta_Graf_Morris_Donut(stringDadosGraf, "Bloco1_Chart");

        // total de vendas diaria
        stringDadosGraf = "select format(DataVenda,'dd-MM-yyyy') as Dvenda, sum(ValorTotal) as ValorTotal " +
            "from Tbl_Venda_Simplificada " +
            "where ID_Lojista = " + idAux +
            " group by format(DataVenda,'dd-MM-yyyy')";
        Literal_Bloco2.Text = Monta_Graf_Morris_Bar(stringDadosGraf, "Bloco2_Chart");
        //============================================================================

    }

    private void montaCabecalho()
    {
        // <!--*******Customização*******-->
        string stringcomaspas = "<table id=\"tabela\" class=\"table table-striped table-hover table-bordered \">" +
            "<thead>" +
            "<tr>" +
            "<th>DATA</th>" +
            "<th>PRODUTO</th>" +
            "<th>QUANT</th>" +
            "<th>VALOR</th>" +
            "<th>TOTAL</th>" +
            "<th>FORMA PAGAM.</th>" +
            "</tr>" +
            "</thead>" +
            "<tbody>";
        str.Clear();
        str.Append(stringcomaspas);
    }

    private void dadosCorpo()
    {
        // <!--*******Customização*******-->
        string stringselect = "select format(DataVenda,'dd/MM/yyyy') as d1, produto, quant, ValorProduto, ValorTotal, FormaPag " +
                "from Tbl_Venda_Simplificada  " +
                "where ID_Lojista = " + idAux +
                "order by ID_Venda desc";

        OperacaoBanco operacao = new OperacaoBanco();
        System.Data.SqlClient.SqlDataReader dados = operacao.Select(stringselect);

        while (dados.Read())
        {
            // <!--*******Customização*******-->
            string Coluna0 = Convert.ToString(dados[0]); //data
            string Coluna1 = Convert.ToString(dados[1]);  //produto
            string Coluna2 = Convert.ToString(dados[2]);  //quant

            decimal valor = Convert.ToDecimal(dados[3]);  //valor produto
            string Coluna3 = "R$ " + valor.ToString("N", CultureInfo.CreateSpecificCulture("pt-BR"));

            valor = Convert.ToDecimal(dados[4]);  //valor total
            string Coluna4 = "R$ " + valor.ToString("N", CultureInfo.CreateSpecificCulture("pt-BR"));

            string Coluna5 = Convert.ToString(dados[5]);  //formapag

            // <!--*******Customização*******-->
            string stringcomaspas = "<tr>" +
                "<td>" + Coluna0 + "</td>" +
                "<td>" + Coluna1 + "</td>" +
                "<td>" + Coluna2 + "</td>" +
                "<td>" + Coluna3 + "</td>" +
                "<td>" + Coluna4 + "</td>" +
                "<td>" + Coluna5 + "</td>" +
                "</tr>";

            str.Append(stringcomaspas);
        }
        ConexaoBancoSQL.fecharConexao();



    }

    private void montaRodape()
    {
        string footer = "</tbody></table>";
        str.Append(footer);
        Literal_Tabela.Text = str.ToString();
    }

    private string Monta_Graf_Morris_Donut(string stringselect, string ID_Chart)
    {
        string txtAux = "";
        str.Clear();

        txtAux = "<script type=\"text/javascript\">";
        str.Append(txtAux);

        txtAux = "Morris.Donut({element: '" + ID_Chart + "', data: [";
        str.Append(txtAux);

        //dados
        OperacaoBanco operacao = new OperacaoBanco();
        System.Data.SqlClient.SqlDataReader dados = operacao.Select(stringselect);
        while (dados.Read())
        {
            txtAux = "{label: \"" + Convert.ToString(dados[0]) + "\", value: " + Convert.ToString(dados[1]) + "},";
            str.Append(txtAux);
        }
        ConexaoBancoSQL.fecharConexao();

        txtAux = "]});";
        str.Append(txtAux);

        txtAux = "</script>";
        str.Append(txtAux);

        return str.ToString();

    }

    private string Monta_Graf_Morris_Bar(string stringselect, string ID_Chart)
    {
        string txtAux = "";
        str.Clear();

        txtAux = "<script type=\"text/javascript\">";
        str.Append(txtAux);

        txtAux = "Morris.Bar({element: '" + ID_Chart + "', data: [";
        str.Append(txtAux);

        //dados
        OperacaoBanco operacao = new OperacaoBanco();
        System.Data.SqlClient.SqlDataReader dados = operacao.Select(stringselect);
        while (dados.Read())
        {
            txtAux = "{data: \"" + Convert.ToString(dados[0]) + "\", valor: " + Convert.ToString(dados[1]) + "},";
            str.Append(txtAux);
        }
        ConexaoBancoSQL.fecharConexao();

        txtAux = "],";
        str.Append(txtAux);

        txtAux = "xkey: 'data',";
        str.Append(txtAux);

        txtAux = "ykeys: ['valor'],";
        str.Append(txtAux);

        txtAux = "labels: ['Total na Data']";
        str.Append(txtAux);

        txtAux = "});";
        str.Append(txtAux);

        txtAux = "</script>";
        str.Append(txtAux);

        return str.ToString();

    }
}