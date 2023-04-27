#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <syslog.h>

int main(int argc, char *argv[]) {
    if (argc != 3) //check for # of arguments
    {
        syslog(LOG_ERR, "Usage: writer <file> <string>\n");//error message
        exit(1);
    }

    char *filename = argv[1];//filename
    char *string = argv[2];//text to be put in file 
    
    FILE *file = fopen(filename, "w");//point to file and open to write
    if (file == NULL) 
    {
        syslog(LOG_ERR, "Error opening file %s\n", filename);//check if file is successfully opened otherwise error
        exit(1);
    }

    fprintf(file, "%s", string);//print string to file
    
    fclose(file);//close file
    
    syslog(LOG_DEBUG, "Writing \"%s\" to \"%s\"\n", string, filename);//process complete message

    return 0;
}
