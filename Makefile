
all: first

first: first.cbl
	gcobol -o first first.cbl

run: first
	./first
	