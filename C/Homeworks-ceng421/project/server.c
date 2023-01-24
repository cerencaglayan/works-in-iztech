//! thread pool, multiolması için arg kontrolü yok ve for yerine while.

/* server5.c */
#include <stdio.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <pthread.h>

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <time.h>


#include <stdio.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netinet/tcp.h>
#include <pthread.h> 


#define LISTENPORT 5456
#define MAX_BUFF 1024

//!  structures : 
struct client_t {
int opstatus;
int kickflag;
char[] outbound;
}; 


struct client_command {

char[] command;
char[] op1;

}


/* Globals */
pthread_mutex_t room_topic_mutex;
char[] room_topic;
pthread_mutex_t client_list_mutex;
//map<string, client_t> client_list; 

int main(){

}
