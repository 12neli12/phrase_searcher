if [ -f $1 ];
	then exit
fi
cd "$1" || exit

for i in *
do
	if [ -f $i ];
		then
		case $i in
		*.$2)
		        echo "$i is a .$2 file!"
			path=$(pwd)/$i
			if grep "$3" "$path"; then
				echo "'$3' found!"
				echo $path >> /root/wanted_files.txt
			fi
		;;
		*)
			echo "$i is not a .$2 file!"
		;;
		esac
	fi
done

for j in *
do
	if [ -d $i ]; then
		sh "$0" "$1/$j" "$2" "$3"
	fi
done
