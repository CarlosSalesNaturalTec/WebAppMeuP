using System;

public partial class Redirect : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //valida login por meio de parâmetro enviado pelo webservice
        string vValida1, vValida2;
        vValida1 = DateTime.Now.ToString("dd");
        vValida2 = DateTime.Now.ToString("MM");
        int vValida3 = Convert.ToInt16(vValida1) * Convert.ToInt16(vValida2);
        string vValida4 = vValida3.ToString();

        string param = Request.QueryString["v3"];
        if (param == vValida4)
        {
            Session["UserID"] = Request.QueryString["v1"];
            Session["UserName"] = Request.QueryString["v2"];

            Response.Redirect("CAD_Lojista.html");
        }
        else
        {
            Response.Redirect("Sorry.html");
        }

    }

}