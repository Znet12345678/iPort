AC_INIT([iPort For Iphone], [0.0.1])
AM_INIT_AUTOMAKE([1.10 no-define])
AC_PROG_CC
AC_PROG_CXX
AC_CONFIG_SUBDIRS(src)
AC_CONFIG_SRCDIR(src/main.c)
AC_CONFIG_HEADERS([config.h])
AC_CHECK_FILE(src,[],[cp -rv ../iPorts/src ./])
AC_CHECK_FILE(src/main.c,[],[cp -rv ../iPorts/src/main.c ./src])
AC_CHECK_FILE(src/ports/*,[],[cp -rv ../iPorts/src/ports/ ./src/ports/])
AC_OUTPUT(Makefile, src/Makefile)
