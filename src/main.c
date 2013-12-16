#include <stdio.h>
#include <unistd.h>
#include <limits.h>
#include <strings.h>
#include <string.h>
int main (int argc, char *argv[])
{
	if (strncmp(argv[1], "gcc",3) == 0)
	{
		system("bash -c /usr/local/scripts/iPorts/gcc/install.sh");
	}
}
