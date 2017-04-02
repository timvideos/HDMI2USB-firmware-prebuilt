
#ifndef PLATFORM_MIMASV2
#error "Version mismatch - PLATFORM_MIMASV2 not defined!"
#endif
const char* board = "mimasv2";

#ifndef TARGET_MEMTEST
#error "Version mismatch - TARGET_MEMTEST not defined!"
#endif
const char* target = "memtest";

const char* git_commit = "286bba20570d4b6da433599ef9c022bf99808d44";
const char* git_branch = "master";
const char* git_describe = "v0.0.3-699-g286bba2-dirty";
const char* git_status =
    "    --\r\n"
   "     M ../../../../third_party/litepcie\r\n"
   "     M ../../../../third_party/litesata\r\n"
   "     M ../../../../third_party/liteusb\r\n"
    "    --\r\n";

