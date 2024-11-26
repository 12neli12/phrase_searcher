if [ $# -ne 3 ];
	then echo "There need to be 3 args!"
	echo "$0 <absolute path> <extension> <word>"
	exit 1
	else
		echo "There are 3 arguments!"
fi

case $1 in 
	/*) if [ -d $1 ]:
		then echo "$1 does exist!"
	    fi
	;;
	*) echo "It is not an absolute path!"
	;;
esac

case $2 in
	?|??|???|????) echo "There are between 1-4 characters"
	;;
	*) echo "There should be between 1-4 chars!"
	   exit 3
	;;
esac

PATH=$PATH:$(pwd)
export PATH

chmod +x slave.sh
./slave.sh "$1" "$2" "$3"
