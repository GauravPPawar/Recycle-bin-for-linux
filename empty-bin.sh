if [ -z "$(ls /trash/)" ]
then
        echo "there are no files in recycle bin"
else
        fc=`ls /trash/ | wc -l`
        ls -1a /trash/
        echo "do you really want to permanently delete these $fc files(y/n)"
        read ch

        if [ $ch = "y" ]
        then
                rm /trash/*
                echo "paths" > paths.txt
                echo "Recyle Bin cleared successfully"

        elif [ $ch = "n" ]
        then
                echo "Recycle bin is not cleared"
        else
                echo "Someting went wrong"
        fi
fi