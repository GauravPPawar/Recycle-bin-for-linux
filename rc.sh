fn=$1

if [ -f $fn ]
then
        echo "Are you sure you want to delete this file permanently(y/n)"
        read ch

        if [ $ch = "y" ]
        then
                rm $fn

        elif [ $ch = "n" ]
        then
                rpath=`realpath $fn`
                echo $rpath >> /usr/bin/paths.txt

                mv $fn /trash/$fn
                echo "file is moved to trash"
        fi
else
        echo "No such file exist"
fi