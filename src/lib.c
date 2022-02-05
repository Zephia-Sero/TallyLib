#include "lib.h"

#include <stdlib.h>

char* tally(int i, char tchar) {
	char* ret = (char*)malloc(sizeof(char) * (i+1));
	int j;
	for(j = 0; j < i; j++) {
		ret[j]=tchar;
	}
	ret[j] = '\0';
	return ret;
}
