/* getcwd 实例 */
#include "apue.h"

int main()
{
	char *ptr;
	size_t size;
	if(chdir("/usr/lib/") < 0)
		err_sys("chdir failed\n");
	
	ptr = path_alloc(&size);

	if(getcwd(ptr, size) == NULL)
		err_sys("getcwd failed\n");

	printf("cwd = %s\n",ptr);

	exit(0);
}
