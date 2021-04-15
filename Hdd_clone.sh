# if - input file
# of - output file
# status=progress prints progress
# bs=32M writes 32M at a time, increases I/O rate drastically

sudo dd if=/dev/sda of=/dev/sdb status=progress bs=32M
