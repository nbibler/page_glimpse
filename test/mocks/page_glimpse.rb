FakeWeb.allow_net_connect = false

FAKEWEB_UNAVAILABLE_RESPONSE = <<-RESPONSE
HTTP/1.1 404 Not Found
Server: nginx/0.5.33
Date: Thu, 28 May 2009 18:58:17 GMT
Content-Type: application/json; charset=utf-8
Connection: keep-alive
X-Powered-By: Phusion Passenger (mod_rails/mod_rack) 2.0.6
X-Runtime: 0.11673
Cache-Control: no-cache
Content-Length: 16
Cache-Control: max-age=86400
Expires: Fri, 29 May 2009 18:58:17 GMT
Vary: Accept-Encoding

["result", "no"]
RESPONSE

FAKEWEB_AVAILABLE_RESPONSE = <<-RESPONSE
HTTP/1.1 200 OK
Server: nginx/0.5.33
Date: Thu, 28 May 2009 19:02:13 GMT
Content-Type: application/json; charset=utf-8
Connection: keep-alive
X-Powered-By: Phusion Passenger (mod_rails/mod_rack) 2.0.6
X-Runtime: 0.30163
ETag: "493eaa9c03b3ae38efd9b2a1d87c4280"
Cache-Control: private, max-age=0, must-revalidate
Content-Length: 17
Cache-Control: max-age=86400
Expires: Fri, 29 May 2009 19:02:12 GMT
Vary: Accept-Encoding

["result", "yes"]
RESPONSE

FAKEWEB_THUMBNAIL_RESPONSE = <<-RESPONSE
HTTP/1.1 200 OK
Server: nginx/0.5.33
Date: Thu, 28 May 2009 23:03:16 GMT
Content-Type: image/jpeg
Connection: keep-alive
X-Powered-By: Phusion Passenger (mod_rails/mod_rack) 2.0.6
X-Runtime: 0.00130
Content-Transfer-Encoding: binary
Cache-Control: private, public; max-age=5
Content-Disposition: inline; filename="invalid_devkey.150x108.jpg"
Last-Modified: Thu, 28 May 2009 23:03:16 GMT
Content-Length: 3124
Cache-Control: max-age=604800
Expires: Thu, 04 Jun 2009 23:03:16 GMT
Vary: Accept-Encoding

ˇÿˇ‡ JFIF  H H  ˇ€ C 		



          ˇ€ C

                                                 ˇ¿  l ñ ˇƒ              ˇƒ 9       !1"AQa#2q—3BSUÅë¢$Rì4í±ˇƒ                 ˇƒ                 ˇ⁄   ? ˚>¥
h–5†k@÷Å≠Z¥
h–5†k@÷Å≠Z¥
h–K≠Z¥
h–5†k@÷Å≠Z¥
h–5†k@÷Å≠Z¥ÎA≈¬Â+É6‚‘¥ø1N‹›ç
∂˝‚5@)@éƒ–X[˘¨I7mœDz,∑qÖ°Õpáù¿$ﬁ(=/ñ©H}»Vπ3éÛ¨≠÷Ù	˚ål°ìıÌÛ†ÊÔÿ“&N∏7"KP\µ«q&:µu%Ríû›{W ≠whp„Hq∏£—ﬁ∏£!ÓﬁÔêÆ«±"Ç{ ¶:ÁÇ‘«‚∑4(>„
’gVBár∆É¬Ø8Õ’ÿWInN∑Æ7§Du`¬“≠:Yÿ´=çﬂ∂Òõ}Ê¡ëIy¶ñ€ö{©:9ênˇ *	¶r¯åOëoj3“e¥‚m∂ı˚«ç»NOÑ'Ò‚ÇùﬁKO!µÀ%»¨≈nrg«s±Bÿ@*
 „·Af«6å¢ì"àçæÀí ∏ËNCI‹ÅÇpuÓ†CÊ‰=©¯–ÁåFöËHl¨îû˘,¸*#ùB◊¨‰9
DqßùÖ%A!/ÜV†û˘Ñ˚πÛA√í9?â\Óö~Zo1§,hWúeH˙€4∂ªÚß:ıÂÈjn…fd6¥•]ﬂ@V•à¬~fÉq|Ó+Ks†IÜ‚ãj	sOÿ∫≠Cß¿=î<–\≈ª3&Ô6⁄⁄º∂^w∂ôtlîèéqAa≠∫–pÕqõÿø&Qç˜ÏΩ˜GÏÿX€>~h>1{\ªƒË¨∫"Lµí¥°e:¨yÏ0O‚∆h5›‚Wvµ≈\/YBLE%¯˝`⁄9≈ÓßúÔÔÅ∂>4ﬁƒÚSø–˛˘vˆ£•=Føhô°“úÌè¡ﬂ4ì,ºùà7À$Kxê≈¡˜$∆õ’BRÓ	AI Ì€Ù†≤æ@ª¥˜ï
Âõv˛í ÄFZÚ¢ö
€ﬂøÚ3"Â2:">”In€o.u{¨∏¥ˆc∞¡†ˆœj]¶Ê€V7-S\`%áì÷+q'®  ’®B}Í
i.ÍÏW	p˝.·ÈR%\†zeBF‚? Bp3Aáx;Ú÷¿âkU©áñó√èáàq∆¿iJ ñÆ‰x\-‹Ü·
8∏¿X≥E}Nª‘B˙Œ
”	ûŸ9†◊Éjærä⁄Ï?E∑Fê´áQ*‹%6ÅÔdÌﬂ4"p…	∑ª	Ó>ØX∑ˆ€π	yiK-(6§∂•˛˘¿∆;Pt”,◊8
mHg3ƒôËÏü⁄%	mù|èù%ÔÖ]zEã[!1ÓQf‡»Rñﬂç™ös»ÛÆß_ŒÉ
Òò’r3l™≥¨CZW5ŸE‰n0Æ…+_míh.¯IB»n3?ÚÓé.ÁR[˙ß?÷É•÷Ç]h–5†k@÷Å≠Z¥
h–5†Ùvﬂe∆]NÕ:íÖßÊïAÊ$8Ò#7::l2êÜ–>	z	u†k@÷ÉVÂiÉrçË”ö1≤W”9∆Rr3ä
î∂î§%#	Ä÷Ç]h–5†k@÷Å≠Z¥
h–5†k@÷Å≠Z¥
h–5†óZ¥
h–5†k@÷Å≠aËÍ
)u$$eD(v3Aê„$d-8Ïsë˚›ì˝˛£[Óùïêëëìè8¸®0ó„´]]Aÿ·8PÓ|‡JU>0û‘ vy‘∏øw'•ÆBª‰º†B∏≈ñ…u
◊
Z
V@W∏·k8…ÏTû‘#¡Œ;Î@÷Å≠Z	u†k@÷Å≠Z¥
h–qæ36dR#¥NC~˜˚èøKö»˜{ßo≈ﬂø“Éu\:Zí0ÚÍîÛmÁT¨¨ª#∞˜ZZâ¯~T'â…°JR“ÁL6©>ˆòy.©’≠v≤B‘·» :[·o6’¥'ßòÕ!RÖt«Q+J˙©WMdíSﬂ∆p;–m⁄xÏ»w&pGÈ∞â
óë∑Uﬁ´âZTÁ∫F{ö
˘\mÿÒûr_E¶€Ù•∂Û)˜!{4í
Gtúcπ…≈MjÜÏx
°Ï
Àí]pÓº}6=æîz–5†k@÷Ç]h–k=q∑0·mÈ-∂‡Úï(A∞Ö6‚–†§+¬áqAùh–5†Âπ-ÙkÜŒ¶Ä.∫{˜#8«ä
C~‰Ç'¶)óì
ãÂêèüèõü+†Ô]ƒPÿCdî*ÌA_Ì§ÒÿΩÇ<ç˙P=µù¸GÈ@ˆ÷wÒˇ ¡•€Yﬂ«ˇ ~îmg¸˙PXÿ˘Åë5®íH_XÍÖ‡|xÌäªZ¥
h%÷Å≠Ãns¨ˇ ÍM¬-›m¢

Rú8Ë6F>Ω˚PM¬n◊—«ëjÑn	\’7+Xm)l'∫…?ˆ8¯–X¿˚Jg’wy8ﬁç.Œ†á£•Y
R’¢@=ˇ x`–k€~—nØ›mv˘ñƒ≈ıóﬁ6‚ñ{≤A!i”„AÖ˝ßºÎ€Û«}+–˝7oû¥≠l\~“úCÈaÑâ%¬äPù3Ù…Õø ∫sKª7'l˙Ég!! t⁄V™$ìæ{w†Í'Eï+í¿D9´ÇØV®ı[JU≤J“1Öv˙–s¯5≠ËPgL∫≠ÑÕt¥R@ ú*RR~dèçÆ}úCJß∆E◊©råé≥1ıÓŒtÍ}Uåv†é¥Ω
Ÿ.U—q˝dê…	ÿº°êÑÔA~€*π;yöb€ÌÀÈı€NTº‡Öëﬂ
ˆÓ-jr4ãï∆‰cYì#—°> ›‚U™WÒ¿&Éœ®›≤Û8pæ™CÃ≠ó|lÖ+∂GŒÉÈ˙–5†kA6¥
h>4ıû%◊Ì‚„Â“`)ÑØ¶‚Nõ&+89Ò€ΩÔ€'§[õ„Òm»¸L=≠Õ∏`†j
}¬‡i∂ŒÉÜb⁄˝¬›Õ„Ÿ·æ”-™<®⁄√ûåáâ∆™ ≥”˜±ÊÇ≈é@ÆAÃ∏sié¸>ú#jy%!nÙñÇ∂˛i˘†Ø∞¬„—íÌèó3yjÊ‘†ñ„≈*,(˙`åè;|Gäß˙Ÿã7⁄*ﬁ|ÎILgWˇ ñ”™è‰Gz•⁄ÕÆÀ»è¶°Î|¿∑††/n	X˘wQ¯y†∞é„cì¿%i¿µê{è;¶ÇÜZêxÁã¢3‹ Vñﬂ∑óÖlús èö®!bÃÌ «≈VáPÿÇÎr]8%	IŒøZ¡ôrõ…fŒÉ";ñ;Ë”Yu^zH¬ùGıÌÚ4b ≥KÅ∆ÃBÙ)KËGî2ŸF€e?N¶Éôù&Íˇ 8∑&ËX2ô[	Ã\Ùı*€„û˝Ë>ó≠Z¥k@÷É4Á8ÔÛ†)§®j†ì‰
ÙK´ˆâmYﬂDKõàƒi.'d•_2(8æ?ˆu…\ÂåÚ~]tjt∏H(É2
NA√˛G∞{–}§ù∂¿ÿx?ûs~%urËÂ¬*íÀ·;°÷ïè√‰ÉÙ†Ê=òø¯ılú¶ºj˚3»?óJˇ ≠ ≥<É˘tü˙◊@<gê„Æïˇ [î◊¥]Ó<~’lj—5∑≠¯Í:[PJ∞çN∏ÔﬁÇáŸãˇ ÚŸ?,÷(ÃÚÁ’≤Amcˇ îúGáﬁ
ŸâR£Æ,hÀíË’JR{ÄÔÁ…†˙v¥
h–M≠Z¥
h–5†k@÷Å≠Z¥
h–5†k@÷Å≠Z¥Ë
Å@†P(
Å@†P(
ˇŸ
RESPONSE

FAKEWEB_QUEUE_RESPONSE = <<-RESPONSE
HTTP/1.1 200 OK
Server: nginx/0.5.33
Date: Fri, 29 May 2009 20:13:47 GMT
Content-Type: application/json; charset=utf-8
Connection: keep-alive
X-Powered-By: Phusion Passenger (mod_rails/mod_rack) 2.0.6
X-Runtime: 0.00383
ETag: "b43f17a11a24b2913e56d304d57e5cd1"
Cache-Control: private, max-age=0, must-revalidate
Content-Length: 21
Cache-Control: max-age=86400
Expires: Sat, 30 May 2009 20:13:47 GMT
Vary: Accept-Encoding

["result", "success"]
RESPONSE

FakeWeb.register_uri(:get, 'http://images.pageglimpse.com:80/v1/thumbnails/exists?devkey=testdeveloperkey123&url=http%3A%2F%2Fbadurl.local%2F&size=large', :response => FAKEWEB_UNAVAILABLE_RESPONSE)
FakeWeb.register_uri(:get, 'http://images.pageglimpse.com:80/v1/thumbnails/exists?devkey=testdeveloperkey123&url=http%3A%2F%2Fgoodurl.local%2F&size=large', :response => FAKEWEB_AVAILABLE_RESPONSE)
FakeWeb.register_uri(:get, 'http://images.pageglimpse.com:80/v1/thumbnails?devkey=testdeveloperkey123&url=http%3A%2F%2Fgoodurl.local%2F&size=large', :response => FAKEWEB_THUMBNAIL_RESPONSE)
FakeWeb.register_uri(:get, 'http://images.pageglimpse.com:80/v1/thumbnails?devkey=testdeveloperkey123&url=http%3A%2F%2Fbadurl.local%2F&size=large', :response => FAKEWEB_THUMBNAIL_RESPONSE)
FakeWeb.register_uri(:get, 'http://images.pageglimpse.com:80/v1/thumbnails/request?devkey=testdeveloperkey123&url=http%3A%2F%2Fgoodurl.local%2F', :response => FAKEWEB_QUEUE_RESPONSE)