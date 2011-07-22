all:
	make -C src all
	make -C src pack

clean:
	make -C src clean