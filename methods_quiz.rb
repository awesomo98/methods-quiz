module MethodsQuiz
	
	def has_teen?(a,b,c)
		if (a >= 13 && 19 >= a) || (b >= 13 && 19 >= b) || (c >= 13 && 19 >= c)
			return true
		else
			return false
		end
	end
	
		def not_string?(str)
		if(str.start_with?("not"))
			return str
		else
			 "not" + str
		end
	end
	
	def icy_hot(a,b)
		if ((a < 0) && (b > 100)) || ((a > 100) && (b < 0))
			return true
		else
			return false
		end
	end
	
	def closer_to(a,b,c)
		if ((b-a).abs) < ((c-a).abs)
			return b
		end
		if ((c-a).abs) < ((b-a).abs)
			return c
		end
		if ((b-a).abs) == ((c-a).abs)
			return 0
		end
	end

	def two_as_one?(a,b,c)
		if (a + b == c) || (b + c == a) || (a + c == b)
			return true
		end
	end

	def pig_latinify(str)
		str.downcase!
		str.lstrip
		str.rstrip
		if((str[0] == "a") || (str[0] =="e") || (str[0] =="i") || (str[0] =="o") || (str[0] =="u"))
			str = str + "way"
			return str
		else
			str = str + str[0] + "ay"
			str.slice!(0)
			return str
		end
		if str == (anus || arse || arsehole || ass || ass-hat || ass-jabber || ass-pirate || assbag || assbandit || assbanger || assbite || assclown || asscock || asscracker || asses || assface || assfuck || assfucker || assgoblin || asshat || asshead || asshole || asshopper || assjacker || asslick || asslicker || assmonkey || assmunch || assmuncher || assnigger || asspirate || assshit || assshole || asssucker || asswad || asswipe || axwound || bampot || bastard || beaner || bitch || bitchass || bitches || bitchtits || bitchy || blow job || blowjob || bollocks || bollox || boner || brotherfucker || bullshit || bumblefuck || butt plug || butt-pirate || buttfucka || buttfucker || camel toe || carpetmuncher || chesticle || chinc || chink || choad || chode || clit || clitface || clitfuck || clusterfuck || cock || cockass || cockbite || cockburger || cockface || cockfucker || cockhead || cockjockey || cockknoker || cockmaster || cockmongler || cockmongruel || cockmonkey || cockmuncher || cocknose || cocknugget || cockshit || cocksmith || cocksmoke || cocksmoker || cocksniffer || cocksucker || cockwaffle || coochie || coochy || coon || cooter || cracker || cum || cumbubble || cumdumpster || cumguzzler || cumjockey || cumslut || cumtart || cunnie || cunnilingus || cunt || cuntass || cuntface || cunthole || cuntlicker || cuntrag || cuntslut || dago || damn || deggo || dick || dick-sneeze || dickbag || dickbeaters || dickface || dickfuck || dickfucker || dickhead || dickhole || dickjuice || dickmilk || dickmonger || dicks || dickslap || dicksucker || dicksucking || dicktickler || dickwad || dickweasel || dickweed || dickwod || dike || dildo || dipshit || doochbag || dookie || douche || douche-fag || douchebag || douchewaffle || dumass || dumb ass || dumbass || dumbfuck || dumbshit || dumshit || dyke || fag || fagbag || fagfucker || faggit || faggot || faggotcock || fagtard || fatass || fellatio || feltch || flamer || fuck || fuckass || fuckbag || fuckboy || fuckbrain || fuckbutt || fuckbutter || fucked || fucker || fuckersucker || fuckface || fuckhead || fuckhole || fuckin || fucking || fucknut || fucknutt || fuckoff || fucks || fuckstick || fucktard || fucktart || fuckup || fuckwad || fuckwit || fuckwitt || fudgepacker || gay || gayass || gaybob || gaydo || gayfuck || gayfuckist || gaylord || gaytard || gaywad || goddamn || goddamnit || gooch || gook || gringo || guido || handjob || hard on || heeb || hell || ho || hoe || homo || homodumbshit || honkey || humping || jackass || jagoff || jap || jerk off || jerkass || jigaboo || jizz || jungle bunny || junglebunny || kike || kooch || kootch || kraut || kunt || kyke || lameass || lardass || lesbian || lesbo || lezzie || mcfagget || mick || minge || mothafucka || mothafuckin || motherfucker || motherfucking || muff || muffdiver || munging || negro || nigaboo || nigga || nigger || niggers || niglet || nut sack || nutsack || paki || panooch || pecker || peckerhead || penis || penisbanger || penisfucker || penispuffer || piss || pissed || pissed off || pissflaps || polesmoker || pollock || poon || poonani || poonany || poontang || porch monkey || porchmonkey || prick || punanny || punta || pussies || pussy || pussylicking || puto || queef || queer || queerbait || queerhole || renob || rimjob || ruski || sand nigger || sandnigger || schlong || scrote || shit || shitass || shitbag || shitbagger || shitbrains || shitbreath || shitcanned || shitcunt || shitdick || shitface || shitfaced || shithead || shithole || shithouse || shitspitter || shitstain || shitter || shittiest || shitting || shitty || shiz || shiznit || skank || skeet || skullfuck || slut || slutbag || smeg || snatch || spic || spick || splooge || spook || suckass || tard || testicle || thundercunt || tit || titfuck || tits || tittyfuck || twat || twatlips || twats || twatwaffle || unclefucker || va-j-j || vag || vagina || vajayjay || vjayjay || wank || wankjob || wetback || whore || whorebag || whoreface || wop || 
			str2 = str.gsub(/[aeiou]/, '*')
			return str2
		end
	end

end