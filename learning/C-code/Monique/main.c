#include <stdio.h>
#include <unistd.h>

int main(){
	printf("Hi Monique, just wanted to make this to say..\n");
	sleep(8);

	printf("Thank you, for everything you have done for me, it means more to me than anything else in the world\n");
	sleep(8);

	printf("I know it's hard not being together for so long but I hope this helps :D\n");
	sleep(8);

	printf("I love you\n");
	
	const char * asciiArt[] = {

	"   __--__      __--__   ",
    "  {      {    }      }  ",
	" {        {__}        } ",
	"|                      |",
	"|		       |",
	" {                    } ",
	"  {                  }  ",
	"   {                }   ",
	"    {              }    ",
	"     {            }     ",
	"      {          }      ",
	"       {        }       ",
	"        {      }        ",
	"         {    }         ",
	"          {  }          ",
	"           {}           "
	};
	
	for (int i = 0; i < sizeof(asciiArt) / sizeof(asciiArt[0]); i++) {
	  printf("%s\n", asciiArt[i]);
	}
	
	sleep(8);

	return 0;
}
