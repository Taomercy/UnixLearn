/* futimens 实例 */
#include "apue.h"
#include <fcntl.h>

int main(int argc, char** argv)
{
	int i, fd;
	struct stat statbuf;
	struct timespec times[2];

	for(i = 1; i < argc; i++)
	{
		if(stat(argv[i], &statbuf) < 0)       /* fetch current times */
		{
			err_ret("%s: stat error\n", argv[i]);
			continue;
		}

		if((fd = open(argv[i], O_RDWR | O_TRUNC)) < 0)   /* truncate */
		{
			err_ret("%s: open error\n");
			continue;
		}

		times[0] = statbuf.st_atim;
		times[1] = statbuf.st_mtim;

		if(futimens(fd, times) < 0)     /* reset times */
			err_ret("%s: futimens error\n");

		close(fd);
	}

	exit(0);
}
