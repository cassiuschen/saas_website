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

def printtitle
	puts '<title>', $website_info["title"] , '</title>'
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
def printheader
	puts '<!DOCTYPE html><html>'
	puts '<head><meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1">'
	printtitle
	linkcss
	linkjs
	puts '</head>'
end

def printnavbar
	navbartip = Array.new()
	puts '<nav class="tm-navbar uk-navbar uk-navbar-attached"><div class="uk-container uk-container-center"><a class="uk-navbar-brand uk-hidden-small" href="', $file_url["index"], '"><img class="uk-margin uk-margin-remove" src="../svg/logo_uikit.svg" width="90" height="30" title="SaaS" alt="SaaS"></a>'
	puts '<ul class="uk-navbar-nav uk-hidden-small">'
	navbartip = $nav_info.keys
	navbartip.each {|key|
		puts '<li><a href="', $nav_info["key"], '">', key , '</a></li>'
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
		puts '<li><a href="', $nav_info["key"], '">', key , '</a></li>'
	}
	puts '</ul><div class="uk-panel"><p>维护团队 <a href="http://thecmw.cn/">创意媒体工作室</a> 网络技术中心.<br class="uk-hidden-small">开放平台本着服务社区的原则运转，请自觉维护公共环境.</p><a href="index.html">'
	puts '<img src="',$file_url["svgroot"],'logo_uikit.svg" width="90" height="30" title="创媒云端SaaS" alt="创媒云端SaaS"></a></div></div></div>'
end




