using System;
using System.Web.Services;
using System.Data.SqlClient;

[WebService(Namespace = "http://meupelo.azurewebsites.net/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService
{

    public WebService()
    {
        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string usersave(string param1, string param2, string param3, string param4, string param5,
         string param6, string param7)
    {

        string url = "Sorry.html";

        OperacaoBanco operacao = new OperacaoBanco();
        bool inserir = operacao.Insert("INSERT INTO Tbl_Lojistas (nome ,usuario,senha,endereco,numero,complemento,telefone,dataCadastro) " +
            "VALUES ('" + param1 + "', '" + param2 + "', '" + param3 + "', '" + param4 + "', '" + param5 +
            "', '" + param6 + "', '" + param7 + "', getdate() )");
        ConexaoBancoSQL.fecharConexao();

        if (inserir == true)
        {
            string stringselect = "select ID_Lojista,nome,usuario " +
                "from Tbl_Lojistas " +
                "where usuario='" + param2 + "' and senha='" + param3 + "' ";

            OperacaoBanco operacao1 = new OperacaoBanco();
            SqlDataReader dados = operacao1.Select(stringselect);

            while (dados.Read())
            {
                //cria parametros para validação de acesso
                string vValida1 = DateTime.Now.ToString("hh"); // hora
                string vValida2 = DateTime.Now.ToString("mm"); // minuto
                int vValida3 = Convert.ToInt16(vValida1) * Convert.ToInt16(vValida2);
                string vValida3a = vValida3.ToString();

                // v1 = id do usuario    v2= nome      v3=validador

                url = "Redirect.aspx?v1=" + Convert.ToString(dados[0]) + 
                    "&v2=" + Convert.ToString(dados[1]) +
                    "&v3=" + vValida3a;
            }

        }

        ConexaoBancoSQL.fecharConexao();
        return url;
    }

    [WebMethod]
    public string login(string param1, string param2)
    {

        string Identificador_msg = "0";

        // localiza usuario
        string stringSelect = "select senha,ID_Lojista from Tbl_Lojistas where usuario = '" + param1 + "'";
        OperacaoBanco Identificador_Operacao = new OperacaoBanco();
        SqlDataReader Identificador_rcrdset = Identificador_Operacao.Select(stringSelect);
        while (Identificador_rcrdset.Read())
        {
            if (param2 == Convert.ToString(Identificador_rcrdset[0]))
            {
                string vValida1, vValida2;
                vValida1 = DateTime.Now.ToString("dd");
                vValida2 = DateTime.Now.ToString("MM");
                int vValida3 = Convert.ToInt16(vValida1) * Convert.ToInt16(vValida2);
                string vValida4 = vValida3.ToString();

                Identificador_msg = "Redirect.aspx" +
                    "?v1=" + vValida4 +
                    "&v2=" + Convert.ToString(Identificador_rcrdset[1]);
            }
            else
            {
                Identificador_msg = "2";
            }
        }
        ConexaoBancoSQL.fecharConexao();

        return Identificador_msg;

    }



    [WebMethod]
    public string salvarlink1(string param1, string param2, string param3, string param4)
    {
        string url = "";

        OperacaoBanco operacao4 = new OperacaoBanco();
        bool salvarlink = operacao4.Update("update Tbl_Lojistas set " +
            param1 + " = '" + param2 + "'" +
            "where ID_Lojista  =" + param3);  

        ConexaoBancoSQL.fecharConexao();

        if (salvarlink)
        {
            url = param4;
        }
        

        return url;


    }



    [WebMethod]
    public string ProdutoExcluir(string param1)
    {
        string url;

        OperacaoBanco operacao3 = new OperacaoBanco();
        Boolean deletar = operacao3.Delete("delete from Tbl_Produtos where ID_Produto =" + param1);   
        ConexaoBancoSQL.fecharConexao();

        if (deletar == true)
        {
            url = "CAD_Produtos_Listagem.aspx"; 
        }
        else
        {
            url = "Sorry.aspx";
        }

        return url;
    }

    [WebMethod]
    public string ProdutoSalvar(string param0, string param1, string param2, string param3, string param4, string param5, 
        string param6, string param7, string param8, string param9)
    {
        string url;
        
        OperacaoBanco operacaoInst2 = new OperacaoBanco();
        Boolean inserirUser = operacaoInst2.Insert("INSERT INTO Tbl_Produtos (Nome , categoria  , unidade , preco_normal , preco_oferta , " +
           "ofertar , ofertar_quant , brinde , brinde_quant, ID_Lojista ) " +
           "VALUES (" +
           "'" + param0 + "'," +
           "'" + param1 + "'," +
           "'" + param2 + "'," +
           param3 + "," +
           param4 + "," +
           "'" + param5 + "'," +
           param6 + "," +
           "'" + param7 + "'," +
           param8 + "," +
           param9 + ")"
           );

        ConexaoBancoSQL.fecharConexao();

        if (inserirUser == true)
        {
            url = "CAD_Produtos_Listagem.aspx";
        }
        else
        {
            url = "NÃO FOI POSSIVEL INCLUIR PRODUTO";
        }

        return url;
    }


    [WebMethod]
    public string ProdutoAlterar(string param0, string param1, string param2, string param3, string param4, string param5,
        string param6, string param7, string param8, string param9)
    {
        string url;

        OperacaoBanco operacao4 = new OperacaoBanco();
        // <!--*******Customização*******-->
        bool alterar = operacao4.Update("update Tbl_Produtos set " +
            "Nome = '" + param0 + "'," +
            "categoria = '" + param1 + "'," +
            "unidade = '" + param2 + "'," +
            "preco_normal = " + param3 + "," +
            "preco_oferta = " + param4 + "," +
            "ofertar = '" + param5 + "'," +
            "ofertar_quant = " + param6 + "," +
            "brinde = '" + param7 + "'," +
            "brinde_quant = " + param8 + "," +
            "where ID_Produto  =" + param9);  

        ConexaoBancoSQL.fecharConexao();

        if (alterar == true)
        {
            url = "CAD_Produtos_Listagem.aspx";   
        }
        else
        {
            url = "NÃO FOI POSSIVEL INCLUIR PRODUTO";
        }

        return url;
    }

}


public class ConexaoBancoSQL
{
    private static SqlConnection objConexao = null;
    private string stringconnection1;

    public void tentarAbrirConexaoRemota()
    {
        objConexao = new SqlConnection();
        objConexao.ConnectionString = stringconnection1;
        objConexao.Open();
    }

    public ConexaoBancoSQL()
    {
        // *** STRING DE CONEXÃO COM BANCO DE DADOS - Atenção! Alterar dados conforme seu servidor
        stringconnection1 = "Server=tcp:servermeupelo.database.windows.net,1433;Initial Catalog=dbMeuPelo;Persist Security Info=False;User ID=admserver;Password=Pwd@2017;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
        try
        {
            tentarAbrirConexaoRemota();
        }
        catch
        {
            Console.WriteLine("Atenção! Não foi possível Conectar ao Servidor de Banco de Dados.");
        }
    }

    public static SqlConnection getConexao()
    {
        new ConexaoBancoSQL();
        return objConexao;
    }
    public static void fecharConexao()
    {
        objConexao.Close();
    }
}

public class OperacaoBanco
{
    private SqlCommand TemplateMethod(String query)
    {
        SqlConnection Conexao = ConexaoBancoSQL.getConexao();
        SqlCommand Commando = new SqlCommand(query, Conexao);
        try
        {
            Commando.ExecuteNonQuery();
            return Commando;
        }
        catch
        {
            return Commando;
        }
    }

    public SqlDataReader Select(String query)
    {
        SqlDataReader dadosObtidos = TemplateMethod(query).ExecuteReader();
        return dadosObtidos;
    }

    public Boolean Insert(String query)
    {
        SqlConnection Conexao = ConexaoBancoSQL.getConexao();
        SqlCommand Commando = new SqlCommand(query, Conexao);
        try
        {
            Commando.ExecuteNonQuery();
            return true;
        }
        catch
        {
            return false;
        }
    }

    public Boolean Update(String query)
    {
        SqlConnection Conexao = ConexaoBancoSQL.getConexao();
        SqlCommand Commando = new SqlCommand(query, Conexao);
        try
        {
            Commando.ExecuteNonQuery();
            return true;
        }
        catch
        {
            return false;
        }
    }

    public Boolean Delete(String query)
    {
        SqlConnection Conexao = ConexaoBancoSQL.getConexao();
        SqlCommand Commando = new SqlCommand(query, Conexao);
        try
        {
            Commando.ExecuteNonQuery();
            return true;
        }
        catch
        {
            return false;
        }
    }

}