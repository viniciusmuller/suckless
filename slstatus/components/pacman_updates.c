#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define COMMAND_DELAY 300

FILE *fp = NULL;

const char *pacman_updates(void) {
  char path[4];

  if (fp == NULL) {
    // This works well with interval set to 1000
    char *bash_string = "while true; do yes $(checkupdates | wc -l) | head -n "
                        "%d; sleep %d; done";
    char command[100];
    sprintf(command, bash_string, COMMAND_DELAY, COMMAND_DELAY);
    fp = popen(command, "r");
  }

  char *updates = fgets(path, sizeof(path), fp);
  updates[strcspn(updates, "\n")] = 0;

  /* TODO:  close this */
  /* pclose(fp); */

  return updates;
}
