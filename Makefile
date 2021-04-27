all:
	gnatmake -x ada -gnatA -g -O0 -gnata -gnatwa -gnatVa -gnatQ -gnatygO -gnatwaCJe -gnateE main

cl clean:
	${RM} *.ali *.o main b\~*
