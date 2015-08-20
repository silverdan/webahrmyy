<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2015/8/20 17:24:46.
		本页面代码由DTcms模板引擎生成于 2015/8/20 17:24:46. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	const string channel = "down";

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>资源下载 - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n<meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n<meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n<link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body>\r\n<!--Header-->\r\n");

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
	templateBuilder.Append("/images/logo.jpg\" width=\"301\" height=\"62\" alt=\"安化县民医院官方网站\" title=\"安化县人民医院官方网站\" /></a></h1>\r\n    <h2>\r\n        <span class=\"sty_right\"><a href=\"Site_Map.aspx\">站点地图</a> | <a href=\"javascript:void(0)\" onclick=\"addToFavorite()\">加入收藏</a> | <a href=\"FunctionalDepartment.aspx?id=71\" target=\"_blank\">人事管理</a> |  <a href=\"https://61.163.73.190/por/login_psw.csp\" target=\"_blank\">内部OA</a>  </span>\r\n    </h2><input type=\"text\" class=\"search\" name=\"tbSearch\" id=\"tbSearch\" value=\"\" onkeypress=\"if(event.keyCode==13){document.all.btnSearch.click();return false;}\" /><input type=\"button\" class=\"btn_search\" name=\"btnSearch\" id=\"btnSearch\" value=\"搜 索\" onclick=\"SearchWords()\" />\r\n    <ul>\r\n    <li onclick=\"self.location ='");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("'\" style=\"cursor:pointer;\" class='on'><a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首页</a></li>\r\n    <li onclick=\"self.location ='");
	templateBuilder.Append(linkurl("treatment_list",64));

	templateBuilder.Append("'\" style=\"cursor:pointer;\"><a href=\"");
	templateBuilder.Append(linkurl("treatment_list",64));

	templateBuilder.Append("\">就诊指南</a></li>\r\n    <li onclick=\"self.location='");
	templateBuilder.Append(linkurl("survey_show",154));

	templateBuilder.Append("'\" style=\"cursor:pointer;\"><a href=\"");
	templateBuilder.Append(linkurl("survey_show",154));

	templateBuilder.Append("\">医院概况</a></li>\r\n    <li onclick=\"self.location='");
	templateBuilder.Append(linkurl("scientific"));

	templateBuilder.Append("'\" style=\"cursor:pointer;\"><a href=\"");
	templateBuilder.Append(linkurl("scientific"));

	templateBuilder.Append("\">科研教学</a></li>\r\n    <li onclick=\"self.location = '");
	templateBuilder.Append(linkurl("news_list",60));

	templateBuilder.Append("'\" style=\"cursor:pointer;\"><a href=\"");
	templateBuilder.Append(linkurl("news_list",60));

	templateBuilder.Append("\">新闻动态</a></li>\r\n    <li onclick=\"self.location='");
	templateBuilder.Append(linkurl("science"));

	templateBuilder.Append("'\" style=\"cursor:pointer;\"><a href=\"");
	templateBuilder.Append(linkurl("science"));

	templateBuilder.Append("\">健康科普</a></li>\r\n    <li onclick=\"self.location='");
	templateBuilder.Append(linkurl("nursing"));

	templateBuilder.Append("'\" style=\"cursor:pointer;\"><a href=\"");
	templateBuilder.Append(linkurl("nursing"));

	templateBuilder.Append("\">护理园地</a></li>\r\n    <li onclick=\"self.location='");
	templateBuilder.Append(linkurl("work"));

	templateBuilder.Append("'\" style=\"cursor:pointer;\"><a href=\"");
	templateBuilder.Append(linkurl("work"));

	templateBuilder.Append("\">党群工作</a></li> \r\n    <li onclick=\"self.location='");
	templateBuilder.Append(linkurl("subject_list"));

	templateBuilder.Append("'\" style=\"cursor:pointer;\" class=\"listr\"><a href=\"");
	templateBuilder.Append(linkurl("subject_list"));

	templateBuilder.Append("\">专题</a></li>\r\n    </ul>\r\n</div>");


	templateBuilder.Append("\r\n<!--/Header-->\r\n\r\n<div class=\"section clearfix\">\r\n  <div class=\"line15\"></div>\r\n  <div class=\"wrapper clearfix\">\r\n    <div class=\"photo-list ilist\">\r\n      <ul>\r\n        ");
	DataTable redList = get_article_list(channel, 0, 6, "status=0 and is_red=1");

	int reddr__loop__id=0;
	foreach(DataRow reddr in redList.Rows)
	{
		reddr__loop__id++;


	templateBuilder.Append("\r\n        <li class=\"col-");
	templateBuilder.Append(Utils.ObjectToStr(reddr__loop__id));
	templateBuilder.Append("\">\r\n          <a title=\"" + Utils.ObjectToStr(reddr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("down_show",Utils.ObjectToStr(reddr["id"])));

	templateBuilder.Append("\">\r\n            <span class=\"abs-bg\"></span>\r\n            <span class=\"txt1\">" + Utils.ObjectToStr(reddr["title"]) + "</span>\r\n            <span class=\"txt2\">\r\n              <p>" + Utils.ObjectToStr(reddr["add_time"]) + "</p>\r\n            </span>\r\n            <img src=\"" + Utils.ObjectToStr(reddr["img_url"]) + "\" />\r\n          </a>\r\n        </li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n      </ul>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<!--分类资源-->\r\n");
	DataTable categoryList = get_category_child_list(channel,0);

	foreach(DataRow cdr in categoryList.Rows)
	{

	templateBuilder.Append("\r\n<div class=\"section clearfix\">\r\n  <div class=\"ntitle\">\r\n    <h2>\r\n      <a href=\"");
	templateBuilder.Append(linkurl("down_list",Utils.ObjectToStr(cdr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr["title"]) + "<em></em></a>\r\n    </h2>\r\n    <p>\r\n      <!--小类-->\r\n      ");
	DataTable bcategoryList = get_category_child_list(channel,Utils.StrToInt(Utils.ObjectToStr(cdr["id"]), 0));

	int cdr2__loop__id=0;
	foreach(DataRow cdr2 in bcategoryList.Rows)
	{
		cdr2__loop__id++;


	if (cdr2__loop__id==1)
	{

	templateBuilder.Append("\r\n      <a class=\"no-bg\" href=\"");
	templateBuilder.Append(linkurl("down_list",Utils.ObjectToStr(cdr2["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr2["title"]) + "</a>\r\n      ");
	}
	else
	{

	templateBuilder.Append("\r\n      <a href=\"");
	templateBuilder.Append(linkurl("down_list",Utils.ObjectToStr(cdr2["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr2["title"]) + "</a>\r\n      ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n      <!--/小类-->\r\n    </p>\r\n  </div>\r\n  <div class=\"wrapper clearfix\">\r\n    <ul class=\"img-list high ilist\">\r\n      ");
	DataTable dt = get_article_list(channel, Utils.StrToInt(Utils.ObjectToStr(cdr["id"]), 0), 5, "status=0");

	foreach(DataRow dr1 in dt.Rows)
	{

	templateBuilder.Append("\r\n      <li>\r\n        <a title=\"" + Utils.ObjectToStr(dr1["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("down_show",Utils.ObjectToStr(dr1["id"])));

	templateBuilder.Append("\">\r\n          <div class=\"img-box\">\r\n            <img src=\"" + Utils.ObjectToStr(dr1["img_url"]) + "\" />\r\n          </div>\r\n          <div class=\"info\">\r\n            <h3>" + Utils.ObjectToStr(dr1["title"]) + "</h3>\r\n            <span>\r\n              <i>浏览：" + Utils.ObjectToStr(dr1["click"]) + "次</i>\r\n              <p>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(dr1["add_time"])).ToString("yyyy-MM-dd"));

	templateBuilder.Append("</p>\r\n            </span>\r\n          </div>\r\n        </a>\r\n      </li>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n    </ul>\r\n  </div>\r\n</div>\r\n");
	}	//end for if

	templateBuilder.Append("\r\n<!--/分类资源-->\r\n\r\n<!--Footer-->\r\n");

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
	templateBuilder.Append("script></p>\r\n  </div>\r\n</div>-->\r\n\r\n\r\n<!--footer begin-->\r\n\r\n<div class=\"footer\">\r\n    <div class=\"sy_newsp\">\r\n        <h3>人医院报</h3>\r\n        <select name=\"ddlYears\" id=\"ddlYears\" onchange=\"GetTimesByYear(this)\">\r\n            <option value=\"0\">请选择年份</option>\r\n            <option value=\"2015\">2015年</option>\r\n            <option value=\"2014\">2014年</option>\r\n        </select>\r\n        <select class=\"sty01\" name=\"ddlTimes\" id=\"ddlTimes\">\r\n            <option value=\"0\">选择期数</option>\r\n        </select>\r\n        <input class=\"sea_go\" name=\"btnGoNewsPaper\" id=\"btnGoNewsPaper\" onclick=\"GoNewsPaper()\" type=\"button\" />\r\n    </div>\r\n    <div class=\"sy_ysg\">\r\n        <dl>\r\n            <dt><a href=\"history.aspx\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/pic_ysg01.jpg\" width=\"160\" height=\"59\" alt=\"院史馆\" title=\"院史馆\" /></a></dt>\r\n            <dd>\r\n                <a href=\"history.aspx\">人医历史</a>\r\n                <p>Hospital Historical</p>\r\n            </dd>\r\n        </dl>\r\n    </div>\r\n    <div class=\"sy_kslj\">\r\n        <ul>\r\n            <li><a target=\"_blank\" href=\"http://e.t.qq.com/hnsrmyybnly\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/pic_weiboa.jpg\" width=\"67\" height=\"61\" alt=\"人医官方微博\" title=\"人医官方微博\" /><span>人医微博<br /><em>WeiBo</em></span></a></li>\r\n            <li><a target=\"_blank\" href=\"Telephone.aspx\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/pic_tela.jpg\" width=\"67\" height=\"61\" alt=\"电话咨询\" title=\"电话咨询\" /><span>电话咨询<br /><em>PhoneBook</em></span></a></li>\r\n            <li><a target=\"_blank\" href=\"video.aspx\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/pic_videoa.jpg\" width=\"67\" height=\"61\" alt=\"视频\" title=\"视频\" /><span>视频<br /><em>Video</em></span></a></li>\r\n            <li><a target=\"_blank\" href=\"DownLoad.aspx\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/pic_downa.jpg\" width=\"67\" height=\"61\" alt=\"资料下载\" title=\"资料下载\" /><span>资料下载<br /><em>DownLoad</em></span></a></li>\r\n        </ul>\r\n    </div>\r\n    <div class=\"sy_bottom\">\r\n        <h5>主办单位：安化县人民医院  &nbsp; &nbsp;咨询电话：0737-7298 000&nbsp;&nbsp;&nbsp; &nbsp;门诊预约挂号电话： &nbsp; &nbsp;急救中心电话：7298120 </h5><a href=\"links.aspx\" target=\"_blank\" id=\"BaseLinks\"><img src=\"images/yqlj_btn.gif\" width=\"56\" height=\"16\" /></a>\r\n        <h6>传真：0737 7298000 &nbsp;&nbsp;地 址：安化县东坪镇迎春路7号 &nbsp; &nbsp;版权所有：安化县人民医院&nbsp; &nbsp;湘ICP备10202106号 &nbsp; &nbsp;<em><a href=\"http://www.miraclevision.net/\" target=\"_blank\">技术支持：长沙三替信息科技有限公司</a></em></h6>\r\n    </div>\r\n</div>\r\n<div id=\"Bottom_CountCodeDiv\" style=\"display:none;\">\r\n    <script type=\"text/javascript\">\r\n    var _bdhmProtocol = ((\"https:\" == document.location.protocol) ? \" https://\" : \" http://\");\r\n    document.write(unescape(\"%3Cscript src='\" + _bdhmProtocol + \"hm.baidu.com/h.js%3F4a1d36386e8734a5fd29acec9114818d' type='text/javascript'%3E%3C/script%3E\"));\r\n    document.write(unescape(\"%3Cscript src='\" + _bdhmProtocol + \"hm.baidu.com/h.js%3Fafd2ae44e23648da4e8a81a7b1349be4' type='text/javascript'%3E%3C/script%3E\"));\r\n    </");
	templateBuilder.Append("script>\r\n</div>\r\n<!--footer end-->\r\n<div class=\"page_tr\"></div>");


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
