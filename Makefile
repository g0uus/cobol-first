#
#
#

TARGET = first

all: ${TARGET}

first: ${TARGET}.cbl
	gcobol -o ${TARGET} ${TARGET}.cbl

run: ${TARGET}
	./${TARGET}

clean:
	rm -rf ${TARGET}
