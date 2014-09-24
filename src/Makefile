GCC = gcc
CLANG = clang

GTEST:
	$(GCC) -o gtest main.c `pkg-config --cflags gtk+-3.0 --libs gtk+-3.0`

CTEST:
	$(CLANG) -o gtest main.c `pkg-config --cflags gtk+-3.0 --libs gtk+-3.0`
