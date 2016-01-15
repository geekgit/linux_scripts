#!/bin/bash
function get-full-url
{
	Part="$1"
	echo "https://www.foobar2000.org/$Part"
}
function download-main
{
	wget https://www.foobar2000.org/download -O download.html
	UrlPart=$(cat download.html | grep -o -E 'href="([^"#]+)"' | cut -d'"' -f2 | sort | uniq | grep "foobar2000" | grep ".exe" | head -n1)
	Url=$(get-full-url $UrlPart)
	echo "$Url"
	wget "$Url"
	md5sum *.exe > hash.md5
	sha1sum *.exe > hash.sha1
	rm download.html
}
function download-plugins
{
	mkdir plugins
	cd plugins
	wget https://www.foobar2000.org/components -O components.html
	Data=$(cat components.html | grep -o -E 'href="([^"#]+)"' | cut -d'"' -f2 | grep "components" | grep "view" | sed 's|/components|components|g' | grep "foo" | sort | uniq)
	for Plugin in $Data
	do
		PluginUrl=$(get-full-url $Plugin)
		PluginName=$(echo $PluginUrl | sed 's|.*/||')
		wget $PluginUrl -O $PluginName.html
		sleep 5
		download-plugin "$PluginName.html"
	done
	md5sum *.fb2k-component > plugins-hash.md5
	sha1sum *.fb2k-component > plugins-hash.sha1
	rm components.html 
	cd ..
}
function download-plugin
{
	HTML="$1"
	Data=$(cat "$HTML" | grep -o -E 'href="([^"#]+)"' | cut -d'"' -f2 | grep "getcomponent" | grep "fb2k-component" | sed 's|/getcomponent|getcomponent|g' | sort | uniq)
	if [ -n "$Data" ]; then
		Url=$(get-full-url $Data)
		wget $Url
		rm "$HTML"
		sleep 5
	fi
}
download-main
download-plugins

