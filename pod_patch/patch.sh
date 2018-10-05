cp ../src/gumbo.h .
cp ../src/tag.c .

awk '/#include "tag_enum.h"/{system("cat ../src/tag_enum.h");next}1' gumbo.h > tmp && mv tmp gumbo.h
awk '/#include "tag_gperf.h"/{system("cat ../src/tag_gperf.h");next}1' tag.c > tmp && mv tmp tag.c
awk '/#include "tag_sizes.h"/{system("cat ../src/tag_sizes.h");next}1' tag.c > tmp && mv tmp tag.c
awk '/#include "tag_strings.h"/{system("cat ../src/tag_strings.h");next}1' tag.c > tmp && mv tmp tag.c
