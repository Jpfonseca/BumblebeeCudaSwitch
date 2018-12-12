VERSION=1.0
while [[ "$1" =~ ^- && ! "$1" == "--" ]]; do case $1 in
  -h | --help )
    echo "Usage: ./bumblebeeswitch [OPTION]"
    echo " "
    echo "    -h, --help           Show this message"
    echo "    -e, --enable         Enable GPU"
    echo "    -c, --check          Check status"
    echo "    -d, --disable        Disable GPU"
    echo "    -v, --version        Version"
    exit
    ;;
  -e | --enable)
    shift; tee /proc/acpi/bbswitch <<< ON
    ;;
  -c | --check)
    shift; cat /proc/acpi/bbswitch
    exit
    ;;
  -d | --disable)
    shift;
    rmmod nvidia_uvm
    rmmod nvidia
    tee /proc/acpi/bbswitch <<< OFF
    exit
    ;;
   -v | --version)
    shift: echo $VERSION
    exit
    ;;
esac; shift; done

