using System;
using System.Text;
using System.Data.SqlClient;

public partial class CAD_Lojista : System.Web.UI.Page
{

    StringBuilder str = new StringBuilder();

    protected void Page_Load(object sender, EventArgs e)
    {
        string idAux = Session["UserID"].ToString();
        PreencheCampos(idAux);

    }

    private void PreencheCampos(string IDAux)
    {
        string stringSelect = "select nome ,usuario, endereco,numero ,complemento ,telefone, urlGoogle , urlFacebook, urlInstagran " +
            "from Tbl_Lojistas " +
            "where ID_Lojista  = '" + IDAux + "'";

        int Percent = 20;
        string ScriptDados = "";

        OperacaoBanco Identificador_Operacao = new OperacaoBanco();
        SqlDataReader Identificador_rcrdset = Identificador_Operacao.Select(stringSelect);
        while (Identificador_rcrdset.Read())
        {
            txt_nome.Text = Convert.ToString(Identificador_rcrdset[0]);
            txt_email.Text = Convert.ToString(Identificador_rcrdset[1]);
            txt_end.Text = Convert.ToString(Identificador_rcrdset[2]);
            txt_num.Text = Convert.ToString(Identificador_rcrdset[3]);
            txt_complem.Text = Convert.ToString(Identificador_rcrdset[4]);
            txt_tel.Text = Convert.ToString(Identificador_rcrdset[5]);

            if (Convert.ToString(Identificador_rcrdset[6]) != "") {Percent +=20;}
            if (Convert.ToString(Identificador_rcrdset[7]) != "") { Percent += 20; }
            if (Convert.ToString(Identificador_rcrdset[8]) != "") { Percent += 20; }

        }
        ConexaoBancoSQL.fecharConexao();

        str.Clear();
        ScriptDados = "<input type=\"hidden\" id=\"idAux\" value= \"" + IDAux + "\"/>";
        str.Append(ScriptDados);

        Literal1_Aux.Text = str.ToString();

    }
}