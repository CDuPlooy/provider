#include <stdlib.h>
#include <stdio.h>
#include "mnl.h"

int main(int argc, char **argv){
     p_custom_http c = chttp_init();
     chttp_add_resp(c,"HTTP 404 NOT FOUND");
     chttp_finalise(c, "<html>Hello</html>", 18);
     for(size_t i = 0 ; i < c->size ; i++)
          printf("%c", c->buffer[i]);
     chttp_destroy(c);
     return 0;
}
