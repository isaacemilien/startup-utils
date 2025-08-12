function Append-Path{
	param($path)

	[Environment]::SetEnvironmentVariable("path", [Environment]::GetEnvironmentVariable("path", "machine") + ";$path", "machine")
}

function ll{
	param($url, $t)
	
	if($t){
		$url = "twitch.tv/$url/videos"
	}

	yt-dlp --flat-playlist -J $url | jq

}

function xd{
	param($path)

	7z.exe x $path -o"C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\game\csgo\demos"
}

function ly{
	wsl lynx -cookies
}

function tt{
	vim ~/documents/new-2.txt
}

function tr{
	param($text)
	wsl trans $text
}

