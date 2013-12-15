#include <stdio.h>
#include <unistd.h>
#include <limits.h>
#include <strings.h>
#include <string.h>
int main (int argc, char *argv[])
{
	if (strncmp(argv[1], "gcc",3) == 0)
	{
		
		system("/usr/local/scripts/iPorts/ports/gcc/install.sh");
	}
}
