for var in "$@"
do
        fn=$var
        echo $fn
        if [ -f $fn ] || [ -d $fn ]
        then
                echo ""
                echo "Are you sure you want to delete this file/folder permanently(y/n)"
                read ch

                if [ $ch = "y" ]
                then
                        rm -rvf $fn

                elif [ $ch = "n" ]
                then
                        rpath=`realpath $fn`
                        echo $rpath >> /usr/bin/paths.txt

                        mv $fn /trash/
                        echo "file or folder is moved to trash"
                fi
        else
                echo "No such file or folder exist"
        fi
done