all: myexe

build:
	gcc *.cc -o myexe

myexe: college.o collegemain.o course.o
	g++ college.o collegemain.o course.o -o myexe

college.o: college.cc
	g++ -c college.cc
collegemain.o: collegemain.cc
	g++ -c collegemain.cc
course.o: course.cc
	g++ -c course.cc

clean:
	rm -rf *.o *- *.class a.out html/ latex/ config config.bak *.tgz

config:
	doxygen -g config
	doxygen config

doc:
	doxygen -u config
	doxygen config

doczip:
	doc.tgz
