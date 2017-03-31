
#ifndef PLATFORM_MIMASV2
#error "Version mismatch - PLATFORM_MIMASV2 not defined!"
#endif
const char* board = "mimasv2";

#ifndef TARGET_MEMTEST
#error "Version mismatch - TARGET_MEMTEST not defined!"
#endif
const char* target = "memtest";

const char* git_commit = "e4d5f3d3ff785c9840445acae0e1ae0d8a89980e";
const char* git_branch = "master";
const char* git_describe = "v0.0.3-694-ge4d5f3d-dirty";
const char* git_status =
    "    --\r\n"
   "     M ../../../../third_party/litepcie\r\n"
   "     M ../../../../third_party/litesata\r\n"
   "     M ../../../../third_party/liteusb\r\n"
    "    --\r\n";

