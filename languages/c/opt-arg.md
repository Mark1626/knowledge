# Optargs for cli arg parsing]

[Back](../../index.md#c){: .button}

## getopt

`getopt` can be used to parse cli arguments

Signature - `getopt(<number-of-arguments>, <arguments-strings>, <arg-string>)` 

Arg String - `:` indicates that there is a argument associated with the option

eg) `a:b` - here a option an argument, b does not have an argument

Variables
- **optarg** - Value of the argument
- **optopt** - Name of the argument
- **optind** - Index currently read in argv

### Example

```c
#include <unistd.h>

int main(int argc, char** argv) {
  int c;
  while ((c = getopt(argc, argv, "h:n:")) != -1) {
  switch (c) {
    case 'h':
      header = optarg;
      break;
    case 'n':
      nonce = atoi(optarg);
      break;
    case '?':
      printf("Option %c requires args", optopt);
      return 1;
    }
  }

  // Arguments without options
  for (index = optind; index < argc; index++)
    printf ("Non-option argument %s\n", argv[index]);
}
```

## getopt\_long

### Example

```c
#include <getopt.h>
#include <stdio.h>

static int verbose_flag;

static struct option long_option[] = {
  {.name = "name", .has_arg = required_argument, .val = 'n'},
  {.name = "verbose", .has_arg = no_argument, .flag = &verbose_flag, .val = 'v'}
};

int main(int argc, char** argv) {
  char* name;

  int option_index = 0;
  int c;
  while ((c = getopt_long(argc, argv, "n:v", long_option, &option_index)) != -1) {
    switch (c) {
      case 0: break; // Scenario of argument without parameter
      case 'n':
        name = optarg;
        break;
      case '?': // getopt error 
      default:
        print_help();
        return 1;
    }
  }

  if (verbose_flag) printf("Printing name");

  if (optind < argc) { // Note: optind is used here
    printf("No args\n");
    return 1;
  }

  printf("Hello %s\n", name);

  return 0;
 }
```

### Reference

- [GNU getopt example](https://www.gnu.org/software/libc/manual/html_node/Example-of-Getopt.html)
- [GNU getlong\_opt example](https://www.gnu.org/software/libc/manual/html_node/Getopt-Long-Option-Example.html)
