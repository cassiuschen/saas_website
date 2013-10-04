$block = 0
def printtable(element)
	case element
	when "T","t","ok","running","true"
		puts '<td><i class="uk-icon-ok"></i></td>'
	when "F","f","false","wrong","problem"
		puts '<td><i class="uk-icon-remove"></i></td>'
	when "-"
		puts '<td></td>'
	else
		puts '<td>' , element , '</td>'		
	end
end

def printfooter
	puts '<div class="tm-footer"><div class="uk-container uk-container-center uk-text-center"><ul class="uk-subnav uk-subnav-line"><li><a href="mirrors.html">开源镜像站</a></li><li><a href="dev.html">开发者测试平台</a></li><li><a href="https://github.com/cassiuschen/saas_website/blob/master/log/CHANGELOG.md">服务日志</a></li><li><a href="http://cloud.thecmw.cn">创媒云端</a></li></ul><div class="uk-panel"><p>维护团队 <a href="http://thecmw.cn/">创意媒体工作室</a> 网络技术中心.<br class="uk-hidden-small">开放平台本着服务社区的原则运转，请自觉维护公共环境.</p><a href="index.html"><img src="./svg/logo_uikit.svg" width="90" height="30" title="创媒云端SaaS" alt="创媒云端SaaS"></a></div></div></div></body></html>'
end

def printtitle(page)
	case page
	when "index"
		puts '<title>', $website_info["title"] , '</title>'
	when "mirrors"
		puts '<title>开源镜像站 | ', $website_info["title"] , '</title>'
	when "dev"
		puts '<title>开发者中心 | ', $website_info["title"] , '</title>'
	else
		puts '<title>', $website_info["title"] , '</title>'
	end
end

def linkcss
	$cssname.each{|name|
		puts '<link rel="stylesheet" href="', $website_info["cssroot"] , name , '.css">' , "\n"
	}
end

def linkjs
	$jsname.each{|name|
		puts '<script src="', $website_info["jsroot"] , name , '.js"></script>' , "\n"
	}
end


#Ruby Script For SaaS Website
def printheader(page)
	puts '<!DOCTYPE html><html>'
	puts '<head><meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1">'
	printtitle(page)
	linkcss
	linkjs
	puts '</head>'
end

def printnavbar(page)
	navbartip = Array.new()
	puts '<nav class="tm-navbar uk-navbar uk-navbar-attached"><div class="uk-container uk-container-center"><a class="uk-navbar-brand uk-hidden-small" href="', $file_url["index"], '"><img class="uk-margin uk-margin-remove" src="../svg/logo_uikit.svg" width="90" height="30" title="SaaS" alt="SaaS"></a>'
	puts '<ul class="uk-navbar-nav uk-hidden-small">'
	navbartip = $nav_info.keys
	navbartip.each {|key|
		if key == page
			puts '<li class="uk-active"><a href="', $nav_info["key"], '">', key , '</a></li>'
		else
			puts '<li><a href="', $nav_info[key], '">', key , '</a></li>'
		end
	}
	puts '</ul>','<a href="#tm-offcanvas" class="uk-navbar-toggle uk-visible-small" data-uk-offcanvas></a><div class="uk-navbar-brand uk-navbar-center uk-visible-small"><img src="', $file_url["svgroot"],'/logo_uikit.svg" width="90" height="30" title="SaaS" alt="SaaS"></div></div></nav>'
end

def print_index_body
	puts '<div class="tm-section tm-section-color-1 tm-section-colored"><div class="uk-container uk-container-center uk-text-center"><img class="tm-logo" src="', $file_url["svgroot"],'/logo_uikit_large_csaas.svg" width="281" height="217" title="SaaS" alt="SaaS"><p class="uk-text-large">来自 创媒云端<br class="uk-hidden-small"> 服务于开发者与孵化器的软件即服务开发平台</p><a class="uk-button tm-button-download" href="',$file_url["dev"],'">进入开发者测试平台</a><ul class="tm-subnav uk-subnav"><li><a href="',$file_url["mirrors"],'">开源镜像站</a></li><li><a href="',$file_url["cloud"],'">去往创媒云端</a></li></ul><ul class="tm-subnav uk-subnav"><li><a><i class="uk-icon-star"></i> <span>',$website_info["building_number"],'</span> 个测试项目</a></li><li><a><i class="uk-icon-code-fork"></i> <span>',$website_info["running_number"],'</span> 个已公布</a></li></ul></div></div>'
end

def printfooter
	puts '<div class="tm-footer"><div class="uk-container uk-container-center uk-text-center"><ul class="uk-subnav uk-subnav-line">'
	footertip = Array.new()
	footertip = $nav_info.keys
	footertip.each {|key|
		puts '<li><a href="', $nav_info[key], '">', key , '</a></li>'
	}
	puts '</ul><div class="uk-panel"><p>维护团队 <a href="http://thecmw.cn/">创意媒体工作室</a> 网络技术中心.<br class="uk-hidden-small">开放平台本着服务社区的原则运转，请自觉维护公共环境.</p><a href="index.html">'
	puts '<img src="',$file_url["svgroot"],'logo_uikit.svg" width="90" height="30" title="创媒云端SaaS" alt="创媒云端SaaS"></a></div></div></div>'
end

def printmobilenavbar(page)
	puts '<div id="tm-offcanvas" class="uk-offcanvas"><div class="uk-offcanvas-bar"><ul class="uk-nav uk-nav-offcanvas uk-nav-parent-icon" data-uk-nav="{ multiple: true }"><li ><a href="#">SaaS | 来自 创媒云端</a></li><li class="uk-nav-header">SaaS服务</li><li class="uk-parent"><a href="#"><i class="uk-icon-wrench"></i> 开源镜像站</a>	<ul class="uk-nav-sub"><li><a href="./mirrors-rubygems.html">RubyGems</a></li><li><a href="./mirrors-ubuntu.html">Ubuntu</a></li><li><a href="./mirrors-debian.html">Debian</a></li></ul></li><li><a href="', $file_root["dev"] ,'"><i class="uk-icon-th-tasks"></i> 开发者中心</a><file_root["ass="uk-nav-header">已公布站点</li>'
	mobbartip = $saas_production.keys
	mobbartip.each {|key|
		puts '<li><a href="', $saas_production[key], '">', key ,'</a>'
	}
	puts '</ul></div></div>'
end

def printarticlesidebar(section)
	puts '<div class="tm-middle"><div class="uk-container uk-container-center"><div class="uk-grid" data-uk-grid-margin><div class="tm-sidebar uk-width-medium-1-4 uk-hidden-small"><ul class="tm-nav uk-nav" data-uk-nav>'
	#read article
	contain = Array.new()
	open("article.txt"){|file|
	while text = file.gets 
		contain = text.split()
		if contain[0] == "h1"
			puts '<li class="uk-nav-header">', contain.pop ,'</li>'
		elsif contain[0] == "h2"
			case contain.last
			when "#{section}"
				puts '<li class="uk-active">'
			else
				puts '<li>'
			end
			puts '<a href="',$article_root[contain.last],'.html">',contain.pop,'</a></li>'
		end
	end
	}
	puts '</ul></div>'
end

def printarticlesection(section)
	puts '<div class="tm-main uk-width-medium-3-4"><article class="uk-article">'
	contain = Array.new()	
	open("#{section}.cc"){|file|
	while text = file.gets 
		contain = text.split()
		case contain[0]
		when "h3"
			type = '<h3 class="tm-article-subtitle">'
			arctype = '</h3>'
		when "div-info"
			type = '<div class="uk-alert uk-alert-success"><a href="" class="uk-alert-close uk-close"></a><p>'
			arctype = '</p></div>'
		when "hr"
			type = "<hr>"
			arctype = ""
		when "block"
			type = '<pre><code>'
			arctype = ""
			$block = 1
		when "endblock"
			type = "</code></pre>"
			arctype = ""
			$block = 0
		
		#when ">"
		#	type = ""
		#	arctype = ""
		#	lastnum = contain.size - 1
			#output = contain[1..lastnum].to_s
		#	output = text
		#	contain[1..lastnum] = output
		#elseif $block? == true
		#	lastnum = contain.size - 1
		#	contain[0..lastnum] = text
		else
			if $block == 1
				lastnum = contain.size - 1
				contain.slice!(1..lastnum)
				type = text
				arctype = ""
				puts text
				next
			end
			type = "<#{contain[0]}>"
			arctype = "</#{contain[0]}>"
		end
		contain[0] = type
		contain << arctype
		while export = contain.shift
			puts export
		end
	end
	}
	puts '</article></div>'
end

def printarticle(section)
	printarticlesidebar(section)
	printarticlesection(section)
	puts "</div>"
end
