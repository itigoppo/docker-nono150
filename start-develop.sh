#!/bin/sh

echo 'Setup application. [Y/n] > '
read ANS
case ${ANS} in
    [Yy] )
        if [ -d '/Users/itigoppo/git/docker-nono150/apps/nono150_com' ]; then
            echo '--- Symlink Create. nono150'
            ln -nfs ~/git/nono150_com/ ~/git/docker-nono150/apps/
        fi
        ;;
    * ) echo '--- Skip.' ;;
esac

