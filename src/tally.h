#ifndef TALLY_H
	#define TALLY_H

	#include <stdlib.h>



inline char *tally(size_t const num, char const tallyChar) {
	char *const ret = (char *) malloc(sizeof(char) * (num + 1));
	ret[num] = '\0';
	return memset(ret, tallyChar, num);
}



#endif
