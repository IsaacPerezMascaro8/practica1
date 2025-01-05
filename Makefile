bin/testListArray: testListArray.cpp ListArray.h List.h
	mkdir -p bin
	g++ -o bin/testListArray testListArray.cpp ListArray.h List.h

bin/testNode: testNode.cpp Node.h
	mkdir -p bin
	g++ -o bin/testNode testNode.cpp Node.h

bin/testListLinked: testListLinked.cpp ListLinked.h List.h
	mkdir -p bin
	g++ -o bin/testListLinked testListLinked.cpp ListLinked.h List.h

Point2D.o: Point2D.h Point2D.cpp
	g++ -c Point2D.cpp

bin/testPoint2D: testPoint2D.cpp Point2D.o
	g++ -c testPoint2D.cpp
	mkdir -p bin
	g++ -o bin/testPoint2D testPoint2D.o Point2D.o

Shape.o: Shape.h Shape.cpp Point2D.h	
	g++ -c Shape.cpp

Circle.o: Circle.h Circle.cpp Point2D.h Shape.h
	g++ -c Circle.cpp

bin/testCircle: testCircle.cpp Circle.o Shape.o Point2D.o
	g++ -c testCircle.cpp
	mkdir -p bin
	g++ -o bin/testCircle testCircle.o Circle.o Shape.o Point2D.o

Rectangle.o: Rectangle.h Rectangle.cpp Point2D.h Shape.h
	g++ -c Rectangle.cpp

bin/testRectangle: testRectangle.cpp Rectangle.o Shape.o Point2D.o
	g++ -o bin/testRectangle testRectangle.cpp Rectangle.o Shape.o Point2D.o

clean:
	rm -r *.o *.gch bin

