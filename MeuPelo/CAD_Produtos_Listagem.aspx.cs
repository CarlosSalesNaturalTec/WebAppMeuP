using System;
using System.Globalization;
using System.Text;

public partial class CAD_Produtos_Listagem : System.Web.UI.Page
{
    StringBuilder str = new StringBuilder();
    int TotaldeRegistros = 0;
    string iduser;

    protected void Page_Load(object sender, EventArgs e)
    {

        iduser = Session["UserID"].ToString();

        montaCabecalho();
        dadosCorpo();
        montaRodape();

        Literal1.Text = str.ToString();

    }

    private void montaCabecalho()
    {
        // <!--*******Customização*******-->
        string stringcomaspas = "<table id=\"tabela\" class=\"table table-striped table-hover \">" +
            "<thead>" +
            "<tr>" +
            "<th>.</th>" +
            "<th>PRODUTO</th>" +
            "<th>CATEGORIA</th>" +
            "<th>ESTOQUE</th>" +
            "<th>UND</th>" +
            "<th>PREÇO NORMAL</th>" +
            "<th>PREÇO C/ DESC.</th>" +
            "</tr>" +
            "</thead>" +
            "<tbody>";
        str.Clear();
        str.Append(stringcomaspas);
    }

    private void dadosCorpo()
    {
        // <!--*******Customização*******-->
        string stringselect = "select ID_Produto, nome, categoria, estoque , unidade, preco_normal , preco_oferta   " +
                "from Tbl_Produtos " +
                "where ID_Lojista = " + iduser +
                " order by Nome"; 
        OperacaoBanco operacao = new OperacaoBanco();
        System.Data.SqlClient.SqlDataReader dados = operacao.Select(stringselect);
        
        while (dados.Read())
        {
            // <!--*******Customização*******-->
            string Coluna0 = Convert.ToString(dados[0]); //id
            string Coluna1 = Convert.ToString(dados[1]); 
            string Coluna2 = Convert.ToString(dados[2]);
            string Coluna3 = Convert.ToString(dados[3]);    //estoque
            string Coluna4 = Convert.ToString(dados[4]);  //unidade
            string Coluna5 = Convert.ToString(dados[5]);  //preco normal
            string Coluna6 = Convert.ToString(dados[6]);    // preco oferta

            decimal valor = Convert.ToDecimal(dados[5]);
            string Coluna5a = "R$ " + valor.ToString("N", CultureInfo.CreateSpecificCulture("pt-BR"));

            valor = Convert.ToDecimal(dados[6]);
            string Coluna6a = "R$ " + valor.ToString("N", CultureInfo.CreateSpecificCulture("pt-BR"));

            string bt1 = "<a class='w3-btn w3-round w3-hover-blue w3-text-blue' href='CAD_Produtos_Ficha.aspx?v1=" + Coluna0 + "'><i class='fa fa-pencil-square-o' aria-hidden='true'></i></a>";
            string bt2 = "<a class='w3-btn w3-round w3-hover-red w3-text-blue' onclick='Excluir(" + Coluna0 + ")'><i class='fa fa-trash-o' aria-hidden='true'></i></a>&nbsp;&nbsp;";
            string bt3 = "<a class='w3-btn w3-round w3-hover-blue w3-text-blue' onclick='Imagens(" + Coluna0 + ", \"" + Coluna1 +  "\")'><i class='fa fa-file-image-o' aria-hidden='true'></i></a>&nbsp;&nbsp;";
           
            string stringcomaspas = "<tr>" +
                "<td>" + bt1 + bt3 + bt2 + "</td>" +
                "<td>" + Coluna1 + "</td>" +
                "<td>" + Coluna2 + "</td>" +
                "<td>" + Coluna3 + "</td>" +
                "<td>" + Coluna4 + "</td>" +
                "<td>" + Coluna5a + "</td>" +
                "<td>" + Coluna6a + "</td>" +
                "</tr>";

            str.Append(stringcomaspas);
            TotaldeRegistros += 1;
        }
        ConexaoBancoSQL.fecharConexao();

        lblTotalRegistros.Text = TotaldeRegistros.ToString();

    }

    private void montaRodape()
    {
        string footer = "</tbody></table>";
        str.Append(footer);
    }
}