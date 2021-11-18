obj-m += lkm_example.o
all:
	 make -C /lib/modules/$(shell uname -r)/build M=$(PWD)/build src=$(PWD)/src modules
clean:
	 make -C /lib/modules/$(shell uname -r)/build M=$(PWD)/build src=$(PWD)/src clean
