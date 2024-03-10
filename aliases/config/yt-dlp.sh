wrapper(){
    start=$(date +%s)
    $@
    [ $(($(date +%s) - start)) -le 15 ] || notify-send "Notification" "Job\
 completed \"$(echo $@)\" -> Took $(($(date +%s) - start)) seconds to finish."
}


# internet aliases
alias yt-video="wrapper yt-dlp -o '~/Videos/YouTube/%(title)s.%(ext)s' "
alias yt-audio="wrapper yt-dlp --extract-audio --audio-format mp3 -o '~/Music/YouTube/%(title)s.%(ext)s' "