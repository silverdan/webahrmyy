﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article_show" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2015/8/18 17:21:45.
		本页面代码由DTcms模板引擎生成于 2015/8/18 17:21:45. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	const string channel = "goods";

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
	string category_title = get_category_title(model.category_id,"购物商城");

	templateBuilder.Append("\r\n<title>");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(category_title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n<meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_keywords));
	templateBuilder.Append("\" />\r\n<meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_description));
	templateBuilder.Append("\" />\r\n<link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.jqzoom.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/picture.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/cart.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n$(function(){\r\n	//TAB切换\r\n	tabs('#goodsTabs','click');\r\n	//智能浮动层\r\n	$(\"#tabHead\").smartFloat();\r\n});\r\n</");
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
	templateBuilder.Append("/images/logo.jpg\" width=\"301\" height=\"62\" alt=\"河南省人民医院官方网站\" title=\"河南省人民医院官方网站\" /></a></h1>\r\n    <h2>\r\n        <span class=\"sty_right\"><a href=\"Site_Map.aspx\">站点地图</a> | <a href=\"javascript:void(0)\" onclick=\"addToFavorite()\">加入收藏</a> | <a href=\"FunctionalDepartment.aspx?id=71\" target=\"_blank\">人事管理</a> |  <a href=\"https://61.163.73.190/por/login_psw.csp\" target=\"_blank\">内部OA</a>  </span>\r\n    </h2><input type=\"text\" class=\"search\" name=\"tbSearch\" id=\"tbSearch\" value=\"\" onkeypress=\"if(event.keyCode==13){document.all.btnSearch.click();return false;}\" /><input type=\"button\" class=\"btn_search\" name=\"btnSearch\" id=\"btnSearch\" value=\"搜 索\" onclick=\"SearchWords()\" />\r\n    <ul>\r\n    <li onclick=\"self.location = 'index.html'\" style=\"cursor:pointer;\" class='on'><a href=\"index.html\">首页</a></li>\r\n    <li onclick=\"self.location = 'treatment.html'\" style=\"cursor:pointer;\"><a href=\"treatment.html\">就诊指南</a></li>\r\n    <li onclick=\"self.location='survey.html'\" style=\"cursor:pointer;\"><a href=\"survey.html\">医院概况</a></li>\r\n    <li onclick=\"self.location='scientific.aspx'\" style=\"cursor:pointer;\"><a href=\"scientific.aspx\">科研教学</a></li>\r\n    <li onclick=\"self.location = '");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("'\" style=\"cursor:pointer;\"><a href=\"");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("\">新闻动态</a></li>\r\n    <li onclick=\"self.location='science.aspx'\" style=\"cursor:pointer;\"><a href=\"science.aspx\">健康科普</a></li>\r\n    <li onclick=\"self.location='nursing.aspx'\" style=\"cursor:pointer;\"><a href=\"nursing.aspx\">护理园地</a></li>\r\n    <li onclick=\"self.location='work.aspx'\" style=\"cursor:pointer;\"><a href=\"work.aspx\">党群工作</a></li> \r\n    <li onclick=\"self.location='subject.aspx'\" style=\"cursor:pointer;\" class=\"listr\"><a href=\"subject.aspx\">专题</a></li>\r\n    </ul>\r\n</div>");


	templateBuilder.Append("\r\n<!--/Header-->\r\n\r\n<div class=\"section clearfix\">\r\n  <div class=\"main-wrap\">\r\n    <!--页面左边-->\r\n    <div class=\"left941\">\r\n      <!--商品图片-->\r\n      <div class=\"goods-pic\">\r\n        <!--幻灯片-->\r\n        <div class=\"pic-box\">\r\n          <div class=\"pic-preview\">\r\n            <span class=\"jqzoom\">\r\n              <img />\r\n            </span>\r\n          </div>\r\n          <!--缩略图-->\r\n          <div class=\"pic-scroll\">\r\n            <a class=\"prev\">&lt;</a>\r\n            <a class=\"next\">&gt;</a>\r\n            <div class=\"items\">\r\n              <ul>\r\n                ");
	if (model.albums!=null)
	{

	foreach(DTcms.Model.article_albums modelt in model.albums)
	{

	templateBuilder.Append("\r\n                <li><img bimg=\"");
	templateBuilder.Append(Utils.ObjectToStr(modelt.original_path));
	templateBuilder.Append("\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(modelt.thumb_path));
	templateBuilder.Append("\" onmousemove=\"preview(this);\" /></li>\r\n                ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n              </ul>\r\n            </div>\r\n          </div>\r\n          <!--缩略图-->\r\n        </div>\r\n        <!--/幻灯片-->\r\n      </div>\r\n      <!--/商品图片-->\r\n      \r\n      <!--商品信息-->\r\n      <div class=\"goods-spec\">\r\n        <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=view_article_click&id=");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("&click=1&hide=1\"></");
	templateBuilder.Append("script>\r\n        <h1>");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("</h1>\r\n        <p class=\"subtitle\">" + Utils.ObjectToStr(model.fields["sub_title"]) + "</p>\r\n        <div class=\"spec-box\">\r\n          <dl>\r\n            <dt>货号</dt>\r\n            <dd id=\"commodityGoodsNo\">" + Utils.ObjectToStr(model.fields["goods_no"]) + "</dd>\r\n          </dl>\r\n          <dl>\r\n            <dt>市场价</dt>\r\n            <dd><s id=\"commodityMarketPrice\">¥" + Utils.ObjectToStr(model.fields["market_price"]) + "</s></dd>\r\n          </dl>\r\n          <dl>\r\n            <dt>销售价</dt>\r\n            <dd><em id=\"commoditySellPrice\" class=\"price\">¥" + Utils.ObjectToStr(model.fields["sell_price"]) + "</em></dd>\r\n          </dl>\r\n        </div>\r\n        \r\n        <div class=\"spec-box line\">\r\n          <dl>\r\n            <dt>购买数量</dt>\r\n            <dd>\r\n              <div class=\"stock-box\">\r\n                <input id=\"commodityArticleId\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("\" />\r\n                <input id=\"commodityGoodsId\" type=\"hidden\" value=\"0\" />\r\n                <input id=\"commoditySelectNum\" type=\"text\" maxlength=\"9\" value=\"1\" maxValue=\"" + Utils.ObjectToStr(model.fields["stock_quantity"]) + "\" onkeydown=\"return checkNumber(event);\">\r\n                <a class=\"add\" onclick=\"addCartNum(1);\">+</a>\r\n                <a class=\"remove\" onclick=\"addCartNum(-1);\">-</a>\r\n              </div>\r\n              <span class=\"stock-txt\">\r\n                库存<em id=\"commodityStockNum\">" + Utils.ObjectToStr(model.fields["stock_quantity"]) + "</em>件\r\n              </span>\r\n            </dd>\r\n          </dl>\r\n          <dl>\r\n            <dd>\r\n              <div id=\"buyButton\" class=\"btn-buy\">\r\n                <button class=\"buy\" onclick=\"cartAdd(this,'");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("',1,'");
	templateBuilder.Append(linkurl("shopping"));

	templateBuilder.Append("');\">立即购买</button>\r\n                <button class=\"add\" onclick=\"cartAdd(this,'");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("',0,'");
	templateBuilder.Append(linkurl("cart"));

	templateBuilder.Append("');\">加入购物车</button>\r\n              </div>\r\n            </dd>\r\n          </dl>\r\n        </div>\r\n         \r\n        <div class=\"spec-box line\">\r\n          <dl>\r\n            <dd>\r\n              <!--分享-->\r\n              ");

	templateBuilder.Append("  <!-- JiaThis Button BEGIN --> \r\n  <div id=\"ckepop\">\r\n      <span class=\"jiathis_txt\">分享到：</span>\r\n      <a class=\"jiathis_button_tqq\">腾讯</a>\r\n      <a class=\"jiathis_button_tsina\">新浪</a>\r\n      <a class=\"jiathis_button_renren\">人人网</a>\r\n      <a class=\"jiathis_button_email\">邮件</a>\r\n      <a class=\"jiathis_button_fav\">收藏夹</a>\r\n      <a class=\"jiathis_button_copy\">复制网址</a> \r\n      <a href=\"http://www.jiathis.com/share/?uid=90225\" class=\"jiathis jiathis_txt jiathis_separator jtico jtico_jiathis\" target=\"_blank\">更多</a> \r\n      <a class=\"jiathis_counter_style\"></a> \r\n  </div> \r\n  <!-- JiaThis Button END -->\r\n  <script type=\"text/javascript\">var jiathis_config={data_track_clickback:true};</");
	templateBuilder.Append("script> \r\n  <script type=\"text/javascript\" src=\"http://v2.jiathis.com/code/jia.js?uid=1336353133859589\" charset=\"utf-8\"></");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n              <!--/分享-->\r\n            </dd>\r\n          </dl>\r\n        </div>\r\n      </div>\r\n      <!--商品信息-->\r\n      <div class=\"line20\"></div>\r\n      \r\n      <!--商品介绍-->\r\n      <div id=\"goodsTabs\" class=\"goods-tab\">\r\n        <!--选项卡-->\r\n        <div id=\"tabHead\" class=\"tab-head\">\r\n          <ul>\r\n            <li>\r\n              <a class=\"selected\" href=\"javascript:;\">商品介绍</a>\r\n            </li>\r\n            <li>\r\n              <a href=\"javascript:;\">商品评论</a>\r\n            </li>\r\n          </ul>\r\n        </div>\r\n        <!--/选项卡-->\r\n        \r\n        <!--选项内容-->\r\n        <div class=\"tab-content entry\" style=\"display:block\">\r\n          ");
	templateBuilder.Append(Utils.ObjectToStr(model.content));
	templateBuilder.Append("\r\n        </div>\r\n        <div class=\"tab-content\">\r\n          <!--用户评论-->\r\n          ");
	if (model.is_msg==1)
	{


	int comment_count = get_comment_count(model.id, "is_lock=0");

	templateBuilder.Append("<!--取得评论总数-->\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/validate.css\" />\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/pagination.css\" />\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/ui-dialog.css\" />\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.form.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/dialog-plus-min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/Validform_v5.3.2_min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.pagination.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\">\r\n      $(function(){\r\n        //初始化评论列表\r\n        pageInitComment();\r\n        //初始化发表评论表单\r\n        AjaxInitForm('#comment_form', '#btnSubmit', 1, '', pageInitComment);\r\n      });\r\n      //初始化评论列表\r\n      function pageInitComment(){\r\n	AjaxPageList('#comment_list', '#pagination', 10, ");
	templateBuilder.Append(Utils.ObjectToStr(comment_count));
	templateBuilder.Append(", '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=comment_list&article_id=");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("', '");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/user-avatar.png');\r\n      }\r\n    </");
	templateBuilder.Append("script>\r\n    <div class=\"comment-add\">\r\n      <form id=\"comment_form\" name=\"comment_form\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=comment_add&article_id=");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("\">\r\n        <div class=\"editor\">\r\n          <textarea id=\"txtContent\" name=\"txtContent\" class=\"input\" datatype=\"*\" sucmsg=\" \"></textarea>\r\n        </div>\r\n        <div class=\"subcon\">\r\n          <input id=\"btnSubmit\" name=\"submit\" class=\"btn right\" type=\"submit\" value=\"提交评论（Ctrl+Enter）\" />\r\n          <span>验证码：</span>\r\n          <input id=\"txtCode\" name=\"txtCode\" type=\"text\" class=\"input small\" datatype=\"s4-4\" errormsg=\"请填写4位验证码\" sucmsg=\" \" onkeydown=\"if(event.ctrlKey&&event.keyCode==13){document.getElementById('btnSubmit').click();return false};\"  />\r\n          <a href=\"javascript:;\" onclick=\"ToggleCode(this, '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/verify_code.ashx');return false;\"><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/verify_code.ashx\" width=\"80\" height=\"22\" style=\"vertical-align:middle;\" /> 看不清楚？</a>\r\n        </div>\r\n      </form>\r\n    </div>\r\n    \r\n    <div class=\"comment-box\">\r\n      <ol id=\"comment_list\" class=\"comment-list\"></ol>\r\n    </div>\r\n    <!--放置页码-->\r\n    <div class=\"page-box\" style=\"margin-left:-8px;\">\r\n      <div id=\"pagination\" class=\"digg\"></div>\r\n    </div>\r\n    <div class=\"line10\"></div>\r\n    <!--/放置页码-->");


	}	//end for if

	templateBuilder.Append("\r\n          <!--用户评论-->\r\n        </div>\r\n        <!--选项内容-->\r\n      </div>\r\n      <!--/商品介绍-->\r\n    </div>\r\n    <!--页面左边-->\r\n    \r\n    <!--页面右边-->\r\n    <div class=\"left211\">\r\n      <div class=\"sidebar-box\">\r\n        <div class=\"line30\"></div>\r\n        <h3>推荐商品</h3>\r\n        <div class=\"red-list\">\r\n          <ul>\r\n            ");
	DataTable redPhoto = get_article_list(channel, 0, 4, "status=0 and is_red=1");

	foreach(DataRow dr in redPhoto.Rows)
	{

	templateBuilder.Append("\r\n            <li>\r\n              <a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">\r\n                <div class=\"img-box\">\r\n                  <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" />\r\n                </div>\r\n                <span>" + Utils.ObjectToStr(dr["title"]) + "</span>\r\n              </a>\r\n            </li>\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n          </ul>\r\n        </div>\r\n        <div class=\"line10\"></div>\r\n        <h3>人气排行</h3>\r\n        <ul class=\"rank-list\">\r\n          ");
	DataTable hotGoods = get_article_list(channel, 0, 10, "status=0", "click desc,id desc");

	int hotdr__loop__id=0;
	foreach(DataRow hotdr in hotGoods.Rows)
	{
		hotdr__loop__id++;


	if (hotdr__loop__id==1)
	{

	templateBuilder.Append("\r\n          <li class=\"active\">\r\n          ");
	}
	else
	{

	templateBuilder.Append("\r\n          <li>\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n            <span>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(hotdr["add_time"])).ToString("MM-dd"));

	templateBuilder.Append("</span>\r\n            <i class=\"num\">");
	templateBuilder.Append(hotdr__loop__id.ToString());

	templateBuilder.Append("</i><a href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(hotdr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(hotdr["title"]) + "</a>\r\n          </li>\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n      </div>\r\n    </div>\r\n    <!--/页面右边-->\r\n  \r\n  </div>\r\n</div>\r\n\r\n<!--Footer-->\r\n");

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


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>