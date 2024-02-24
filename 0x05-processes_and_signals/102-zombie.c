#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

/**
* infinite_while - Runs the infinite while loop
*
* Return: Zero
*/

int infinite_while(void)
{
while (1)
{
sleep(1);
}
return (0);
}
/**
* main - The main fuction
*
* Return: Zero
*/
int main(void)
{
int i = 0;
int count = 0;

while (i < 5)
{
pid_t pid = fork();

if (pid > 0)
{
printf("Zombie process created, PID: %d\n", pid);
sleep(1);
count++;
}
else
{
exit(0);
}
}
infinite_while();
return (0);
}


