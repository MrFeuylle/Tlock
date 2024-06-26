clear
zenity --title "Tu as oublie de lock ta session" --height=200 --width=800 --warning --text="<span color=\"red\"><span size=\"80000\">Oups, un tuteur a vu que tu n'as pas lock</span></span>"
zenity --title "Question" --height=200 --width=800 --question --text="<span size=\"20000\">Sais-tu pourquoi penser a lock ta session quand tu n'es pas devant est important ?\nDo you know why locking your session when you're not here is important ?</span>"
if [ $? -eq 1 ]
then
	zenity --title "Explication" --height=100 --width=300 --info --text="<span size=\"20000\">Cela veut dire que n'importe qui peut acceder a touts tes dossiers / mots de passe / comptes qui sont sur ton ordinateur et c'est pas cool.\nNe pas lock sa session, c'est risquer de tout perdre ou de se faire voler ses données\nThis means that anyone can access all your folders / passwords / accounts that are on your computer and that's not cool.\nNot locking your session means you risk losing everything and having all your data stolen.</span>"
fi
zenity --title "Tutor love you" --height=100 --width=300 --info --text="<span size=\"20000\">Voila comment il faut faire\nHere's how to do it</span>"
cvlc /sgoinfre/goinfre/Perso/agiguair/lock.mp4 -f --no-video-title-show --mouse-hide-timeout 0 --play-and-exit
ft_lock
gnome-terminal -- bash -c "curl -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash"
kill -9 $PPID
