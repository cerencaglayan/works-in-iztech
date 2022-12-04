/*
Ceren Çağlayan - 270201059
*/

#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <time.h>

const char APRESSMESSAGE[] = "APRESS - For Professionals, By Professionals!\n";

const char sayings[10][50] = {
"Acele bir ağaçtır, meyvesi pişmanlık. \n",
"Lafla peynir gemisi yürümez. \n",
"Vakitsiz öten horozun başını keserler. \n",
"Rüzgar eken, fırtına biçer. \n",
"Doğru Söyleyeni Dokuz Köyden Kovarlar. \n",
"Hatasız kul olmaz. \n",
"Üzüm üzüme baka baka kararır. \n",
"Ayağını yorganına göre uzat. \n",
"Ne oldum dememeli, ne olacağım demeli. \n",
"Bir elin nesi var iki elin sesi var. \n"};

int printRandoms(int lower, int upper, int count)
{
int i;
for (i = 0; i < count; i++)
{
int num = (rand() %
(upper - lower + 1)) +
lower;
return num;
}
}

int main(int argc, char *argv[])
{
    srand(time(0));
    int simpleSocket = 0;
    int simplePort = 0;
    int returnStatus = 0;
    struct sockaddr_in simpleServer;
    if (2 != argc)
    {
        fprintf(stderr, "Usage: %s <port>\n", argv[0]);
        exit(1);
    }
    simpleSocket = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
    if (simpleSocket == -1)
    {
        fprintf(stderr, "Could not create a socket!\n");
        exit(1);
    }
    else
    {
        fprintf(stderr, "Socket created!\n");
    }
        /* retrieve the port number for listening */
    simplePort = atoi(argv[1]);
    /* set up the address structure */
    /* use INADDR_ANY to bind to all local addresses */
    bzero(&simpleServer, sizeof(simpleServer));
    simpleServer.sin_family = AF_INET;
    simpleServer.sin_addr.s_addr = htonl(INADDR_ANY);
    simpleServer.sin_port = htons(simplePort);
    /* bind to the address and port with our socket */
    returnStatus = bind(simpleSocket,
                        (struct sockaddr *)&simpleServer,
                        sizeof(simpleServer));
    if (returnStatus == 0)
    {
        fprintf(stderr, "Bind completed!\n");
    }
    else
    {
        fprintf(stderr, "Could not bind to address!\n");
        close(simpleSocket);
        exit(1);
    }
    /* let's listen on the socket for connections */
    returnStatus = listen(simpleSocket, 5);
    if (returnStatus == -1)
    {
        fprintf(stderr, "Cannot listen on socket!\n");
        close(simpleSocket);
        exit(1);
    }
    while (1)
    {
        struct sockaddr_in clientName = {0};
        int simpleChildSocket = 0;
        int clientNameLength = sizeof(clientName);
        /* wait here */
        simpleChildSocket = accept(simpleSocket,
                                    (struct sockaddr *)&clientName,
                                    &clientNameLength);
        if (simpleChildSocket == -1)
        {
            fprintf(stderr, "Cannot accept connections!\n");
            close(simpleSocket);
            exit(1);
        }
        /* handle the new connection request */
        /* write out our message to the client */

        int index = (rand() % (9 - 0 + 1)); // generating random number
        const char *message = sayings[index]; // taking random turkish saying 

        write(simpleChildSocket, message, strlen(message)); // Sending saying to client
        close(simpleChildSocket);
    }
    close(simpleSocket);
    return 0;
}