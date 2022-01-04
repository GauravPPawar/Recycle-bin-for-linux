fn=$1
fpath="/trash/"$fn

if [ -f $fpath ]
then
        opath=`grep $fn /usr/bin/paths.txt`
        mv $fpath $opath

        if [ -f $fpath ]
        then
                echo "something went wrong please try again"
        else
                sed -i "/$fn/d" paths.txt
                echo "file successfully restored at location "$opath
        fi
else
        echo "file does not exist in trash"
fi