##--  ==========  Main menu templates ===================== --##
<!--#set var="main_block" value="<table cellspacing=0 cellpadding=0 border=0 class="main_menu"><tr><td width=1><img alt="##name##"></td>##content##</tr></table>"-->
<!--#set var="main_item" value="##splitter##
<td align=center valign=top style="padding-left:1px; padding-right:1px;">
<table cellspacing=0 cellpadding=0 border=0 >
<tr><td><img alt="##name##" src="_mod_files/ce_images/menu/fon_menu_2.png"></td></tr>
<tr><td align=center valign=top style="padding-left:5px; padding-right:5px; height: 50px;">
    
             ##noindex_start####if(have_submenu == "1" )## 
              <a ##relnofollow## name="v##id##" id="j##id##" href="##link##" onmouseover="showMenu(##id##, 0, 'left', 'bottom', -8, 0);" onmouseout="moff();">##name##</a>
             ##else## 
              <a ##relnofollow## href="##link##">##name##</a>
             ##endif####noindex_end##
           ##submenu##
					 </td></tr></table>
					 </td>
"-->
<!--#set var="main_item_active" value="##splitter##
<td align=center valign=top style="padding-left:1px; padding-right:1px;">
    <table cellspacing=0 cellpadding=0 border=0 class="main_menu2">
<tr><td><img alt="##name##" src="_mod_files/ce_images/menu/fon_menu_2.png"></td></tr>
<tr><td align=center valign=top style="padding-left:5px; padding-right:5px; height: 50px;">
             ##noindex_start####if(have_submenu == "1" )## 
              <a ##relnofollow## name="v##id##" id="j##id##" href="##link##" onmouseover="showMenu(##id##, 0, 'left', 'bottom', -8, 0);" onmouseout="moff();">##name##</a>
             ##else## 
               <a ##relnofollow## href="##link##">##name##</a>
             ##endif####noindex_end##
           ##submenu##
					 </td></tr></table>
					 </td>
"-->

<!--#set var="main_splitter" value="<td width=1><img alt="##name##"></td>"-->

##--  ==========  Imaged main menu templates =================== --##

<!--#set var="img_main_item" value="##splitter##
         ##noindex_start####if(have_submenu == "1" )## 
          <img alt="##name##" id=main_menu_img_##id## src="_img/m_normal.gif" width=12 height=22 align=absmiddle border=0><a ##relnofollow## name="v##id##" id="j##id##" href="##link##" onmouseover="showMenu(##id##, 0, 'left', 'bottom', -8, 0,'##img_menu_over##');" onmouseout="moff();"><img alt="##name##" id=main_menu_img_##id## src="##img_menu_normal##" border=0 valign=absmiddle></a>
         ##else## 
          <img alt="##name##" id=main_menu_img_##id## src="_img/m_normal.gif" width=12 height=22 align=absmiddle border=0><a ##relnofollow## href="##link##"><img alt="##name##" id=main_menu_img_##id## src="##img_menu_normal##" onmouseover="this.src='##img_menu_over##'" onmouseout="this.src='##img_menu_normal##'" border=0 valign=absmiddle></a>
         ##endif####noindex_end##
		 ##submenu##
"-->

<!--#set var="img_main_item_active" value="##splitter##
             ##noindex_start####if(have_submenu == "1" )## 
              <img alt="##name##" id=main_menu_img_##id## src="_img/m_normal.gif" width=12 height=22 align=absmiddle border=0><a ##relnofollow## name="v##id##" id="j##id##" href="##link##" onmouseover="showMenu(##id##, 0, 'left', 'bottom', -8, 0);" onmouseout="moff();"><img alt="##name##" src="##img_menu_active##" border=0 valign=absmiddle></a>
             ##else## 
              <img alt="##name##" id=main_menu_img_##id## src="_img/m_normal.gif" width=12 height=22 align=absmiddle border=0><a ##relnofollow## href="##link##"><img alt="##name##" src="##img_menu_active##" border=0 valign=absmiddle></a>
             ##endif####noindex_end##
		##submenu##
"-->

##--  == Imaged Pulldown menu templates --##

<!--#set var="img_sub_item" value="##splitter##<tr><td><nobr>##noindex_start##
##if(have_submenu == "1")##
<a href="##link##"    ##relnofollow## name="v##id##" id="j##id##" onmouseover="showMenu(##id##, ##parent_id##, 'right', 'top', 5, -3);" onmouseout="submoff(##id##)" onclick="smclick()"><img alt="##name##" src="##img_menu_normal##" onmouseover="this.src='##img_menu_over##'" onmouseout="this.src='##img_menu_normal##'" border=0></a>
##else##
<a href="##link##"    ##relnofollow## onmouseover="mon()" onclick="smclick()"><img alt="##name##" src="##img_menu_normal##" onmouseover="this.src='##img_menu_over##'" onmouseout="this.src='##img_menu_normal##'" border=0></a>
##endif##
##noindex_end##
</nobr></td></tr>
"-->
<!--#set var="img_sub_item_active" value="##splitter##<tr><td><nobr>##noindex_start##
##if(have_submenu == "1")##
<a href="##link##"    ##relnofollow## name="v##id##" id="j##id##" onmouseover="showMenu(##id##, ##parent_id##, 'right', 'top', 5, -3);" onmouseout="submoff(##id##)" onclick="smclick()"><img alt="##name##" src="##img_menu_active##" border=0></a>
##else##
<a href="##link##"    ##relnofollow## onmouseover="mon()" onclick="smclick()"><img alt="##name##" src="##img_menu_active##" border=0></a>
##endif##
##noindex_end##
</nobr></td></tr>
"-->


##--  == Pulldown menu templates --##

<!--#set var="sub_block" value="
            <div id=sub_menu_##parent_id## class=submenu>
            <table border="0" cellspacing="0" cellpadding="0" id=sub_menu_block_##parent_id## class=pd_menu onmouseover="mon(##parent_id##, ##parent_menu_id##)" onmouseout="moff(##parent_id##)">
            ##content##</table></div>##submenus##
"-->

<!--#set var="sub_item" value="##splitter##<tr><td nowrap>##noindex_start##
##if(have_submenu == "1")##
<a href="##link##"   ##relnofollow## name="v##id##" id="j##id##" onmouseover="showMenu(##id##, ##parent_id##, 'right', 'top', 5, -3);" onmouseout="submoff(##id##)" onclick="smclick()">##name##</a>
##else##
<a href="##link##"   ##relnofollow## onmouseover="mon()" onclick="smclick()">##name##</a>
##endif##
##noindex_end##
</td></tr>
"-->
<!--#set var="sub_item_active" value="##splitter##<tr><td nowrap>##noindex_start##
##if(have_submenu == "1")##
<a href="##link##"    style= "color:#0000eb" ##relnofollow## name="v##id##" id="j##id##" onmouseover="showMenu(##id##, ##parent_id##, 'right', 'top', 5, -3);" onmouseout="submoff(##id##)" onclick="smclick()">##name##</a>
##else##
<a href="##link##"    style= "color:#0000eb" ##relnofollow## onmouseover="mon()" onclick="smclick()">##name##</a>
##endif##
##noindex_end##
</td></tr>
"-->
<!--#set var="sub_splitter" value=""-->

##--  ==========  Top menu templates ===================== --##

<!--#set var="top_item" value="##splitter####noindex_start##<a  ##relnofollow## href="##link##"><nobr>##name##</nobr></a>##noindex_end##"-->
<!--#set var="top_item_active" value="##splitter####noindex_start##<a  ##relnofollow## href="##link##"><nobr>##name##</nobr></a>##noindex_end##"-->
<!--#set var="top_splitter" value="&nbsp;&middot;&nbsp;"-->
<!--#set var="top_block" value="
             <span class="top_menu">
             ##content##
             </span>
"-->

##--  ==========  Bottom menu templates =================== --##

<!--#set var="bottom_item" value="##splitter####noindex_start##<a  ##relnofollow## href="##link##"><nobr>##name##</nobr></a>##noindex_end##"-->
<!--#set var="bottom_item_active" value="##splitter####noindex_start##<a  ##relnofollow## href="##link##"><nobr>##name##</nobr></a>##noindex_end##"-->
<!--#set var="bottom_splitter" value="&nbsp;&nbsp;|&nbsp;&nbsp;"-->
<!--#set var="bottom_block" value="
             <span class="bottom_menu">
             ##content##
             </span>
"-->

##--  ==========  Header images preload template ===================== --##
<!--#set var="menu_jspreload" value="var arrPreload = Array('_img/m_normal.gif', '_img/m_over.gif', ##jsdata##); "-->

