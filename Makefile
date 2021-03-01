uname := $(shell uname -a)
ifneq ($(findstring Msys,$(uname)),)
exe = .exe
else
exe =
endif

srcdir = fsbuild/_build/dosbox-src

all: build dosbox${exe}

build:
	make -C ${srcdir}

dosbox${exe}: ${srcdir}/src/dosbox${exe}
	cp ${srcdir}/src/dosbox${exe} dosbox${exe}

clean:
	if [ -d ${srcdir} ]; then \
		make -C ${srcdir} clean; fi
	rm -f dosbox${exe}
