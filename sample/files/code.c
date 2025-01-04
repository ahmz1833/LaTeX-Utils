// Sample Code for Testing LaTeX Minted Package
#include <stdio.h>
#include <string.h>
#include <ctype.h>

int main() {
	char str[1001], result[1001];
	int visited[128], start = 0, maxLen = 0, maxStart = 0;

	// get from stdin
	fgets(str, sizeof(str), stdin);
	str[strcspn(str, "\n")] = '\0';
	
	printf("%s\n", result);
	return 0;
}