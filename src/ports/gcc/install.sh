#!/bin/bash
echo "Welcome To The iPorts GCC Automated Installer";
echo "What is Your Install Prefix? If you Dont Know type /usr!";
read prefix;
echo "Have You Already Installed GMP, MPFR, and MPC?";
read Dep;
if [[ $Dep == "no" ]]; then
{
	echo "Downloading GMP.";
	#You Are Free to Edit the GMP Variable to your favorite download location
	GMP=https://ftp.gnu.org/gnu/gmp/gmp-5.1.3.tar.bz2
	#GMP_NAME=ls\ |\ grep\ GMP
	wget $GMP;
	mkdir GMP-tmp;
	cd GMP-tmp;
	tar -xvf gmp-5.1.3.tar.bz2;
	mkdir gmp-build;
	cd gmp-build;
	echo "Configureing GMP."
	../gmp-5.1.3/configure --prefix=$prefix;
	echo "Building GMP.";
	make;
	echo "Installing GMP.";
	make install;
	cd ..;
	cd ..;
	rm -rv GMP-tmp;
	echo "Downloading MPFR";
	#I'm Tired Of placing Comments You get the jist.
	MPFR=http://www.mpfr.org/mpfr-current/mpfr-3.1.2.tar.xz
	mkdir MPFR-tmp
	cd MPFR-tmp
	mkdir MPFR-build
	wget $MPFR;
	tar -xvf mpfr-3.1.2.tar.xz
	cd MPFR-build
	echo "Configureing MPFR.";
	../mpfr-3.1.2/configure --prefix=$prefix;
	echo "Building MPFR.";
	make;
	echo "Installing MPFR.";
	make install;
	cd ..;
	cd ..;
	rm -rv MPFR-tmp;
	mkdir MPC-tmp;
	cd MPC-tmp;
	MPC=http://www.multiprecision.org/mpc/download/mpc-1.0.1.tar.gz;
	echo "Downloading MPC.";
	wget $MPC;
	tar -xvf mpc-1.0.1.tar.gz;
	mkdir mpc-build;
	cd mpc-build;
	echo "Configureing MPC";
	../mpc-1.0.1/configure --prefix=$prefix;
	echo "Building MPC";
	make;
	echo "Installing MPC";
	make install;
	cd ..;
	cd ..;
	rm -rv MPC-tmp;
	echo "Downloading GCC.";
	mkdir GCC-build;
	cd GCC-build;
	GCC=http://www.netgull.com/gcc/releases/gcc-4.8.2/gcc-4.8.2.tar.bz2;
	wget $GCC;
	tar -xvf gcc-4.8.2.tar.bz2;
	mkdir gcc-build;
	cd gcc-build;
	echo "Configureing GCC";
	../gcc-4.8.2/configure --prefix=$prefix;
	make;
	make install;
}
else
{
	echo "Downloading GCC.";
	#You Are Free to Edit the GCC Variable to your favorite download location. Also Edit the tar Command :D
	GCC=http://www.netgull.com/gcc/releases/gcc-4.8.2/gcc-4.8.2.tar.bz2
	mkdir GCC-tmp
	cd GCC-tmp
	wget $GCC;
	tar -xvf gcc-4.8.2;
	mkdir gcc-build;
	cd gcc-build;
	../gcc-4.8.2/configure --prefix=$prefix;
	make;
	make install;
}
fi
