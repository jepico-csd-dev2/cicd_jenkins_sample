#include "method.h"
#include "unity.h"

void setUp(void){};
void tearDown(void){};

void test_method_add(void)
{
	TEST_ASSERT_EQUAL_INT(3, method_add(1,2));
}