$(document).ready(function(){$(".app_info").click(function(){var url,dialog;url="index.php?a=about&hdr=0";dialog=$("#dialog");if($("#dialog").length==0){dialog=$('<div id="dialog" style="display:hidden"></div>').appendTo("body")}dialog.load(url,{},function(responseText,textStatus,XMLHttpRequest){dialog.dialog({resizable:false,width:"auto",modal:true})});return false});if($(".mobileadmin").length){$("#admintools").hide();$("#admintoggle").click(function(){$("#admintools").slideToggle(400);return false})}if($(".notiftoggle").length){$("#notif_side").hide();$(".notiftoggle").click(function(){$("#notif_side").slideToggle(400);return false})}$(".make_fav").each(function(){$(this).click(function(){var r_obj=$(this);if(r_obj.children().first().text()==""){return}$.ajax({url:"apps_v/favourite_v.php",type:"post",data:{favid:"",url:r_obj.parent().children().first().attr("href"),reportid:r_obj.children().first().text(),curr_url:"",csrf_token:csrf_token_get()},success:function(set){if(set!=""){var ret,is_fav;ret=eval("("+set+")");is_fav=(ret.isset=="set");r_obj.toggleClass("no_fav",!is_fav);r_obj.toggleClass("is_fav",is_fav);$("#favmenu").html(ret.menu);hovermenu_init("",1)}}})})});if($(".sidebar>.admin").length==0){$(".app_info").attr("style","display: inline !important");$(".nsl").attr("style","display: inline !important")}var $r,report_id=gup(window.location.href,"highlight");if(report_id){$r=$(".report[data-id='"+report_id+"']");if(!$r.visible(true)){$.scrollTo($r,800,{easing:"easeInOutCubic"})}$(".report[data-id='"+report_id+"']").effect("highlight",{color:"#5FC41B"},1500)}});function ShowReport(a){window.location.href=a}function DeleteFolder(a,b){if(confirm(sprintf(mydbr_loc.MYDBR_AMAIN_REM_FOLDER,unescapeHTML(b)))){$.ajax({url:"apps_v/deleteFolder_v.php",type:"post",data:{folderID:a,csrf_token:csrf_token_get()},success:function(c){if(c!=""){alert(c)}else{window.location.reload()}}})}}function DeleteReport(b,a){if(confirm(sprintf(mydbr_loc.MYDBR_AMAIN_REM_REPORT,unescapeHTML(a)))){$.ajax({url:"apps_v/deleteReport.php",type:"post",data:{reportID:b,csrf_token:csrf_token_get()},success:function(c){if(c!=""){alert(c)}else{window.location.reload()}}})}}function unescapeHTML(a){var b=document.createElement("DIV");b.innerHTML=a;if(b.innerText){return b.innerText}return b.textContent}function MoveIt(a,b,c){$.ajax({url:"apps_v/move_v.php",type:"post",data:{move:a,type:b,to:c,csrf_token:csrf_token_get()},success:function(d){if(d!="OK"){alert(d)}else{window.location.href="index.php?m="+c}}})}function embed_url(a,b){if(typeof b=="undefined"){b=true}$.ajax({url:"apps/get_url.php",type:"post",async:b,data:{url:a},success:function(c){$("#topbanner").html("<br>"+c);init_report_elements("#topbanner")}})};