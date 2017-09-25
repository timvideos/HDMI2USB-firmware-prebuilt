
#ifndef PLATFORM_MINISPARTAN6
#error "Version mismatch - PLATFORM_MINISPARTAN6 not defined!"
#endif
const char* board = "minispartan6";

#ifndef TARGET_BASE
#error "Version mismatch - TARGET_BASE not defined!"
#endif
const char* target = "base";

const char* git_commit = "040fe0e7e7771ee595fbd491baaab64e430f90dd";
const char* git_branch = "master";
const char* git_describe = "v0.0.3-767-g040fe0e-dirty";
const char* git_status =
    "    --\r\n"
   "     ? ../../../../third_party/litepcie\r\n"
   "     ? ../../../../third_party/litesata\r\n"
   "     ? ../../../../third_party/liteusb\r\n"
    "    --\r\n";

