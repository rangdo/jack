#include <tests/meta/tests.h>

int main(int /*argc*/, char **/*argv*/)
{
    tests bdi; /// Initializing the bdi application

    bdi.execute(); /// Execute the bdi application synchronously
    return 0;
}
