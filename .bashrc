alias s='sudo '
alias tt='vim ~/Documents/new-2.txt'
alias ly='lynx -cookies'
alias m312='mpv -ytdl-format=312+bestaudio '
alias m299='mpv -ytdl-format=299+bestaudio '
alias xc='xclip -selection clipboard'
alias bd='cp ~/Documents /mnt -r; mv /mnt/Documents /mnt/$(date -I)"_Documents"'

ll() {
        yt-dlp -J --flat-playlist "https://twitch.tv/$1/videos" | jq
}

td() {
        termdown $1m --no-figlet
}
