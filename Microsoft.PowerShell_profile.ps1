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

function tt{
	cd "C:\Users\0x112\documents"

	vim "new-1.txt"
}

function xd{
	param($path)

	7z.exe x $path -o"C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\game\csgo\demos"
}
