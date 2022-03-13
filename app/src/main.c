#include "generated/autoconf.h"
#include "generated/version.h"

#include <stdio.h>

#include "main.h"

int main(int argc, char *argv[])
{
    printf("1 + 3 = %d\n", addnum(1, 3));
    printf("Version %d.%d\n", APP_VERSION_MAJOR, APP_VERSION_MINOR);

#if CONFIG_TEST_OPTION
    printf("Test Option is enabled.\n");
#else
    printf("Test Option is disabled.\n");
#endif

    return 0;
}

int addnum(int n1, int n2)
{
    return n1 + n2;
}