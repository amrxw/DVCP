#**************************************
# Damn Vulnerable imageReader
# Author: hardik shah
# email: hardik05@gmail.com
# website: http://hardik05.wordpress.com
#**************************************

CC=gcc
TARGET=imgRead

all:
	$(CC) dvcp.c -o $(TARGET)

clean:
	rm $(TARGET)
