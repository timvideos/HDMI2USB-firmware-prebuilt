
#ifndef PLATFORM_MINISPARTAN6
#error "Version mismatch - PLATFORM_MINISPARTAN6 not defined!"
#endif
const char* board = "minispartan6";

#ifndef TARGET_BASE
#error "Version mismatch - TARGET_BASE not defined!"
#endif
const char* target = "base";

const char* git_commit = "ff78688f1f348f28987a811cea7d9b589b86539d";
const char* git_branch = "master";
const char* git_describe = "v0.0.3-1027-gff78688-dirty";
const char* git_status =
    "    --\r\n"
   "     ? ../../../../third_party/litepcie\r\n"
   "     ? ../../../../third_party/litesata\r\n"
   "     ? ../../../../third_party/liteusb\r\n"
    "    --\r\n";

