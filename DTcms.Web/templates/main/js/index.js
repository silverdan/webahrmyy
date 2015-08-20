var loaderHideTime = undefined, loaderHideTimeNum=0;
function nTabs(tabObj, obj) {
	var tabList = document.getElementById(tabObj).getElementsByTagName("h3");
	for (i = 0; i < tabList.length; i++) {
		var tabT = document.getElementById(tabObj + "_Title" + i);
		var tabC = document.getElementById(tabObj + "_Content" + i);
		if (tabList[i].id == obj.id) {
			if (tabT != null)
				tabT.className = "active";
			if (tabC != null){
	tabC.style.display = "block";
			}
		} else {
			if (tabT != null)
				tabT.className = "normal";
			if (tabC != null){
				tabC.style.display = "none";
			}
		}
	}
}
function addToFavorite(url) {
	var a = url;
	var b = document.title;
	document.all ? window.external.AddFavorite(a, b) : window.sidebar ? window.sidebar.addPanel(b, a, "") : 0;
}
function bindRandomOffices() {
	$.ajax({
		type: "get",
		contentType: "application/json; charset=utf-8",
		dataType: "json",
		url: "DoPostBack/GetRandomOffices.ashx",
		beforeSend: function() {
			$("div#doctorsLoader").fadeIn(function() {
				$("#Offices").empty();
			});
		},
		complete: function() {
		},
		error: function(XMLHttpRequest, textStatus, errorThrown) {
		},
		success: function(msg) {
			$("div#doctorsLoader").fadeOut(function() {
				for (var i = 0; i < msg.length; i++) {
					$("#Offices").append("<li " + (msg[i].OfficeName.replace("(", "").replace(")", "").length > 7 ? "class=\"sty01\"" : "") + "><a  target=\"_blank\" href=\"visit_office.aspx?id=" + msg[i].OID + "\">" + msg[i].OfficeName + "</a></li>");
				}
			});
		}
	});
}
function SearchWords() {
	if ($("#tbSearch").val() != "") {
		window.location.href = "Search.aspx?wd=" + $("#tbSearch").val();
	}
	else {
		alert("搜索内容部能为空！");
	}

}
function GetTimesByYear(obj)
{
	var year=obj.options[obj.selectedIndex].value;
	$ddlTimes=$("#ddlTimes");
	if(year!="0")
	{
	$.ajax({
            type: "get",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            url: "DoPostBack/GetTimesByYear.ashx",
            data: "year=" + year,
            beforeSend: function() {
               $ddlTimes.html("<option value=\"0\">选择期数</option>");
            },
            complete: function() { 
            },
            error: function(XMLHttpRequest, textStatus, errorThrown) { 
            },
            success: function(msg){
                for (var i = 0; i < msg.length; i++) {
				$ddlTimes.append("<option value=\""+msg[i].times+"\">"+msg[i].times+"期</option>");             
                }
            }       
        });		
	}
	else
	$("#ddlTimes").html("<option value=\"0\">选择期数</option>");		
}
$("a#ShowNav").click(function() {
	$("div#NavSuccinctly").fadeToggle(function() {
		$("a#ShowNav").text() == "简洁显示" ? $("a#ShowNav").text("全部显示") : $("a#ShowNav").text("简洁显示");
	});
});
function GoNewsPaper()
{
	if($("#ddlYears").val()!=0&&$("#ddlTimes").val()!=0)
	{
		var str="NewsPaper.aspx?year="+$("#ddlYears").val()+"&t="+$("#ddlTimes").val();
          window.location.href=str;
	}
}
function loaderHide() {
//	var AdvertBoxImg = new Image();
//	AdvertBoxImg.src = $("img#result_banner").attr("src");
//	if (AdvertBoxImg.complete) {
//		$("#loader").hide();
//		$("#loader").css("z-index", "8");
//		window.clearTimeout(loaderHideTime);
//	}
//	else {	
//loaderHideTime = window.setTimeout(loaderHide, 100);	
//		loaderHideTimeNum++;
//		if (loaderHideTimeNum == 50) {
//			$("#loader").hide();
//			window.clearTimeout(loaderHideTime);
//			$("#loader").css("z-index", "8");
//			$('div.AdvertBox').animate({ "height": "0px", "z-index": "-1" }, 'slow');			
//		}
//
	//	}
	imgReady($("img#result_banner").attr("src"), function() {
	    $("#loader").hide();
		$("#loader").css("z-index", "8");
	});
}
loaderHide();
$(function() {
	$("div.Advert_time").show("fast");
	var b = setInterval(function() { bindRandomOffices(); }, 20000);
	var IndexNum = 0, delay = 5000, interval = undefined, loader = undefined, IndexImagesLength = $("div#IndexImagesContent ul").children("li").length, LastNum = 0,IsFadeFinish=true;
	$("div#IndexImages a").click(function() {
		LastNum = IndexNum - 1;
		IndexNum = $("div#IndexImages a").index($(this));
		changeIndexImageStop();
		IndexImagesPlay();
	});
	$("div.AdvertBox").click(function() {
		IndexImagesPlay();
		$('div.AdvertBox').animate({ "height": "0px", "z-index": "-1" }, 'slow', function() {
		  $(this).hide();
		});
		clearTimeout($i);
	});
	$("div.Tabtitle h3.nTabs").mousemove(function(){
		if(IsFadeFinish)
		{
			$this=$(this);
			if(!$this.hasClass("active"))
			{
				IsFadeFinish=false;
				$("div.Tabtitle h3.nTabs").removeClass("active");
				$this.addClass("active");
				$("div.n1Tab_Content").hide();
				$index=$("div.Tabtitle h3.nTabs").index($this);				
				$("div#n1Tab_Content"+$index).fadeIn("slow",function(){
					IsFadeFinish=true;
				});
			}
		}
	});
	$("div#IndexImagesContent").hover(function() {
		changeIndexImageStop();
	}, function() {
		interval = window.setTimeout(IndexImagesPlay, delay);
	});
	function IndexImagesPlay() {
		window.clearTimeout(interval);
		$("#loader").show();
		changeIndexImage();
		interval = window.setTimeout(IndexImagesPlay, delay);
	}
	function changeIndexImage() {
		$("div#IndexImages a").find("img").attr({ src: "/templates/main/images/ico_04b.gif" });
		$("div#IndexImages a").find("img").eq(IndexNum).attr({ src: "/templates/main/images/ico_04.gif" });
		if (IndexNum != LastNum) {
			$last = $("div#IndexImagesContent").children("ul").children("li").eq(LastNum);
			$last.hide();
			$last.find(".pic_hover").stop().css({ bottom: "-30px" });
		}
		$obj = $("div#IndexImagesContent").children("ul").children("li").eq(IndexNum);
		//		var obj = new Image();
		//		obj.src = $obj.find("img").attr("src");
		//		if (obj.complete) {
		//			
		//window.clearTimeout(loader);
		$("#loader").hide();
		$obj.fadeIn("slow");
		$obj.find(".pic_hover").stop().animate({ bottom: 0 }, 600);
		LastNum = IndexNum;
		IndexNum++;
		if (IndexNum == IndexImagesLength) {
			IndexNum = 0;
		}
		//		}
		//		else {
		//		  loader=setTimeout(changeIndexImage, 1800);
		//		}

	}
	function changeIndexImageStop() {
		window.clearTimeout(interval);
		interval = undefined;
	}
	function lxfEndtime() {
		$t = $("#Advert_span").html();
		if ($t != 0) {
			$('#Advert_span').html(($t - 1));
			$i = setTimeout(lxfEndtime, 1000);
		} else {
			IndexImagesPlay();
			$('div.AdvertBox').animate({ "height": "0px", "z-index": "-1" }, 'slow', function() {
				$(this).hide();
			});
			clearTimeout($i);
		}
	}
	lxfEndtime();

});
window.onload = function() {
$("ul#weiboShare").html("<div class=\"weibo_sina\"><iframe width=\"310\" height=\"150\" class=\"share_self\"  frameborder=\"0\" scrolling=\"no\" src=\"http://widget.weibo.com/weiboshow/index.php?language=&width=310&height=150&fansRow=1&ptype=1&speed=0&skin=1&isTitle=1&noborder=1&isWeibo=0&isFans=1&uid=2365247177&verifier=23b91096&dpc=1\"></iframe></div><div class=\"weibo_rmw\"><iframe width=\"310\" height=\"150\" frameborder=\"0\" scrolling=\"no\" src=\"http://t.people.com.cn:80/show.action?userId=365326&width=310&height=150&isBorder=true&isTitle=true&isWeibo=true&isFocuson=true&isFans=false&colors=D2D2D2,464646,C8C8C8,53AAFE,F3F3F3\"></iframe></div>");
};