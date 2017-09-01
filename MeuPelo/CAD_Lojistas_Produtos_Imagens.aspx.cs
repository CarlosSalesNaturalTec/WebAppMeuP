using System;
using System.Text;

public partial class CAD_Lojistas_Produtos_Imagens : System.Web.UI.Page
{
    string idProdutoAux, nomePRodutoAux;
    StringBuilder str = new StringBuilder();

    protected void Page_Load(object sender, EventArgs e)
    {
        idProdutoAux = Request.QueryString["p1"];
        nomePRodutoAux = Request.QueryString["p2"];

        PreencheCampos(idProdutoAux);
        

    }
    private void PreencheCampos(string IDAux)
    {
            
        string stringSelect = "select " +
            "foto1, foto2 " +
            "from Tbl_Produtos " +
            "where ID_Produto = " + IDAux;

        string FotoURI1 = "", FotoURI2 = "";

        OperacaoBanco operacao = new OperacaoBanco();
        System.Data.SqlClient.SqlDataReader rcrdset = operacao.Select(stringSelect);
        while (rcrdset.Read())
        {
            FotoURI1 = Convert.ToString(rcrdset[0]);
            FotoURI2 = Convert.ToString(rcrdset[1]);
        }
        ConexaoBancoSQL.fecharConexao();       

        string ScriptAux = "<script type=\"text/javascript\">" +
                        "document.getElementById('IDAuxHidden').value = \"" + idProdutoAux + "\";" +
                        "document.getElementById('lblNomePRoduto').textContent = \"" + nomePRodutoAux + "\";" +
                        "document.getElementById('Bloco1Imagem').innerHTML = '<img src=\"" + FotoURI1 + "\"/>';" +
                        "document.getElementById('Bloco2Imagem').innerHTML = '<img src=\"" + FotoURI2 + "\"/>';" +
                        "</script>";

        Literal1.Text = ScriptAux;
    }

}