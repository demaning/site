%%include_template "templates/ext_modules_custom_fields.tpl"%%
%%include_language "templates/lang/news.lng"%%
%%include_template "templates/adv_places_common.tpl"%%

##-- ****************** Styles for items ********************************** --##

##-- ================== Styles for small block ============================ --##

<!--#set var="small_fdate" value="<div class="small_news_item_date">##fdate##&nbsp;</div>"-->
<!--#set var="small_ftime" value="<div class="small_news_item_time">##ftime##&nbsp;</div>"-->
<!--#set var="small_header" value="##header##&nbsp;"-->
<!--#set var="small_announce" value="##announce##&nbsp;"-->

##-- ================== Styles for item details =========================== --##

<!--#set var="itemD_fdate" value="<b>##fdate##</b>"-->

<!--#set var="itemD_ftime" value="<b>##ftime##</b>"-->

<!--#set var="itemD_header" value="##header##"-->
<!--#set var="itemD_announce" value="##announce##"-->
<!--#set var="itemD_body" value="##body##"-->

##-- ================== Styles for item(browse) list ============================== --##

<!--#set var="item_fdate;browse_item_fdate" value="<div class="news_item_date">##fdate##&nbsp;</div>"-->
<!--#set var="item_ftime" value="<div class="news_item_time">##ftime##</div>"-->

<!--#set var="urgent_item_fdate" value="<div class="news_urgent_item_date">##fdate##&nbsp;</div>"-->
<!--#set var="urgent_item_ftime" value="<div class="news_urgent_item_time">##ftime##&nbsp;</div>"-->


<!--#set var="browse_item_ftime" value="<b>##ftime##</b>"-->

<!--#set var="browse_item_header;item_header;urgent_item_header" value="##header##"-->
<!--#set var="browse_item_announce;item_announce;urgent_item_announce" value="##announce##"-->

##-- ****************** Splitters ***************************************** --##

<!--#set var="browse_item_Vsplitter;item_Vsplitter;urgent_item_Vsplitter" value="
</tr><tr><td height="30px" colspan=10><hr></td></tr><tr>
"-->

<!--#set var="item_Hsplitter;urgent_item_Hsplitter" value="
<td width=10 nowrap>&nbsp;</td>
"-->

<!--#set var="browse_item_Hsplitter" value="
<td width=10 nowrap>&nbsp;</td>
"-->

<!--#set var="small_item_Vsplitter" value="
</tr><tr><td height="30px" colspan=10><hr></td></tr><tr>
"-->

<!--#set var="small_item_Hsplitter" value="
<td width=10 nowrap>&nbsp;</td>
"-->

##-- ****************** Sets depending on page type *********************** --##

##-- ================== Item small block sets ============================= --##

<!--#set var="small_row" value="
  <td valign=top ##if (urgent)## class="small_news_urgent_item_row" ##else## class="small_news_item_row" ##endif##>
    ##fdate##
    ##--##ftime##--##
    <div class="small_news_item_header"><a href="##front_link####nav_data##">##header##</a></div>
    ##--<div class="small_news_item_announce">##announce##</div>--##
    <div>##forum_link## ##forum_count_topics## ##forum_count_replies##</div>
    <div>##rating_block## ##votes_block##</div>
    ##adv_counter##
    ##adv_place##
  </td>
"-->

<!--#set var="small_list" value="
<table cellspacing=0 cellpadding=0 border=0 width=100% class="small_news">##list##</table>
"-->

<!--#set var="small_list_empty" value="
%%no_items%%
"-->


##-- ================== Item details sets ================================= --##

<!--#set var="item_details" value="
##adv_counter##
##--adv_place--##
<TR>
  <TD>
    <h1>##--##ftime## --####fdate##&nbsp;##header##</h1>
      <table cellspacing=0 cellpadding=0 border=0>
      <tr><td valign=top>
        ##picture##
      </td><td valign=top>
        ##--announce--##
        ##body####common_cf_list####pager_item_details##
      </td></tr></table>
      <br><br>
      <div><a href="##script_link##?offset=##offset##">%%to_news%%</a> |
      ##forum_link## ##forum_count_topics####forum_count_replies##</div>
      <div>##rating_block## ##votes_block## ##rating_form##</div>
  </TD>
</TR>
<tr><td>##forum_extention##</td></tr>
<tr><td>##tags_extension##</td></tr>
"-->

<!--#set var="item_details_empty" value="
<tr>
  <td>
    %%no_item%%<br>
    <a href="##script_link##?offset=##offset##">%%to_news%%</a>
  </td>
</tr>
"-->

##-- ================== Browse list sets ==================================== --##

<!--#set var="browse_item_row" value="
<td>
    <h3>##--##ftime## --####fdate##&nbsp;##header##</h3>
    ##small_picture##
    ##announce##
<div><br><a href="##script_link####nav_data##offset=##offset##">%%details%%</a></div>
<br>##forum_link## ##forum_count_topics## ##forum_count_replies##
</td>
"-->

<!--#set var="browse_item_list" value="
<TR>
  <TD ><br>
	##--pager--##
	<br>
  <table border=0 cellpadding=2 cellspacing=0>
    <tr>
      ##list##
    </tr>
  </table>
  </TD>
</TR>
<TR>
  <TD><br>
##previos_link##&nbsp;##next_link##
<br><br>
	##pager##
  </TD>
</TR>
"-->

##-- ================== Item list sets ==================================== --##

<!--#set var="item_row" value="
<td>
    ##fdate##
    ##--##ftime##--##

    ##if(details_link=="1")##
      <div class="news_item_header"><a href="##script_link####nav_data##offset=##offset##" class="sz6">##header##</a></div>
    ##else##
      <div class="news_item_header sz6">##header##</div>
    ##endif##

    <div class="news_item_announce">##if(small_picture)##<div class="news_item_pic">##small_picture##</div>##endif####announce##</div>
    ##common_cf_list##
    <div>##forum_link## ##forum_count_topics## ##forum_count_replies##</div>
    <div>##rating_block## ##votes_block##</div>
    ##adv_counter##
    ##adv_place##
</td>
"-->

<!--#set var="urgent_item_row" value="
<td>
    ##fdate##
    ##--##ftime##--##

    ##if(details_link=="1")##
      <div class="news_urgent_item_header"><a href="##script_link####nav_data##offset=##offset##" class="sz6">##header##</a></div>
    ##else##
      <div class="news_urgent_item_header sz6">##header##</div>
    ##endif##

    <div class="news_urgent_item_announce">##if(small_picture)##<div class="news_item_pic">##small_picture##</div>##endif####announce##</div>
    ##common_cf_list##

    <div>##forum_link## ##forum_count_topics## ##forum_count_replies##</div>
    <div>##rating_block## ##votes_block##</div>
    ##adv_counter##
    ##adv_place##
</td>
"-->


<!--#set var="item_list" value="
<tr>
  ##list##
</tr>
<tr><td align=right><br>##pager##</td></tr>
"-->

<!--#set var="urgent_item_list" value="
<tr><td align=right>##pager##<br></td></tr>
<tr>##list##</tr>
<tr><td height="30px" colspan=10><hr></td></tr>
"-->

<!--#set var="item_list_empty" value="
<tr>
  <td>
    %%no_items%%
  </td>
</tr>
"-->


##-- ****************** Pages types *************************************** --##

<!--#set var="body_items" value="
##urgent_item_list##
##item_list##
<tr><td align=right><br><Br>##rss_generate##</td></tr>
"-->

<!--#set var="body_urgent_items" value="##item_list##"-->

<!--#set var="body_itemD" value="
##item_details##
##browse_item_list##
"-->
<!--#set var="body_filtered" value="
##--<tr><td><table cellpadding=0 cellspacing=0 border=0>##filter##</table></td></tr>--##
<tr><td>%%day_news%% ##flt_date_from##</td></tr>
##item_list##
"-->

<!--#set var="body_small" value="
##small_list##
<br>
<div class="small_news_rss" align="right">##rss_generate##</div>
"-->

<!--#set var="body_empty" value="
%%no_item%%
"-->

##-- ****************** BODY ********************************************** --##

<!--#set var="main_body" value="

<!--{title=%%news%%}-->

<script>
<!--
  var _cms_document_form = 'newsform';
  var _cms_script_link = '##script_link##?';
-->
</script>

<table cellspacing=0 cellpadding=0 width="100%" border=0>
<tbody>
  ##body##
</tbody>
</table>
"-->