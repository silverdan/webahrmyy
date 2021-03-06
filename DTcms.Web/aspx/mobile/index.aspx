﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.index" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2015/8/18 11:46:56.
		本页面代码由DTcms模板引擎生成于 2015/8/18 11:46:56. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_title));
	templateBuilder.Append("</title>\r\n<meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n<meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n<!--<link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\" type=\"text/css\" />-->\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/common.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/index.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/base.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/jquery.flexslider-min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/jquery-1.7.2.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/imgReady.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/index.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n$(function(){\r\n	$(\".focusbox\").flexslider({\r\n		directionNav: false,\r\n		pauseOnAction: false\r\n	});\r\n});\r\n</");
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


	templateBuilder.Append("\r\n        <!--/Header-->\r\n\r\n        <div class=\"content\">\r\n            <div class=\"left\">\r\n                <div class=\"q_nav\">\r\n                    <h3><span><a href=\"javascript:void(0)\" id=\"ShowNav\">简洁显示</a></span>快速导航</h3>\r\n                    <div id=\"NavSuccinctly\">\r\n                        <dl class=\"cont\">\r\n                            <dt><a href=\"visit_nav.aspx\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_01.png\" width=\"44\" height=\"41\" alt=\"科室导航\" title=\"科室导航\" /></a></dt>\r\n                            <dd class=\"til\"><a href=\"visit_nav.aspx\" target=\"_blank\">科室导航</a></dd>\r\n                            <dd class=\"cont\">按医学部分类，浏览其下辖科室详细内容；顶部模型图操作：移动鼠标至相应部位，系统自动罗列当前部位所涉及科室。</dd>\r\n                            <dd class=\"btn\"><a href=\"visit_nav.aspx\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/btn_01.jpg\" width=\"74\" height=\"23\" alt=\"查看更多\" title=\"查看更多\" /></a></dd>\r\n                        </dl>\r\n                        <dl>\r\n                            <dt><a href=\"time.aspx\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav004.png\" width=\"42\" height=\"42\" alt=\"出诊安排\" title=\"出诊安排\" /></a></dt>\r\n                            <dd class=\"til\"><a href=\"time.aspx\" target=\"_blank\">出诊安排</a></dd>\r\n                            <dd class=\"cont\">对五天工作日内值班情况做精确显示，周末值班信息仅供参考。</dd>\r\n                            <dd class=\"btn\"><a href=\"time.aspx\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/btn_01.jpg\" width=\"74\" height=\"23\" alt=\"查看更多\" title=\"查看更多\" /></a></dd>\r\n                        </dl>\r\n                        <dl style=\"border-bottom:none;\">\r\n                            <dt><a href=\"infor_retrieval.aspx\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav008.png\" width=\"42\" height=\"42\" alt=\"信息查询\" title=\"信息查询\" /></a></dt>\r\n                            <dd class=\"til\"><a href=\"infor_retrieval.aspx\" target=\"_blank\">信息查询</a></dd>\r\n                            <dd class=\"cont\">按查询词条首位字母快速索引相关查询结果，同时支持关键字模糊查询。</dd>\r\n                            <dd class=\"btn\"><a href=\"infor_retrieval.aspx\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/btn_01.jpg\" width=\"74\" height=\"23\" alt=\"查看更多\" title=\"查看更多\" /></a></dd>\r\n                        </dl>\r\n                    </div>\r\n                    <div class=\"quick_nav\">\r\n                        <ul>\r\n                            <li><a href=\"Treatment.aspx\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav001b.png\" width=\"54\" height=\"54\" alt=\"就诊指南\" title=\"就诊指南\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav001.png\" width=\"54\" height=\"54\" alt=\"就诊指南\" title=\"就诊指南\" /><p>就诊指南</p></a></li>\r\n                            <li> <a href=\"visit_nav.aspx\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav002b.png\" width=\"54\" height=\"54\" alt=\"科室导航\" title=\"科室导航\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav002.png\" width=\"54\" height=\"54\" alt=\"科室导航\" title=\"科室导航\" /><p>科室导航</p></a></li>\r\n                            <li><a href=\"distribution.aspx\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav003b.png\" width=\"54\" height=\"54\" alt=\"省医地图\" title=\"省医地图\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav003.png\" width=\"54\" height=\"54\" alt=\"省医地图\" title=\"省医地图\" /><p>省医地图</p></a></li>\r\n                            <li><a href=\"time.aspx\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav004b.png\" width=\"54\" height=\"54\" alt=\"出诊安排\" title=\"出诊安排\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav004.png\" width=\"54\" height=\"54\" alt=\"出诊安排\" title=\"出诊安排\" /><p>出诊安排</p></a></li>\r\n                            <li><a href=\"http://www.hnsrmyy.net/Treatment_Detail.aspx?id=449\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav005b.png\" width=\"54\" height=\"54\" alt=\"预约挂号\" title=\"预约挂号\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav005.png\" width=\"54\" height=\"54\" alt=\"预约挂号\" title=\"预约挂号\" /><p>预约挂号</p></a></li>\r\n                            <li><a href=\"Route.aspx\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav006b.png\" width=\"54\" height=\"54\" alt=\"来院路线\" title=\"来院路线\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav006.png\" width=\"54\" height=\"54\" alt=\"来院路线\" title=\"来院路线\" /><p>来院路线</p></a></li>\r\n                            <li><a href=\"Telephone.aspx\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav007b.png\" width=\"54\" height=\"54\" alt=\"电话查询\" title=\"电话查询\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav007.png\" width=\"54\" height=\"54\" alt=\"电话查询\" title=\"电话查询\" /><p>电话查询</p></a></li>\r\n                            <li><a href=\"infor_retrieval.aspx\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav008b.png\" width=\"54\" height=\"54\" alt=\"信息查询\" title=\"信息查询\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav008.png\" width=\"54\" height=\"54\" alt=\"信息查询\" title=\"信息查询\" /><p>信息查询</p></a></li>\r\n                            <li><a href=\"http://e.weibo.com/hnsrmyybnly\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav009b.png\" width=\"54\" height=\"54\" alt=\"省医微博\" title=\"省医微博\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav009.png\" width=\"54\" height=\"54\" alt=\"医生微博\" title=\"医生微博\" /><p>省医微博</p></a></li>\r\n                            <li><a href=\"Site_Map.aspx\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav010b.png\" width=\"54\" height=\"54\" alt=\"站点地图\" title=\"站点地图\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav010.png\" width=\"54\" height=\"54\" alt=\"站点地图\" title=\"站点地图\" /><p>站点地图</p></a></li>\r\n                            <li><a href=\"message.aspx\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav011b.png\" width=\"54\" height=\"54\" alt=\"在线留言\" title=\"在线留言\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav011.png\" width=\"54\" height=\"54\" alt=\"在线留言\" title=\"在线留言\" /><p>在线留言</p></a></li>\r\n                            <li><a href=\"DownLoad.aspx\" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav014b.png\" width=\"54\" height=\"54\" alt=\"资料下载\" title=\"资料下载\" /><img class=\"NavNone\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ico_nav014a.png\" width=\"54\" height=\"54\" alt=\"资料下载\" title=\"资料下载\" /><p>资料下载</p></a></li>\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n                <div class=\"sy_360\">\r\n                    <h3><span><a href=\"distribution.aspx\" target=\"_blank\"><img src=\"images/btn_02right.png\" width=\"11\" height=\"10\" alt=\"旋转\" title=\"旋转\" /></a></span>三维实景导航</h3>\r\n                    <dl>\r\n                        <dt>\r\n                            <a href=\"distribution.aspx\" target=\"_blank\"><img onmouseover=\"this.src = '");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/pic_360a.jpg'\" onmouseout=\"    this.src = '");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/pic_360.jpg'\" src=\"images/pic_360.jpg\" width=\"96\" height=\"97\" alt=\"360度\" title=\"360度\" /></a>\r\n                        </dt>\r\n                        <dd class=\"til\">使用说明 &nbsp;&nbsp; <img src=\"images/btn_02right.png\" width=\"11\" height=\"10\" alt=\"切换\" /></dd>\r\n                        <dd>通过鼠标横向拖拽，实现角度切换，可点击每个楼层查看详细。</dd>\r\n                    </dl>\r\n                </div>\r\n            </div>\r\n            <div class=\"right\">\r\n                <div class=\"banner\">\r\n                    <div class=\"AdvertBox\">\r\n                        <div><a href=\"javascript:void(0)\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/banner_index.jpg\" id=\"result_banner\" width=\"638\" height=\"302\" alt=\"河南省人民医院\" /></a></div>\r\n                        <div class=\"Advert_time\">还剩<span id=\"Advert_span\">6</span>秒</div>\r\n                    </div>\r\n                    <div id=\"IndexImagesContent\">\r\n                        <ul>\r\n                            <li>\r\n                                <a href=\"http://www.hnsrmyy.net/news_detail.aspx?id=7130\" target=\"_blank\"><img src=\"/uploadfiles/thumb/201507221636128.jpg\" width=\"638\" height=\"302\" alt=\"马保根院长在专题党课上强调：切实践行“三严三实”要求 扎实推进党员干部作风建设\" title=\"马保根院长在专题党课上强调：切实践行“三严三实”要求 扎实推进党员干部作风建设\" /></a>\r\n                                <div class=\"pic_hover\"><p>马保根院长在专题党课上强调：切实践行“三严三实”要求 扎实推进党员干部作风建设</p></div>\r\n                            </li>\r\n\r\n                            <li>\r\n                                <a href=\"http://www.hnsrmyy.net/news_detail.aspx?id=7116\" target=\"_blank\"><img src=\"/uploadfiles/thumb/2015070816152683.jpg\" width=\"638\" height=\"302\" alt=\"在庆祝建党94周年大会上，院党委强调—加强党员干部队伍建设 促进医院科学发展\" title=\"在庆祝建党94周年大会上，院党委强调—加强党员干部队伍建设 促进医院科学发展\" /></a>\r\n                                <div class=\"pic_hover\"><p>在庆祝建党94周年大会上，院党委强调—加强党员干部队伍建设 促进医院科学发展</p></div>\r\n                            </li>\r\n\r\n                            <li>\r\n                                <a href=\"http://www.hnsrmyy.net/news_detail.aspx?id=7114\" target=\"_blank\"><img src=\"/uploadfiles/thumb/2015070816184233.jpg\" width=\"638\" height=\"302\" alt=\"“七一”慰问送真情\" title=\"“七一”慰问送真情\" /></a>\r\n                                <div class=\"pic_hover\"><p>“七一”慰问送真情</p></div>\r\n                            </li>\r\n\r\n                            <li>\r\n                                <a href=\"http://www.hnsrmyy.net/news_detail.aspx?id=7106\" target=\"_blank\"><img src=\"/uploadfiles/thumb/2015070816121135.jpg\" width=\"638\" height=\"302\" alt=\"“河南省人民医院的建设成就令人震撼！”—加拿大皇家医师学会副主席苏珊·布瑞恩一行来院访问\" title=\"“河南省人民医院的建设成就令人震撼！”—加拿大皇家医师学会副主席苏珊·布瑞恩一行来院访问\" /></a>\r\n                                <div class=\"pic_hover\"><p>“河南省人民医院的建设成就令人震撼！”—加拿大皇家医师学会副主席苏珊·布瑞恩一行来院访问</p></div>\r\n                            </li>\r\n\r\n                            <li>\r\n                                <a href=\"javascript:void(0)\" target=\"_blank\"><img src=\"/uploadfiles/thumb/201503242049171.jpg\" width=\"638\" height=\"302\" alt=\"\" title=\"\" /></a>\r\n                                <div class=\"pic_hover\"><p></p></div>\r\n                            </li>\r\n\r\n                            <li>\r\n                                <a href=\"http://www.hnsrmyy.net/news_detail.aspx?id=5269\" target=\"_blank\"><img src=\"/uploadfiles/thumb/2013113008295830.jpg\" width=\"638\" height=\"302\" alt=\"河南省人民医院微信公众平台感谢您的关注！\" title=\"河南省人民医院微信公众平台感谢您的关注！\" /></a>\r\n                                <div class=\"pic_hover\"><p>河南省人民医院微信公众平台感谢您的关注！</p></div>\r\n                            </li>\r\n\r\n                            <li>\r\n                                <a href=\"http://www.hnsrmyy.net/section.aspx\" target=\"_blank\"><img src=\"/uploadfiles/thumb/2014121511404722.jpg\" width=\"638\" height=\"302\" alt=\"培育和践行社会主义核心价值观\" title=\"培育和践行社会主义核心价值观\" /></a>\r\n                                <div class=\"pic_hover\"><p>培育和践行社会主义核心价值观</p></div>\r\n                            </li>\r\n                        </ul>\r\n                    </div>\r\n                    <div id=\"IndexImages\" style=\"top:10px;height:188px;\">\r\n\r\n                        <a href=\"javascript:void(0)\"><img src=\"images/ico_04.gif\" width=\"17\" height=\"17\" alt=\"马保根院长在专题党课上强调：切实践行“三严三实”要求 扎实推进党员干部作风建设\" /> </a>\r\n\r\n                        <a href=\"javascript:void(0)\"><img src=\"images/ico_04b.gif\" width=\"17\" height=\"17\" alt=\"在庆祝建党94周年大会上，院党委强调—加强党员干部队伍建设 促进医院科学发展\" /> </a>\r\n\r\n                        <a href=\"javascript:void(0)\"><img src=\"images/ico_04b.gif\" width=\"17\" height=\"17\" alt=\"“七一”慰问送真情\" /> </a>\r\n\r\n                        <a href=\"javascript:void(0)\"><img src=\"images/ico_04b.gif\" width=\"17\" height=\"17\" alt=\"“河南省人民医院的建设成就令人震撼！”—加拿大皇家医师学会副主席苏珊·布瑞恩一行来院访问\" /> </a>\r\n\r\n                        <a href=\"javascript:void(0)\"><img src=\"images/ico_04b.gif\" width=\"17\" height=\"17\" alt=\"\" /> </a>\r\n\r\n                        <a href=\"javascript:void(0)\"><img src=\"images/ico_04b.gif\" width=\"17\" height=\"17\" alt=\"河南省人民医院微信公众平台感谢您的关注！\" /> </a>\r\n\r\n                        <a href=\"javascript:void(0)\"><img src=\"images/ico_04b.gif\" width=\"17\" height=\"17\" alt=\"培育和践行社会主义核心价值观\" /> </a>\r\n\r\n                    </div>\r\n                    <div id=\"loader\"><img src=\"image/loading.gif\" width=\"16px\" height=\"16px\" /></div>\r\n                </div>\r\n                <div>\r\n                    <!--选项卡 begin-->\r\n                    <div class=\"bd\" id=\"n1Tab\">\r\n                        <div class=\"Tabtitle\">\r\n                            <h3 class=\"nTabs active\"><a href=\"news.aspx\" target=\"_blank\">人医快讯<em>Hospital News</em></a></h3>\r\n                            <h3 class=\"nTabs\"><a href=\"Notice.aspx\" target=\"_blank\">最新公告<em>Bulletin</em></a></h3>\r\n                            <h3 class=\"nTabs\">官方微博<em>WeiBo</em></h3>\r\n                        </div>\r\n                        <div class=\"TabContent\">\r\n                            <div id=\"n1Tab_Content0\" class=\"n1Tab_Content\">\r\n                                <div class=\"sy_news\">\r\n                                    <h4><a href=\"news_detail.aspx?id=7166\" id=\"a_FirstTitle\" target=\"_blank\">坚定信念严修身  立足本职求实效—院党委中心组召开“三...</a></h4>\r\n                                    <p id=\"p_FirstContent\" target=\"_blank\">8月6日下午，围绕“严以修身，加强党性修养，坚定理想信念，把牢思想和行动的‘总开关’”主题及“三查三保”活动，院党委中心组召开“三严三实...</p>\r\n                                </div>\r\n                                <div class=\"sy_pic01\">\r\n                                    <h5><img src=\"pic/pic_02.jpg\" width=\"130\" height=\"81\" alt=\"相关文字介绍\" /></h5>\r\n                                    <p></p>\r\n                                </div>\r\n                                <div class=\"sy_newsr\">\r\n                                    <ul>\r\n\r\n                                        <li><em>2015-08-13</em><a target=\"_blank\" href=\"news_detail.aspx?id=7165\">心血管病医院：专题学习研讨会</a></li>\r\n\r\n                                        <li><em>2015-08-13</em><a target=\"_blank\" href=\"news_detail.aspx?id=7164\">中国工程院院士韩雅玲莅临我院</a></li>\r\n\r\n                                        <li><em>2015-08-13</em><a target=\"_blank\" href=\"news_detail.aspx?id=7163\">国内著名专家聚集郑州解“男题</a></li>\r\n\r\n                                        <li><em>2015-08-13</em><a target=\"_blank\" href=\"news_detail.aspx?id=7161\">严格考官培训  提升住培水平</a></li>\r\n\r\n                                        <li><em>2015-08-13</em><a target=\"_blank\" href=\"news_detail.aspx?id=7160\">2015级硕士研究生开启求学</a></li>\r\n\r\n                                        <li><em>2015-08-13</em><a target=\"_blank\" href=\"news_detail.aspx?id=7158\">我院公共区域无线网络建设一期</a></li>\r\n                                    </ul>\r\n                                </div>\r\n                            </div>\r\n                            <div id=\"n1Tab_Content1\" class=\"n1Tab_Content\">\r\n                                <div class=\"sy_newsr synews2\">\r\n                                    <ul>\r\n\r\n                                        <li><em>2015-08-10</em><a target=\"_blank\" href=\"Notice_detail.aspx?id=7143\">河南省人民医院卫生部四级妇科内镜手术培训基地《手拉手—妇科内镜手术培训班》通知</a></li>\r\n\r\n                                        <li><em>2015-07-22</em><a target=\"_blank\" href=\"Notice_detail.aspx?id=7134\">河南省人民医院招募标准化病人（SP）公告</a></li>\r\n\r\n                                        <li><em>2015-07-14</em><a target=\"_blank\" href=\"Notice_detail.aspx?id=7118\">2015年河南省人民医院临床药师(通科培训)秋季招生公告</a></li>\r\n\r\n                                        <li><em>2015-06-17</em><a target=\"_blank\" href=\"Notice_detail.aspx?id=7080\">2015年端午节假期出诊医师排班表</a></li>\r\n\r\n                                        <li><em>2015-06-06</em><a target=\"_blank\" href=\"Notice_detail.aspx?id=7064\">助产士招聘公示</a></li>\r\n\r\n                                        <li><em>2015-04-30</em><a target=\"_blank\" href=\"Notice_detail.aspx?id=6947\">2015年五一劳动节门诊医师值班表</a></li>\r\n\r\n                                        <li><em>2015-04-29</em><a target=\"_blank\" href=\"Notice_detail.aspx?id=6945\">河南省第二届尿道修复与重建学习班通知</a></li>\r\n\r\n                                        <li><em>2015-04-21</em><a target=\"_blank\" href=\"Notice_detail.aspx?id=6938\">2015年公开招聘专业技术人员（全院）面试方案</a></li>\r\n\r\n                                        <li><em>2015-04-15</em><a target=\"_blank\" href=\"Notice_detail.aspx?id=6932\">关于举办国家级继续医学教育项目“遗传病个体化医学检测新技术进展第二期学习班”二轮通知</a></li>\r\n\r\n                                        <li><em>2015-04-08</em><a target=\"_blank\" href=\"Notice_detail.aspx?id=6919\">关于我院2015年度护士招聘工作推迟的通知</a></li>\r\n\r\n                                    </ul>\r\n                                </div>\r\n                            </div>\r\n                            <div id=\"n1Tab_Content2\" class=\"n1Tab_Content\">\r\n                                <ul class=\"list_top\" id=\"weiboShare\"></ul>\r\n                            </div>\r\n                        </div>\r\n                    </div><!--选项卡 end-->\r\n                </div>\r\n                <div class=\"doctors\">\r\n                    <h3><span><a href=\"visit_nav.aspx\">科室与医生</a></span><span class=\"style1\">Department & Doctors</span></h3>\r\n                    <ul id=\"Offices\">\r\n\r\n                        <li><a target=\"_blank\" href=\"visit_office.aspx?id=24\">泌尿外科</a></li>\r\n\r\n                        <li><a target=\"_blank\" href=\"visit_office.aspx?id=6\">肾病风湿免疫科</a></li>\r\n\r\n                        <li class=\"sty01\"><a target=\"_blank\" href=\"visit_office.aspx?id=57\">神经内科康馨病房</a></li>\r\n\r\n                        <li><a target=\"_blank\" href=\"visit_office.aspx?id=12\">神经内科</a></li>\r\n\r\n                        <li><a target=\"_blank\" href=\"visit_office.aspx?id=13\">消化内科</a></li>\r\n\r\n                        <li class=\"sty01\"><a target=\"_blank\" href=\"visit_office.aspx?id=30\">河南省立眼科医院</a></li>\r\n\r\n                        <li class=\"sty01\"><a target=\"_blank\" href=\"visit_office.aspx?id=2\">过敏反应科（变态反应科）</a></li>\r\n\r\n                        <li><a target=\"_blank\" href=\"visit_office.aspx?id=40\">整形美容外科</a></li>\r\n\r\n                    </ul>\r\n                    <div id=\"doctorsLoader\"><img src=\"image/loading.gif\" width=\"16px\" height=\"16px\" /></div>\r\n                    <span class=\"btn_doc\">\r\n                        <a href=\"javascript:bindRandomOffices()\"><img src=\"images/btn_02right.png\" width=\"11\" height=\"10\" alt=\"切换\" /></a>\r\n                    </span>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!--content end-->\r\n        <div class=\"clear\"></div>\r\n        <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/index.js\"></");
	templateBuilder.Append("script>\r\n        <!--Footer-->\r\n        ");

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


	templateBuilder.Append("\r\n        <!--/Footer-->\r\n    </div></body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
