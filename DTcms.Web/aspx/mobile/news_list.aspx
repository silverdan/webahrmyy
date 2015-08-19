<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article_list" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2015/8/18 11:46:57.
		本页面代码由DTcms模板引擎生成于 2015/8/18 11:46:57. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	const string channel = "news";
	const int pagesize = 10;

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n<meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_keywords));
	templateBuilder.Append("\" />\r\n<meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_description));
	templateBuilder.Append("\" />\r\n<link href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/pagination.css\" rel=\"stylesheet\" />\r\n<!--<link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\" type=\"text/css\" />-->\r\n\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/common.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/second.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/base.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/jquery-1.7.2.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/imgReady.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body>\r\n    <div class=\"wrap\">\r\n        <!--Header-->\r\n        ");

	templateBuilder.Append("<!--<div class=\"header\">\r\n  <div class=\"header-wrap\">\r\n    <div class=\"section\">\r\n      <div class=\"left-box\">\r\n        <a class=\"logo\" href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</a>\r\n        <p class=\"nav\">\r\n          <a href=\"");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("\">资讯</a>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("goods"));

	templateBuilder.Append("\">商城</a>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("video"));

	templateBuilder.Append("\">视频</a>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("photo"));

	templateBuilder.Append("\">图片</a>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("down"));

	templateBuilder.Append("\">下载</a>\r\n        </p>\r\n      </div>\r\n      <div class=\"search\">\r\n        <input id=\"keywords\" name=\"keywords\" class=\"input\" type=\"text\" onkeydown=\"if(event.keyCode==13){SiteSearch('");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("', '#keywords');return false};\" placeholder=\"输入回车搜索\" x-webkit-speech=\"\" />\r\n        <input class=\"submit\" type=\"submit\" onclick=\"SiteSearch('");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("', '#keywords');\" value=\"搜索\" />\r\n      </div>\r\n      <div class=\"right-box\">\r\n      <script type=\"text/javascript\">\r\n			$.ajax({\r\n				type: \"POST\",\r\n				url: \"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_check_login\",\r\n				dataType: \"json\",\r\n				timeout: 20000,\r\n				success: function (data, textStatus) {\r\n					if (data.status == 1) {\r\n						$(\"#menu\").prepend('<li class=\"line\"><a href=\"");
	templateBuilder.Append(linkurl("usercenter","exit"));

	templateBuilder.Append("\">退出</a></li>');\r\n						$(\"#menu\").prepend('<li class=\"login\"><em></em><a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\">会员中心</a></li>');\r\n					} else {\r\n						$(\"#menu\").prepend('<li class=\"line\"><a href=\"");
	templateBuilder.Append(linkurl("register"));

	templateBuilder.Append("\">注册</a></li>');\r\n						$(\"#menu\").prepend('<li class=\"login\"><em></em><a href=\"");
	templateBuilder.Append(linkurl("login"));

	templateBuilder.Append("\">登录</a></li>');\r\n					}\r\n				}\r\n			});\r\n		</");
	templateBuilder.Append("script>\r\n        <ul id=\"menu\">\r\n          <li>\r\n            <a href=\"");
	templateBuilder.Append(linkurl("cart"));

	templateBuilder.Append("\">购物车<span id=\"shoppingCartCount\"><script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=view_cart_count\"></");
	templateBuilder.Append("script></span>件</a>\r\n          </li>\r\n          <li><a href=\"");
	templateBuilder.Append(linkurl("content","contact"));

	templateBuilder.Append("\">联系我们</a></li>\r\n        </ul>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>-->\r\n\r\n\r\n<div class=\"header\">\r\n    <h1><a href=\"index.aspx\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/logo.jpg\" width=\"301\" height=\"62\" alt=\"河南省人民医院官方网站\" title=\"河南省人民医院官方网站\" /></a></h1>\r\n    <h2>\r\n        <span class=\"sty_right\"><a href=\"Site_Map.aspx\">站点地图</a> | <a href=\"javascript:void(0)\" onclick=\"addToFavorite()\">加入收藏</a> | <a href=\"FunctionalDepartment.aspx?id=71\" target=\"_blank\">人事管理</a> |  <a href=\"https://61.163.73.190/por/login_psw.csp\" target=\"_blank\">内部OA</a>  </span>\r\n    </h2><input type=\"text\" class=\"search\" name=\"tbSearch\" id=\"tbSearch\" value=\"\" onkeypress=\"if(event.keyCode==13){document.all.btnSearch.click();return false;}\" /><input type=\"button\" class=\"btn_search\" name=\"btnSearch\" id=\"btnSearch\" value=\"搜 索\" onclick=\"SearchWords()\" />\r\n    <ul>\r\n    <li onclick=\"self.location='index.aspx'\" style=\"cursor:pointer;\" class='on'><a href=\"index.aspx\">首页</a></li>\r\n    <li onclick=\"self.location='Treatment.aspx'\" style=\"cursor:pointer;\"><a href=\"Treatment.aspx\">就诊指南</a></li>\r\n    <li onclick=\"self.location='survey.aspx'\" style=\"cursor:pointer;\"><a href=\"survey.aspx\">医院概况</a></li>\r\n    <li onclick=\"self.location='scientific.aspx'\" style=\"cursor:pointer;\"><a href=\"scientific.aspx\">科研教学</a></li>\r\n    <li onclick=\"self.location = '");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("'\" style=\"cursor:pointer;\"><a href=\"");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("\">新闻动态</a></li>\r\n    <li onclick=\"self.location='science.aspx'\" style=\"cursor:pointer;\"><a href=\"science.aspx\">健康科普</a></li>\r\n    <li onclick=\"self.location='nursing.aspx'\" style=\"cursor:pointer;\"><a href=\"nursing.aspx\">护理园地</a></li>\r\n    <li onclick=\"self.location='work.aspx'\" style=\"cursor:pointer;\"><a href=\"work.aspx\">党群工作</a></li> \r\n    <li onclick=\"self.location='subject.aspx'\" style=\"cursor:pointer;\" class=\"listr\"><a href=\"subject.aspx\">专题</a></li>\r\n    </ul>\r\n</div>");


	templateBuilder.Append("\r\n        <!--/Header-->\r\n        <!--content begin-->\r\n        <div class=\"content\">\r\n            <div class=\"left infor_left news_bj\">\r\n                <div class=\"infor_leftlist news_left\">\r\n                    <h3>新闻专区<br /><em>NEWS</em></h3>\r\n                    <ul>\r\n                        <li class=\"on\"><a href=\"news.aspx\">医院快讯</a></li>\r\n                        <li><a href=\"Dynamic.aspx\">医疗动态</a></li>\r\n                        <li><a href=\"Notice.aspx\">最新公告</a></li>\r\n                        <li><a href=\"Media.aspx\">媒体看省医</a></li>\r\n                    </ul>\r\n                </div>\r\n                <div class=\"hospital_link\"></div>\r\n            </div>\r\n            <div class=\"center news_center\">\r\n                <div class=\"site_nav news_nav\">首页 > 医院快讯</div>\r\n                <div class=\"news_control\">\r\n                    <div class=\"sty01\"><a href=\"news.aspx?D=1\" id=\"DateAscOrDesc\">按发布日期升序排列</a></div>\r\n                    <div class=\"sty02\"><a href=\"news.aspx?H=1\" id=\"HitAscOrDesc\">按点击量降序排列</a></div>\r\n\r\n\r\n                    <div class=\"DragBody\"><div class=\"FontSizeChange\">字号调整：</div><div id=\"dragContainer\"><div id=\"dragDiv\"></div></div></div>\r\n                    <div id=\"bdshare\" class=\"bdshare_b\" style=\"line-height: 12px;\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/btn_news01.jpg\" width=\"40\" height=\"40\" alt=\"分享\" title=\"分享\" /><a class=\"shareCount\"></a></div>\r\n                    <script type=\"text/javascript\" id=\"bdshare_js\" data=\"type=button&amp;uid=6713615\"></");
	templateBuilder.Append("script>\r\n                    <script type=\"text/javascript\" id=\"bdshell_js\"></");
	templateBuilder.Append("script>\r\n                    <script type=\"text/javascript\">                                                                                                                                                                document.getElementById(\"bdshell_js\").src = \"http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=\" + Math.ceil(new Date() / 3600000);</");
	templateBuilder.Append("script>\r\n                </div>\r\n                <div class=\"news_list\">\r\n                    <ul>\r\n                        <!--此处为16条新闻列表-->\r\n\r\n                        <li><em>2015-08-13</em><a target=\"_blank\" href=\"news_detail.aspx?id=7166\">坚定信念严修身  立足本职求实效—院党委中心组召开“三严三实”专题教育第一次学习研讨会</a></li>\r\n\r\n                        <li><em>2015-08-13</em><a target=\"_blank\" href=\"news_detail.aspx?id=7165\">心血管病医院：专题学习研讨会 修身律己正作风</a></li>\r\n\r\n                        <li><em>2015-08-13</em><a target=\"_blank\" href=\"news_detail.aspx?id=7164\">中国工程院院士韩雅玲莅临我院指导工作</a></li>\r\n\r\n                        <li><em>2015-08-13</em><a target=\"_blank\" href=\"news_detail.aspx?id=7163\">国内著名专家聚集郑州解“男题”</a></li>\r\n\r\n                        <li><em>2015-08-13</em><a target=\"_blank\" href=\"news_detail.aspx?id=7161\">严格考官培训  提升住培水平</a></li>\r\n\r\n                        <li><em>2015-08-13</em><a target=\"_blank\" href=\"news_detail.aspx?id=7160\">2015级硕士研究生开启求学新征程</a></li>\r\n\r\n                        <li><em>2015-08-13</em><a target=\"_blank\" href=\"news_detail.aspx?id=7158\">我院公共区域无线网络建设一期工程顺利完成</a></li>\r\n\r\n                        <li><em>2015-08-13</em><a target=\"_blank\" href=\"news_detail.aspx?id=7157\">简  讯</a></li>\r\n\r\n                        <li><em>2015-08-13</em><a target=\"_blank\" href=\"news_detail.aspx?id=7152\">副省长、省红十字会会长王艳玲发来贺信—我院成功完成全省第500例捐献者造血干细胞采集</a></li>\r\n\r\n                        <li><em>2015-08-13</em><a target=\"_blank\" href=\"news_detail.aspx?id=7151\">我院传达全省卫生系统纪检监察工作会议精神，要求—认清形势 严格履责 全面落实</a></li>\r\n\r\n                        <li><em>2015-08-13</em><a target=\"_blank\" href=\"news_detail.aspx?id=7149\">瞄准一流促教学  借力协和再跨越</a></li>\r\n\r\n                        <li><em>2015-08-13</em><a target=\"_blank\" href=\"news_detail.aspx?id=7147\">省直团工委考核我院青年文明号创建工作</a></li>\r\n\r\n                        <li><em>2015-08-13</em><a target=\"_blank\" href=\"news_detail.aspx?id=7146\">简  讯</a></li>\r\n\r\n                        <li><em>2015-07-29</em><a target=\"_blank\" href=\"news_detail.aspx?id=7140\">认真落实涉医领域“两个责任” 全面贯彻专项治理工作要求</a></li>\r\n\r\n                        <li><em>2015-07-29</em><a target=\"_blank\" href=\"news_detail.aspx?id=7139\">我院承办省医师协会血液科医师分会年会广获好评</a></li>\r\n\r\n                        <li><em>2015-07-29</em><a target=\"_blank\" href=\"news_detail.aspx?id=7138\">全员岗位培训  提升急救能力</a></li>\r\n\r\n                    </ul>\r\n                </div>\r\n                <div class=\"page_mob02\">\r\n\r\n                    <!-- AspNetPager 7.3.2  Copyright:2003-2010 Webdiyer (www.webdiyer.com) -->\r\n                    <div id=\"anpNews\">\r\n                        <a disabled=\"disabled\" style=\"margin-right:5px;\">首页</a><a disabled=\"disabled\" style=\"margin-right:5px;\">上一页</a><span class=\"cpd\" style=\"margin-right:5px;\">1</span><a href=\"news.aspx?page=2\" style=\"margin-right:5px;\">2</a><a href=\"news.aspx?page=3\" style=\"margin-right:5px;\">3</a><a href=\"news.aspx?page=4\" style=\"margin-right:5px;\">4</a><a href=\"news.aspx?page=5\" style=\"margin-right:5px;\">5</a><a href=\"news.aspx?page=6\" style=\"margin-right:5px;\">6</a><a href=\"news.aspx?page=7\" style=\"margin-right:5px;\">...</a><a href=\"news.aspx?page=2\" style=\"margin-right:5px;\">下一页</a><a href=\"news.aspx?page=67\" style=\"margin-right:5px;\">尾页</a>\r\n                    </div>\r\n                    <!-- AspNetPager 7.3.2  Copyright:2003-2010 Webdiyer (www.webdiyer.com) -->\r\n\r\n\r\n                </div>\r\n            </div>\r\n            <div class=\"right news_right\">\r\n                <img src=\"images/bj_news03.jpg\" width=\"163\" height=\"402\" alt=\"相关文字描述\" title=\"相关文字描述\" />\r\n            </div>\r\n        </div>\r\n        <!--content end-->\r\n        <div class=\"clear\"></div>\r\n        <!--<div class=\"section clearfix\">\r\n          <div class=\"ntitle\">\r\n            <h2>\r\n              <a href=\"javascript:;\">");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("</a>\r\n            </h2>\r\n            ");
	string category_nav = get_category_menu("news_list", category_id);

	templateBuilder.Append("\r\n            <span>当前位置：<a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首页</a> &gt; <a href=\"");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("\">新闻资讯</a>");
	templateBuilder.Append(Utils.ObjectToStr(category_nav));
	templateBuilder.Append("</span>\r\n          </div>\r\n\r\n          <!--右边-->\r\n        <!--<div class=\"list-right\">\r\n          <div class=\"sidebar-box\">\r\n            <div class=\"line30\"></div>\r\n            <h3>资讯类别</h3>\r\n            <ul class=\"navbar\">\r\n              ");
	DataTable categoryList1 = get_category_child_list(channel, 0);

	foreach(DataRow cdr1 in categoryList1.Rows)
	{

	templateBuilder.Append("\r\n              <li>\r\n                <h4><a href=\"");
	templateBuilder.Append(linkurl("news_list",Utils.ObjectToStr(cdr1["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr1["title"]) + "</a></h4>\r\n                <p>\r\n                  ");
	DataTable categoryList2 = get_category_child_list(channel, Utils.StrToInt(Utils.ObjectToStr(cdr1["id"]), 0));

	foreach(DataRow cdr2 in categoryList2.Rows)
	{

	if (Utils.StrToInt(Utils.ObjectToStr(cdr2["id"]), 0)==category_id)
	{

	templateBuilder.Append("\r\n                  <a href=\"");
	templateBuilder.Append(linkurl("news_list",Utils.ObjectToStr(cdr2["id"])));

	templateBuilder.Append("\" class=\"selected\">" + Utils.ObjectToStr(cdr2["title"]) + "</a>\r\n                  ");
	}
	else
	{

	templateBuilder.Append("\r\n                  <a href=\"");
	templateBuilder.Append(linkurl("news_list",Utils.ObjectToStr(cdr2["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr2["title"]) + "</a>\r\n                  ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n                </p>\r\n              </li>\r\n              ");
	}	//end for if

	templateBuilder.Append("\r\n            </ul>\r\n            <div class=\"line20\"></div>\r\n            <h3>推荐资讯</h3>\r\n            <div class=\"focus-list\">\r\n              <ul>\r\n                ");
	DataTable redNews = get_article_list(channel, 0, 4, "status=0 and is_red=1 and img_url<>''");

	foreach(DataRow dr in redNews.Rows)
	{

	templateBuilder.Append("\r\n                <li>\r\n                  <a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">\r\n                    <b><img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" /></b>\r\n                    <span>" + Utils.ObjectToStr(dr["title"]) + "</span>\r\n                  </a>\r\n                </li>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n              </ul>\r\n            </div>\r\n            <div class=\"line10\"></div>\r\n            <h3>人气排行</h3>\r\n            <ul class=\"rank-list\">\r\n              ");
	DataTable hotNews = get_article_list(channel, 0, 10, "status=0", "click desc,id desc");

	int hotdr__loop__id=0;
	foreach(DataRow hotdr in hotNews.Rows)
	{
		hotdr__loop__id++;


	if (hotdr__loop__id==1)
	{

	templateBuilder.Append("\r\n              <li class=\"active\">\r\n              ");
	}
	else
	{

	templateBuilder.Append("\r\n              <li>\r\n              ");
	}	//end for if

	templateBuilder.Append("\r\n                <span>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(hotdr["add_time"])).ToString("MM-dd"));

	templateBuilder.Append("</span>\r\n                <i class=\"num\">");
	templateBuilder.Append(hotdr__loop__id.ToString());

	templateBuilder.Append("</i><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(hotdr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(hotdr["title"]) + "</a>\r\n              </li>\r\n              ");
	}	//end for if

	templateBuilder.Append("\r\n            </ul>\r\n\r\n          </div>\r\n        </div>-->\r\n        <!--/右边-->\r\n        <!--左边-->\r\n        <!--<div class=\"list-auto\">\r\n          <ul class=\"n-list\">\r\n            ");
	DataTable newsList = get_article_list(channel, category_id, pagesize, page, "status=0", out totalcount, out pagelist, "news_list", category_id, "__id__");

	templateBuilder.Append("取得一个分页DataTable\r\n            ");
	foreach(DataRow dr in newsList.Rows)
	{

	templateBuilder.Append("\r\n            <li>\r\n              <h2><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr["title"]) + "</a></h2>\r\n              <div class=\"note\">\r\n                ");
	if (Utils.ObjectToStr(dr["img_url"])!="")
	{

	templateBuilder.Append("\r\n                <b><img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" /></b>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n                <p>" + Utils.ObjectToStr(dr["zhaiyao"]) + "</p>\r\n                <div class=\"info\">\r\n                  <span class=\"time\">" + Utils.ObjectToStr(dr["add_time"]) + "</span>\r\n                  <span class=\"comm\"><script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=view_comment_count&id=" + Utils.ObjectToStr(dr["id"]) + "\"></");
	templateBuilder.Append("script>人评论</span>\r\n                  <span class=\"view\"><script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=view_article_click&id=" + Utils.ObjectToStr(dr["id"]) + "\"></");
	templateBuilder.Append("script>次浏览</span>\r\n                </div>\r\n              </div>\r\n            </li>\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n          </ul>-->\r\n        <!--页码列表-->\r\n        <!--<div class=\"page-box\">\r\n          <div class=\"digg\">");
	templateBuilder.Append(Utils.ObjectToStr(pagelist));
	templateBuilder.Append("</div>\r\n        </div>-->\r\n        <!--/页码列表-->\r\n        <!--</div>-->\r\n        <!--/左边-->\r\n        <!--</div>-->\r\n        <!--Footer-->\r\n        ");

	templateBuilder.Append("<!--<div class=\"footer clearfix\">\r\n  <div class=\"foot-nav\">\r\n    <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首 页</a>|\r\n    <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("content","about"));

	templateBuilder.Append("\">关于我们</a>|\r\n    <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("\">新闻资讯</a>|\r\n    <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods"));

	templateBuilder.Append("\">购物商城</a>|\r\n    <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("video"));

	templateBuilder.Append("\">视频专区</a>|\r\n    <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("down"));

	templateBuilder.Append("\">资源下载</a>|\r\n    <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("photo"));

	templateBuilder.Append("\">图片分享</a>|\r\n    <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("feedback"));

	templateBuilder.Append("\">留言反馈</a>|\r\n    <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("link"));

	templateBuilder.Append("\">友情链接</a>|\r\n    <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("content","contact"));

	templateBuilder.Append("\">联系我们</a>\r\n  </div>\r\n  <div class=\"copyright\">\r\n    <p>版权所有 ");
	templateBuilder.Append(site.company.ToString());

	templateBuilder.Append(" 粤ICP备11064298号 DTcms版本号：");
	templateBuilder.Append(Utils.GetVersion().ToString());

	templateBuilder.Append("</p>\r\n    <p>Copyright &copy; 2009-2015 dtcms.net Corporation,All Rights Reserved.</p>\r\n    <p><script src=\"http://s24.cnzz.com/stat.php?id=1996164&web_id=1996164&show=pic\" language=\"javascript\"></");
	templateBuilder.Append("script></p>\r\n  </div>\r\n</div>-->\r\n\r\n\r\n<!--footer begin-->\r\n\r\n<div class=\"footer\">\r\n    <div class=\"sy_newsp\">\r\n        <h3>省医院报</h3>\r\n        <select name=\"ddlYears\" id=\"ddlYears\" onchange=\"GetTimesByYear(this)\">\r\n            <option value=\"0\">请选择年份</option>\r\n            <option value=\"2015\">2015年</option>\r\n            <option value=\"2014\">2014年</option>\r\n        </select>\r\n        <select class=\"sty01\" name=\"ddlTimes\" id=\"ddlTimes\">\r\n            <option value=\"0\">选择期数</option>\r\n        </select>\r\n        <input class=\"sea_go\" name=\"btnGoNewsPaper\" id=\"btnGoNewsPaper\" onclick=\"GoNewsPaper()\" type=\"button\" />\r\n    </div>\r\n    <div class=\"sy_ysg\">\r\n        <dl>\r\n            <dt><a href=\"history.aspx\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/pic_ysg01.jpg\" width=\"160\" height=\"59\" alt=\"院史馆\" title=\"院史馆\" /></a></dt>\r\n            <dd>\r\n                <a href=\"history.aspx\">百年省医</a>\r\n                <p>Hospital Historical</p>\r\n            </dd>\r\n        </dl>\r\n    </div>\r\n    <div class=\"sy_kslj\">\r\n        <ul>\r\n            <li><a target=\"_blank\" href=\"http://e.t.qq.com/hnsrmyybnly\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/pic_weiboa.jpg\" width=\"67\" height=\"61\" alt=\"省医官方微博\" title=\"省医官方微博\" /><span>省医微博<br /><em>WeiBo</em></span></a></li>\r\n            <li><a target=\"_blank\" href=\"Telephone.aspx\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/pic_tela.jpg\" width=\"67\" height=\"61\" alt=\"电话咨询\" title=\"电话咨询\" /><span>电话咨询<br /><em>PhoneBook</em></span></a></li>\r\n            <li><a target=\"_blank\" href=\"video.aspx\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/pic_videoa.jpg\" width=\"67\" height=\"61\" alt=\"视频\" title=\"视频\" /><span>视频<br /><em>Video</em></span></a></li>\r\n            <li><a target=\"_blank\" href=\"DownLoad.aspx\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/pic_downa.jpg\" width=\"67\" height=\"61\" alt=\"资料下载\" title=\"资料下载\" /><span>资料下载<br /><em>DownLoad</em></span></a></li>\r\n        </ul>\r\n    </div>\r\n    <div class=\"sy_bottom\">\r\n        <h5>主办单位：河南省人民医院  &nbsp; &nbsp;咨询电话：0371-6558 0014&nbsp;&nbsp;6558 0100(非工作时间)&nbsp; &nbsp;门诊预约挂号电话：0371-6558 0070&nbsp; &nbsp;急救中心电话：0371-6558 0120 </h5><a href=\"links.aspx\" target=\"_blank\" id=\"BaseLinks\"><img src=\"images/yqlj_btn.gif\" width=\"56\" height=\"16\" /></a>\r\n        <h6>传真：0371-65964376 &nbsp;&nbsp;地 址：河南省郑州市纬五路7号 &nbsp; &nbsp;版权所有：河南省人民医院&nbsp; &nbsp;豫ICP备11033726号-1 &nbsp; &nbsp;豫卫网审[2011]第116号<em><a href=\"http://www.miraclevision.net/\" target=\"_blank\">技术支持：铭成奇迹</a></em></h6>\r\n    </div>\r\n</div>\r\n<div id=\"Bottom_CountCodeDiv\" style=\"display:none;\">\r\n    <script type=\"text/javascript\">\r\n    var _bdhmProtocol = ((\"https:\" == document.location.protocol) ? \" https://\" : \" http://\");\r\n    document.write(unescape(\"%3Cscript src='\" + _bdhmProtocol + \"hm.baidu.com/h.js%3F4a1d36386e8734a5fd29acec9114818d' type='text/javascript'%3E%3C/script%3E\"));\r\n    document.write(unescape(\"%3Cscript src='\" + _bdhmProtocol + \"hm.baidu.com/h.js%3Fafd2ae44e23648da4e8a81a7b1349be4' type='text/javascript'%3E%3C/script%3E\"));\r\n    </");
	templateBuilder.Append("script>\r\n</div>\r\n<!--footer end-->\r\n<div class=\"page_tr\"></div>");


	templateBuilder.Append("\r\n        <!--/Footer-->\r\n        <!--quick nav start-->\r\n\r\n        <div class=\"QuickNav\">\r\n            <div class=\"quick_nav1\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/pic_qnav01.jpg\" width=\"95\" height=\"48\" alt=\"快速导航\" title=\"快速导航\" /></div>\r\n            <div class=\"quick_nav2\">\r\n                <ul>\r\n                    <li><a href=\"Treatment.aspx\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav001b.png\" width=\"54\" height=\"54\" alt=\"就诊指南\" title=\"就诊指南\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav001.png\" width=\"54\" height=\"54\" alt=\"就诊指南\" title=\"就诊指南\" /><p>就诊指南</p></a></li>\r\n                    <li><a href=\"time.aspx\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav004b.png\" width=\"54\" height=\"54\" alt=\"出诊安排\" title=\"出诊安排\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav004.png\" width=\"54\" height=\"54\" alt=\"出诊安排\" title=\"出诊安排\" /><p>出诊安排</p></a></li>\r\n                    <li><a href=\"distribution.aspx\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav003b.png\" width=\"54\" height=\"54\" alt=\"省医地图\" title=\"省医地图\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav003.png\" width=\"54\" height=\"54\" alt=\"省医地图\" title=\"省医地图\" /><p>省医地图</p></a></li>\r\n                    <li><a href=\"infor_retrieval.aspx\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav008b.png\" width=\"54\" height=\"54\" alt=\"信息查询\" title=\"信息查询\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav008.png\" width=\"54\" height=\"54\" alt=\"信息查询\" title=\"信息查询\" /><p>信息查询</p></a></li>\r\n                    <li><a href=\"visit_nav.aspx\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav002b.png\" width=\"54\" height=\"54\" alt=\"科室导航\" title=\"科室导航\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav002.png\" width=\"54\" height=\"54\" alt=\"科室导航\" title=\"科室导航\" /><p>科室导航</p></a></li>\r\n                    <li><a href=\"http://www.hnsrmyy.net/Treatment_Detail.aspx?id=449\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav005b.png\" width=\"54\" height=\"54\" alt=\"预约挂号\" title=\"预约挂号\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav005.png\" width=\"54\" height=\"54\" alt=\"预约挂号\" title=\"预约挂号\" /><p>预约挂号</p></a></li>\r\n                </ul>\r\n            </div>\r\n        </div>\r\n\r\n        <!--quick nav end-->\r\n    </div></body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
