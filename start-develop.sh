#!/bin/sh

echo 'Setup application. [Y/n] > '
read ANS
case ${ANS} in
    [Yy] )
        if [ -d '/Users/itigoppo/git/nono150_com' ]; then
            echo '--- Symlink Create. nono150'
            ln -nfs ~/git/nono150_com/ ~/git/docker-nono150/apps/
        fi
        if [ -d '/Users/itigoppo/git/hpbg' ]; then
            echo '--- Symlink Create. hpbg'
            ln -nfs ~/git/hpbg/ ~/git/docker-nono150/apps/
        fi
        ;;
    * ) echo '--- Skip.' ;;
esac

