<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page/DealerMaster.master" AutoEventWireup="true" CodeFile="ProductHandbookInfo.aspx.cs" Inherits="Dealer_ProductHandbookInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">

        <script type="text/javascript">
            ddaccordion.init({
                headerclass: "expandable",
                contentclass: "categoryitems",
                revealtype: "click",
                collapseprev: true,
                defaultexpanded: [0],
                onemustopen: true,
                animatedefault: false,
                persiststate: true,
                toggleclass: ["", "openheader"],
                togglehtml: ["prefix", "", ""],
                animatespeed: "normal",
                oninit: function (headers, expandedindices) {
                },
                onopenclose: function (header, index, state, isuseractivated) {
                }
            })
    </script>

<style type="text/css">
        .reference_link a {
            background: none repeat scroll 0 0 rgba(0, 0, 0, 0);
            font-family: Verdana,Arial,Helvetica,sans-serif;
            font-size: 1em;
            font-weight: normal;
            padding: 2px 0 1px;
        }

            .reference_link a:active {
                background: none repeat scroll 0 0 rgba(0, 0, 0, 0);
                font-family: Verdana,Arial,Helvetica,sans-serif;
                font-size: 1em;
                font-weight: normal;
                padding: 2px 0 1px;
            }

            .reference_link a.active {
                background: none repeat scroll 0 0 rgba(0, 0, 0, 0);
                text-decoration: none;
            }

        .h1 {
            color: #00355D;
            font-family: Verdana,Helvetica,Arial;
            font-size: 22px;
            font-style: normal;
            font-weight: bold;
            line-height: normal;
            margin-top: 0;
            text-decoration: none;
        }

        div.leftimg, div.rightimg {
            clear: both;
        }

            div.leftimg div.paragraphimageholder {
                display: inline;
                float: left;
                margin: 0 15px 7px 0;
            }

        div.paragraphcontent {
            display: inline;
        }

        p {
            font-size: 1em;
            line-height: 1.6em;
            padding: 0 0 10px;
        }

        .refLink {
            vertical-align: middle;
            display: block;
        }

            .refLink span {
                margin-left: 20px;
                line-height: 26px;
                display: block;
            }

        .link1 {
            line-height: 22px;
        }

        table, th, td {
            border: 1px solid black;
            width:200px;
            border-collapse: collapse;
            padding: 5px;
        }

        thead {
            color:green;
            text-align: center;
        }

        tbody {
            color: blue;
            height: 200px;
            text-align: center;
        }
        tfoot {
            color:red;
            text-align: left;
        }

        .RepeaterWrapper {
        width: 100%;
        margin: 5px;
        padding: 5px;
        }

        .indsideWrapper {
        margin: 5px;
        float: left;
        }

        img {
        max-width: 100%;
        height: auto;
        }

</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpBody" Runat="Server">

<div class="content" style="padding-bottom:24px;min-height:0px">

    <div class="breadcrumb">
        <a href="DealerFrontpage.aspx"><asp:Literal ID="Literal1" runat="server" Text="<%$ Resources:General, HomeText %>"></asp:Literal></a><img src="../App_Themes/<%=SessionUtility.CurrentThemeName %>/images/bc_arrow.png"
            alt="" /><asp:Literal ID="Literal2" runat="server" Text="<%$ Resources:General, ProductHandbook %>"></asp:Literal>
        <asp:imagebutton runat="server" id="ImgbtnHelp" imageurl='<%#"~/app_themes/"+SessionUtility.CurrentThemeName+"/images/system-help.png" %>'
            width="27px" height="27px" onclientclick="openWindowWithVarHeight('showhelptext.aspx?modname=news');return false;"
            style="float: right" meta:resourcekey="imagebutton1resource1" />
    </div>




    

    <asp:Repeater ID="repProductHandbookInfo_Family" runat="server">
        <HeaderTemplate>
            <div class="RepeaterWrapper">
         </HeaderTemplate>


        <ItemTemplate>
            <div class="indsideWrapper" style="margin: 10px">
            <table>
            <thead>
            <tr>
               <td>
                  <asp:Label ID="lblProductHandbookInfo_Family_Name" runat="server" Text='<%# Eval("Name") %>' />
               </td>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>
                  <asp:Image ID="lblProductHandbookInfo_Family_link" runat="server" ImageUrl='<%# Eval("link") %>' />
                </td>
            </tr>
            </tbody>
            <tfoot>
            <tr>
              <td>
                  <asp:Label ID="lblProductHandbookInfo_Family_ProductHandbookInfo_Family_ID" runat="server" Text='<%# Eval("ProductHandbookInfo_Family_ID ") %>' /><br />
                  <asp:Label ID="lblProductHandbookInfo_Family_General" runat="server" Text='<%# Eval("General") %>' /><br />
                  <asp:Label ID="lblProductHandbookInfo_Family_Materials" runat="server" Text='<%# Eval("Materials") %>' /><br />
                  <asp:Label ID="lblProductHandbookInfo_Family_ItemNumber" runat="server" Text='<%# Eval("ItemNumber") %>' /><br />
                  <asp:Label ID="lblProductHandbookInfo_Family_Maintaince" runat="server" Text='<%# Eval("Maintaince") %>' /><br />
                  <asp:Label ID="lblProductHandbookInfo_Family_USP" runat="server" Text='<%# Eval("USP") %>' />
              </td>
            </tr>
            </tfoot>
            </table>
                </div>
    </ItemTemplate>

    <FooterTemplate>
    </div>
    </FooterTemplate>

    

</asp:Repeater>


</div>

</asp:Content>

