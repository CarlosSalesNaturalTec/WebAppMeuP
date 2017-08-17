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
        bool inserir = operacao.Insert("INSERT INTO Tbl_Usuarios (nome ,usuario,senha,endereco,numero,complemento,telefone,dataCadastro) " +
            "VALUES ('" + param1 + "', '" + param2 + "', '" + param3 + "', '" + param4 + "', '" + param5 +
            "', '" + param6 + "', '" + param7 + "', dateadd(hh,-3,getdate()) )");
        ConexaoBancoSQL.fecharConexao();

        if (inserir == true)
        {
            string stringselect = "select ID_User,nome,usuario " +
                "from Tbl_Usuarios " +
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
        stringconnection1 = "Server=tcp:serverlogvai.database.windows.net,1433;Initial Catalog=dblogvai;Persist Security Info=False;User ID=admserver;Password=pwd@2017;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
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