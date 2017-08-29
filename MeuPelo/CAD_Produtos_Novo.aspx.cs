using System;

public partial class CAD_Produtos_Novo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string iduser = Session["UserID"].ToString();

        string ScriptAux = "<script type=\"text/javascript\">" +
                        "document.getElementById('IDAuxHidden').value = \"" + iduser + "\";" +
                        "</script>";        
        Literal1.Text = ScriptAux;
        
    }
}