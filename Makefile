
STL=print.stl
PNG=foot.png


all: ${PNG} ${STL}

%.png: %.scad
	openscad -o $@ $^

%.stl: %.scad
	openscad -o $@ $^

clean:
	rm -f ${PNG} ${STL}

