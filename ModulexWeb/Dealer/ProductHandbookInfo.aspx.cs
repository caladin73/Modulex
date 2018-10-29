using System;
using System.Data;
using System.IO;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using ModulexDAL;
using ModulexEAL;

public partial class Dealer_ProductHandbookInfo : DealerBaseclass
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), "active", "setActiveMenuLink('ankMyModulex6');", true);
        if (!Page.IsPostBack)
        {
            Page.DataBind();
            BindAllFamily();
            //BindProductHandbookInfo_Family_SelectID();

            int intPageID = clsHelpPagesDAL.HelpHeaderAdded(Path.GetFileName(Request.PhysicalPath), "Dealer site", SessionUtility.CurrentLanguageId);
            if (intPageID > 0)
            {
                ImgbtnHelp.Visible = true;
                ImgbtnHelp.OnClientClick = "openHelpWindow('ShowHelpText.aspx?pageid=" + intPageID + "','" + SessionUtility.HelpHeader + "');return false;";
            }
            else
            {
                ImgbtnHelp.Visible = false;
            }
        }
        try
        {
            (this.Master as Master_Page_DealerMaster).FindControl("dvSlider").Visible = false;
            (this.Master as Master_Page_DealerMaster).IsRssMarquee = false;
            (this.Master as Master_Page_DealerMaster).IsBanner = false;
        }
        catch (Exception)
        {
        }
    }

    private void BindAllFamily()
    {
        clsProductHandbookInfoDAL objAllFamilyDAL = new clsProductHandbookInfoDAL();
        repProductHandbookInfo_Family.DataSource = objAllFamilyDAL.SelectAll();
        repProductHandbookInfo_Family.DataBind();
    }

}




