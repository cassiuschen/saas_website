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
	puts '<title>', $website_info.title , '</title>'
end

def linkcss
	$cssname.each{|name|
		puts '<link rel="stylesheet" href="', $website_info.cssroot , name , '.css">' , "\n"
	}
end

def linkjs
	$jsname.each{|name|
		puts '<script src="', $website_info.jsroot , name , '.js"></script>' , "\n"
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




