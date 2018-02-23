/* 获取用户ID、组ID、进程ID*/
#include "apue.h"

int main()
{
	printf("uid = %d, gid = %d, pid = ld%\n", getuid(), getgid(), (long)getpid())
	exit(0);
}
